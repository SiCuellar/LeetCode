# O(n^2) time
# 0(1) space

# def twoNumberSum(array, targetSum):
#     for i in range(len(array)-1):
#         firstNum = array[i]
#         for j in range(i + 1, len(array)):
#             secondNum = array[j]
#             if firstNum + secondNum == targetSum:
#                 return [firstNum, secondNum]
#     return []
#-------------------------------------------------------

# O(n) time
# O(n) space

def twoNumberSum(array, targetSum):
    nums = {}

    for num in array:
        potentialMatch = targetSum - num
        if potentialMatch in nums:
            return [potentialMatch, num]
        else:
            nums[num] = True
    return []

def divisible(a,b):
    if a/b:
        return True
    else:
        return False
