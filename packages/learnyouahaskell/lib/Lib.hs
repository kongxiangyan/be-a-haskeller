doubeMe x = x + x
doubleUs x y = x * 2 + y * 2

doubleUsV2 x y = doubeMe x + doubeMe y

doubleSmallNumber x = if x <= 100 then x * 2 else x

doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1



boomBangs xs = [(if x > 10 then "BANG!" else "BOOM!") | x <- xs, x `mod` 2 == 1]

lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

factorial 0 = 1
factorial x = x * factorial (pred x)

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [ w / h ^ (2 :: Int) | (w, h) <- xs]

maximum' [] = error "maxumum of empty list."
maximum' [x] = x
maximum' (x:xs)
    | x > remain = x
    | otherwise = remain
    where remain = maximum' xs

take' n _
    | n <= 0 = []
take' n [] = []
take' n (x: xs) = x:take' (n - 1) xs

reverse' []     = []
reverse' [x]    = [x]
reverse' (x:xs) = reverse' xs ++ [x]

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
    | p x       = x : filter' p xs
    | otherwise = filter' p xs
