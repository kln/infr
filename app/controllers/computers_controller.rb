class ComputersController < ApplicationController
before_filter :authenticate_user!
respond_to :html, :json

  def index
    @computer = Computer.where(:user_id => current_user).order("hostname").page(params[:page])
    respond_with @computer
  end

  def show
    @computer = Computer.find(params[:id])   
    respond_with @computer
  end

  def new
    @computer = Computer.new
    respond_with @computer
  end

  def edit
    @computer = Computer.find(params[:id])
    respond_with @computer
  end

  def create
    @computer = current_user.computer.build(params[:computer])
    respond_to do |format|
      if @computer.save
        format.html { redirect_to @computer, notice: "Computer was successfully registered." }
        format.json { render json: @computer, status: :created, location: @computers }
      else
        format.html { render action: "new" }
        format.json { render json: @computer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @computer = Computer.find(params[:id])
    respond_to do |format|
      if @computer.update_attributes(params[:computer])
        format.html { redirect_to @computer, notice:  "Computer was successfully updated."}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @computer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @computer = Computer.find(params[:id])
    @computer.destroy
    respond_with @computer
  end
end