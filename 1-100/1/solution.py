def two_sum(nums: list[int], target: int) -> list[int]:
    dict = {}
    for index, num in enumerate(nums):
        difference = target - num
        if difference in dict:
            return [dict[difference], index]
        dict[num] = index
    
        
# Tests
print(two_sum([2,7,11,15], 9))
print(two_sum([3,2,4], 6))
print(two_sum([3,3], 6))