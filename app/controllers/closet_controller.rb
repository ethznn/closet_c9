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
    # DB record 값에서 user_id, written_date 갑서에 따라서 배열에 저장
    @cal_record = Record.where(user_id: current_user.id)
  end

  def enrollment
    @record = Record.new
    @record.user_id = current_user.id
    @record.memo = params[:memo]
    @record.date_id = params[:date_id]
    @record.date_data = params[:date_data]
    @record.save

    redirect_to "/calendar"
  end
end
