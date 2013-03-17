class UserSpecialty < ActiveRecord::Base
  attr_accessible :specialty_id, :user_id, :user_specialty_name

  belongs_to :user
  belongs_to :specialty

end
