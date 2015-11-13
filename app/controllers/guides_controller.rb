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

  #PATCH /guides/id
  def update
    guide = current_user.guides.find(params[:id])
    if guide.update_attributes(guide_params)
      render json: guide, status: :accepted
    else
      render json: guide.errors, status: :unprocessable_entity
    end
  end

  #DELETE /guides/id
  def destroy
    current_user.guides.find(params[:id]).destroy
    head :no_content
  end

private

  def guide_params
    params.require(:guide).permit(:name)
  end
end
