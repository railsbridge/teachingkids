# sample008.rb
Shoes.app do
  fill rgb(0, 200, 200, 0.1)
  100.times do
    oval :left => (-10..self.width).rand,
      :top => (--10..self.height).rand,
      :radius => (25..50).rand
  end
end
