import           Data.Char     (toUpper)


-- main = do
--   putStrLn "Hello, world!"
--   putStrLn "What's your firstname?"
--   firstname <- getLine
--   putStrLn "What's your lastname?"
--   lastname <- getLine
--   let bigFirstname = map toUpper firstname
--       bigLastname = map toUpper lastname
--   putStr ("Hey " ++ bigFirstname ++ " " ++ bigLastname ++ ", you rock!")

-- main = do
--   putStrLn "Please say something!"
--   sentence <- getLine
--   if null sentence
--     then return ()
--     else do
--       putStrLn $ unwords . map reverse . words $ sentence
--       main

-- main = do
--   c <- getChar
--   when (c /= ' ') $ do
--     putChar c
--     main

-- when boo monad =
--   if boo then monad
--      else return ()


import           Control.Monad

main = do
    colors <- mapM  (\a -> do
        putStrLn $ "Which color do you associate with the number " ++ show a ++ "?"
        color <- getLine
        return color) [1,2,3,4]
    putStrLn "The colors that you associate with 1, 2, 3 and 4 are: "
    mapM putStrLn colors
