;;Archivo que tiene los keybindings para el modo y toda esa caca.
(spacemacs|define-transient-state mmwi-control
  :title "Mmwi remote control"
  :doc "\n[_h_] Prev \[_l_] next \[_j_] play/pause \ [_i_]VolDown \[_o_] VolUp."
  :bindings
  ("j" mmwi-control/PlayPause)
  ("l" mmwi-control/SongNext)
  ("h" mmwi-control/SongPrev)
  ("o" mmwi-control/VolumeUp)
  ("i" mmwi-control/VolumeDown)
  ("0" spacemacs//transient-state-0))
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

