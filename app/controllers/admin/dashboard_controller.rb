class Admin::DashboardController < ApplicationController
  before_action :authenticate_admin!
  def index
    @projects = Project.all
    @projects_count = Project.count
    @tasks_count = Task.count
    @teams_count = Team.count
    @managers_count = Manager.count
    @employees_count = Employee.count
  end
end
