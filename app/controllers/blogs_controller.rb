class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(params_blog)
    if @blog.save
      redirect_to blogs_path
    else
      render :new
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(params_blog)
      redirect_to blogs_path
    else
      render :edit
    end
  end

  private 

  def params_blog
    params.require(:blog).permit(:title, :content)
  end
end
