class HomeController < ApplicationController 
  skip_before_action :verify_authenticity_token

  def homepage        #this is the home page
  end

  def team          #this is the team page
  end



  def list          #this is the item list page
    @marketplace = Marketplace.all
    @cats = Cat.all
    @itemnew = Item.all
    @marketplace = Marketplace.all
  end

  def blog
    @blogs = Blog.all
  end

  def post
    newpost = Blog.new
    newpost.text = params[:body]
    newpost.save
    redirect_to "/blog"
  end

  def create
    newcat = Cat.new(
       name: params[:name], 
       weight: params[:weight])
    newcat.save
    redirect_to "/list"
  end

  def additems
    newitems = Item.new(
       names: params[:names],
       price: params[:price],
       description: params[:description],
       quantity: params[:quantity])
    newitems.save
    redirect_to "/list"
  end

  def newproduct
    newproduct = Marketplace.new
      newproduct.image = params[:image]
      newproduct.name = params[:name]
      newproduct.price = params[:price]
      newproduct.description = params[:description]
      newproduct.quantity = params[:quantity]

      newproduct.save
      redirect_to "/list"
  end


end


