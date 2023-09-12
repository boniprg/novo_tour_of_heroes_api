class Hero < ApplicationRecord
    validates :name, presence: true 
    validates :name, uniqueness: { case_sensitive: false }

    scope :sorted_by_name, -> { order(:name) }
end
