--Create a function that parses the date,
-- This will take in the string format "dd/mm/yyyy" and convert it,
-- into the format day month year 
dateParser :: String -> [Int]
dateParser "" = [] --Base case where an empty string = an empty list
dateParser string = 
    --Read the first result before the comma and conveert to an int
    -- Then prepend this with the recursive call of this function
     --rest of string represents the rest of the string
    read input : dateParser restOfString --Read the first result before the comma and conveert to an int
    where -- This will split the string at the '/'
    (input, restOfStringWithSlash) = break (== '/') string
    restOfString = drop 1 restOfStringWithSlash -- drop the '/' so that we only need to read the following numeric section i.e read will try to read / so we need to drop it

--Create our validity checking function using guards cases and pattern matching
checkDateValidity :: String -> Bool
                    

leapYearCheck :: [Int] -> Bool
leapYearCheck date =  date !! 3 `div` 4 == 0 
                        
       