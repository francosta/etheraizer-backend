class User < ApplicationRecord
    has_many :projects, dependent: :destroy
    has_many :support_contracts, dependent: :destroy
    has_secure_password

    def supported_projects
        contracts = SupportContract.all.select{|contract| contract.user_id == self.id}
        contracts.map do |contract| 
            Project.all.select{|project| project.id == contract.project_id}
        end
    end
end
