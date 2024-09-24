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

(package! project :pin "ccbad12da530b4b3968b50fa9399dbc074acb751" :built-in (>= emacs-major-version 30))
(package! which-key :pin "38d4308d1143b61e4004b6e7a940686784e51500" :built-in 'prefer)

(package! diff-hl :pin "b80ff9b4a772f7ea000e86fbf88175104ddf9557")

(package! vterm :pin "988279316fc89e6d78947b48513f248597ba969a")

(when (modulep! :tools tree-sitter)
  (package! tree-sitter :pin "3cfab8a0e945db9b3df84437f27945746a43cc71")
  (package! tree-sitter-langs :pin "611f4f06d4547e7a63c230666fa59214734bec89")
  (package! ts-fold
    :recipe (:host github :repo "emacs-tree-sitter/ts-fold")
    :pin "01c9ecaaa89966cdcd250ac37c24a9c9f530b725"))

(package! posframe :pin "570273bcf6c21641f02ccfcc9478607728f0a2a2")

(package! nerd-icons :pin "c3d641d8e14bd11b5f98372da34ee5313636e363")
(package! doom-themes
  :recipe (:host github :repo "bbenchan/doom-themes")
  :pin "42bdb56de8abfc0fcf3d2fd83ce41110ea9ebefd")

(when (modulep! :email mu4e +org)
  (package! org-msg :pin "59e2042e5f23e25f31c6aef0db1e70c6f54f117d"))

(package! cal-china-x
  :recipe (:host github :repo "cnsunyour/cal-china-x" :files ("*.el"))
  :pin "fa50ae0c5cf992e95288a3da9c02948a9b42c009")

(package! pinyinlib :pin "1772c79b6f319b26b6a394a8dda065be3ea4498d")

(package! rime :pin "d8c0a99b0282d3e0aca53146789f6864181228e7")

(package! go-translate :pin "424682b94df9efb3dd59e396677b45e4a67b7723")
(package! immersive-translate :pin "1d00d558363985fa988fc40cd5093bfc6926d83e")
(package! llm :pin "175e8ebc2944a9fe5080bc266d5c38ff3c6f361c")
(package! insert-translated-name
  :recipe (:host github :repo "manateelazycat/insert-translated-name" :files ("*.el" "*.py"))
  :pin "a2bc301f6e99a6f965f7612c5666546e3d1a8fe3")

(package! popweb
  :recipe (:host github :repo "manateelazycat/popweb" :files ("*.el" "*.py" "*.js" "extension"))
  :pin "b1ad611f2ab3b83dc1faf2b4d9872dead89bcb8d")

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
(package! goto-line-preview :pin "2d17b10252f3dc8b9737b86e901fc56016ee0f8a")
(package! auto-save
  :recipe (:host github :repo "manateelazycat/auto-save")
  :pin "0fb3c0f38191c0e74f00bae6adaa342de3750e83")

(if (featurep :system 'macos)
    (package! exec-path-from-shell :pin "72ede29a0e0467b3b433e8edbee3c79bab005884"))
(package! command-log-mode :pin "af600e6b4129c8115f464af576505ea8e789db27")
;; (package! pinentry :pin "91d51af8a1cb970743fb4841d7876c10ceb487e8")
(package! envrc :pin "7ba710767c14e0d8f3bba2f466a8d1d32d322277")
(package! mb-url :pin "a0ff17901324027774b943d8f58257adb9ae1861")

(package! aichat
  :recipe (:host github :repo "xhcoding/emacs-aichat" :files ("aichat-util.el" "aichat-openai.el"))
  :pin "1b3270c96080a67389f6089d489e883c8367e6f8")
(package! async-await :pin "e0d15e8057ed7520100bc50c5552278292ebcb07")

(package! easydraw
  :recipe (:host github :repo "misohena/el-easydraw")
  :pin "6f93e744d5f62de2176d3d0f0aa1f9e8d84ccefd")
(package! verb :pin "7becfb48d9744e8c6333ce186b4acaea2cb5d540")
(package! ox-gfm :pin "4f774f13d34b3db9ea4ddb0b1edc070b1526ccbb")

(when (modulep! :tools magit)
  ;; Due to the bugs in the latest version of ghub limited to an available version
  (if (modulep! :tools magit +forge)
      (package! ghub :pin "9cfd2aab8aeb614ef842a0abc46cd5d1ea8c4414"))
  (package! git-commit-ts-mode
    :recipe (:host github :repo "danilshvalov/git-commit-ts-mode")
    :pin "ba722ba44964e87b2acf48cb7b6154ad4c99bc26")
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
  :pin "da98ec5a089cf9c1f2e092228cdfc9fdd290b102")
(when (modulep! :checkers syntax +flymake)
  (package! flymake-bridge
    :recipe (:host github :repo "liuyinz/flymake-bridge")
    :pin "30f7ee8c5234b32c6d5acac850bb97c13ee90128"))
