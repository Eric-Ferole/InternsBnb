class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def show?
      true
    end

    def create?
      true # anyone can create an account
    end

    def update?
      user_is_owner?
    end

    def destroy?
      user_is_owner?
    end

    private

    def user_is_owner?
      record.user == user
    end
  end
end
