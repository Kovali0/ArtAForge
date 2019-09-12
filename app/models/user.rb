class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :role
  has_many :arts

  scope :artistscope, -> { where(role_id: '1') }
  scope :userscope, -> { where(role_id: '2') }

  def user?
    role.name == 'user'
  end

  def fullname
    "#{email}"
  end

end
