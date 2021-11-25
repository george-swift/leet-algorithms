## Challenge:
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

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

### Steps:
- Create a hash whose keys are: numbers in the array, and values: the index of each integer
- Find the difference between an integer and the target.
- If a key in the hash matches the difference, return the index of the two numbers that make the sum
- Else store the integer and its index in the hash

### Solution:
```
def two_sum(nums, target)
  nums_hash = {}

  nums.each.with_index do |num, index|
    diff = target - num
    return [nums_hash[diff], index] if nums_hash[diff]

    nums_hash[num] = index
  end
end
```

### Complexity:
- Time Complexity: O(n)
- Space Complexity: O(n)
