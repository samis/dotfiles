(setq el-get-user-package-directory "~/.emacs.d/configuration")
(ensure-el-get-is-present)
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(setq el-get-packages
      (append my-packages
              (mapcar #'el-get-source-name el-get-sources)))
(el-get 'sync el-get-packages)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
