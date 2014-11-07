class Animal < ActiveRecord::Base
  belongs_to :zoo

  validates :name, :photo, :zoo_id,
  presence: true

end

