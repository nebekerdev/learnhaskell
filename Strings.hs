-- Haskell Strings and Lists practice
module LearnStrings where

myString :: String
myString = (++) "Hello " "World!"
hello :: String
hello = "Hello "

world :: String
world = "World!"

concatString :: String
concatString = hello ++ world

hello2 :: String
hello2 = "Hello "

world2 :: String
world2 = "World!"

concatString2 = concat[hello2, world2] -- Strings are just list of char [Char], concat is [[Char]]

main :: IO()
main = do
  putStrLn concatString2
  putStrLn finalConcatForm
  where finalConcatForm =
          (++) hello2 ((++) " " world2)
-- General List Functions
foo :: String
foo = 'c' : "harts"
fooFirst :: Char
fooFirst = head foo
fooRest :: String
fooRest = tail foo
fooPick2 :: [Char]
fooPick2 = take 1 foo
fooPick3 :: [Char]
fooPick3 = take 3 foo
fooPick4 :: String
fooPick4 = drop 3 foo
-- Now we can exercise a bit more control by picking a specific element at a specific index
fooPick5 :: Char
fooPick5 = foo !! 3
-- Many of these previous functions are UNSAFE because they fail on an empty list
fooPick6 = foo !! x where
  x :: Int
  x = 3
-- Using where and let
fooPick7 = let x = 5
           in  foo !! x
