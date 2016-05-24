(defun mmwi/VolumeUp ()
  "Función para escoger aleatoriamente una canción"
  (interactive)
  (shell-command (concat mmwi-location "/Control/VolumeUp"))
  )
(defun mmwi/VolumeDown ()
  "Función para escoger aleatoriamente una canción"
  (interactive)
  (shell-command (concat mmwi-location "/Control/VolumeDown"))
  )

(defun mmwi/PlayPause ()
  "Función para parar o comenzar una canción"
  (interactive)
  (shell-command (concat mmwi-location "/Control/PlayPause"))
  )
(defun mmwi/Stop ()
  "Función para parar o comenzar una canción"
  (interactive)
  (shell-command (concat mmwi-location "/Control/Stop"))
  )
(defun mmwi/SongPrev ()
  "Función para parar o comenzar una canción"
  (interactive)
  (shell-command (concat mmwi-location "/Control/SongPrev"))
  )
(defun mmwi/SongNext ()
  "Función para parar o comenzar una canción"
  (interactive)
  (shell-command (concat mmwi-location "/Control/SongNext"))
  )
