class Wiki < ActiveRecord::Base
has_many :collaborators
has_many :users, through: :collaborators
  after_initialize :init

  def init
    self.private = false
  end

  belongs_to :user

  def public?
    self.private == false
  end
  
end
