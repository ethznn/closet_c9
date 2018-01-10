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
    #@cal_record = Record.find_by(user: current_user.id)
  end

  def enrollment
    @record = Record.new
    @record.memo = params[:memo]
    @record.written_date = params[:written_date]
    @record.user_id = current_user.id
    @record.save

    redirect_to "/calendar"
  end
end
