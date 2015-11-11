class GuidesController < ApplicationController

  #GET /guides
  def index
    render json: current_user.guides
  end
  #POST /guides
  def create
    guide = current_user.guides.create(guide_params)
    if guide.save
      render json: guide, status: :created
    else
      render json: guide.errors, status: :unprocessable_entity
    end
  end

  #Patch /guides/id
  def update
    guide = current_user.guides.find(params[:id])
    if guide.update_attributes(guide_params)
      render json: guide, status: :updated
    else
      render json: guide.errors, status: :unprocessable_entity
    end
  end

  def destroy
  end

private

  def guide_params
    params.require(:guide).permit(:name)
  end
end
