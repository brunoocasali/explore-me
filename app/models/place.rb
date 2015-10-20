class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  geocoded_by :address

  # validates :user, presence: true, associated: true

  after_validation :geocode
end
