# encoding: utf-8
class PagesController < ApplicationController
  def show
    @page = Page.find_by_slug(params[:slug])
    @photos_json = Photo.all.map(&:to_hash).to_json
    @gall_json = Gallery.all.map(&:to_hash_g).to_json
    @og = { :title => 'index title', :description => 'index desc' }
    render_og
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
