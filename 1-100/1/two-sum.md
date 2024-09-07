## Challenge:

Given an array of integers `nums` and an integer `target`, return _indices of the two numbers such that they add up to `target`_.

You may assume that each input would have **exactly one solution**, and you may not use the _same_ element twice.

You can return the answer in any order.

### Examples:

```
Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Output: Because nums[0] + nums[1] == 9, we return [0, 1].
```

```
Input: nums = [3,2,4], target = 6
Output: [1,2]
```

### Walk Through:

- Create a hash whose keys are integers in the array and values are the index of each integer
- Find the difference between an integer and the target.
- If a key in the hash matches the difference, it is the other integer that sums up to target.
- Return the index of both integers.
- Otherwise store the integer and its index in the hash.

### Conceivable Complexity:

- Time: O(n)
- Space: O(n)
