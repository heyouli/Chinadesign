class SimplePagesController < ApplicationController
  def landing_page
    @featured_post = Post.first
    @posts = Post.all
  end

  def design
    @design_post=Post.where(theme: "Design")
  end

  def photography
    @photography_post=Post.where(theme: "Photography")
  end

  def recipes
    @recipe_post=Post.where(theme: "Recipes")
  end
end
