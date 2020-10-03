class PartitionsController < ApplicationController

  before_action :search_product

  def index
    @users = User.all
    @partitions = Partition.all
    set_user_column
    set_created_at_column
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
    @results = @p.result.includes(:user)
    #@partitions = Partition.search(params[:keyword])
  end

  private

  def partition_params
    params.require(:partition).permit(:title, :category, :comment, images: [], user_ids: []).merge(user_id: current_user.id)
  end

  def search_product
    @p = Partition.ransack(params[:q])  # 検索オブジェクトを生成
  end

  def set_user_column
    @user_name = User.select("name").distinct
  end

  def set_created_at_column
    @partition_created_at = Partition.select("created_at").distinct
  end

end
