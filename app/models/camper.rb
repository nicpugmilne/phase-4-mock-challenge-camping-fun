class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups

    validates :name, presence: true
    validates :age, numericality: { greater_than_or_equal_to: 8, less_than_or_equal_to: 18 }
    # solution suggested using inclusion   validates :age, inclusion: 8..18
end
