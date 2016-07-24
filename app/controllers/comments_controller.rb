class CommentsController < ApplicationController
  def create
    @consult = Consult.find(params[:consult_id])
    @comment = @consult.comments.create(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to consult_show_path(@consult)
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :attachment)
  end
end
