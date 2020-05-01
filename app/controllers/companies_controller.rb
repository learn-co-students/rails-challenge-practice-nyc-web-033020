class CompaniesController < ApplicationController
    def show 
        @company = Company.find(params[:id])
    end 

    def index 
        @companys = Company.all 
    end 

    def edit 
        @company = Company.find(params[:id])
    end 

    def update 
        @company = Company.find(params[:id])
        @company.update(company_params)
        redirect_to company_path(@path)
    end 

    private 

    def company_params
        params.require(:company).permit(:name)
    end 
end