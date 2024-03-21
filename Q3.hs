WeChat: cstutorcs
QQ: 749389476
Email: tutorcs@163.com
{-
  Q3. Songs
-}

data Song = Harmony Song Song
          | Atom String
          deriving (Show, Eq)    -- writing Eq here lets us use == to compare Songs
          
{-
  Q3a. sing: See a2.pdf for complete instructions.

  Hint: You may be able to simplify your code by writing a helper function.
-}

sing :: Song -> Song

-- (replace this line with your clauses)

sing other = other      -- (you're allowed to change this line if you need to)



ascend = Harmony (Harmony (Atom "s0") (Atom "k1")) (Atom "k2")

test_sing1 = (sing (Harmony ascend (Atom "k3")))
              == Harmony (Harmony (Atom "k1") (Atom "k3"))
                         (Harmony (Atom "k2") (Atom "k3"))
                         
test_sing2 = sing (sing (Harmony (Harmony (Atom "k1") (Atom "k"))
                                 (Harmony (Atom "k2") (Atom "k"))))
              == Atom "k"

test_sing3 = (sing ascend) == ascend

test_sing4 = sing (Harmony (Atom "s?") (Harmony ascend (Atom "k0")))
              == Harmony
                   (Atom "s?")
                   (Harmony (Harmony (Atom "k1") (Atom "k0"))
                            (Harmony (Atom "k2") (Atom "k0")))

{-
  Q3b. repeat_sing: See a2.pdf for instructions.
-}

repeat_sing :: Song -> Song
repeat_sing s = undefined

test_repeat1 = repeat_sing (Harmony ascend (Atom "z")) == Atom "z"



{-
  Q3c.  BONUS: See a2.tex.
  This question might not have an answer, and is not worth very much,
  so don't attempt it unless you really want to.
  
  Your solution must not be infinite, that is, it must not be self-referential
  or recursive.
-}
diverging_song :: Song
diverging_song = undefined
