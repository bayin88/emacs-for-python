;; This file initializate all the extensions contained in this package

;; Trick to get the filename of the installation directory
(defconst epy-install-dir
  (file-name-directory (or load-file-name
                           (when (boundp 'bytecomp-filename) bytecomp-filename)
                           buffer-file-name))
  "Installation directory of emacs-for-python"
)

;;
;; Adjust load path to add the following paths
;; yasnippet/
;; plugins/
;; auto-complete

(add-to-list 'load-path
             epy-install-dir)
(add-to-list 'load-path
	     (concat epy-install-dir "yasnippet"))
(add-to-list 'load-path
	     (concat epy-install-dir "plugins"))
(add-to-list 'load-path
	     (concat epy-install-dir "auto-complete"))
(add-to-list 'load-path
	     (concat epy-install-dir "flymake"))

(require 'starter-kit-python)
(require 'starter-kit-completion)
(require 'epy-editing)
(require 'epy-bindings)
;;TODO: adding epy-patches?

;; Flymake for python configuration
(require 'python-flymake)


(provide 'epy-init)
