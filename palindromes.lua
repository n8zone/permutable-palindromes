-- if # of m = a  and # of other solo letters <= 1 then palindrome
-- as long as there are atleast two of each letter with only one outlier, it is palindromable

-- jjjjaak j
print("Please enter a string to check for palindromability")
str = io.read("*line")
io.flush()
chars = {}
uniqueLetters = 0

for i = 1, #str do
    local char = str:sub(i,i)

    if(not chars[char]) then 
        chars[char] = 1
        uniqueLetters = uniqueLetters + 1
    else
        local cur = chars[char]
        chars[char] = cur + 1
    end
end


for k,v in pairs(chars) do
    if(v == 1) then
        for k2, v2 in pairs(chars) do -- checks if there are more than one lonely letters, if so palindrome is not possible.
            if(k2 ~= k and v2 == 1) then
                print("Palindrome not possible due to more than one lonely letter", k, k2)
                return
            end
        end
    elseif (v % 2 ~= 0 and uniqueLetters % 2 ~= 0) then -- checks to see if the # of a letter is even and if the amount of unique letters is even. If not, palindrome isn't possible
        print("Palindrome not possible due to uneven amount of a letter within the provided string")
            return
    elseif (v % 2 ~= 0 and uniqueLetters % 2 == 0) then
        print("Palindrome not possible")
        return
    end
end

print("Palindrome possible, good job.")
    