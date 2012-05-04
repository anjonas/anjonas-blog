class UserSession < ActiveRecord::Base
  attr_accessible :username, :password
end
