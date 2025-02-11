class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
    puts "@article in new action: #{@article.inspect}"  # Debugging output
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:notice] ="Article was created successfully"
      redirect_to @article
    else
      puts "❌ Article not saved. Errors: #{@article.errors.full_messages}"  # Debugging output
      render :new, status: :unprocessable_entity
    end
  end


  private

  def article_params
    params.require(:article).permit(:title, :description)  # ✅ Allow only title & description
  end
end
