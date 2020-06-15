require 'pry'

# Given an array of integers, return indices of the two numbers such that
#  they add up to a specific target.
# You may assume that each input would have exactly one solution,
# and you may not use the same element twice.


#Brute Force Method
#Time Complexity: O(n^2)
#Space Complexity: O(1)
#solution breaks if the number apears more than one time.

# class TwoNumSum
#     def two_sum(nums, target)
#         nums.each_with_index do |num_1, index|
#             wanted_number = target - num_1
#             nums[index + 1..-1].each do |num_2|
#                 if num_2 == wanted_number
#                     first_index = nums.index(num_1)
#                     binding.pry
#                     second_index = nums.index(num_2)
#                     return [nums.index(num_1), nums.index(num_2)]
#                 end
#             end
#         end
#     end
# end


# ---------------------------------------------------------------------------------------------------------------
#Two Pass Hash Table
#Time Complexity: O(n) - We traverse the list containing nn elements exactly twice.
# Since the hash table reduces the look up time to O(1)O(1), the time complexity is O(n)O(n).

#Space Complexity: O(n) - The extra space required depends on the number of items stored in the hash table,
#  which stores exactly nn elements.





#----------------------------------------------------------------------------------
#One Pass Hash
#Time complexity : O(n)
# We traverse the list containing nn elements only once. Each look up in the table costs only O(1)O(1) time.

# Space complexity : O(n)
# The extra space required depends on the number of items stored in the hash table, which stores at most nn elements.

class TwoNumSum
    def two_sum(nums, target)
        hash_table = {}
        nums.each_with_index do |num, index|
            if hash_table[target - num]
               return hash_table[target - num], index
            end
            hash_table[num] = index
        end
    end
end
