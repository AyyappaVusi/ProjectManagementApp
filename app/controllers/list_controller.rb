class ListController < ApplicationController
  def index
    @tasks_list=Task.all
  end

  def search
    keyword = '%' + params[:keyword] + '%'
    @search_results= Task.find_by_sql ["SELECT 
    tasks.*,
    projects.name AS project_name,
    (
        SELECT teams.name
        FROM teams
        WHERE teams.id = projects.team_id
    ) AS team_name
FROM 
    tasks
JOIN 
    projects ON tasks.project_id = projects.id
WHERE 
    tasks.name LIKE ? 
    OR tasks.status LIKE ? 
    OR projects.name LIKE ? 
    OR (
        SELECT teams.name
        FROM teams
        WHERE teams.id = projects.team_id
    ) LIKE ?;
",keyword,keyword,keyword,keyword]
  end
end



