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
