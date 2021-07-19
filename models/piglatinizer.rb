class PigLatinizer 

    def piglatinize(phrase)
        phrase = phrase.split(" ").map{|word| translate(word)}
        phrase.join(" ")
    end

    def translate(str)
        alpha = ("a".."z").to_a + ("A".."Z").to_a
        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        consonants = alpha - vowels

        if vowels.include?(str[0])
            res = str + "way"
        elsif consonants.include?(str[0]) && consonants.include?(str[1]) && consonants.include?(str[2])
            res = str[3..-1] + str[0..2] + "ay"
        elsif consonants.include?(str[0]) && consonants.include?(str[1])
            res = str[2..-1] + str[0..1] + "ay"
        elsif consonants.include?(str[0])
            res = str[1..-1] + str[0] + "ay"
        end
        res
    end

    
end
