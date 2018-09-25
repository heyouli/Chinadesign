class SimplePagesController < ApplicationController
  def landing_page
    @featured_post = Post.first
    @posts = Post.all
  end
end
