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

## Customisation

What with this being a rip-off of what VS Code does the main structure of the mode-line is quite opinionated and not very configurable. However, the following things will eventually be open for customisation when I'm happy with what I've got for myself:

- colours
- text/fonts
- special case behaviour for certain modes (e.g. flycheck, evil)
- anything else I've missed or needs tweaking to fit in nicely


## Contributing

Always welcome if you feel like it :) please add a screenshot or something to the PR though, so it's easy to visualise the change.
