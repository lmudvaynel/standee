# encoding: utf-8
class PagesController < ApplicationController
  def show
    @page = Page.friendly.find(params[:slug])
    render params[:slug] if controller_view_exists?(params[:slug])
  end

  private

  def view_exists?(view)
    File.exists? Rails.root.join("app", "views", view)
  end

  def controller_view_exists?(name)
    view_exists?("#{params[:controller]}/#{name}.html.erb")
  end
end
