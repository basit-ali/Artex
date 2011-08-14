class SubProductsController < ApplicationController

  layout "without_main_slider"
  expose(:sub_products) { SubProduct.find(:all, :conditions =>"product_id = #{params[:product_id]}") }


  def index

  end




end
