## StringCalculator Test Cases

| Context                                | Test Description                                             | Expected Behavior                                                               |
| -------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------------------------- |
| **when empty string is passed** | Returns 0                                                    | Returns 0 when an empty string is provided.                                    |
| **when valid single digit number is passed** | Returns 2                                                    | Returns the single digit number when a valid single digit string is passed.    |
| **when valid 3 digit number is passed** | Returns 100                                                  | Returns the 3 digit number when a valid 3 digit number string is passed.     |
| **when , separated numbers string is passed** | Returns 6                                                    | Returns the sum of comma-separated numbers (e.g., "1,2,3" returns 6).          |
|                                        | Returns 300                                                  | Returns the sum of comma-separated numbers (e.g. "100,200" returns 300).        |
| **when custom delimiter is added** | Returns the sum of numbers separated by #                    | Returns the sum of numbers separated by a custom delimiter (e.g., "//#\n1#2#3"). |
|                                        | Returns the sum of numbers with more than 1 digit separated by # | Handles custom delimiters with multi-digit numbers.                                |
| **when -ve numbers are present in the string** | Raises error with single negative number                  | Raises an error when a single negative number is present.                         |
|                                        | Raises error with multiple negative number                | Raises an error when multiple negative numbers are present.                       |
| **when number greater than 1000 is present** | Ignores the number > 1000 and returns remaining sum       | Ignores numbers greater than 1000 when calculating the sum.                  |
|                                        | Raises error when number is negative                         | Still raises an error when negative numbers are present, even with numbers > 1000. |
| **when delimiters of any size** | Returns the sum as 6 if delimiter is *** | Handles custom delimiters of any length (e.g., "//[***]\n1***2***3").          |
|                                        | Returns the sum as 6 if delimiter is #####                  | Handles custom delimiters of any length (e.g., "//[#####]\n1#####2#####3").        |
| **when multiple delimiters are provided** | Handles multiple single-character delimiters               | Handles multiple single-character delimiters (e.g., "//[*][%]\n1*2%3").         |
|                                        | Handles multiple multi-character delimiters                | Handles multiple multi-character delimiters (e.g., "//[***][%%]\n1***2%%3").   |
|                                        | Handles a mix of single and multi-character delimiters       | Handles a mix of single and multi-character delimiters (e.g., "//[*][%%]\n1*2%%3"). |


### Screenshots

<figure>
  <img src="images/1.png" alt="Test failure: Empty string input to StringCalculator">
  <figcaption>Empty string is passed, TDD Failed test case</figcaption>
</figure>

<figure>
  <img src="images/1_fixed.png" alt="Test success: Empty string input handled in StringCalculator">
  <figcaption>Empty string is passed, TDD Test Case fixed</figcaption>
</figure>

<figure>
  <img src="images/2.png" alt="Test failure: Single non-zero number input to StringCalculator">
  <figcaption>Non zero number string is passed, TDD Failed test case</figcaption>
</figure>

<figure>
  <img src="images/2_fixed.png" alt="Test success: Single non-zero number input handled in StringCalculator">
  <figcaption>Non zero number string is passed, TDD Passed test case</figcaption>
</figure>

<figure>
  <img src="images/3.png" alt="Test failure: Comma-separated numbers input to StringCalculator">
  <figcaption>"," seperated string numbers passed, TDD Failed test case</figcaption>
</figure>

<figure>
  <img src="images/3_fixed.png" alt="Test success: Comma-separated numbers input handled in StringCalculator">
  <figcaption>"," seperated string numbers passed, TDD Passed test case</figcaption>
</figure>

<figure>
  <img src="images/4.png" alt="Test failure: Custom delimiter input to StringCalculator">
  <figcaption>custom delimiter is pased in string, TDD Failed test case</figcaption>
</figure>

<figure>
  <img src="images/4_fixed.png" alt="Test success: Custom delimiter input handled in StringCalculator">
  <figcaption>custom delimiter is pased in string, TDD Passed test case</figcaption>
</figure>

<figure>
  <img src="images/5.png" alt="Test failure: Negative numbers input to StringCalculator">
  <figcaption>Negative Numbers are pased in string, TDD Failed test case</figcaption>
</figure>

<figure>
  <img src="images/5_fixed.png" alt="Test success: Negative numbers input handled (errors) in StringCalculator">
  <figcaption>Negative Numbers are pased in string, TDD Passed test case</figcaption>
</figure>

<figure>
  <img src="images/6.png" alt="Test failure: Numbers greater than 1000 input to StringCalculator">
  <figcaption>Number greater than 1000 is present in string, TDD Failed test case</figcaption>
</figure>

<figure>
  <img src="images/6_fixed.png" alt="Test success: Numbers greater than 1000 handled in StringCalculator">
  <figcaption>Number greater than 1000 is present in string, TDD Passed test case</figcaption>
</figure>

<figure>
  <img src="images/7.png" alt="Test success: Multiple character delimiter input to StringCalculator">
  <figcaption>Multiple Character present in string, TDD Passed test case</figcaption>
</figure>

<figure>
  <img src="images/8_9.png" alt="Test failure: Multiple delimiters input to StringCalculator">
  <figcaption>Multiple delimiters in string, TDD Faled test case</figcaption>
</figure>

<figure>
  <img src="images/8_9_fixed.png" alt="Test success: Multiple delimiters input handled in StringCalculator">
  <figcaption>Multiple delimiters in string, TDD Passed test case</figcaption>
</figure>