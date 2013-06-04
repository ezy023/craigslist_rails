class User < ActiveRecord::Base
  has_many :posts
  attr_accessible :email, :name, :password
  
  def self.authenticate(email, password)
    user = User.find_by_email(email)
    if user.password == password
      user
    else
      nil
    end
  end

end
