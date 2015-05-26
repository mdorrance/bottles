def take_one_down
  `say -v Princess "Take one down and pass it around!"`
end

def song(num_bottles)
  num_bottles.downto(1) do |bottle|
    if bottle > 2
      `say -v Princess "#{bottle} bottles of beer on the wall, #{bottle} bottles of beer."`
      take_one_down
      `say -v Princess "#{bottle - 1} bottles of beer"`
    elsif bottle == 2
      `say -v Princess "#{bottle} bottles of beer on the wall, #{bottle} bottles of beer."`
      take_one_down
      `say -v Princess "#{bottle - 1} bottle of beer"`
    else
      `say -v Princess "#{bottle} bottle of beer on the wall, #{bottle} bottle of beer."`
      take_one_down
      `say -v Princess "#{bottle - 1} bottles of beer"`
    end

  end

end

song(99)