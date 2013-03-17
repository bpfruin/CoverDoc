class PostsController < ApplicationController

  before_filter :authorize, only: [:index, :edit, :update, :new, :create, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.order("id desc").page(params[:page]).per(10)
    @users = User.all
    @this_user = User.find_by_auth_token!(cookies[:auth_token])

    @posts.each do |post|
      

    @user = User.find_by_id(post.user_id)
    @specialties = Specialty.find(post.specialty_ids)

    @field = []
    @specialties.each do |i|
    @field << i.field

    end
  
  end





    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show

    @post = Post.find(params[:id])
    @user = User.find_by_id(@post.user_id)


    @poster = @post.user_id
    @post_num = @post.id
    @sender = User.find_by_auth_token!(cookies[:auth_token])
    @this_user = User.find_by_auth_token!(cookies[:auth_token])


    @specialties = Specialty.find(Post.find(params[:id]).specialty_ids)

    @field = []
    @specialties.each do |i|
      @field << i.field
    end




    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])
    @post.user = User.find_by_auth_token!(cookies[:auth_token])

    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_path, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.js
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end
end
