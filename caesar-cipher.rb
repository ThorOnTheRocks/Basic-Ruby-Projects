
puts "Enter your text: "
text =  gets.chomp

puts "Enter your shift value: "
shift = gets.chomp.to_i




def caesar_cipher(text, shift)

    lower_letters = ('a'..'z').to_a
    upper_letters = ('A'..'Z').to_a
    coded_text = []

    text.split('').each do |letter|
        if lower_letters.include?(letter)
            index_letter = lower_letters.index(letter) + shift
            if index_letter > 26 || index_letter < 0
                index_letter = index_letter % 26
            end
            coded_letter = lower_letters[index_letter]
            coded_text.push(coded_letter)

        elsif upper_letters.include?(letter)
            index_letter = upper_letters.index(letter) + shift
            if index_letter > 26 || index_letter < 0
                index_letter = index_letter % 26
            end
            coded_letter = upper_letters[index_letter]
            coded_text.push(coded_letter)
        else
            coded_text.push(letter)
        end

    end
    
    return coded_text.join
   
end

puts caesar_cipher(text, shift)







