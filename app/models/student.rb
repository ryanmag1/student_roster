class Student < ActiveRecord::Base
  validates :first_name, :last_name, :email, :cell_phone, presence: true
# I totally found this validates email below on the interwebs.
  validates :email, :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}
#  validates_numericality_of :cell_phone, message: 'Please enter only numeric digits.  i.e. 3032323700'
    validates_numericality_of :cell_phone, :work_phone, :home_phone, message: 'Please enter only numeric digits.  i.e. 3032323700'
end
