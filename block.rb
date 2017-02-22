def converter_pig_latin_word(word)
  # puts "Dame una palabra: "
  # word = gets.  word = yield
  if word[0].downcase =~ /[aeiou]/
    word + 'way'
  else
    if word[1] =~ /[aeiou]/
      consonant = word[0]
    else
      consonant = word[0,2]
    end
    word.gsub!(consonant,"")
    consonant =~ /[A-Z]/ ?  word.capitalize + consonant.downcase + "ay" : word + consonant.downcase + "ay"
  end
end

def time_execution
  puts "-------------Time started------------\n\n"
  t1 = Time.now
  method = yield
  t2 = Time.now
  puts "End time: #{t2}\n\n"
  puts "-------------Time finished-------------\n\n"
  puts "Result: #{t2 - t1} seconds"
end

time_execution{p converter_pig_latin_word("Nina")}