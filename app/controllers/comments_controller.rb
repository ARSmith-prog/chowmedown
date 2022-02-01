class CommentsController < ApplicationController
  before_action :set_recipe

  def create
    @comment = @recipe.comments.create(comment_params)
    redirect_to @recipe
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :content)
  end

   def set_recipe
      @recipe = Recipe.find(params[:recipe_id])
    end
end
