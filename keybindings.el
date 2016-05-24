;;Archivo que tiene los keybindings para el modo y toda esa caca.
(spacemacs|define-transient-state foobar2000-control
  :title "Foobar 2000 remote control"
  :doc "\n[_h_] Prev \[_l_] next \[_j_] play/pause \ [_k_]stop \[_u_]random."
  :bindings
  ("h" foobar2000/prev)
  ("l" foobar2000/next)
  ("j" foobar2000/playpause)
  ("k" foobar2000/stop)
  ("u" foobar2000/rand)
  ("0" spacemacs//transient-state-0))
(spacemacs/declare-prefix "o" "Others")
(spacemacs/declare-prefix "oF" "Foobar2000-sin-transient")
(spacemacs/set-leader-keys
  "of" 'spacemacs/foobar2000-control-transient-state/body
  "oFh" 'foobar2000/prev
  "oFl" 'foobar2000/next
  "oFj" 'foobar2000/playpause
  "oFk" 'foobar2000/stop
  "oFu" 'foobar2000/rand

  )

