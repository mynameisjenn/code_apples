class CommentsController < ApplicationController
	
	def create
		@article = Article.find(params[:article_id])
		@comments = @article.comments.create(comment_params)
	end

	private
	  def comment_params
			params.require(:comment).permit(:commenter, :body)
	  end
end
