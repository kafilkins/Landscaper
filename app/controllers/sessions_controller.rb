class SessionsController < ApplicationController

    def new 

    end

    def create 
        if (params[:user][:username]) == "" || (params[:user][:password]) == ""
            flash[:message] = "Invalid email or password, please try again."
            render '/sessions/customer_new' || '/sessions/employee_new'
        elsif
            user = Employee.find_by(username: params[:user][:username])
            user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to employee_path(user) 
        else
            user = Customer.find_by(username: params[:user][:username])
            user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to customer_path(user)
        end
    end

    #def google 
    #    @customer = Customer.find_or_create_by(email: auth["info"]["email"]) do |c|
    #        c.name= auth["info"]["first_name"] + ["last_name"]
    #        c.password= SecureRandom.hex(10)
    #    end
    #    if @customer.save 
    #        session[:user_id] = @customer.id 
    #        redirect_to customer_path(@customer)
    #    else
    #        redirect_to '/sessions/home'
    #    end
    #end

   # def omniauth
   #     @customer = Customer.from_omniauth(auth)
   #     @customer.save
   #     session[:user_id] = @user.id
   #     redirect_to customer_path(@customer)
   #   end
        
    def destroy 
        session.destroy
        redirect_to root_path
    end

    private 

        #def auth 
        #    request.env['omniauth.auth']
        #end

end

