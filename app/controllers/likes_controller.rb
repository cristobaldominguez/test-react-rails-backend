class LikesController < ApplicationController
  before_action :set_like, only: %i[ show destroy ]

  # GET /likes/1
  def show
    render json: @like
  end

  # POST /likes
  def create
    @like = Like.new(like_params.merge(user: current_user))

    if @like.save
      render json: @like, status: :created, location: @like
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  # DELETE /likes/1
  def destroy
    @like.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_like
      @like = Like.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def like_params
      params.require(:like).permit(:post_id)
    end
end
