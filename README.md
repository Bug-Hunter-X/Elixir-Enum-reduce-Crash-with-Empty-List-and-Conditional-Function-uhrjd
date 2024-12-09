# Elixir Enum.reduce Empty List Issue

This repository demonstrates a potential crash in Elixir when using `Enum.reduce` with an empty list and a function that conditionally returns a value.  The `bug.exs` file shows the problematic code. The solution in `bugSolution.exs` addresses the issue by explicitly handling the empty list case.

## Problem

The original code uses `Enum.reduce` to sum elements greater than 3.  If the list is empty, `Enum.reduce` will not have an initial accumulator value for the function to operate on resulting in a crash. 

## Solution

The solution handles the edge case of an empty list by checking the list's length before calling `Enum.reduce`.  If the list is empty, it returns the initial accumulator value (0 in this case) directly.