#!/bin/env ruby
# mkmd.rb
require 'easy_ebook'

# Import source code ../src/***.rb and create links to ../img/***.png (or.jpg)
def read_src name
  IO.readlines('../src/' + name).collect{|c| "\t" + c}
end

def make_link name
  lines = []
  lines << "**#{name}**"
  lines << "\n"
  lines << "![#{name}](#{PATH}%2Fimg%2F#{name}?raw=true)"
end

Dir.glob("../md/*.md").each do |file|
  lines = IO.readlines(file)
  open(file, 'w') do |f|
    lines.each do |line|
      new_line = line
      line.sub(/^# *(.*\.rb)/){new_line = read_src($1)}
      line.sub(/^# *(.*\.(png|jpg))/){new_line = make_link($1)}
      f.puts new_line
    end
  end
end
