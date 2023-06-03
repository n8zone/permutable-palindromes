
local testString = "racecar"
print("-- Test Case 1 --")
print("Input : " ..testString)
print("Expected output : Palindrome possible.")
print("Actual Output : ")
io.read = function() return testString end
dofile("palindromes.lua")
print("-- Test Case 1 --\n/////////////////")

testString = "race1car"
print("-- Test Case 2 --")
print("Input : " ..testString)
print("Expected output : Palindrome not possible.")
print("Actual Output : ")
io.read = function() return testString end
dofile("palindromes.lua")
print("-- Test Case 2 --\n/////////////////")

local testString = "race11car"
print("-- Test Case 3 --")
print("Input : " ..testString)
print("Expected output : Palindrome possible.")
print("Actual Output : ")
io.read = function() return testString end
dofile("palindromes.lua")
print("-- Test Case 3 --\n/////////////////")

local testString = "ribbit"
print("-- Test Case 4 --")
print("Input : " ..testString)
print("Expected output : Palindrome not possible.")
print("Actual Output : ")
io.read = function() return testString end
dofile("palindromes.lua")
print("-- Test Case 4 --\n/////////////////")

local testString = "stats"
print("-- Test Case 5 --")
print("Input : " ..testString)
print("Expected output : Palindrome possible.")
print("Actual Output : ")
io.read = function() return testString end
dofile("palindromes.lua")
print("-- Test Case 5 --")