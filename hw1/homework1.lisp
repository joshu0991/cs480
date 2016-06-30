
;;1. (4p) Give iterative and recursive definitions of a function that

;;   (a) takes a positive integer and prints that many dots.
(defun iterativeDotGenerator (x) 
  (loop
    for m from 1 to x
      do (princ ".")
  ) 
)

(defun recursiveDotGenerator (x)
    (if (= x 1)
      ;; base case just return 1
      1
      (
        recursiveDotGenerator (- x 1) 
      )
    )
    (princ ".")
)
;; (b) takes a list and returns the number of times the symbol a
;;       occurs in it.;;    
(defun iterativeLetterCount (list) 
  (let ((count 0)) 
    (loop for sym in list do 
      (if (eq sym 'a) 
        (setq count (+ count 1) ) 
      ) 
    ) 
    (princ count)
  ) 
)

(defun recursiveCountLetter (lis) 
  (let ((counter 0)) 
  (if (null lis) 0 
    (if (eq (first lis) 'a) 
      (setq counter (+ 1 (countLetter (rest lis)))) 
      (countLetter (rest lis))) )))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; 2. (3p) A friend is trying to write a function that returns the sum of all
;;   the non-nil elements in a list. He has written two versions of this 
;;   function and neither of them work. Explain what is wrong with each,
;;   and give a correct version:

;;(A) (defun summit (lst)
;;      (remove nil lst)
;;        (apply #'+ lst))

;; ***** This function fails due to the remove function not modifying
;;       the actual lst variable, so when the nil is removed it is not 
;;       removed from the same list that gets the + operator applied to it
;;       The working version is:

(defun summit (lst) 
  (setq lst (remove nil lst))
    (apply #'+ lst))

;;   (b) (defun summit (lst)
;;          (let ((x (car lst)))
;;	     (if (null x)
;;		 (summit (car lst))
;;		 (+ x (summit (cdr lst))))))

;; ***** This function causes an infinite loop because
;;       the recursive function does not have a base case
;;       i.e. the if clause does not contain a call that 
;;       doesn't call the summit function again. 
;; A corrected version can be seen below:

(defun summit (lst) 
  (let ((x (car lst))) 
  (progn (if (null lst) 
    0 
    (if (null x) 
      (summit (cdr lst)) 
      (+ x (summit (cdr lst))))))))

