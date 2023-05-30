;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;(package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/radian-software/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see radian-software/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;(unpin! pinned-package)
;; ...or multiple packages
;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;(unpin! t)

(package! posframe :pin "3b97dc180b03498103cfcc7f44e64150df440bf0")

(package! cal-china-x
  :recipe (:host github :repo "cnsunyour/cal-china-x" :files ("*.el"))
  :pin "fa50ae0c5cf992e95288a3da9c02948a9b42c009")

(package! rime :pin "6438abacace7d94f05fabc45b82d619677fc5fca")

(package! google-translate :pin "e60dd6eeb9cdb931d9d8bfbefc29a48ef9a21bd9")

(package! popweb
  :recipe (:host github :repo "manateelazycat/popweb" :files ("*.el" "*.py" "*.js" "extension"))
  :pin "751e66eed0b863f86b9f9641ffd7d354aef6590a")

(package! websocket :pin "1a08093b122d8cf20366a1cba5faddf7a53d08ed")
(package! websocket-bridge
  :recipe (:host github :repo "ginqi7/websocket-bridge")
  :pin "40676478e3b2dd5af068b1f7f7024776e7557446")
(if IS-MAC
    (package! insert-translated-name
      :recipe (:host github :repo "cxb811201/insert-translated-name" :files ("*.el" "*ts"))
      :pin "a736ca1ac391f43f65d14f64c2f4388da013858a")
  (progn
    (package! deno-bridge
      :recipe (:host github :repo "manateelazycat/deno-bridge")
      :pin "ad0d7a9626f81509b9b3087723010a2a9a0fca37")
    (package! insert-translated-name
      :recipe (:host github :repo "manateelazycat/insert-translated-name" :files ("*.el" "*ts"))
      :pin "79975d06a2fc620372706ab5aac711219b163f4c")))
(package! dictionary-overlay
  :recipe (:host github :repo "ginqi7/dictionary-overlay" :files ("*.el" "*.py" "resources"))
  :pin "a1146e47da22ed43d439bb820527ebf59c1bee4c")

(package! phi-search :pin "c34f5800968922d1f9e7b10092b8705d6640ad18")
(package! hungry-delete :pin "d919e555e5c13a2edf4570f3ceec84f0ade71657")
(package! centered-cursor-mode :pin "ebaeb80fba0bafdf6f95706308123dec2cf4b99f")
(package! auto-save
  :recipe (:host github :repo "manateelazycat/auto-save")
  :pin "e0a6f2e85e2aae115321e2cdfee892d48f0d9597")
(if (<= emacs-major-version 28)
    (package! duplicate-line
      :recipe (:host github :repo "manateelazycat/duplicate-line")
      :pin "03b8aa8c4ab094b59881421d34a2028c6b5ce2b1"))
(package! goto-line-preview :pin "c6db484cf401351f7f2f57496b0466b774435947")

(if IS-MAC
    (package! exec-path-from-shell :pin "ddd24dc823de9a94435b4d8ea7569161657f31e2"))
(package! command-log-mode :pin "af600e6b4129c8115f464af576505ea8e789db27")

(package! which-key-posframe :pin "421cbfbe5d43ca8a48ecb18ea6d3d95f9ca6e9e6")

(if (modulep! :tools magit)
    (package! blamer :pin "ab00e6a3ea482c342d918add9c20bfd3fa740aaa"))

(package! lsp-bridge
  :recipe (:host github
           :repo "manateelazycat/lsp-bridge"
           :files ("*.el" "*.py" "acm" "core" "langserver" "multiserver" "resources"))
  :pin "a1ad7768e2cdd0c78cb377adbd8096b7f4d2e00d")

(when (modulep! :lang go)
  (package! go-fill-struct :pin "9e2e4be5af716ecadba809e73ddc95d4c772b2d9")
  (disable-packages! go-eldoc))
(package! pkgbuild-mode :pin "9525be8ecbd3a0d0bc7cc27e6d0f403e111aa067")
(package! protobuf-mode
  :recipe (:host github :repo "emacsmirror/protobuf-mode" :files ("*.el"))
  :pin "745044422c9062e5cffbfbba33c030c30f9c0694")
(package! sqlup-mode :pin "3f9df9c88d6a7f9b1ae907e401cad8d3d7d63bbf")
(package! sql-indent
  :recipe (:host github :repo "alex-hhh/emacs-sql-indent")
  :pin "d6f451dc09fb1a6f38a8327cf46ef246431afbd9")
(package! ob-sql-mode :pin "2eaf436a6ac2178b94442d80f84fc6c02aa644d8")
