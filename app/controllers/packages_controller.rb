class PackagesController < ApplicationController

  layout "without_main_slider"

  use_tinyMce

  expose(:packages) { Package.find(:all, :conditions =>"sub_product_id = #{params[:sub_product_id]}") }

  def index

  end






end
