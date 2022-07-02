;;; Pacakge -- absenv
;;; Commentary:
;;; its making me write this for lint
(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq ring-bell-function 'ignore)
(menu-bar-mode -1)
(set-window-margins nil 1)
(setq custom-safe-themes t)
;;(split-window-horizontally)
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
(use-package company)
(use-package el-patch)
;;(use-package all-the-icons)
(use-package rust-mode)
;;(use-package academic-phrases)
(use-package clippy)
;;(use-package cloc)
;; (require 'exwm)
;; (require 'exwm-config)
;; (exwm-config-example)
(use-package clipmon)
(use-package clang-format)
;;(use-package d-mode)
;;(use-package cython-mode)
;;(use-package less-css-mode)
(use-package license-templates)
(use-package markdown-mode)
(use-package markdown-preview-mode)
;;(use-package merlin)
;;(use-package npm)
;;(use-package npm-mode)
;;(use-package osx-clipboard)
(use-package osm)
;;(use-package osx-lib)
;(use-package osx-trash)
;;(use-package osa-chrome)
(use-package plur)
;;(use-package skewer-mode)
;;(use-package skewer-less)
;;(use-package skewer-reload-stylesheets)
;;(use-package stock-tracker)
(use-package typescript-mode)
(use-package utop)
;;(use-package w3m)
;;(use-package ytdl)
(use-package ytel)
(use-package tss)
;;(use-package daemons)
(use-package alt-codes)
(use-package devdocs)
(use-package dictcc)
;;(use-package dictionary)
;;(use-package didyoumean)
;;(use-package dune)
;;(use-package dune-format)
(use-package editorconfig)
;;(use-package editorconfig-generate)
(use-package elpl)
;;(use-package elsa)
(use-package eslint-fix)
(use-package eslint-rc)
(use-package fanyi)
;;(use-package fira-code-mode)
(use-package fireplace)
(use-package go-fill-struct)
(use-package go-gen-test)
(use-package go-autocomplete)
(use-package go-complete)
(use-package go-imports)
;;(use-package google-this)
(use-package goto-chg)
(use-package guess-language)
(use-package gulp-task-runner)
(use-package js-doc)
(use-package js-import)
(use-package font-utils)
(use-package fontawesome)
(use-package firestarter)
(use-package eslint-disable-rule)
(use-package atl-markup)
(use-package baff)
(use-package bash-completion)
(use-package baidu-translate)
(use-package linum-relative)
(use-package focus)
(use-package treemacs)
(use-package multiple-cursors)
(use-package whitespace-cleanup-mode)
(use-package mmm-mode)
(use-package auto-complete)
(use-package eldoc)
(use-package common-lisp-snippets)
(use-package highlight-defined)
(use-package tuareg)
(use-package ielm)
(use-package erlang)
(use-package bongo)
(use-package go-mode)
(use-package zenburn-theme)
(load-theme 'zenburn t)
(use-package web-mode)
;;(use-package eglot)
(use-package eshell)
(use-package exec-path-from-shell)
(use-package gif-screencast)
(use-package company)
(use-package flycheck
  :init(global-flycheck-mode))
(use-package crux)
(use-package sublimity)
(use-package yasnippet)
(yas-global-mode 1)
(use-package aggressive-indent)
(global-aggressive-indent-mode 1)
;;(use-package minimap)
;;(use-package visual-regexp)
(use-package highlight-symbol)
(use-package ac-html)
(use-package ac-html-csswatcher)
(use-package ac-clang)
(use-package ac-emmet)
(use-package company-web)
(use-package company-shell)
(use-package compiler-explorer)
(use-package company-erlang)
(use-package company-wordfreq)
;;(use-package clojure-mode)
(add-hook 'after-init-hook 'global-company-mode)
