class DatasController < ApplicationController
    def index
        # DBから顧客情報を取得
        @customers = Customer.all

        # エラー回避。デフォルトで定義されていない変数
        @customer = Customer.new
        @form_data = {}
    end



    def create
        # モデル作成
        @customer = Customer.new

        # 値代入
        @customer[:name] = params[:create_name]
        @customer[:age] = params[:create_age]
        @customer[:media] = params[:create_media]

        # データ保存
        if @customer.save
            @customer.save
            flash[:success] = "データを追加しました"
            redirect_to('/')
        # エラー時の挙動 
        else
            flash[:danger] = "データの追加に失敗しました"
            index()
            @form_data = params
            render 'datas/index'
        end
    end
end
