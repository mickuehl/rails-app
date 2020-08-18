class AccountPolicy < ApplicationPolicy

  def destroy?
    false
  end

end
