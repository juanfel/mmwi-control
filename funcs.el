(defun mmwi-control/create-final-command (command-Plist)
  "Toma un plist con un comando, y le agrega las cosas que le faltan para indicar los comandos finales"
  (plist-put command-Plist :command-name (concat "mmwi-control/" (plist-get command-Plist :command-name)) )
  (plist-put command-Plist :command (concat mmwi-location (plist-get command-Plist :command)) )
  (plist-put command-Plist :key-full (concat mmwi-option-key (upcase mmwi-lead-key) (plist-get command-Plist :key)) )
  )
(defun mmwi-control/create-final-command-list ()
  "Crea la lista de comandos a partir de las configuraciones iniciales.\nInput: Lista de comandos\nOutput:Lista de comandos con los parametros finales"
  (mapcar 'mmwi-control/create-final-command mmwi-command-list)
  )
;; SORRY I DON'T KNOW HOW TO DO MACROS OK?
(defmacro mmwi-control/create-all-functions (all-commands)
  "Crea todos los comandos estandard para el player. Devuelve una lista con las definiciones de los comandos para ser evaluadas" 
  `(mapcar ,(lambda (plist)
            (let (
                  (funname (intern (plist-get plist :command-name) ))
                  (command (plist-get plist :command)) 
                  )
              `(defun ,funname ()
                (interactive)
                (url-retrieve-synchronously ,command)
                )
              )
            )
          ,all-commands)
  )
(defun mmwi-control/eval-final-commands ()
  "Evalua todas las funciones entregadas en create-all-functions"
  (mapcar 'eval mmwi-control/all-defuns)
  )
