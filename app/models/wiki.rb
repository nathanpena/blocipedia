class Wiki < ActiveRecord::Base
has_many :collaborators
has_many :users, through: :collaborators
  after_initialize :init

  def init
    self.private ||= false
  end

  belongs_to :user

  scope :visible_to, -> (user) { 
    if !user.present?
      publicly_viewable 
    elsif (user.role == 'admin' || user.role == 'premium') 
      all.private 
    else 
      publicly_viewable 
     end}
     
  scope :publicly_viewable, -> { where(private: false)}
  
  def public?
    self.private == false
  end
  
end
