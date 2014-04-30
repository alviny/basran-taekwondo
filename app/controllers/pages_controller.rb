class PagesController < ApplicationController
  def home
  end
  def about
  end
  def contact
  end
  def show
    @page = Page.find_by_id(params[:id])
    render 'shared/404', :status => 404 if @page.nil?
  end
end
