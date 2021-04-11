class JobsController < ApplicationController

    def index  
        if params[:customer_id] && @customer = Customer.find_by_id(params[:customer_id])
            @jobs = @customer.jobs
        else
            params[:employee_id] 
            @jobs = Job.where(:task == current_employee.specialty)
        end
        if params[:q] && !params[:q].empty?
            @jobs = @jobs.search(params[:q].downcase)
        end
    end

    def show 
        @job = Job.find(params[:id])
        @task = @job.tasks.build
    end

    def new 
        @job = Job.new 
    end

    def create
        @job = current_customer.jobs.build(job_params)
         if @job.save
            redirect_to job_path(@job) #goes to show page
        else
            flash[:message] = "Location can not be blank."
            render "/jobs/new" 
        end
    end

    def edit
        if 
            session[:employee_id].present? 
            @job = Job.find_by(id: params[:id])
        else
            flash[:message] = "You're not authorized to make changes."
            render "/sessions/home"
        end
    end

    def update
        @job = Job.find_by(id: params[:id])
        @job.completed = params[:job][:completed]
        @job.update(job_params)
        redirect_to job_path(@job)
    end

    private

        def job_params
            params.require(:job).permit(:location, completed:[])
        end
end
