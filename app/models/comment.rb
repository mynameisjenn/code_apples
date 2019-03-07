class Comment < ApplicationRecord
  belongs_to :article

  def format_time
  		created_at.strftime("%m.%d.%y")
  	end
end
