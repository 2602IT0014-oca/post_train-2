class PostsController < ApplicationController
  def index
    @posts = Post.all  # ← N+1問題が発生する書き方
    @posts = Post.includes(:user)  # ← Eager LoadingでN+1解消！
  end
end