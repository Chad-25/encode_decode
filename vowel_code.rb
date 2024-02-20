# create function encode()
# a -> 1, e -> 2, i -> 3 ...
# encode("hello") => "h2ll4"
# create function decode()
# a -> 1, e -> 2, i -> 3 ...
# encode("h2ll4") => "hello"

def encode(string)
  vowel = {'a' => 1, 'e' => 2, 'i' => 3, 'o' => 4, 'u' => 5}
  encoded = []
  string.downcase.each_char do | letter |
    if !vowel.key?(letter)
      encoded.push(letter)
    else
      encoded.push(vowel[letter])
    end
  end
  return encoded.join('')
end


def decode(string)
  number = { 1 => 'a', 2 => 'e', 3 => 'i', 4 => 'o', 5 => 'u'}
  decoded = []
  string.downcase.each_char do | num |
    if !number.key?(num.to_i)
      decoded.push(num)
    else
      decoded.push(number[num.to_i])
    end
  end
  return decoded.join('')
end


string = "hello"
puts "----- Encode ----"
puts "The word is '" + string + "', encoded word is '" + encode(string) + "'."

puts "----- Decode ----"
string_new = "h2ll4"
puts "The word is '" + string_new + "', decoded word is '" + decode(string_new) + "'."
