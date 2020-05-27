class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, :address, presence: true
  validates :category, presence: true, :inclusion => { :in => ["chinese", "italian", "belgian", "japanese", "french"] }
end
