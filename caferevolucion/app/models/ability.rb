class Ability
  include CanCan::Ability

  def initialize(user)
        user ||= User.new # guest user (not logged in)

        if user.has_role? :admin
            can :manage, :all
        elsif user.has_role? :author
            can :create, Post
            can :update, Post do |post|
              post.try(:user) == user
            end
        end
        
  end
end
