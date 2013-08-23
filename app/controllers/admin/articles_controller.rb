class Admin::ArticlesController < Admin::BaseAdminController
  before_filter :load_object, only: [:show, :edit, :update, :destroy]
  before_filter :build_object, only: [:new, :create]

  def index
    @q = Article.search params[:q]
    @articles = @q.result.page params[:page]
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if @article.save
      redirect_to admin_article_path(@article), notice: :".created"
    else
      render action: :new
    end
  end

  def update
    if @article.update_attributes params[:article]
      redirect_to admin_article_path(@article),
        notice: :".updated"
    else
      render action: :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to admin_articles_url, notice: :".destroyed"
  end

  private
  def load_object
    @article = Article.find params[:id]
  end

  def build_object
    @article = Article.new params[:article]
  end
end
