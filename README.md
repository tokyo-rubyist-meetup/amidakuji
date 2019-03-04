# Amidakuji

Your goal is to implement a command line program to solve a game of Amidakuji

## About Amidakuji

Amidakuji is a Japanese game where you create a ladder like board and follow the lines to get to the end of the board.

### Basic Rules

A board consists of a number of vertical lines with horizontal lines cutting across them.

    1 2 3 4
    | |-| |
    |-| | |
    | |-| |
    | | |-|
    1 2 3 4

A player selects a starting point at the top of the board and follows the line down to the
bottom. As they follow the line, they will cross over to another vertical line if they
run into a horizontal line.

    Starting at location 1
    1 2 3 4
    X |-| |
    |-| | |
    | |-| |
    | | |-|
    1 2 3 4
    =>
    1 2 3 4
    X |-| |
    X-| | |
    | |-| |
    | | |-|
    1 2 3 4
    =>
    1 2 3 4
    X |-| |
    XX| | |
    | |-| |
    | | |-|
    1 2 3 4
    =>
    1 2 3 4
    X |-| |
    XXX | |
    | |-| |
    | | |-|
    1 2 3 4

This continues until the player follows the lines to the end of the board.

    1 2 3 4
    X |-| |
    XXX | |
    | XXX |
    | | XXX
    1 2 3 4

### Implementing a Solution

Your challenge is to create a program that is given the description of an amadakuji, displays that amadakuji visually as ascii art, and calculates which output is selected by the amadakuji given an input.

We've already created a small command line program for you at:

    ./bin/amidakuji.rb

This program makes calls to functions in `lib/amadakuji.rb`, which you'll need to implement.

These functions are passed data about a given board with the following parameters:

    width:, height:, horizontal_lines:, start_location:

These parameters correspond to information about the board as described in the diagram below.

    START
    1 2 3 4
    | | |-| 1st row
    | |-| | 2nd row
    |-| | | 3rd row <<< horizontal line is represented as 1 3
    | |-| | 4th row
    | | |-| 5th row
    1 2 3 4

    - are horizontal lines

    width: 4
    height: 5
    horizontal_lines: [[1,3], [2,2], [2,4], [3,1], [3, 5]]

For the above board, given a start_location of 1, the solution would be 4.

### Tests

There are also tests that you can use to to check that your solutions work. They are located in ./tests
and use minitest (therefore you will have to run bundle install) to run the tests.

You can run the tests with the following command.

    ruby ./test/amidakuji_test.rb

If you want to run a specific test, you can do it with

    ruby ./test/amidakuji_test.rb -n test_solve_1

If you want to run all tests matching a pattern, you can do it with

    ruby ./test/amidakuji_test.rb -n /test_solve/

### Strategy

There are three distinct functions to implement for this challenge. Given time constraints, you most likely won't be able to implement all of them. Though the order is up to you, we recommend doing it in the following order

1. Amidakuji.puzzle_as_string
2. Amidakuji.solve
3. Amidakuji.solution_as_string
