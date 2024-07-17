class BlogsController < ApplicationController
  before_action :set_blog, only: %i[show edit update destroy]

  def index
    @blogs = Blog.all
    Rails.logger.debug "Blogs: #{@blogs.inspect}"
  end

  def show
  end

  def new
    @blog = Blog.new
    @events = Event.all
  end

  def edit
    @events = Event.all
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to @blog, notice: 'Blog was successfully created.'
    else
      @events = Event.all
      render :new
    end
  end

  def update
    if @blog.update(blog_params)
      redirect_to @blog, notice: 'Blog was successfully updated.'
    else
      @events = Event.all
      render :edit
    end
  end

  def destroy
    @blog.destroy
    redirect_to blogs_url, notice: 'Blog was successfully destroyed.'
  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title, :content, event_ids: [])
  end
end