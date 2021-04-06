class SessionsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: :create

    def new 
        
    end

    def create 
            
        if (params[:user][:email]) == "" || (params[:user][:password]) == ""
            
            flash[:message] = "Invalid email or password, please try again."
            render '/sessions/new'
            
        elsif user = Employee.find_by(email: params[:user][:email])
            
           if user && user.authenticate(params[:user][:password])
            session[:employee_id] = user.id
            redirect_to employee_path(user) 
           else
            flash[:message] = "Invalid email or password, please try again."
            render '/sessions/new'
           end
        elsif user = Customer.find_by(email: params[:user][:email])
            
            if user && user.authenticate(params[:user][:password])
            session[:customer_id] = user.id
        
            redirect_to customer_path(user)
            else 
                flash[:message] = "Invalid email or password, please try again."
            render '/sessions/new'
            end
        end
    end

    def google 
          @customer = Customer.find_or_create_by(provider: auth['provider'], uid: auth['uid']) do |c|
            c.name = auth['info']['name']
            c.email = auth['info']['email'] 
            c.password = SecureRandom.hex(10)
          end
        if @customer.valid?
            session[:user_id] = @customer.id 
            redirect_to customer_path(@customer)
        else
            redirect_to "sessions#home"
        end
    end
        
    def destroy 
        session.destroy
        redirect_to root_path
    end

    private 

        def auth 
            request.env['omniauth.auth']
        end
end

