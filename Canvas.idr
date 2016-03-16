module Canvas

import Data.Vect

pixel : Vect 1 Nat
pixel = 0 :: Nil

canvas : (rows: Nat) -> (cols: Nat) -> Vect rows (Vect cols Nat)
canvas rows cols = replicate rows (replicate cols 0)

-- You could try drawPointFin in the REPL with eg. drawPointFin (canvas 3 3) 1 (FS 1) (FS 0)
drawPointFin : (oldCanvas: Vect rows (Vect cols Nat)) ->
               (value: Nat) ->
               (row: Fin rows) ->
               (col: Fin cols) ->
               Vect rows (Vect cols Nat)
drawPointFin oldCanvas value row col = replaceAt row newrow oldCanvas
  where newrow = replaceAt col value (index row oldCanvas)

tryUpdate : (oldVector: Vect size a) ->
            (newValue: a) ->
            (position: Nat) ->
            Vect size a
tryUpdate oldVector newValue position {size = Z} = oldVector
tryUpdate oldVector newValue position {size = (S k)} = case (natToFin position (S k)) of
  Nothing => oldVector
  Just i  => replaceAt i newValue oldVector

-- You could try drawPoint in the REPL with eg. drawPoint (canvas 3 3) 1 2 1
-- drawPoint : (oldCanvas: Vect rows (Vect cols Nat)) ->
--             (value: Nat) ->
--             (row: Nat) ->
--             (col: Nat) ->
--             Vect rows (Vect cols Nat)
-- drawPoint oldCanvas value row col = tryUpdate oldCanvas newrow row
--   where newrow = tryUpdate (index row oldCanvas) value col

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
