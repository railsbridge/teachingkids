# which_is_correct_2.rb
class Game < Shoes
  url '/',  :index
  url '/correct',  :show_correct
  url '/wrong',  :show_wrong

  def index
    clear
    para "Which is correct?"
    stack {
      @correct = button "A bed of clams" do
        visit "/correct"
      end 

      @wrong1 =button "A coalition of cheetahs" do
        visit "/wrong"
      end

      @wrong2 =button "A gulp of swallows"  do
        visit "/wrong"
      end
    }
  end  # this is the end of the index method, which lays out the "/" page

  def show_correct
    para "Correct"
  end  # of the "correct" method, which lays out the "/correct" page

  def show_wrong
    para "Sorry, try again."
  end  # of the "wrong" method, which lays out the "/wrong2" page

end # this is the end of the "Game" subclass, which contains all pages

Shoes.app 
