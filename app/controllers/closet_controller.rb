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
  
  #modal form_for add 관련 controller
  def enrollment
    @record = Record.new
    @record.user_id = current_user.id
    @record.memo = params[:memo]
    @record.date_id = params[:date_id]
    @record.date_data = params[:date_data]
    @record.save

    redirect_to "/#"
  end
end
