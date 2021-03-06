class PostsController < ApplicationController
  def index
    @posts = Post.all
    if user_signed_in?
      @post = Post.find_by(user_id: current_user.id)
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end

  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :introduction, :band_name_idea, :need_part_id, :area_of_activity_id, :genre_id, :professional_or_id).merge(user_id: current_user.id)
  end
end
