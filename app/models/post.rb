class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  attr_accessible :content, :title, :category, :user
end
