class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :contenido, presence: true
end
