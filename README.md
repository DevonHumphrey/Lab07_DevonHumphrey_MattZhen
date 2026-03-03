# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Devon Humphrey
Matt Zhen

## Summary
In today’s lab, we built off of the lab from last week, which was using adders to get a sum of binary numbers. Using the full adder from last week we implemented one’s compliment addition, which required an end around carry. We avoided making a clock by splitting the addition into separate full adders, each bit had an adder for its carry and initial value and one to handle the end around carry. We also implemented the two’s compliment using full adders by flipping the bits and adding 1.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The main difference is how carry and borrow are calculated. Carry uses A & B while borrow uses ~A & B.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
You have to know whether the msb has a carry out to know the end value of the lsb. Though the msb relies on carries which can be influenced from the lsb. Implementing it wrong can lead to a clock being created.

### 3 - What is the edge case and problem with Two’s Complement number representation?
The edges would be from 2^(n-1)-1 to -2^(n-1). The problem that can occur is overflow of values. Like adding 7 and 1, written as 0111 and 0001 respectively yields 1000, which is -8.

