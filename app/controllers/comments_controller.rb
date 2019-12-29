class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    redirect_to "informations_path#{comment.information_id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(offices_id: current_user.id, user_id: current_user.id, information_id: params[:information_id])
  end
end

コメントの確認
コントローラー
offices_id違い
