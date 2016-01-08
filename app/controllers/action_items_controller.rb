class ActionItemsController < ApplicationController
  def create
  	@action_item = ActionItem.create(description: action_item_params[:description], sretro_id: params[:sretro_id])
  	redirect_to sretro_notes_path(sretro_id: params[:sretro_id])
  end

  def update
  end

  def new
  end

  def edit
  end

  private

  def action_item_params
  	params.require(:action_item).permit(:sretro_id, :description)
  end
end
