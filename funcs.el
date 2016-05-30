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
