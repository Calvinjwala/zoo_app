class Zoo < ActiveRecord::Base
  has_many :animals

  validates :name, :location,
  presence: true,
  uniqueness: true
end


