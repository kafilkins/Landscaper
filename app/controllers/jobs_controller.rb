class JobsController < ApplicationController
    #before_action :logged_in_as_customer?

    def new 
        @job = Job.new 
    end

    def create
        @job = current_customer.jobs.build(job_params)
         if @job.save
            redirect_to job_path(@job) #goes to show page
        else
            render "/sessions/home"
        end
    end

    def show 
        @job = Job.find(params[:id])
    end

    private

        def job_params
            params.require(:job).permit(:location, :requirements, :cost)
        end
end
