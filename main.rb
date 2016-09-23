# run_cipher file

require './lib/cyphr'

puts "Enter text to be encrypted: "
text = gets.chomp

puts "Enter a cipher factor: "
factor = gets.chomp.to_i
cipherer = CaeserCipherer.new

puts "Your cipher text is ' #{cipherer.convert(text, factor)} '"