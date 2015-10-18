class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :place

  validates :user, presence: true, associated: true
  validates :place, presence: true, associated: true
end
