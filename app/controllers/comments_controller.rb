class CommentsController < ApplicationController 
    before_action :get_job

    def show
        @comment = @job.comments
    end

    def new 
        @comment = @job.comments.build
    end

    def create 
        @comment = @job.comments.build(comment_params)
        if @comment.save 
            render "/"
        else
            render "/"
        end
    end

    private 

    def get_job
        @job = Job.find(params[:job_id])
    end

end