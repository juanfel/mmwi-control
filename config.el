;;Archivo con las configuraciones del layer. En particular, donde *** está mmwi
(defvar mmwi-location "http://127.0.0.1:8080")
(defvar mmwi-command-list '(
      '(:command-name "VolumeUp" :command "/Control/VolumeUp" :key "o")
      '(:command-name "VolumeDown" :command "/Control/VolumeDown" :key "i")
      '(:command-name "PlayPause" :command "/Control/PlayPause" :key "j")
      '(:command-name "SongPrev" :command "/Control/SongPrev" :key "h")
      '(:command-name "SongNext" :command "/Control/SongNext" :key "l")
      ))
