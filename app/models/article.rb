class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
					  length: { minimum: 5 }

  	def format_time
  		strftime("%b %d, %Y")
  	end

end
