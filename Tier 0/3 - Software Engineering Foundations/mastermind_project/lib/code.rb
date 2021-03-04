class Code
  attr_reader :pegs

  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(chars)
    chars.all? { |char| POSSIBLE_PEGS.key?(char.upcase) }
  end

  def initialize(chars)
    if Code.valid_pegs?(chars)
      @pegs = chars.map(&:upcase)
    else
      raise "Invalid peg(s)"
    end
  end

  def self.random(length)
    pegs = []
    length.times do |n|
      pegs << POSSIBLE_PEGS.keys.sample
    end
    Code.new(pegs)
  end

  def self.from_string(str)
    Code.new(str.split(""))
  end

  def [](i)
    @pegs[i]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess)
    matches = 0
    (0...guess.length).each do |i|
      matches += 1 if guess[i] == self[i]
    end
    matches
  end

  def num_near_matches(guess)
    count = 0
    (0...guess.length).each do |i|
      if guess[i] != self[i] && self.pegs.include?(guess[i])
        count += 1
      end
    end
    count
  end

  def ==(guess)
    self.pegs == guess.pegs
  end
end
