class User::NewsController < User::BaseUserController
  def show
    @article = Article.find(params[:id])
  end
end
