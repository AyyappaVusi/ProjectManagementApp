class Manager < ApplicationRecord
    has_many :teams
    has_many :employees
end
