
data Car = Car { company :: String, model :: String, year :: Int } deriving (Show)

yellCar :: Car -> [Char]
yellCar Car { company = company } = company ++ "company"

newtype Frank a b  = Frank {frankField :: b a} deriving (Show)

yellFrank Nothing  = show '1'
yellFrank (Just a) =  show (Frank { frankField = Just a})

newtype Person = Person { firstName :: String} deriving (Show)
