class EmployeesController < ApplicationController
    def edit 
        @employee = Employee.find(params[:id])
    end 
    
    def update 
        @employee = Employee.find(params[:id])
        @employee.update(employee_params)
        redirect_to company_path(@employee.company)
    end 
   
    private 
    def employee_params 
        params.require(:employee).permit(:name, :title, :company_id)
    end 
end 
