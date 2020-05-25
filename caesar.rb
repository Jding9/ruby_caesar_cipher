require 'pry'

# Caesar cipher takes a string and shifts it by a certain integer
# Input types is (string, int))

# Takes in a string and an integer 
def caesar_cipher(stringInput, integerInput)

# Breaks up the string into single characters in an array
    split_string = stringInput.split('')

# Shifts each character in the array by the integer if the character is a regular letter
# This must also keep the case as well
    new_string = split_string.map do |c|
        char_shift = c.ord + integerInput #shifts it
        if c.ord >= 65 && c.ord <= 90
            if char_shift > 90 #if it moves out of the uppercase range (more than)
                char_shift = char_shift - 90 + 64; # if char_shift is 91, then will return 65
            elsif char_shift < 65 #if it moves out of the uppercase range (less than)
                char_shift = 90 - (65 - char_shift);
            end
            c = char_shift.chr
        elsif c.ord >= 97 && c.ord <= 122
            if char_shift > 122 #if it moves out of the lowercase range (more than)
                char_shift = char_shift - 122 + 97;
            elsif char_shift < 97 #if it moves out of the lowercase range (less than)
                char_shift = 122 - (97 - char_shift);
            end
            c = char_shift.chr
        else
            c
        end
    end

# Joins all the characters back into one string
new_string.join('')
end

caesar_cipher("What a string!", 5)
binding.pry