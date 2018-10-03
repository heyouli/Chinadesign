class SimplePagesController < ApplicationController
  def landing_page
    @featured_post = Post.first
    @posts = Post.all
    @design_post=Post.where(theme: "Design")
    @photography_post=Post.where(theme: "Photography")
    @recipe_post=Post.where(theme: "Recipes")
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

  def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(from: @email,
      to: 'julia@julia-hofmann.com',
      subject: "A new contact form message from #{@name}",
      body: @message).deliver_now
  end
end
