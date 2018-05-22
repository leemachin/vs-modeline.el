;;; vs-modeline.el --- a Visual Studio Code style mode-line for Emacs

;; Copyright (c) 2018 Lee Machin

;; Author: Lee Machin <me@mrl.ee>
;; URL: https://github.com/leemachin/vs-modeline.el
;; Keywords: modeline mode-line
;; Version: 1.0.0

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; A mode-line that more or less looks and feels like the status bar in
;; Visual Studio Code.

;;; Usage:
;; put (vs-modeline-enable) in your init.el to enable
;; `vs-modeline`.

;;; Credits:

;; Microsoft and the VS Code developers ;)

;;; Code:

(defgroup vs-modline nil
  "Visual Studio Code style mode-line"
  :group 'mode-line)

(defun vs-modeline--format ()
  "Formatting for vs-modeline."
  `(
    ;; add a noticeable red block that says 'READ ONLY' when the file's, er, read only
    (:eval
    ;; show the current branch and VCS in use, if there is one
    (:propertize (vc-mode vc-mode) face (:weight normal))
    " "
    (when (eql buffer-read-only t)
       ;; propertize adds metadata to text, so you can add colours and formatting, amongst other things
       (propertize " READ ONLY " 'face
                   '(:background "color-88" :foreground "white" :weight bold))))
    ;; show the buffer filename, with a green background when unmodified/saved and a red one when modified
    (:eval
     (propertize " %b " 'face
                 (if (buffer-modified-p)
                     '(:background "red" :foreground "white" :weight bold)
                   '(:background "green" :foreground "black" :weight bold))))
    ;; show the current major mode in use (use obsolete format because trailing spaces nice it up)
    (:propertize " %m " face (:background "lightblue"))
    ;; show the line number and column number (no 'All', 'Top', 'Bottom', etc.)
    (:propertize " %l:%c " face (:background "black" :foreground "white" :weight light))))

;;;###autoload
(define-minor-mode vs-modeline-mode
  "toggle vs-modline on or off"
  :group 'vs-modeline
  :global t
  (setq-default mode-line-format
                (if vs-modeline-mode
                    `("%e" ,@(vs-modeline--format))
                  mode-line-format)))

(provide 'vs-modeline)

;;; vs-modeline.el ends here

