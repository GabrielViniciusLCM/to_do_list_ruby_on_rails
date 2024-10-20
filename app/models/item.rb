class Item < ApplicationRecord
  belongs_to :lista
  validates :content, presence: true
end
