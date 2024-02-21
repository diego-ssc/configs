(quail-define-package
 "Spanish-prefix" "" "" t
 "Input method for spanish transcription."
 nil t nil nil nil nil nil nil nil nil t)

(defun insert-math-mode (key idx)    ; key=keyword, idx=length
  (quail-delete-region)
  (setq quail-current-str nil
        quail-converting nil
        quail-conversion-str "")

  (insert "\\[\\]")
  (backward-char)
  (backward-char)

  (throw 'quail-tag nil)
  )

(quail-define-rules
 ("\\'a" ?á)
 ("\\'e" ?é)
 ("\\'i" ?í)
 ("\\'o" ?ó)
 ("\\'u" ?ú)
 ("\\'A" ?Á)
 ("\\'E" ?É)
 ("\\'I" ?Í)
 ("\\'O" ?Ó)
 ("\\'U" ?Ú)
 ("\\~n" ?ñ)
 ("\\~N" ?Ñ)
 ("\\\"a" ?ä)
 ("\\\"e" ?ë)
 ("\\\"i" ?ï)
 ("\\\"o" ?ö)
 ("\\\"u" ?ü)
 ("\\\"A" ?Ä)
 ("\\\"E" ?Ë)
 ("\\\"I" ?Ï)
 ("\\\"O" ?Ö)
 ("\\\"U" ?Ü)
 ("\\`?" ?¿)
 ("\\`!" ?¡)
 ("\\[" insert-math-mode))
