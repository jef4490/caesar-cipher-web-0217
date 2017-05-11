require "pry"
def caesar_encode(str, offset)
  encoded = ''
  str.split('').each do |char|
    encoded << char_encode(char, offset)
  end
  encoded
end

def char_encode(char, offset)
  num = char.ord + offset
  special = [' ', '-', "'", '*', '&', '^', '.']
  if special.include?(char)
    return char
  elsif char.downcase == char
    return ((num-97)%26 + 97).chr
  else
    return ((num-65)%26 + 65).chr
  end
end

def caesar_decode(str, offset)
  encoded = ''
  str.split('').each do |char|
    encoded << char_decode(char, offset)
  end
  encoded
end

def char_decode(char, offset)
  num = char.ord - offset
  special = [' ', '-', "'", '*', '&', '^', '.']
  if special.include?(char)
    return char
  elsif char.downcase == char
    return ((num-97)%26 + 97).chr
  else
    return ((num-65)%26 + 65).chr
  end
end
