class Wiki < ActiveRecord::Base

  after_initialize :init

  def init
    self.private = false
  end

  belongs_to :user

  scope :visible_to, -> (user) { user.role == 'admin' || user.role == 'premium' ? all : publicly_viewable }
  scope :publicly_viewable, -> { where(private: false)}
  
  def public?
    self.private == false
  end
  
end
