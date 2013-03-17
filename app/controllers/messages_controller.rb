class MessagesController < ApplicationController
  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.order().page(params[:page]).per(10)
  
    @user = User.find_by_auth_token!(cookies[:auth_token])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @messages }
    end
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
    @message = Message.find(params[:id])
    @user = User.find_by_id(@message.sender_id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @message }
    end
  end

  # GET /messages/new
  # GET /messages/new.json
  def new
    @message = Message.new

    @post = Post.find_by_id(params[:post_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @message }
    end
  end

  

  # POST /messages
  # POST /messages.json
  def create
    @message = Message.new(params[:message])

    @message.sender_id = User.find_by_auth_token!(cookies[:auth_token]).id

    respond_to do |format|
      if @message.save
        format.html { redirect_to root_url, notice: 'Message sent!' }
        format.json { render json: @message, status: :created, location: @message }
      else
        format.html { render action: "new" }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    respond_to do |format|
      format.js
      format.html { redirect_to messages_url }
      format.json { head :no_content }
    end
  end
end
