class Admin::CommentsController < ApplicationController
  before_action :set_comment, only: %i[show edit update destroy]
  layout 'admin'
  def index
    @comments = Comment.all
  end

  def show
  @comment = Comment.find(params[:id])
end


def new
      @comment = Comment.new
    end
  


  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    if @comment.update(comment_params)
      redirect_to admin_comment_path(@comment), notice: 'Comentário atualizado.'
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to admin_comments_path, notice: 'Comentário excluído.'
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:conteudo, :post_id)
  end
end