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

Your challenge is to create a program that will be passed data about the board and then can
tell you which output belongs to which input. A starter class is provided in lib/amadakuji
with a solve method that takes the following parameters

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
    start_location: 2

The implemented method should return an integer that is the output from the given
board and start location

    Amidakuji.solve(width:....)
    => 3

### Using the challenge runner

There is a challenge runner located in bin/amidakuji that will load data from a json file located in ./puzzles
and pass them to your method.

You can invoke the runner with the following command.

    ruby ./bin/amidakuji.rb

### Tests

There are also tests that you can use to to check that your solutions work. They are located in ./tests
and use minitest (therefore you will have to run bundle install) to run the tests.

You can run the tests with the following command.

    ruby ./test/amidakuji_test.rb

If you want to run a specific test, you can do it with

    ruby ./test/amidakuji_test.rb -n test_solve_1

If you want to run all tests matching a pattern, you can do it with

    ruby ./test/amidakuji_test.rb -n /test_solve/

## BONUS!

If you implement the amidakuji challenge quickly, you can also attempt to output a ascii art representation of
what the board looks like from the data.

    output:
    1 2 3 4
    | |-| |
    |-| | |
    | |-| |
    | | |-|
    1 2 3 4

If you finish that quickly as well try and output a version that

    starting at 2
    output:
    1 2 3 4
    | XXX |
    |-| X |
    | XXX |
    | X |-|
    1 2 3 4
