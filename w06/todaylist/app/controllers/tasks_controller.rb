class TasksController < ApplicationController
	def index
		@tasks = Task.all
	end

	def new
		@task = Task.new #placeholder for a form as in <%= form_for @task do |f| %>
	end

	def create
		@task = Task.new(task_params)
		if @task.save
			redirect_to '/'
		else
			render :new
		end
	end

	def edit
		@task = Task.find(params[:id])
	end

	def show
		@task = Task.find(params[:id])
	end

	def update
		@task = Task.find(params[:id])
		if @task.update(task_params)
			redirect_to '/'
		else
			redirect_to edit_task_path(@task)
		end
		# @task = Task.update(params[:id], task_params)
		# if @task
		# 	redirect_to '/'
		# else
		# 	render :edit #render goes only to action, not path.
		# end
	end

	def destroy
		@task = Task.find(params[:id])
		if @task.destroy
			redirect_to '/'
		else
			redirect_to task_path(@task)
		end
	end

	private

	def task_params
		params.require(:task).permit(:body)
	end
end