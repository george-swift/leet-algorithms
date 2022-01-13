## Challenge:

Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

 

### Examples:

```
Input: x = 123
Output: 321

Input: x = -123
Output: -321

Input: x = 120
Output: 21
```

### Steps:
- Determine if input x of type integer is a positive or negative number
- Define the range of max and min bit values
- With the knowledge from step 1, reverse the stringified input, convert to an integer and multiply by the 1 or -1
- Return zero if outside the range or the reversed integer

### Solution(s):
```
def reverse(x)
  sign = x < 0 ? -1 : 1
  max_bit = 2**31
  min_bit = -2**31
  reversed_int = x.to_s.reverse.to_i * sign
  reversed_int.between?(max_bit, min_bit) ? reversed_int : 0
end

```