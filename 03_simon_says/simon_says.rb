#write your code here
def echo(word)
  return word
end

def shout(word)
  return word.upcase
end

def repeat(word, num=2)
  ([word] * num).join(" ")
end

def start_of_word(s, num)
  return s[0, num]
end

def first_word(str)
  return str.split(' ')[0]
end

def titleize(str)
  newStr = str.split(" ").map {|word|
    if %w(and or the a over).include?(word)
      word
    else
      word.capitalize
    end
  }
  newStr[0].capitalize!
  newStr.join(" ")
end


