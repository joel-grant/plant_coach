# GardenPlants are objects that the user has decided to plant.
class GardenPlant < ApplicationRecord
  # Standard validations that are required to save the record.
  validates_presence_of :name,
                        :plant_type,
                        :days_to_maturity,
                        :hybrid_status,
                        :days_relative_to_frost_date
  # "Inclusion" validates that the attribute belongs to an enumerable object.
  validates_inclusion_of :organic, in: [true, false]
  # Records must be unique according to name, but only unique for those that
  # belong to each user (aka "user_id").
  validates :name, presence: true, uniqueness: { scope: :user_id }

  # GardenPlants belong to a user.
  belongs_to :user

  # Hybrid Status can only be categorized as these two enumerables.
  enum hybrid_status: [:open_pollinated, :f1]
end
