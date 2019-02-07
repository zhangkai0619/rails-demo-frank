class PostsController < ApplicationController
  def new
    @post = Post.new
  end 
  def show

    # Retrieve instruction post
    # We use Post.first here for simplicity because the ID is randomized
    # However, your code should not rely on static IDs
    #@post = Post.new
  
    @post = Post.first
    @comments = @post.comments
    #puts @comments.inspect

    @comments_p = Comment.where("post_id = :id1", id1: "#{@post.id}").paginate(page: params[:page], per_page: 35).order('created_at DESC')

    respond_to do |format|
      format.html
      format.js
    end 

    #render plain: @post.inspect
  end

end
