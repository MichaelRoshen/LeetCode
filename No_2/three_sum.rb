# Given an array S of n integers, are there elements a, b, c in S 
# such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.

# Note:
# Elements in a triplet (a,b,c) must be in non-descending order. (ie, a ≤ b ≤ c)
# The solution set must not contain duplicate triplets.

# For example, given array S = {-1 0 1 2 -1 -4},

#     A solution set is:
#     (-1, 0, 1)
#     (-1, -1, 2)


# @param {Integer[]} nums
# @return {Integer[][]}

def three_sum(nums)
	nums = nums.sort
	res = []
	for i in 0..nums.size-1
		if i == 0 || (i > 0 && nums[i] != nums[i-1])
			lo, hi, sum = i+1 , nums.length-1, 0-nums[i];
			while lo < hi
				if (nums[lo] + nums[hi]) == sum
                    res << [nums[i], nums[lo], nums[hi]];
                    while (lo < hi && nums[lo] == nums[lo+1]) do
                    	lo += 1
                    end
                    while (lo < hi && nums[hi] == nums[hi-1]) do
                    	hi -= 1
                    end
                    lo += 1
                    hi -=1 
                elsif (nums[lo] + nums[hi]) < sum
                	lo += 1
                else 
                	hi -= 1
                end
			end
		end
	end
	return res
end

puts three_sum([-1, -3, 3, 5, 2, -2, 4, 1,-4]).inspect



