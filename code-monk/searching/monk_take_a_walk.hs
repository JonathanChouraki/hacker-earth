import Data.Char

main = do
  numberOfTestCases <- getLine
  processLine (read numberOfTestCases :: Int)

processLine 0 = return()
processLine n = do
  line <- getLine
  print $ countVowels line
  processLine (n-1)

countVowels :: String -> Int
countVowels line = length $ filter (`elem` ['a','e','i','o','u']) $ map toLower line
