class GuidesController < ApplicationController

  #GET /guides
  def index
    render json: current_user.guides
  end

  def create

  end

  def update
  end

  def destroy
  end

private

  def guide_params
    params.require(:guides).permit(:name)
  end
end
