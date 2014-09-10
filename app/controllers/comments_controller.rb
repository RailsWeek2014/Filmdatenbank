class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def show
    redirect_to '/' unless user_signed_in?
    set_comment
  end

  # GET /comments/new
  def new
    redirect_to '/' unless user_signed_in?
    @comment = Comment.new
    @comment.movie = Movie.find(params[:movie_id])
  end

  # GET /comments/1/edit
  def edit
      redirect_to '/' unless has_permission?
      set_comment
  end

  # POST /comments
  # POST /comments.json
  def create
    if user_signed_in?
      @comment = Comment.new(comment_params)
      @comment.user = current_user
  
        respond_to do |format|
          if @comment.save
            format.html { redirect_to @comment.movie, notice: 'Comment was successfully created.' }
            format.json { render :show, status: :created, location: @comment }
          else
            format.html { render :new }
            format.json { render json: @comment.errors, status: :unprocessable_entity }
          end
      end
    else permission_error
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    if has_permission?
      respond_to do |format|
        if @comment.update(comment_params)
          format.html { redirect_to @comment.movie, notice: 'Comment was successfully updated.' }
          format.json { render :show, status: :ok, location: @comment }
        else
          format.html { render :edit }
          format.json { render json: @comment.errors, status: :unprocessable_entity }
        end
      end
    else permission_error
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    if has_permission?
      @comment.destroy
      respond_to do |format|
        format.html { redirect_to @comment.movie, notice: 'Comment was successfully destroyed.' }
        format.json { head :no_content }
      end
    else permission_error
    end
  end

  private

    def has_permission?
      (user_signed_in? && (@comment.user == current_user)) || current_user.is_moderator?
    end

    def permission_error
      redirect_to @comment.movie, alert: 'No Permission!'
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:movie_id, :content)
    end
end
