class CommentsController < ApplicationController
	
	def create
		@article = Article.find(params[:article_id])
		@comments = @article.comments.create(comment_params)
		redirect_to article_path(@article)
	end

	def destroy
		@article = Article.find(params[:article_id])
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to article_path(@article)
	end

	private
	  def comment_params
			params.require(:comment).permit(:name, :body)
	  end
end
