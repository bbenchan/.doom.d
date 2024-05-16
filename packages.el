;; -*- no-byte-compile: t; lexical-binding: t; -*-
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

(unpin! (:editor snippets))

(package! ws-butler :disable t)
(package! tide :disable t)
(package! tree-sitter-indent :disable t)
(package! mu4e-alert :disable t)

(if (>= emacs-major-version 30)
    (package! project :built-in t))

(package! nerd-icons :pin "fb395120e9de33b276d16caaccaefd98d4340b92")

(when (modulep! :tools tree-sitter)
  (package! tree-sitter :pin "3cfab8a0e945db9b3df84437f27945746a43cc71")
  (package! tree-sitter-langs :pin "b97e0b9f5f66c614bdaf16ae42e281c1a0d54795")
  (package! ts-fold
    :recipe (:host github :repo "emacs-tree-sitter/ts-fold")
    :pin "6f62175d8bc42914c00ffdd9bb38677d9fb55a9c"))

(package! posframe :pin "f4e9e509ba96ceb3c2b2b054957291607fb52651")

(package! doom-themes
  :recipe (:host github :repo "bbenchan/doom-themes")
  :pin "d57e023efd0e7614605b5eaa9d2e01b54fa78808")

(package! cal-china-x
  :recipe (:host github :repo "cnsunyour/cal-china-x" :files ("*.el"))
  :pin "fa50ae0c5cf992e95288a3da9c02948a9b42c009")

(package! pinyinlib :pin "1772c79b6f319b26b6a394a8dda065be3ea4498d")

(package! rime :pin "d8c0a99b0282d3e0aca53146789f6864181228e7")

(package! go-translate :pin "eb10b1ff173c6f39106ca7ea5ce6e741ad2f6324")
(package! immersive-translate :pin "1d00d558363985fa988fc40cd5093bfc6926d83e")
(package! insert-translated-name
  :recipe (:host github :repo "bbenchan/insert-translated-name" :branch "google")
  :pin "4263968c2bcaf6ecc6c66c9ca43770f39aa09b8b")

(package! popweb
  :recipe (:host github :repo "manateelazycat/popweb" :files ("*.el" "*.py" "*.js" "extension"))
  :pin "1777618c3ef68ceb10dacab71a167e4e7743ca37")

(package! websocket :pin "40c208eaab99999d7c1e4bea883648da24c03be3")
(package! websocket-bridge
  :recipe (:host github :repo "ginqi7/websocket-bridge")
  :pin "40676478e3b2dd5af068b1f7f7024776e7557446")
(package! dictionary-overlay
  :recipe (:host github :repo "ginqi7/dictionary-overlay" :files ("*.el" "*.py" "resources"))
  :pin "9ef93d1de071de40b71644e3dd7a83342399c24b")
(package! deno-bridge
  :recipe (:host github :repo "manateelazycat/deno-bridge")
  :pin "ad0d7a9626f81509b9b3087723010a2a9a0fca37")

(package! hungry-delete :pin "d919e555e5c13a2edf4570f3ceec84f0ade71657")
(package! centered-cursor-mode :pin "67ef719e685407dbc455c7430765e4e685fd95a9")
(package! goto-line-preview :pin "12bd8de67c33bbeffbe77866b5ea7299786110cb")
(package! auto-save
  :recipe (:host github :repo "manateelazycat/auto-save")
  :pin "0fb3c0f38191c0e74f00bae6adaa342de3750e83")

(if (featurep :system 'macos)
    (package! exec-path-from-shell :pin "72ede29a0e0467b3b433e8edbee3c79bab005884"))
(package! command-log-mode :pin "af600e6b4129c8115f464af576505ea8e789db27")
(package! pinentry :pin "91d51af8a1cb970743fb4841d7876c10ceb487e8")
(package! envrc :pin "8571bf94b6a63ffd9a84100106602f88ba186854")

(package! robby
  :recipe (:host github :repo "stevemolitor/robby")
  :pin "34cc41331f628685df0bb48983bbfd8531e1127f")

(package! verb :pin "b5de5c18e58c3066d7fdbd033a42fa66d5da73c6")

(when (modulep! :tools magit)
  (package! magit-gerrit
    :recipe (:host github :repo "darcylee/magit-gerrit")
    :pin "9ea3f65918c6cb8ffdb6500b97be15cc1a15a887")
  (package! blamer :pin "ab7d19c2ee54424d3ffc853982fe875ad47b6e7f"))

(package! lsp-bridge
  :recipe (:host github
           :repo "bbenchan/lsp-bridge"
           :files ("*.el" "*.py" "acm" "core" "langserver" "multiserver" "resources")
           :build (:not compile))
  :pin "035e3c5072892d3ef111bb0102a26d9902daa671")
(when (modulep! :checkers syntax +flymake)
  (package! flymake-bridge
    :recipe (:host github :repo "liuyinz/flymake-bridge")
    :pin "30f7ee8c5234b32c6d5acac850bb97c13ee90128"))

(when (modulep! :lang go)
  (package! go-impl :pin "1eebba6ccd02d11a5a82ad4540a8d562797bc3b3")
  (package! go-fill-struct :pin "9e2e4be5af716ecadba809e73ddc95d4c772b2d9")
  (disable-packages! go-eldoc))
(package! pkgbuild-mode :pin "9525be8ecbd3a0d0bc7cc27e6d0f403e111aa067")
(package! protobuf-ts-mode
  :recipe (:host github :repo "emacsattic/protobuf-ts-mode")
  :pin "65152f5341ea4b3417390b3e60b195975161b8bc")
(package! nginx-mode :pin "c4ac5de975d65c84893a130a470af32a48b0b66c")
(when (modulep! :checkers syntax +flymake)
  (package! flymake-sqlfluff :pin "598dff268231f74ba902e2c607c85dd014fbee28"))
(package! sqlup-mode :pin "3f9df9c88d6a7f9b1ae907e401cad8d3d7d63bbf")
(package! sql-indent
  :recipe (:host github :repo "alex-hhh/emacs-sql-indent")
  :pin "c3dd49ccd1f0655ed1699058c16a777ac1cb1419")
(package! ob-sql-mode :pin "2eaf436a6ac2178b94442d80f84fc6c02aa644d8")
(package! auto-rename-tag :pin "71987b2088d2da2d8d03b6902c13fc2df8fe1677")
