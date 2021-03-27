class CustomersController < ApplicationController

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
    end

    private 

    def customer_params
        params.require(:customer).permit(:first_name, :last_name, :username, :password)
    end

end
