class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user_for_dashboard, only: [:show]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    # @my_ideas = current_user.ideas.sort { |a,b| b.created_at <=> a.created_at }

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  def idea
    @user = current_user
    new_idea = @user.ideas.create(idea_params)
    render :json => new_idea.to_json, :status => 200
  end

  def transaction
    @user = current_user
    new_transaction = @user.transactions.create(transaction_params)    
    render :json => new_transaction.to_json, :status => 200
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :admin, :wallet)
    end

    def idea_params
      params.permit(:title, :category, :short_desc, :long_desc, :idea_support_url, :coffer)
    end

    def transaction_params
      params.permit(:amount, :idea_id)
    end

    def authenticate_user_for_dashboard
      if current_user != @user
        redirect_to user_path(current_user)
      end
    end
end
