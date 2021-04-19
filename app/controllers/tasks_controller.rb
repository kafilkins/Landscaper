class TasksController < ApplicationController 

    def index 
        @tasks = Task.all 
    end

    def new 
        @task = Task.new 
    end

    def create
        @job = Job.find(params[:job_id])
        @task = @job.tasks.build(task_params)
        @task = @task.unique
        if @task.save
        redirect_to job_path(@job) #goes to show page
        else 
            render "jobs/show"
        end
    end

    def show 
        @task = Task.find(params[:id])
    end

    private 

    def task_params
        params.require(:task).permit(:name)
    end

end
