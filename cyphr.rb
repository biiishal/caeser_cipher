# A program to generate Caeser Cipher with text and factor input

def caeser_cipher text, factor
  text.split('').map do |letter|
    (letter.ord + factor).chr
  end.join('')
end

puts "Enter text to be encrypted: "
text = gets.chomp

puts "Enter a cipher factor: "
factor = gets.chomp.to_i

puts "Your cipher text is ' #{caeser_cipher(text, factor)} '"
