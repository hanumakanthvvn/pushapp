class User < ActiveRecord::Base
has_many :timesheets, :foreign_key => "registration_id"
end
