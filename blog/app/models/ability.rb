class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new # guest user

    if user.role? :author
    	can :manage, :all
    else
    	can :read, :all
    	can :create, Comment
    end
  end
end