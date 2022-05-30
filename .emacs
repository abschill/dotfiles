;;; Pacakge -- absenv
;;; Commentary:
;;; its making me write this for lint
(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq ring-bell-function 'ignore)


(menu-bar-mode -1)
(set-window-margins nil 1)
(setq custom-safe-themes t)
(split-window-horizontally)
(setq inhibit-splash-screen t)
(global-set-key (kbd "C-c y") 'clipboard-yank)
(global-set-key (kbd "C-c x") 'kill-ring-save)
(global-set-key (kbd "C-x 2") 'split-window-right)
(global-set-key (kbd "C-x 3") 'split-window-below)
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-refresh-contents)
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)
(use-package el-patch)
(use-package all-the-icons)
(use-package rust-mode)
(use-package go-mode)
(use-package zenburn-theme)
(load-theme 'zenburn t)
(use-package web-mode)
;;(use-package eglot)
(use-package company)
(use-package flycheck
  :init(global-flycheck-mode))
(use-package crux)
(use-package sublimity)

