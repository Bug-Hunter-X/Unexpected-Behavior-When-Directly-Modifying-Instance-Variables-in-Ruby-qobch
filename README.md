# Unexpected Behavior When Directly Modifying Instance Variables in Ruby

This repository demonstrates a subtle bug in Ruby that can occur when directly manipulating instance variables outside of getter and setter methods, particularly when dealing with mutable objects like arrays.

The `bug.rb` file shows how directly modifying an instance variable can lead to unexpected results. The `bugSolution.rb` file presents a better approach using accessor methods for better control and maintainability.

## How to Reproduce

1. Clone this repository.
2. Navigate to the repository's directory.
3. Run `ruby bug.rb` to see the unexpected behavior.
4. Run `ruby bugSolution.rb` to see the corrected behavior.
