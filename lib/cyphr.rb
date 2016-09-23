# A program to generate Caeser Cipher with text and factor input

class CaeserCipherer
  def convert text, factor
    text.split('').map do |letter|
      if ('a'..'z').include? letter
        letter_ascii = letter.ord + factor
        letter = letter_ascii > 'z'.ord ? ('a'.ord + (letter_ascii - 'z'.ord - 1)) : letter_ascii
        letter.chr
      elsif ('A'..'Z').include? letter
        letter_ascii = letter.ord + factor
        letter = letter_ascii > 'Z'.ord ? ('A'.ord + (letter_ascii - 'Z'.ord - 1)) : letter_ascii
        letter.chr
      else
        letter
      end
    end.join('')
  end
end
