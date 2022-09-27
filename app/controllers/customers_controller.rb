class CustomersController < ApplicationController
    def index
        @customers = Customer.all()
        @customer = Customer.new
    end

    def create
        @customer = Customer.create(customer_params)

        if @customer.save
            flash[:success] = "データを追加しました"
            redirect_to('/')
        else
            flash[:danger] = "データの追加に失敗しました"
            @customers = Customer.all()
            render 'customers/index'
        end
    end

    private
    
    def customer_params
        params.require(:customer).permit(:name, :age, :media)
    end
end
