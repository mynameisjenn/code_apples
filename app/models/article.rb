class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
					  length: { minimum: 5 }

  	def format_time
  		created_at.strftime("%d.%m.%y")
  	end

end
