class OrdersController < ApplicationController
  before_filter :authenticate_user!
  layout "without_slider_product_list"
  use_tinyMce

  expose(:user) { current_user }
  expose(:packages) { Package.find(:all, :conditions =>"sub_product_id = #{params[:sub_product_id]}") }
  expose(:new_order) { user.orders.new(params[:order]) }

  def index

  end

  def new

  end

  def create
    if new_order.save
      redirect_to root_path
    else
      render :action => 'new'
    end
  end

end
