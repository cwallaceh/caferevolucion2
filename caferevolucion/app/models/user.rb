class User < ActiveRecord::Base
  rolify
  
  validates :username, presence: true
  validates :username, :uniqueness => {:case_sensitive => false}
  validates :email, :uniqueness => {:case_sensitive => false}
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts, dependent: :destroy
end
