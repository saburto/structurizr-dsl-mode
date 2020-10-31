(require 'structurizr-dsl-mode)
(require 'faceup)


(ert-deftest mode-smoke-test ()
  "Ensure that we can activate structurizr-dsl-mode major mode"
  (with-temp-buffer (structurizr-dsl-mode)))

(defun check-highlight (faceup)
  (faceup-test-font-lock-string 'structurizr-dsl-mode faceup))
(faceup-defexplainer check-highlight)

(defun should-be-keyword-highlight (keyword)
  (should (check-highlight (format "«k:%s»" keyword))))

(defun should-be-type-highlight (keyword)
  (should (check-highlight (format "«t:%s»" keyword))))


(ert-deftest check-keywords ()
  (mapcar 'should-be-type-highlight structurizr-dsl-mode/types))

(ert-deftest check-keywords ()
  (mapcar 'should-be-keyword-highlight structurizr-dsl-mode/keywords))

(ert-deftest check-single-comment ()
  (should (check-highlight "«x:// this is a comment»")))


(ert-deftest check-multiline-comment ()
  (should (check-highlight "
«x:/* this is a second comment

second line
 */
»")))

(ert-deftest check-single-comment-with-hashtag ()
  (should (check-highlight "«x:# this is a comment»")))
