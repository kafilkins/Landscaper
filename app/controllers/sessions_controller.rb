class SessionsController < ApplicationController

    def new 

    end

    def create 
        if 
            user = Employee.find_by(username: params[:user][:username])
            user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to employee_path(user) 
        elsif
            user = Customer.find_by(username: params[:user][:username])
            user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to customer_path(user)
        else
            flash[:message] = "Invalid email or password, please try again."
            render :new
        end
    end
        
    def destroy 
        session.destroy
        redirect_to root_path
    end

end

