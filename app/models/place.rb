class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :user, presence: true, associated: true

  acts_as_gmappable process_geocoding: false
end
