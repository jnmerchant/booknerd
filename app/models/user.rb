class User < ApplicationRecord
  include Filterable

  validates :name, :presence => true

  scope :user_name, -> (name) { where("name ILIKE ?", "%#{name}%") }

  has_many :library
end
