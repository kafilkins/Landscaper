class EmployeesController < ApplicationController
    
    def new    
        @employee = Employee.new 
    end

    def create 
        @employee = Employee.new(employee_params)
        if @employee.save
            session[:employee_id] = @employee.id 
            redirect_to employee_path(@employee) #goes to show page
        else
            render "/employees/new"
        end
    end

    def show 
        @employee = Employee.find(params[:id])
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :username, :password, :specialty)
    end

end
