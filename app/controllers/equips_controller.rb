class EquipsController < ApplicationController
before_filter :authenticate_user!
respond_to :html, :json

  def index
    @equip= Equip.find_all_by_user_id(current_user)
    respond_with @equip
  end

  def show
    @equip = Equip.find(params[:id])
    respond_with @equip
  end

  def new
    @equip = Equip.new
    respond_with @equip
  end

  def edit
    @equip = Equip.find(params[:id])
    respond_with @equip
  end

  def create
    @equip = current_user.equip.build(params[:equip])
    respond_to do |format|
      if @equip.save
        format.html { redirect_to @equip, notice: "Equip was successfully registered." }
        format.json { render json: @equip, status: :created, location: @equip }
      else
        format.html { render action: "new" }
        format.json { render json: @equip.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    @equip = Equip.find(params[:id])

    respond_to do |format|
      if @equip.update_attributes(params[:equip])
        format.html { redirect_to @equip, notice: "Equip was successfully updated."}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @equip.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @equip = Equip.find(params[:id])
    @equip.destroy
    respond_with @equip
  end
end
