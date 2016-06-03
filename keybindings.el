;;Archivo que tiene los keybindings para el modo y toda esa caca.

(setq mmwi-control/final-command-list (mmwi-control/create-final-command-list))
(setq mmwi-control/all-defuns (mmwi-control/create-all-functions mmwi-control/final-command-list))
(mmwi-control/eval-final-commands)
(mmwi-control/create-transient-state)
(spacemacs/declare-prefix mmwi-option-key "Others")
(spacemacs/declare-prefix (concat mmwi-option-key (upcase mmwi-lead-key)) "Mmwi-sin-transient")

(mmwi-control/assign-non-transient-keys)
