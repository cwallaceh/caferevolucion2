class User < ActiveRecord::Base

#after_create :assign_default_role

  validates :username, presence: true
  validates :email, presence: true
  validates :username, :uniqueness => {:case_sensitive => false}
  validates :email, :uniqueness => {:case_sensitive => false}
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts, dependent: :destroy

private 

    #def assign_default_role
    # self.add_role "author"
    #end

end
