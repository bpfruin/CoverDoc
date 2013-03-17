class UsersController < ApplicationController
 
  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    @this_user = User.find_by_auth_token!(cookies[:auth_token])
    @specialties = Specialty.find(User.find(params[:id]).specialty_ids)

    @field = []
    @specialties.each do |i|
      @field << i.field
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  def new
  @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  def create
  @user = User.new(params[:user])
  if @user.save
    UserMailer.signup_confirmation(@user).deliver
    cookies[:auth_token] = @user.auth_token

    redirect_to root_url, notice: "Thank you for signing up!"
  else
    render "new"
  end
end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    

    if @user == User.find_by_auth_token!(cookies[:auth_token])
      cookies.delete(:auth_token)
    end

    @user.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end
end
