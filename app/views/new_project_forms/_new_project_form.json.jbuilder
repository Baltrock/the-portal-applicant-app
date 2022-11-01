json.extract! new_project_form, :id, :project_title, :project_introduction, :project_description, :available_frontstage_roles, :available_backstage_roles, :admin_id, :created_at, :updated_at
json.url new_project_form_url(new_project_form, format: :json)
