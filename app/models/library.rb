class Library < ApplicationRecord
  include Filterable

  validates :library_type, :presence => true
  validates :user_id, :numericality => { :only_integer => true }

  scope :library_type, -> (library_type) { where("tlibrary_type ILIKE ?", "%#{library_type}%") }

  belongs_to :user
  has_many :books, dependent: :destroy
end
