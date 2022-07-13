def morse_code_hash
  { A: '.-', B: '-...', C: '-.-.', D: '-..', E: '.', F: '..-.', G: '--.', H: '....',
    I: '..', J: '.---', K: '-.-', L: '.-..', M: '--', N: '-.', O: '---', P: '.--.',
    Q: '--.-', R: '.-.', S: '...', T: '-', U: '..-', V: '...-', W: '.--', X: '-..-', Y: '-.--', Z: '--..' }
end

def char_decode(string)
  morse_code_hash.each do |key, value|
    if value == string
      character = key.to_s
      return character
    end
  end
end

def word_decode(string)
  split_characters = string.split
  word = ''
  split_characters.each do |char|
    word += char_decode(char)
  end
  word
end

def sent_decode(string)
  split_sentence = string.split('   ')
  sentence = ''
  split_sentence.each do |word|
    sentence += "#{word_decode(word)} "
  end
  sentence
end

puts char_decode('.-')
puts word_decode('-- -.--')
puts word_decode('.-. ..- -... -.--')
puts sent_decode('-- -.--   -. .- -- .')
puts sent_decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
