class GuidesController < ApplicationController

  def index
    render json: current_user.guides
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end

end
