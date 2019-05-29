class PigLatinizer
  # attr_accessor :word

  # def initialize (word)
  #   @word=word
  # end

  def individual(word)
    new_word=word.split('')
    if new_word.first.match(/[aeoiu]/i)
      new_word.push("way")
    else
      while !new_word.first.match(/[aeoiu]/)
        new_word.push(new_word.first).shift
      end
      new_word.push("ay")
    end
    new_word.join
  end

end
