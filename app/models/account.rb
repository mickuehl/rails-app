class Account < ApplicationRecord
  
  enum role: [:user, :staff, :admin, :app]

  after_initialize :set_defaults, unless: :persisted?
  after_validation :set_default_name, on: [ :update ]

  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable, :confirmable

  def admin?
    self.role == 'admin'
  end

  def application?
    self.role == 'app'
  end

  def display_name
    self.name
  end

private

  def set_defaults
    set_default_role
    set_default_name
  end

  def set_default_role
    self.role ||= :user
  end
  
  def set_default_name
    self.name ||= self.email.split('@')[0]
  end

end
