class ClosetController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  
  def index
    #로그인 되어있으면 calendar page로
    if current_user != nil
      redirect_to "/calendar"
    end
    #navbar  비활성화
    @disable_nav = true
  end

  def calendar
    # DB record 값에서 currnet_user 의 record 값만 불러오기    
    @user_record = Record.where(user_id: current_user.id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @record = Record.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_params
      params.require(:record).permit(:user_id, :memo, :image, :date_id, :date_data)
    end
end
