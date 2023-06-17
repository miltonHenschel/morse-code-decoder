ALL_MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C',
  '-..' => 'D', '.' => 'E', '..-.' => 'F',
  '--.' => 'G', '....' => 'H', '..' => 'I',
  '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
  '...' => 'S', '-' => 'T', '..-' => 'U',
  '...-' => 'V', '.--' => 'W', '-..-' => 'X',
  '-.--' => 'Y', '--..' => 'Z'
}.freeze

# Method to decode a Morse code character
def decode_char(char)
  ALL_MORSE_CODE[char]
end

def decode_word(word)
  word_arr = word.split
  compound = ''

  word_arr.each do |char|
    compound += decode_char(char)
  end

  compound
end

def decode_message(message)
  string_arr = message.split('  ')
  message = ''
  string_arr.each do |word|
    message += decode_word(word)
    message += ' '
  end
  message.strip
end
puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
