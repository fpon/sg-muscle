class TrainingsController < ApplicationController
  before_action :set_training, only: [:show, :edit, :update]

  def new
    @training = Training.new
    @training.benches.build
    @training.squats.build
    @training.arms.build
  end
  
  def create
    @training = Training.new(training_params)
    if @training.save
      redirect_to users_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @training.update(training_params)
      redirect_to user_path(@training.user_id)
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    Training.find(params[:id]).destroy
    redirect_to user_path, status: :see_other
  end

  private

  def training_params
    params.require(:training).permit(:id, :user_id, :day, benches_attributes: [:id, :weight, :number, :training_id, :_destroy],
                                                  squats_attributes: [:id, :weight, :number, :training_id, :_destroy],
                                                  arms_attributes: [:id, :weight, :number,:training_id, :_destroy])
  end

  def set_training
    @training = Training.find(params[:id])
  end
end
