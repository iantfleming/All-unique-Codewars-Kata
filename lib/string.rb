# frozen_string_literal: true

class String
  def initialize(string)
    @string = string
  end

  def check
    is_unique?(split_string)
  end

  def split_string
    @string.split('')
  end

  def is_unique?(array)
    array.uniq.length == array.length
  end
end
