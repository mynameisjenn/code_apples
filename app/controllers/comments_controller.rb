class CommentsController < ApplicationController

	http_basic_authenticate_with name: "banana", password: "orange", only: :destroy
	
	def create
		@article = Article.find(params[:article_id])
		@comments = @article.comments.create(comment_params)
	end

	private
	  def comment_params
			params.require(:comment).permit(:commenter, :body)
	  end
end
