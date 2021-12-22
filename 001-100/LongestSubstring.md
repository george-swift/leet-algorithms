## Challenge:
Given a string s, find the length of the longest substring without repeating characters.

### Examples:

```
Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.
```
```
Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
```
```
Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
```

### Steps
- Create a hash and initialize two counters, one for starting position and the other for the longest substring
- For each character, if its value in the hash exists, reassign the `start` counter to the incremented value. Also, reassign the `max` counter to the difference between the index of a character and the `start` counter if it is greater than the `max`.
- Else for each character of the string, set its hash value to the index of the character
- Finally, return the maximum between the string's length and the `start` counter.

### Solution:
```
def length_of_longest_substring(s)
  hash = {}
  max = 0
  start = 0

  s.chars.each_with_index do |ch, i|
    if hash[ch] && hash[ch] >= start
      max = i - start if i - start > max
      start = hash[ch] + 1
    end
    hash[ch] = i
  end
  max = s.size - start if s.size - start > max
  max
end
```

### Complexity:
- Time Complexity: O(n)
- Space Complexity: O(n)
