class User::ArticlesController < User::BaseUserController
  def show
    @cate = M::NewsCategory.find(params[:id])
    @articles = Article.where(m_news_category_id: params[:id])
  end
end
