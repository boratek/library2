class Book < ActiveRecord::Base
  belongs_to :author
  has_and_belongs_to_many :categories

	def author_description
		if self.author
			self.author.full_name
 		else
			"autor nieznany"
		end		
	end

	def category_description
	  if self.categories.empty?
            "brak kategorii"
          else
            self.categories.map{|c| c.name }.join(", ")
          end
	end
end
