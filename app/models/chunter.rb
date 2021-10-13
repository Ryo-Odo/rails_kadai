class Chunter < ApplicationRecord
  validates :content, presence: true, length: { maximum: 145 }
end
