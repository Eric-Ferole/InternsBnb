class RequestPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def new?
    true
  end

  def update?
    true
  end

  def create?
    # user_is_not_owner?
    true
  end

  private

  def user_is_not_owner?
    record.product.user != user
  end
end
