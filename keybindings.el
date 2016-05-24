;;Archivo que tiene los keybindings para el modo y toda esa caca.
(spacemacs|define-transient-state mmwi-control
  :title "Foobar 2000 remote control"
  :doc "\n[_h_] Prev \[_l_] next \[_j_] play/pause \ [_k_]stop \[_u_]random."
  :bindings
  ("j" mmwi/PlayPause)
  ("l" mmwi/SongNext)
  ("h" mmwi/SongPrev)
  ("o" mmwi/VolumeUp)
  ("i" mmwi/VolumeDown)
  ("0" spacemacs//transient-state-0))
(spacemacs/declare-prefix "o" "Others")
(spacemacs/declare-prefix "oF" "Mmwi-sin-transient")
(spacemacs/set-leader-keys
  "of" 'spacemacs/mmwi-control-transient-state/body
  ("oFj" mmwi/PlayPause)
  ("oFl" mmwi/SongNext)
  ("oFh" mmwi/SongPrev)
  ("oFo" mmwi/VolumeUp)
  ("oFi" mmwi/VolumeDown)

  )

