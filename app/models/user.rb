class User < ActiveRecord::Base

  after_initialize :init

  def init
    self.role ||= 'standard'
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :wikis, dependent: :destroy

  has_many :subscriptions

  def admin?
    role == 'admin'
  end

  def standard?
    role == 'standard'
  end

  def premium?
    role == 'premium'
  end

  def save_stripe_customer_id(user, customer_id)
    user.customer_id = customer_id
    user.save
  end

  def get_stripe_customer_id(user)
    return user.customer_id
  end

  def upgraded?
    !standard?
  end
  
end
