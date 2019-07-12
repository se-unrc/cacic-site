class WorkshopsController < ApplicationController
  def show
    render params[:slug]
  end
end
