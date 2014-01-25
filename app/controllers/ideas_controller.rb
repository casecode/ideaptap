class IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :edit, :update, :destroy]

  # GET /ideas
  # GET /ideas.json
  def index
    my_org_ideas = current_user.organization.ideas.includes(:user)
    @ideas = my_org_ideas.search(params[:search])
  end

  # GET /ideas/1
  # GET /ideas/1.json
  def show
    @idea = Idea.find(params[:id])
  end

  # GET /ideas/new
  def new
    @idea = Idea.new
  end

  # GET /ideas/1/edit
  def edit
  end

  # POST /ideas
  # POST /ideas.json
  def create
    @idea = Idea.new(idea_params)

    respond_to do |format|
      if @idea.save
        format.html { redirect_to :back }
        format.json { render action: 'show', status: :created, location: @idea }
      else
        format.html { render action: 'new' }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ideas/1
  # PATCH/PUT /ideas/1.json
  def update
    respond_to do |format|
      if @idea.update(idea_params)
        format.html { redirect_to @idea, notice: 'Idea was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ideas/1
  # DELETE /ideas/1.json
  def destroy
    @idea.destroy
    respond_to do |format|
      format.html { redirect_to ideas_url }
      format.json { head :no_content }
    end
  end

  def comment
    @idea = Idea.find(params[:id])
    new_comment = @idea.comments.create(comment_params)
    render :json => new_comment.to_json, :status => 200
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def idea_params
      params.require(:idea).permit(:title, :category, :short_desc, :long_desc, :idea_support_url, :coffer)
    end

    def set_idea
      @idea = Idea.find(params[:id])
    end

    def comment_params
      params.permit(:body, :idea_id, :username)
    end
end
