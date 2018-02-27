
(cl:in-package :asdf)

(defsystem "im_pickit_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :im_pickit_msgs-msg
)
  :components ((:file "_package")
    (:file "CheckForObjects" :depends-on ("_package_CheckForObjects"))
    (:file "_package_CheckForObjects" :depends-on ("_package"))
    (:file "CopyCalibration" :depends-on ("_package_CopyCalibration"))
    (:file "_package_CopyCalibration" :depends-on ("_package"))
    (:file "LoadConfig" :depends-on ("_package_LoadConfig"))
    (:file "_package_LoadConfig" :depends-on ("_package"))
    (:file "LoadSnapshot" :depends-on ("_package_LoadSnapshot"))
    (:file "_package_LoadSnapshot" :depends-on ("_package"))
    (:file "SaveConfiguration" :depends-on ("_package_SaveConfiguration"))
    (:file "_package_SaveConfiguration" :depends-on ("_package"))
    (:file "SaveSnapshot" :depends-on ("_package_SaveSnapshot"))
    (:file "_package_SaveSnapshot" :depends-on ("_package"))
    (:file "StrArg" :depends-on ("_package_StrArg"))
    (:file "_package_StrArg" :depends-on ("_package"))
  ))