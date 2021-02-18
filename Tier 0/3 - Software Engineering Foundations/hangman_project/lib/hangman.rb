class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = []
    @attempted_chars = []
    @remaining_incorrect_guesses = 5

    (0...@secret_word.length).each { |n| @guess_word << "_" }
  end

  def self.random_word
    DICTIONARY.sample
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    @attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    indices = []
    @secret_word.each_char.with_index { |c, i| indices << i if c == char }
    indices
  end

  def fill_indices(char, indices)
    indices.each { |i| @guess_word[i] = char }
  end

  def try_guess(char)
    if self.already_attempted?(char)
      puts "that has already been attempted"
      return false
    end
    indices = self.get_matching_indices(char)
    self.fill_indices(char, indices)
    @attempted_chars << char
    if indices.empty?
      @remaining_incorrect_guesses -= 1
    end
    return true
  end

  def ask_user_for_guess
    puts "Enter a char:"
    char = gets.chomp
    self.try_guess(char)
  end

  def win?
    if @guess_word.join("") == @secret_word
      puts "WIN"
      true
    else
      false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      puts "LOSE"
      true
    else
      false
    end
  end

  def game_over?
    win = self.win?
    lose = self.lose?
    if win || lose
      puts @secret_word
      true
    else
      false
    end
  end
end
