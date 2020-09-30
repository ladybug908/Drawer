class DrawersController < ApplicationController
  before_action :set_drawer, only: [:destroy, :update, :edit, :show]
  before_action :move_to_new_user_session, only: :new

  def index
    #@drawers = current_user.drawers
    @drawers = Drawer.all
  end

  def new
    @drawer = Drawer.new
  end

  def create
    @drawer = Drawer.new(drawer_params)
    if @drawer.save
      redirect_to root_path
    else
      render :new
    end

    def show
      
    end
  end

  private

  def drawer_params
    params.require(:drawer).permit(:title, :category, :comment, images: [], user_ids: []).merge(user_id: current_user.id)
  end

  def set_drawer
    @drawer = Drawer.find(params[:id])
  end

  def move_to_new_user_session
    redirect_to new_user_session_path unless user_signed_in?
  end

end
