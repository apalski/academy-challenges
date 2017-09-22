class Integer
  def to_roman
    # tens = self / 10
    # fives = self % 10 / 5
    # singles = (self % 10) - 5

    # case self
    # when (1..3) then roman_times("I", self)
    # when 4 then 'IV'
    # when 5 then 'V'
    # when (6..8) then 'V' + roman_times("I", (self - 5))
    # when 9 then 'IX'
    # else
    #   [
    #     roman_times("X", tens),
    #     roman_times("V", fives),
    #     roman_times("I", singles)
    #   ].join
    # end

    # **think how to use part of the number, and its remainder**
    
    # multiply by number to get roman
    # fix higher numbers with different roman values
    destructured(self).map do |num|
      LEGEND[num]
    end.join
  end

  def destructured(number)
    number.to_s.chars
  end

  def roman_times(sign, number)
    sign * number
  end

  LEGEND = {
    "1" => "I",
    "2" => "II",
    "3" => "III",
    "4" => "IV",
    "5" => "V",
    "6" => "VI",
    "7" => "VII",
    "8" => "VIII",
    "9" => "IX",
    "10" => "X",
    "40" => "XL",
    "50" => "L",
  }
end

# how many 'X's
# how many 'L's
# how many 'C's
# how many 'D's
# how many 'M's
