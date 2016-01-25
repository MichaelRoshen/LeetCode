# Given an array of integers, find two numbers such that they add up to a specific target number.
# The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2. Please note that your returned answers (both index1 and index2) are not zero-based.
# You may assume that each input would have exactly one solution.

# Input: numbers={2, 7, 11, 15}, target=9
# Output: index1=1, index2=2


# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    result, hash = [],{}
    nums.each_with_index do |value ,index|
    	tmp = target-value
    	if hash.has_key?(tmp)
    		result[0] = hash[tmp]
    		result[1] = index + 1
    		return result
    	end
    	hash[value] = index +1
    end
    return result
end

puts two_sum([2, 7, 11, 15], 9).inspect

