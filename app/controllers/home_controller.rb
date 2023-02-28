class HomeController < ApplicationController 
    skip_before_action :verify_authenticity_token

    def homepage        #this is the home page
    end

    def team          #this is the team page
    end

    def list          #this is the item list page
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


  end



