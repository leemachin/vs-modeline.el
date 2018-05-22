# ![vs-modeline.el](./silly-logo.png)

A mode-line that more-or-less feels like the status bar in [VS Code](https://code.visualstudio.com).


## Installation

**Not ready for installation yet ;)**

### Try it on for size 

<kbd>M-x</kbd> `package-install` <kbd>RET</kbd> `vs-modeline` <kbd>RET</kbd>
<kbd>M-x</kbd> `vs-modeline-mode`

### [`use-package`](https://github.com/jwiegley/use-package)

``` emacs-lisp
(use-package vs-modeline
  :config (vs-modeline-mode t))
```

### Manual install

``` emacs-lisp
;; put file in your .emacs dir
(require 'vs-modeline)
(vs-modeline-mode t)
```
