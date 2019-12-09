class CaregiversController < ApplicationController
  before_action :set_caregiver, only: [:show, :edit, :update, :destroy]

  def index
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @caregivers }
    end
  end

  def show
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @caregiver }
    end
  end

  def new
    @caregiver = Caregiver.new
  end

  def create
    @caregiver = Caregiver.find_or_create_by(name: caregiver_params[:name])
    if @caregiver.save
      respond_to do |format|
        format.html { redirect_to caregiver_path(@caregiver), layout: false }
        format.json { render json: @caregiver }
      end
    else
      redirect_to root_path
    end
  end

  def edit
  end
  
  def update
    @caregiver.update(caregiver_params)
    if @caregiver.save
      flash[:notice] = "Caregiver updated."
      redirect_to caregiver_path(@caregiver)
    else
      render :new
    end
  end
  
  def destroy
    @caregiver.reset_user_caregiver_id
    if @caregiver.delete
      flash[:notice] = "Caregiver deleted, user must choose new caregiver."
      redirect_to caregivers_path
    else
      flash[:notice] = @caregiver.errors.full_messages
      redirect_to caregiver_path(@caregiver)
    end
  end

  private
    def set_caregiver
      @caregiver = Caregiver.find_by_id(params[:id])
    end
    def caregiver_params
      params.require(:caregiver).permit(:name)
    end
end
