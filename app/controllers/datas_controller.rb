class DatasController < ApplicationController
    def index
        # DBから顧客情報を取得
        @customers = Customer.all()
    end

    def new
        @customer = Customer.new
    end

    def create
        # モデル作成
        @customer = Customer.new(customer_params)


        # データ保存
        # if @customer.save
        #     flash[:success] = "データを追加しました"
        #     redirect_to('/')
        # エラー時の挙動 
        # else
        #     flash[:danger] = "データの追加に失敗しました"
        #     render 'datas/index'
    end



    private

    def customer_params
      params.require(:fluit).permit(:name, :age, :media)
    end
end
