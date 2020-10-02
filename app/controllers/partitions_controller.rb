class PartitionsController < ApplicationController
  def index
    @partitions = Partition.all
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

  def destroy
    partition = Partition.find(params[:id])
    partition.destroy
    redirect_to root_path
  end

  def show
    @partitions = Partition.all
    @partition = Partition.find(params[:id])
  end

  def search
    @partitions = Partition.search(params[:keyword])
  end

  private

  def partition_params
    params.require(:partition).permit(:title, :category, :comment, images: [], user_ids: []).merge(user_id: current_user.id)
  end
end
