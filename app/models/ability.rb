class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin
      can :manage, Article
    else
      can :read, Article
    end
  end

end
