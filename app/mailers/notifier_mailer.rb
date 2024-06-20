class NotifierMailer < ApplicationMailer
    def alert_admin(task, project)
      @task_name = task.name
      @project_name = project.name
      @manager_name = project.team.manager.name
      @manager_email = project.team.manager.email
  
      project.team.employees.each do |employee|
        @employee_email = employee.email
        @employee_name = employee.name
        mail(to: @employee_email, subject: 'New Task', from: @manager_email) do |format|
            format.html { render 'alert_admin'}
        end
     end 
    end
  end
  