# sample002.rb
Shoes.app do
  fill yellow
  stroke blue
  rect :left => 10, :top => 10, 
      :width => 40, :height => 20
  oval :left => 60, :top => 10, 
      :width => 50, height => 200

  fill green
  arrow :left => 40, :top => 100, :width => 60

  fill purple
  stroke red
  star :left => 200, :top => 200, :points => 5
end
