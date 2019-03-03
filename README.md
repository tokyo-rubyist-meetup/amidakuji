# Amidakuji

Your goal is to implement a command line program to solve a game of Amidakuji

## About Amidakuji

Amidakuji is a Japanese game where you create a ladder like board and follow the lines to get to the end of the board.

### Basic Rules

A board consists of a number of vertical lines with horizontal lines cutting across them.

<pre>
1 2 3 4  
| |-| |  
|-| | |  
| |-| |  
| | |-|  
1 2 3 4
</pre>

A player selects a starting point at the top of the board and follows the line down to the
bottom. As they follow the line, they will cross over to another vertical line if they
run into a horizontal line.

<pre>
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
</pre>

This continues until the player follows the lines to the end of the board.

<pre>
1 2 3 4  
X |-| |  
XXX | |  
| XXX |  
| | XXX  
1 2 3 4
</pre>

### Implementing a Solution
Your challenge is to create a program that will be passed data about the board and then can
tell you which output belongs to which input. A starter class is provided in lib/amadakuji
with a solve method that takes the following parameters
<pre>
horizontal_space_count:, vertical_space_count:, horizontal_lines:, start_location:
</pre>
These parameters correspond to information about the board as described in the diagram below.
<pre>
START
1 2 3 4
| | |-| 1 space
| |-| | 2 space
|-| | | ...     <<< this horizontal line is represented as 1 3
| |-| |
| | |-|
1 2 3 4

- are horizontal lines

4 vertical spaces
5 horizontal spaces
5 horizontal lines as described in the below array
[[1,3], [2,2], [2,4], [3,1], [3, 5]]
start at 2
</pre>

The implemented method should return an integer that is the output from the given
board and start location
<pre>
Amidakuji.solve(horizontal_space_count:....)
=> 3
</pre>

### Using the challenge runner
There is a challenge runner located in bin/amidakuji that will load data from a json file located in ./puzzles
and pass them to your method.
You can invoke the runner with the following command.
<pre>
ruby ./bin/amidakuji.rb
</pre>

### Tests
There are also tests that you can use to to check that your solutions work. They are located in ./tests
and use minitest (therefore you will have to run bundle install) to run the tests.
You can run the tests with the following command.
<pre>
ruby ./test/amidakuji_test.rb
</pre>

## BONUS!
If you implement the amidakuji challenge quickly, you can also attempt to output a ascii art representation of
what the board looks like from the data.

<pre>
output:
1 2 3 4  
| |-| |  
|-| | |
| |-| |  
| | |-|
1 2 3 4
</pre>

If you finish that quickly as well try and output a version that

<pre>
starting at 2
output:
1 2 3 4  
| XXX |
|-| X |
| XXX |  
| X |-|
1 2 3 4
</pre>
