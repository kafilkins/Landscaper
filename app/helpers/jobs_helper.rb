module JobsHelper

    def checked(area)
        @job.task.nil? ? false : @job.task.match(area)
    end
end
