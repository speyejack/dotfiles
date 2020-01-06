;;; jag-tests-configuring.el --- Tests for configuring functions

;;; Commentary:

;;; Code:

(require 'jag-funcs-configuring)

(ert-deftest jag-tests-configuring--new-template-name ()
  "Tests the generation of new template names."
  (should (string-equal (jag--new-template-name "test" "template") "jag-test-template"))
  (should (string-equal (jag--new-template-name "test" "") "jag-test-"))
  (should (string-equal (jag--new-template-name "" "template") "jag--template"))
  (should (string-equal (jag--new-template-name "funcs" "testing") "jag-funcs-testing")))

(provide 'jag-tests-configuring)
;;; jag-tests-configuring.el ends here
