class SpecialtiesController < ApplicationController
 
  # GET /specialties/new
  # GET /specialties/new.json
  def new
    @specialty = Specialty.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @specialty }
    end
  end

 
  # POST /specialties
  # POST /specialties.json
  def create
    @specialty = Specialty.new(params[:specialty])

    respond_to do |format|
      if @specialty.save
        format.html { redirect_to posts_path, notice: 'Specialty was successfully created.' }
        format.json { render json: @specialty, status: :created, location: @specialty }
      else
        format.html { render action: "new" }
        format.json { render json: @specialty.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /specialties/1
  # DELETE /specialties/1.json
  def destroy
    @specialty = Specialty.find(params[:id])


    @users = User.all

    @specialty.destroy

    respond_to do |format|
      format.html { redirect_to specialties_url }
      format.json { head :no_content }
    end
  end
end
