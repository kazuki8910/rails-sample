class ApisController < ApplicationController
    
    def show
        render json: {status: 'Sucess', message: "show"}
    end

    def create
        
        render json: {status: 'Sucess', message: 'create'}
    end
end
