class TasksController < ApplicationController
	def index
		@tasks = Task.all
	end

	def show
	end

	def new
		@task = Task.new #placeholder for a form as in <%= form_for @task do |f| %>
	end

	def edit
	end

	def create
		@task = Task.new(task_params)
		if @task.save
			redirect_to '/'
		else
			render :new
		end
	end

	def update
	end

	def destroy
	end

	private

	def task_params
		params.require(:task).permit(:body)
	end
end