(require 'structurizr-dsl-mode)
(require 'faceup)


(ert-deftest mode-smoke-test ()
  "Ensure that we can activate structurizr-dsl-mode major mode"
  (with-temp-buffer (structurizr-dsl-mode)))

(defun check-highlight (faceup)
  (faceup-test-font-lock-string 'structurizr-dsl-mode faceup))
(faceup-defexplainer check-highlight)

(ert-deftest mylang-font-lock-test-simple ()
  "workspace is a keyword"
  (should (check-highlight "«k:workspace» {}")))
