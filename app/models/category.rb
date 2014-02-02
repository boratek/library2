class Category < ActiveRecord::Base
	has_and_belongs_to_many :books
	
	def category_description
		"#{self.category_id}"
	#	"#{self.title}"
	end	

#	def book_description
#	  if self.books.empty?
#		"Brak książek"
#	  else
#	     self.books.map{|b| b.title}.join(", ")
#	  end
#	end
end
