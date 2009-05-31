A little game (Which is correct?)
=================================

Which is correct?
-----------------
**which_is_correct_1-1.png**

![which_is_correct_1-1.png](http://github.com/railsbridge/teachingkids/tree/master%2Fimg%2Fwhich_is_correct_1-1.png?raw=true)


A bed of clams
--------------
**which_is_correct_1-2.png**

![which_is_correct_1-2.png](http://github.com/railsbridge/teachingkids/tree/master%2Fimg%2Fwhich_is_correct_1-2.png?raw=true)


A coalition of cheetahs
-----------------------
**which_is_correct_1-3.png**

![which_is_correct_1-3.png](http://github.com/railsbridge/teachingkids/tree/master%2Fimg%2Fwhich_is_correct_1-3.png?raw=true)


A gulp of swallows
------------------
**which_is_correct_1-4.png**

![which_is_correct_1-4.png](http://github.com/railsbridge/teachingkids/tree/master%2Fimg%2Fwhich_is_correct_1-4.png?raw=true)


Code (which_is_correct_1.rb)
----------------------------
	# which_is_correct_1.rb
	class OurApp < Shoes
	 url '/',  :index
	
	 def index
	   clear
	   para "Which is correct?"
	   stack {
	     @correct = button "A bed of clams"
	     @wrong1 =button "A coalition of cheetahs"
	     @wrong2 =button "A gulp of swallows"
	   }
	
	   @correct.click {
	     clear
	     para "Correct"
	     image "http://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Balloons-aj.svg/550px-Balloons-aj.svg.png"
	     button "Go Back" do
	       visit "/"
	     end
	
	   }
	   @wrong1.click {
	     clear
	     para "Wrong!"
	     image "http://icanhascheezburger.files.wordpress.com/2007/05/cheez_doing_it_wrong.jpg"
	     button "Go Back" do
	       visit "/"
	     end
	   }
	   @wrong2.click {
	     clear
	     para "Wrong, your consolation prize is..."
	     image "http://farm2.static.flickr.com/1166/1230713908_083d7f6c53_o.jpg",
	     :width => 500
	     button "Go Back" do
	       visit "/"
	     end
	   }
	
	 end  # this is the end of the index method, which lays out the "/" page
	
	end # this is the end of the subclass, which contains all the pages (well, one page)
	
	Shoes.app


Revised Code (which_is_correct_2.rb)
------------------------------------
	# which_is_correct_1.rb
	class OurApp < Shoes
	 url '/',  :index
	
	 def index
	   clear
	   para "Which is correct?"
	   stack {
	     @correct = button "A bed of clams"
	     @wrong1 =button "A coalition of cheetahs"
	     @wrong2 =button "A gulp of swallows"
	   }
	
	   @correct.click {
	     clear
	     para "Correct"
	     image "http://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Balloons-aj.svg/550px-Balloons-aj.svg.png"
	     button "Go Back" do
	       visit "/"
	     end
	
	   }
	   @wrong1.click {
	     clear
	     para "Wrong!"
	     image "http://icanhascheezburger.files.wordpress.com/2007/05/cheez_doing_it_wrong.jpg"
	     button "Go Back" do
	       visit "/"
	     end
	   }
	   @wrong2.click {
	     clear
	     para "Wrong, your consolation prize is..."
	     image "http://farm2.static.flickr.com/1166/1230713908_083d7f6c53_o.jpg",
	     :width => 500
	     button "Go Back" do
	       visit "/"
	     end
	   }
	
	 end  # this is the end of the index method, which lays out the "/" page
	
	end # this is the end of the subclass, which contains all the pages (well, one page)
	
	Shoes.app
