class ChangeNameOfCommentsColumn < ActiveRecord::Migration[5.1]
  def change
  	rename_column :comments, :commenter, :name
  end
end
