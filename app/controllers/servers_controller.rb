class ServersController < ApplicationController
before_filter :authenticate_user!
respond_to :html, :json

  def index
    @server = Server.find_all_by_user_id(current_user)
    respond_with @server
  end

  def show
    @server = Server.find(params[:id])
    respond_with @server
  end

  def new
    @server = Server.new
    respond_with @server
  end

  def edit
    @server = Server.find(params[:id])
    respond_with @server
  end

  def create
    @server = current_user.server.build(params[:server])
    respond_to do |format|
      if @server.save
          format.html { redirect_to @server, notice: "Server was successfully registered." }
          format.json { render json: @server, status: :created, location: @server }
      else
          format.html { render action: "new" }
          format.json { render json: @server.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @server = Server.find(params[:id])
    respond_to do |format|
      if @server.update_attributes(params[:server])
        format.html { redirect_to @server, notice: "Server was successfully updated." }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @server.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @server = Server.find(params[:id])
    @server.destroy
    respond_with @server
  end
end