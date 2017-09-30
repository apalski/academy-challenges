
class Integer
  LEGEND = {
    "1" => "I",
    "5" => "V",
    "9" => "IX",
    "10" => "X",
    "50" => "L",
    "100" => "C",
    "500" => "D",
    "1000" => "M",
  	}

  Roman_array = []

  def to_roman
    Roman_array.clear
	integer_array = self.to_s.chars.reverse
	integer_array.each_with_index do |num, i|
		if num == "0"
			# do nothing
		elsif ("1".."3").include?(num)
			one_to_three_to_roman(num, i)
		elsif num == "4"
			four_to_roman(num, i)
		elsif num == "5"
			five_to_roman(num, i)
		elsif ("6".."8").include?(num)
			six_to_eight_to_roman(num, i)
		elsif num == "9"
			nine_to_roman(num, i)
		end
	end
    Roman_array.reverse.join
  end

  def one_to_three_to_roman(digit, index)
	if index == 0
		Roman_array << (LEGEND["1"] * digit.to_i)
	elsif index == 1
		Roman_array << (LEGEND["10"] * digit.to_i)
	elsif index == 2
		Roman_array << (LEGEND["100"] * digit.to_i)
	elsif index == 3
		Roman_array << (LEGEND["1000"] * digit.to_i)
	end
  end

  def four_to_roman(digit, index)
  	if index == 0
		Roman_array << LEGEND["1"] + LEGEND["5"]
	elsif index == 1
		Roman_array << LEGEND["10"] + LEGEND["50"]
	elsif index == 2
		Roman_array << LEGEND["100"] + LEGEND["500"]
	end
  end

  def five_to_roman(digit, index)
  	if index == 0
		Roman_array << LEGEND["5"]
	elsif index == 1
		Roman_array << LEGEND["50"]
	elsif index == 2
		Roman_array << LEGEND["500"]
	end
  end

  def six_to_eight_to_roman(digit, index)
  	if index == 0
		Roman_array << LEGEND["5"] + (LEGEND["1"] * (digit.to_i - 5))
	elsif index == 1
		Roman_array << LEGEND["50"] + (LEGEND["10"] * (digit.to_i - 5))
	elsif index == 2
		Roman_array << LEGEND["500"] + (LEGEND["100"] * (digit.to_i - 5))
	end
  end

  def nine_to_roman(digit, index)
	if index == 0
		Roman_array << LEGEND["1"] + LEGEND["10"]
	elsif index == 1
		Roman_array << LEGEND["10"] + LEGEND["100"]
	elsif index == 2
		Roman_array << LEGEND["100"] + LEGEND["1000"]
	end
  end
end

module BookKeeping
    VERSION = 2
end
