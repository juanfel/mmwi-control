(defun mmwi-control/VolumeUp ()
  "Función para escoger aleatoriamente una canción"
  (interactive)
  (url-retrieve-synchronously (concat mmwi-location "/Control/VolumeUp"))
  )
(defun mmwi-control/VolumeDown ()
  "Función para escoger aleatoriamente una canción"
  (interactive)
  (url-retrieve-synchronously (concat mmwi-location "/Control/VolumeDown"))
  )

(defun mmwi-control/PlayPause ()
  "Función para parar o comenzar una canción"
  (interactive)
  (url-retrieve-synchronously (concat mmwi-location "/Control/PlayPause"))
  )
(defun mmwi-control/Stop ()
  "Función para parar o comenzar una canción"
  (interactive)
  (url-retrieve-synchronously (concat mmwi-location "/Control/Stop"))
  )
(defun mmwi-control/SongPrev ()
  "Función para parar o comenzar una canción"
  (interactive)
  (url-retrieve-synchronously (concat mmwi-location "/Control/SongPrev"))
  )
(defun mmwi-control/SongNext ()
  "Función para parar o comenzar una canción"
  (interactive)
  (url-retrieve-synchronously (concat mmwi-location "/Control/SongNext"))
  )
(defun mmwi-control/create-final-command (command-Plist)
  "Toma un plist con un comando, y le agrega las cosas que le faltan para indicar los comandos finales"
  (plist-put command-Plist :command-name (concat "mmwi-control/" (plist-get command-Plist :command-name)) )
  (plist-put command-Plist :command (concat mmwi-location (plist-get command-Plist :command)) )
  (plist-put command-Plist :key-full (concat mmwi-option-key (upcase mmwi-lead-key) (plist-get command-Plist :key)) )
  )
(defun mmwi-control/create-final-command-list (commandlist)
  "Crea la lista de comandos a partir de las configuraciones iniciales.\nInput: Lista de comandos\nOutput:Lista de comandos con los parametros finales"
  
  )
;; SORRY I DON'T KNOW HOW TO DO MACROS OK?
(defmacro create-mmwi-function (command-plist)
  "Crea todas las funciones a partir de la lista de comandos"
  (let ((fun-name (intern (concat "mmwi-control/" (plist-get command-plist :command-name))))
        (fun-command (concat mmwi-location (plist-get command-plist :command)))
        )
     `(defun ,fun-name ()
       (interactive)
       (url-retrieve-synchronously ,fun-command)
       )
     )
    )
(defun create-all-mmwi-functions (all-commands)
  "Crea todos los comandos estandard para el player" 
  (mapcar (lambda (plist)
           (eval (macroexpand (list 'create-mmwi-function plist) ))
            )
          mmwi-command-list)
  )
