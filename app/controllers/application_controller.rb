class ApplicationController < ActionController::Base
    
helper_method :current_employee, :current_customer, :logged_in_as_customer?, :logged_in_as_employee?

    private 

        def current_employee
            @current_employee ||= Employee.find_by_id(session[:employee_id]) if session[:employee_id] #&& (params[:controller] == "employees")
        end

        def current_customer
            @current_customer ||= Customer.find_by_id(session[:customer_id]) if session[:customer_id] #&& (params[:controller] == "customers")
        end

        def logged_in_as_customer?
            !!current_customer
        end

        def logged_in_as_employee?
            !!current_employee
        end
end
