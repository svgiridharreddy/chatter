class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum status: {offline: 0,online: 1 }
  scope :all_except,-> (user) {where.not(id: user)}
  scope :online_users,-> (user) {where.not(id: user).where("status <> ?",User.status[:online])}



  def username
    return email.split("@")[0].capitalize
  end

end
