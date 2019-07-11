# write your code here
def translate(words)
  array = words.split(" ")

  newWords = array.map do |word|
    #Beginning with a vowel
    if /[aeiou]/.match(word[0])
      word + 'ay'

    #Counting 'sch' as a single phoneme
    elsif /sch/.match(word[0, 3])
      word[3..-1] + 'schay'

    #Counting 'qu' as a single phoneme
    elsif word[0, 2] == 'qu'
      word[2..-1] + 'quay'

    elsif /[^aeiou]qu/.match(word[0, 3])
      word[3..-1] + word[0, 3] + 'ay'
    #Beginning with a consonant
    elsif /[^aeiou][aeiou]/.match(word[0, 2])
      word[1..-1] + word[0] + 'ay'

    #Beginning with two consonants
    elsif /[^aeiou][^aeiou][aeiou]/.match(word[0, 3])
      word[2..-1] + word[0, 2] + 'ay'

    #Beginning with three consonants
    elsif /[^aeiou][^aeiou][^aeiou]/.match(word[0, 3])
      word[3..-1] + word[0, 3] + 'ay'
    end
  end
  return newWords.join(" ")
end

