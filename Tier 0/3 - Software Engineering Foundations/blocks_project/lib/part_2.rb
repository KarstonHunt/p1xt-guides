def all_words_capitalized?(words)
  words.all? do |word|
    word == word[0].upcase + word[1..-1].downcase
  end
end

def no_valid_url?(urls)
  tlds = ["com", "net", "io", "org"]
  urls.none? do |url|
    tlds.include?(url.split(".")[1])
  end
end