class PartitionsController < ApplicationController
  def index
  end

  def new
    @partition = Partition.new
  end

  def create
    @partition = Partition.new(partition_params)
    if @partition.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def partition_params
    params.require(:partition).permit(:title, :category, :comment, images: [], user_ids: []).merge(user_id: current_user.id)
  end
end
