-- Data types practice

--data Mood = Blah | Woot deriving Show



-- 1) What is the type constructor?
--    Mood
--
-- 2) If the function requires a Mood value,
--    what are the values you could use?
--
--    Blah or Woot
--
-- 3) changeMood :: Mood -> Woot
--    what's wrong with this?
--
--    One, it doesn't use data constructors, it
--    uses a type constructor and a data construct
--    or
--
--    Two, even if that did work, it would set
--    the mood to Woot every single time
--
-- 4) Fix the definition

data Mood = Blah | Woot deriving Show
changeMood Woot = Blah
changeMood Blah = Woot


