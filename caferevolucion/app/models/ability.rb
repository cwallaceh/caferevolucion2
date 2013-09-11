class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
      can :read, Post
    elsif user.has_role? :admin
      can :manage, :all
    else
      can [:read, :create], Post
      can [:update, :destroy], Post, :user_id => user.id
    end
  end

end
