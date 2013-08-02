class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:

    if user.role? :moderator
        can :manage, Post
    end

    if user.role? :admin
        can :manage, :all
    end

    if user.role? :author
        can :create, Post
        can :update, Post do |post|
            post.try(:user) == user
    end

    if user.role? :banned
        can :read, :all
    end

  end
end
