# sample007.rb
Shoes.app(:width => 400, :height => 600) do
  fill blue
  stroke white

  10.times do
    oval :left => (0..400).rand,
      :top => (0..600).rand,
      :radius => (25..50).rand
  end
end
