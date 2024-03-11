module Api
  module V1
    class TasksController < ApplicationController
      before_action :set_task, only: [:show, :update, :destroy]

      def index
        @tasks = Task.all
        render json: @tasks
      end

      def create
        @task = Task.new(task_params)
        if @task.save
          render json: @task, status: :created, location: api_task_url(@task)
        else
          render json: @task.errors, status: :unprocessable_entity
        end
      end

      def update
        if @task.update(task_params)
          render json: @task
        else
          render json: @task.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @task.destroy
        head :no_content
      end

      private

      def set_task
        @task = Task.find(params[:id])
      end

      def task_params
        params.require(:task).permit(:name, :description, :due_date)
      end
    end
  end
end
