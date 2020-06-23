class Items::SearchesController < ApplicationController
  def index
    @items = Item.search(params[:search]).includes(:images).order(updated_at: "DESC")
  end

  # def search
  #   @q = Item.ransack(params[:q])
  #   @search = @q.result.includes(:images).order(updated_at: "DESC")
  # end
end
