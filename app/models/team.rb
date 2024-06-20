class Team < ApplicationRecord
  belongs_to :manager
  has_many :employees
  has_many :projects
end
