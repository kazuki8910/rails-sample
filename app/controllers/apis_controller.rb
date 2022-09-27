class ApisController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def show
        render json: {status: 'Sucess', message: "show"}
    end

    def create
        render json: {status: 'Sucess', message: 'create'}
    end
end
