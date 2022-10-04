class ApisController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def show
        render json: {status: 'Sucess', message: "show"}
    end

    def create
        @customer = Customer.create(customer_params)

        if @customer.save
            redirect_to('http://127.0.0.1:5500/_demo/thank_you.html')
        else
            @customers = Customer.all()
            redirect_to('http://127.0.0.1:5500/_demo/')
        end
    end

    def env
        redirect_to('/')
    end

    private
    
    def customer_params
        params.require(:customer).permit(:name, :age, :media)
    end
end
