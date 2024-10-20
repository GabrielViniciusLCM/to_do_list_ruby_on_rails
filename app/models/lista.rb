class Lista < ApplicationRecord
    has_many :itens, dependent: :destroy
    validates :title, presence: true
  end
  