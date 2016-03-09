import Data.Vect

pixel : Vect 1 Nat
pixel = 0 :: Nil

canvas : (rows: Nat) -> (cols: Nat) -> Vect rows (Vect cols Nat)
canvas rows cols = replicate rows (replicate cols 0)

-- Typechecking (ctrl-alt-r)
-- Case-splitting (ctrl-alt-c)
-- Clause-adding (ctrl-alt-a)
-- Proof-search (ctrl-alt-s)
-- Showing the types of a variable (ctrl-alt-t)
-- Show the doc for a variable (ctrl-alt-d)
-- make-with (ctrl-alt-w)
-- make-case (ctrl-alt-m)
-- make-lemma (ctrl-alt-l)
-- Showing holes
-- ipkg highlighting
-- REPL (ctrl-alt-enter)
