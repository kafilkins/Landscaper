class CustomersController < ApplicationController

    def index
        if 
            params[:job_id] && @job = Job.find_by_id(params[:job_id])
            @customers = @job.customers.build 
        else
            @customers = Customer.all
        end

    end

    def new 
        @customer = Customer.new
    end

    def create 
        @customer = Customer.new(customer_params) 
        if @customer.save
            session[:customer_id] = @customer.id 
            redirect_to customer_path(@customer) #goes to show page
        else
            render "/customers/new"
        end
    end

    def show 
        @customer = Customer.find(params[:id])
        redirect_to '/' if !@customer 
    end

    private 

    def customer_params
        params.require(:customer).permit(:first_name, :last_name, :username, :password, :password_confirmation)
    end

end
