class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_categories

  rescue_from CanCan::AccessDenied do |exception|
    flush[:error] = "Access Denied"
  end
  def load_categories
    @categories=Category.all
  end
end
