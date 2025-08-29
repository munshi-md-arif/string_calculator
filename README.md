# String Calculator TDD Kata

## Overview

This project implements the String Calculator kata using Test-Driven Development (TDD) in Dart, as part of the Incubyte Technical Assessment.  
It demonstrates software craftsmanship by producing clean, testable, and maintainable code.

## Features

- Returns 0 for empty string input.
- Supports single and multiple numbers.
- Handles commas and newlines as delimiters.
- Supports custom delimiters using the syntax `//[delimiter]\n[numbers]`.
- Throws an exception listing all negative numbers found in the input.

## Getting Started

### Prerequisites

- Dart SDK installed (version 2.12 or above recommended).

### Installation

Clone the repository:

git clone https://github.com/munshi-md-arif/string_calculator.git
cd string_calculator


## Get dependencies:
- dart pub get


## Running the Application

To run the sample application in `bin/main.dart` (optional):

- dart run bin/main.dart


## Running Tests

To run all tests and verify correctness:

- dart test


All tests should pass, reflecting the TDD development process.

## TDD Cycle Followed

- **Red**: Write a failing test for a new feature or edge case.
- **Green**: Implement just enough code to pass the test.
- **Refactor**: Improve code without altering functionality.  
Frequent commits document this progression and craftsmanship.

## Project Structure

- `lib/string_calculator.dart`: Core implementation.
- `test/string_calculator_test.dart`: Unit tests verifying all requirements.
- `bin/main.dart`: Optional entry point for manual testing.
- `pubspec.yaml`: Dart project config file.
- `README.md`: This documentation.

## Screenshots and Logs

(Include screenshots or test output here to demonstrate passing tests.)

## Author

Md Arif — arifmunshi278@gmail.com  
GitHub: https://github.com/munshi-md-arif

## License

This project is for assessment purposes only. No license is provided.




