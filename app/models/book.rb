class Book < ApplicationRecord
  include Filterable
  
  validates :title, :presence => true
  validates :author, :presence => true
  validates :is_read, :inclusion => { :in => [true, false] }
  validates :library_id, :numericality => { :only_integer => true }

  scope :title, -> (title) { where("title ILIKE ?", "%#{title}%") }
  scope :author, -> (author) { where("author ILIKE ?", "%#{author}%") }
  scope :is_read, -> (is_read) { where is_read: is_read}

  belongs_to :library
end
