class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show, :destory]

  def show
    @posts = Post.where(user_id: @user.id)
  end

  def edit

  end

  # def update
  #     # if @user.update(user_params)
  #     #   redirect_to request.referer
  #     # else
  #     #   render "home/top"
  #     # end
  #   respond_to do |format|
  #     if @user.update(user_params)
  #       format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
  #       format.json { render :show, status: :ok, location: @user }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def destroy
  #   @user.destroy

  #   respond_to do |format|
  #     format.html { redirect_to "home/top", notice: "User was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :gender, :nickname, :comment, :image_name)
    end
end

