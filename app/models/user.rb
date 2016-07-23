class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  enum user_type: [:村网络员, :法庭网络员]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
