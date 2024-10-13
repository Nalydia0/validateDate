#<Strong><u>Date Validation in haskell<u><Strong>

## <Strong> Overview <Strong>
This project is the Haskell Implementation required to validate all dates in the Gregorian Calendar, including the ability to handle leap years. 

This program parses a date string in the fomrat of `dd/mm/yyyy` and then verifies it's valid based on a set of conditionals.


## <Strong> <u> Features <u> <Strong>

* #### Data Parsing
    We convert a string date from the format `dd/mm/yyyy` into individual components: `day`, `month`, `year`.

* #### Data Validation: Checks if the parsed date is valid by ensuring
    * The year is within a resonable range from (0 to 9999)
    * Each month has a correct number of days
    * Feburary is adjusted for leap years
* #### Leap Year Check: Implements leap year checking via leap year rules
    * A year is a leap year if divisible by4, except if divisible by 100 unless also divisible by 400

## How to contribute

1) **Fork the Repository**: Click the "Fork" Button at the top right of this page to create your copy of this repository

2. **Clone Your Fork**: Clone your fork to your local machine using:
    ```bash
    git clone https://github.com/Nalydia0/validateDate
    ```

3. **Create a New Branch**: Before making changes, create a new branch:
    ```bash
    git checkout -b feature/your-feature-name
    ```

4. **Make Changes**: Implement your feature or bug fix.

5. **Commit Your Changes**: Add and commit your changes:
    ```bash
    git add .
    git commit -m "Description of changes"
    ```

6. **Push Your Changes**: Push your changes to your fork:
    ```bash
    git push origin feature/your-feature-name
    ```

7. **Open a Pull Request**: Go to the original repository, and you'll see a "Compare & pull request" button. Click it and fill out the details.

## Guidelines
- Please ensure your code adheres to our coding standards.
- Include tests where applicable.
- Reference any related issues in your pull request.

Thank you for your contribution!
