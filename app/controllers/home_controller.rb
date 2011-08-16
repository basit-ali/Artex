class HomeController < ApplicationController
  layout  'application'
  expose(:homes){ Home.find(:all) }

  def index
    render :layout => 'application'
  end

  def services
  end

  def about
  end

  def contact
  end

  def projects
  end

end
