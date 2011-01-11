class Post < ActiveRecord::Base
  validates :name, :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }

  has_many :comments
  belongs_to :owner, :class_name => "User"
end
