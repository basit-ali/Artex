class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery

  expose(:products){ Product.find(:all) }

  protected

  def self.use_tinyMce
    uses_tiny_mce :options=>
      {
        :editor_selector                   => "text-area",
        :theme                             => "advanced",
        :plugins                           => %w{ preview },
        :theme_advanced_buttons1           => "bold,italic,underline,|,bullist,numlist,preview,|,link,unlink,code",
        :theme_advanced_buttons2           => "",
        :theme_advanced_buttons3           => "",
        :theme_advanced_toolbar_location   => "top",
        :theme_advanced_toolbar_align      => "left",
        :theme_advanced_statusbar_location => "none"
      }
  end
end
