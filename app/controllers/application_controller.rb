class ApplicationController < ActionController::Base
    
helper_method :current_employee, :current_customer, :logged_in_as_customer?, :logged_in_as_employee?

    private 

        def current_employee
            @current_employee ||= Employee.find_by_id(session[:user_id]) if session[:user_id] && (params[:controller] == "employees")
        end

        def current_customer
            @current_customer ||= Customer.find_by_id(session[:user_id]) if session[:user_id] && (params[:controller] == "customers")
        end

        def logged_in_as_customer?
            !!current_customer
        end

        def logged_in_as_employee?
            !!current_employee
        end
end
