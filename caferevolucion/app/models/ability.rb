class Ability
  include CanCan::Ability

  def initialize(user)
        user ||= User.new # guest user (not logged in)
        if user.has_role? :admin
            can :manage, :all
        else 
            can :read, :all
        end
        #Checar si se puede usar ELSE IF
        if user.has_role? :author
            can :write, :all
        end
  end
end
