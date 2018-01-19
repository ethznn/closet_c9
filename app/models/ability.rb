class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    # user ||= User.new # guest user (not logged in)
      
      #권한 설정
      if user.nil?                                          # 로그인 전
        can :read, :all                                     
      elsif user.has_role? 'admin'                          # 관리자
        can [:read, :create, :update, :destroy], :all
      elsif user.has_role? 'manager'                        # 매니저 
        can [:read, :create, :update], :all
        can :destroy, Post, user_id: user.id
      else
        can [:read, :create], :all                          # 로그인 하고 일반 user
        can [:update, :destroy], Record, user_id: user.id
      end
      
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
