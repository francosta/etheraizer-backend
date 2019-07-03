class SupportContractsController < ApplicationController

    def index
        support_contracts = SupportContract.all
        render json: support_contracts
    end

    def create
        support_contract = SupportContract.create(support_contract_params)
        render json: support_contract
    end

    private

    def support_contract_params
        params.permit(:user_id, :project_id, :value)
    end
end
