class Song < ApplicationRecord
    include ActiveModel::Validations

    validates :title, presence: true
    validates :title, uniqueness: true

    validates_with ReleaseYearValidator
    #validates :release_year, numericality: { less_than_or_equal_to: Date.current.year }
end
