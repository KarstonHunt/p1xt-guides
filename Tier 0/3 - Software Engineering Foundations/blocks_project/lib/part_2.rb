def all_words_capitalized?(words)
  words.all? { |word| word == word.capitalize }
end

def no_valid_url?(urls)
  tlds = ["com", "net", "io", "org"]
  urls.none? do |url|
    tlds.any? { |tld| url.end_with?(tld) }
  end
end

def any_passing_students?(students)
  students.any? do |student|
    student[:grades].sum / student[:grades].length.to_f >= 75.0
  end
end