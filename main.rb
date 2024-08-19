def substrings(word, dictionary)
  hash = {}
  dictionary.each do |substring|
    if word.include?(substring)
      hash[substring] = word.scan(/#{substring}/).length
    end
    
  end
  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# substrings("below", dictionary)
# { "below" => 1, "low" => 1 }

p substrings("Howdy partner, sit down! How's it going?", dictionary)
# { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
