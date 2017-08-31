class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  belongs_to :course
         
  enum role: {student: 0, teacher: 1, admin: 2}
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :student
  end
         
end
