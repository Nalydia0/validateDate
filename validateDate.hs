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
checkDateValidity dateInput =
    case dateParser dateInput of -- use the case to perform pattern matching. This will map the parsed date to the format day month year, which just makes more sense
    [day, month, year] | year > 0 && year <= 9999 -> --ensure year is within the right parmas
        case month of -- check the date for each month
        1 | day <= 31 && day > 0 -> True
        2 | (day > 0 && day <= 28) || (leapYearCheck [day,month,year] && day == 29) -> True
        3 | day <= 31 && day > 0 -> True -- march
        4 | day <= 30 && day > 0 -> True --April
        5 | day <= 31 && day > 0 -> True -- May
        6 | day <= 30 && day > 0 -> True --June
        7 | day <= 31 && day > 0 -> True -- jully
        8 | day <= 31 && day > 0 -> True
        


                    

leapYearCheck :: [Int] -> Bool
leapYearCheck date =  (date !! 1) `div` 4 == 0 
                        
       