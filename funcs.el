(defun mmwi-control/generate-docstring (command-Plist)
  "Toma un comando y crea el docstring que le corresponde. Devuelve el par :ket-doc documentacion"

  (plist-put command-Plist :key-doc
   (concat "\\[_" (plist-get command-Plist :key) "_] " (plist-get command-Plist :command-name) "\s") )
  )
(defun mmwi-control/create-final-command (command-Plist)
  "Toma un plist con un comando, y le agrega las cosas que le faltan para indicar los comandos finales"
  (mmwi-control/generate-docstring command-Plist)
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
(defun mmwi-control/create-docstring ()
  "Crea el texto que va a ir en el transient state"
  (concat "\n" (mapconcat (lambda (p-list) (plist-get p-list :key-doc)) mmwi-control/final-command-list "")))

(defun mmwi-control/create-transient-state ()
  "Crea el transient state a partir de los parametros anteriores"
  (eval
   (apply (lambda (&rest pairs)
            (append '(spacemacs|define-transient-state mmwi-control) pairs))
          (append (list :title "Mmwi remote control" :doc "TO DO" :bindings)
                  (mapcar (lambda (p-list)
                            (list (plist-get p-list :key) (intern (plist-get p-list :command-name) )))
                          mmwi-control/final-command-list)
                  ))))
