class Project < ApplicationRecord
    belongs_to :user
    has_many :support_contracts, dependent: :destroy
    has_many :users, through: :support_contracts
end
