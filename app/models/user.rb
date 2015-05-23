class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # a user has many tasks
  # dependent: :destroy will destroy all associated tasks if the user is deleted.
  has_many :tasks, dependent: :destroy
end
