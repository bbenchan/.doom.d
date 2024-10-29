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

(unpin! (:editor snippets) (:tools editorconfig))

(package! ws-butler :disable t)
(package! tide :disable t)
(package! tree-sitter-indent :disable t)
(package! mu4e-alert :disable t)

(package! project :pin "21f5d5c7bfdb7935828a51add8396658e4595ea7" :built-in (>= emacs-major-version 30))
(package! which-key :pin "38d4308d1143b61e4004b6e7a940686784e51500" :built-in 'prefer)

(package! diff-hl :pin "9e39dfc666ac03a8474b3a05da17e0c935894414")

(package! vterm :pin "988279316fc89e6d78947b48513f248597ba969a")

(when (modulep! :tools tree-sitter)
  (package! tree-sitter :pin "3cfab8a0e945db9b3df84437f27945746a43cc71")
  (package! tree-sitter-langs
    :recipe (:nonrecursive t)
    :pin "562e4681d365c70169d807e23db4c37427628627")
  (package! ts-fold
    :recipe (:host github :repo "emacs-tree-sitter/ts-fold")
    :pin "01c9ecaaa89966cdcd250ac37c24a9c9f530b725"))

(package! posframe :pin "ac9f954ac4c546e68daf403f2ab2b5ad4397f26e")

(package! nerd-icons :pin "cc6c46830305df123de20b18510b15838e1608d6")
(package! doom-themes
  :recipe (:host github :repo "bbenchan/doom-themes")
  :pin "42bdb56de8abfc0fcf3d2fd83ce41110ea9ebefd")

(when (modulep! :email mu4e +org)
  (package! org-msg :pin "59e2042e5f23e25f31c6aef0db1e70c6f54f117d"))

(package! cal-china-x
  :recipe (:host github :repo "cnsunyour/cal-china-x" :files ("*.el"))
  :pin "fa50ae0c5cf992e95288a3da9c02948a9b42c009")

(package! pinyinlib :pin "1772c79b6f319b26b6a394a8dda065be3ea4498d")

(package! rime :pin "e5c5ffb57088aa7ec6b82a6ca3f9499294124954")

(package! go-translate :pin "424682b94df9efb3dd59e396677b45e4a67b7723")
(package! immersive-translate :pin "1d00d558363985fa988fc40cd5093bfc6926d83e")
(package! llm :pin "72faac7893951f8c0de5c297234454c316b346d3")
(package! insert-translated-name
  :recipe (:host github :repo "manateelazycat/insert-translated-name" :files ("*.el" "*.py"))
  :pin "a2bc301f6e99a6f965f7612c5666546e3d1a8fe3")

(package! popweb
  :recipe (:host github :repo "manateelazycat/popweb" :files ("*.el" "*.py" "*.js" "extension"))
  :pin "86d72c6281a59248a6bf95fca7a031f4fa8b5b3c")

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
(package! auto-save
  :recipe (:host github :repo "manateelazycat/auto-save")
  :pin "0fb3c0f38191c0e74f00bae6adaa342de3750e83")
(package! thing-edit
  :recipe (:host github :repo "manateelazycat/thing-edit")
  :pin "49b6a7cbc6a45d1aa9977a3f8f0e5d06b343f100")

(package! command-log-mode :pin "af600e6b4129c8115f464af576505ea8e789db27")
;; (package! pinentry :pin "91d51af8a1cb970743fb4841d7876c10ceb487e8")
(package! envrc :pin "3c5a60dd917bf9db71d7b8fb822f7d5da7505a39")
(package! mb-url :pin "a0ff17901324027774b943d8f58257adb9ae1861")

(package! aider
  :recipe (:host github :repo "tninja/aider.el" :files ("aider.el"))
  :pin "3893b78a169fcfbd81bcff2f4d7eed83b821e770")
(package! gptel :pin "73bcc682f58cbef28fea27e055cc180b801b6a9d")
(package! corsair :pin "f750a435d6be68f0d75dc5a90f8aa3cb58e8c16a")

(package! easydraw
  :recipe (:host github :repo "misohena/el-easydraw")
  :pin "ad740d87e768052b0ef5b5e7f0822c7ac1b238fb")
(package! verb :pin "c05263f8cad09b9bf13b03ad9198c40400f31483")
(package! ox-gfm :pin "4f774f13d34b3db9ea4ddb0b1edc070b1526ccbb")

(when (modulep! :tools magit)
  ;; Due to the bugs in the latest version of ghub limited to an available version
  (if (modulep! :tools magit +forge)
      (package! ghub :pin "9cfd2aab8aeb614ef842a0abc46cd5d1ea8c4414"))
  (package! git-commit-ts-mode
    :recipe (:host github :repo "danilshvalov/git-commit-ts-mode")
    :pin "6eb42a3c08c5c6a1a610d433b93590b88a71f63e")
  (package! magit-gerrit
    :recipe (:host github :repo "darcylee/magit-gerrit")
    :pin "617d1b239942af62adaedfe4ce248f09a3a67029")
  (package! blamer :pin "8a79c1f370f7c5f041c980e0b727960462c192ba"))

(package! auto-rename-tag :pin "fb0a38e644354f38578fee8e0bf5fe7f124aa8a7")

(when (modulep! :lang go)
  (package! go-impl :pin "1eebba6ccd02d11a5a82ad4540a8d562797bc3b3")
  (package! go-fill-struct :pin "9e2e4be5af716ecadba809e73ddc95d4c772b2d9")
  (disable-packages! go-eldoc))
(package! pkgbuild-mode :pin "8c31b24e5979fddf2411456c8957f41f06ae5714")
(package! protobuf-ts-mode
  :recipe (:host github :repo "emacsattic/protobuf-ts-mode")
  :pin "65152f5341ea4b3417390b3e60b195975161b8bc")
(package! nginx-mode :pin "c4ac5de975d65c84893a130a470af32a48b0b66c")
(when (modulep! :checkers syntax +flymake)
  (package! flymake-sqlfluff :pin "0a836d7a919723ae5897fce01c3c7d651a30e8c6"))
(package! sqlup-mode :pin "3f9df9c88d6a7f9b1ae907e401cad8d3d7d63bbf")
(package! sql-indent
  :recipe (:host github :repo "alex-hhh/emacs-sql-indent")
  :pin "c3dd49ccd1f0655ed1699058c16a777ac1cb1419")
(package! ob-sql-mode :pin "2eaf436a6ac2178b94442d80f84fc6c02aa644d8")

;; (package! topsy :pin "8b6c6d5026ac72b4c3704ed7bb8fafe1ea343699")

(package! lsp-bridge
  :recipe (:host github
           :repo "bbenchan/lsp-bridge"
           :files ("*.el" "*.py" "acm" "core" "langserver" "multiserver" "resources")
           :build (:not compile))
  :pin "da1c8b3f2d3f782b3cd4c376c10bab243700ef25")
(when (modulep! :checkers syntax +flymake)
  (package! flymake-bridge
    :recipe (:host github :repo "liuyinz/flymake-bridge")
    :pin "30f7ee8c5234b32c6d5acac850bb97c13ee90128"))
