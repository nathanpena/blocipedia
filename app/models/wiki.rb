class Wiki < ActiveRecord::Base

  after_initialize :init

  def init
    self.private = false
  end

  belongs_to :user

  def public?
    self.private == false
  end
  
end
