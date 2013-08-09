class Ability
  include CanCan::Ability

  def initialize(user)
        user ||= User.new # guest user (not logged in)
        if user.has_role? :Admin
            can :manage, :all
        end

        if user.has_role? :Author
            can :read, :all
        end
  end
end
