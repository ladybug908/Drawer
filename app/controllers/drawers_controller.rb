class DrawersController < ApplicationController
  before_action :set_drawer, only: [:destroy, :update, :edit, :show]
  before_action :move_to_new_user_session
 # before_action :set_partition

  def index
    @partition = Partition.find(params[:id])
  end

  private

  #  def set_partition
  #    @partitions = Partition.find(params[:id])
  #  end

  def move_to_new_user_session
    redirect_to new_user_session_path unless user_signed_in?
  end

end
