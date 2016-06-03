;;Archivo que tiene los keybindings para el modo y toda esa caca.

(setq mmwi-control/final-command-list (mmwi-control/create-final-command-list))
(setq mmwi-control/all-defuns (mmwi-control/create-all-functions mmwi-control/final-command-list))
(mmwi-control/eval-final-commands)
(mmwi-control/create-transient-state)
(spacemacs/declare-prefix "o" "Others")
(spacemacs/declare-prefix "oF" "Mmwi-sin-transient")
(spacemacs/set-leader-keys
  "of" 'spacemacs/mmwi-control-transient-state/body
  "oFj" 'mmwi-control/PlayPause
  "oFl" 'mmwi-control/SongNext
  "oFh" 'mmwi-control/SongPrev
  "oFo" 'mmwi-control/VolumeUp
  "oFi"'mmwi-control/VolumeDown

  )

