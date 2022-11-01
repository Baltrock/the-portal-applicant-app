json.extract! complaint_form, :id, :project_involved, :complaint_cause, :people_involved, :desired_action, :additional_information, :availability, :user_id, :created_at, :updated_at
json.url complaint_form_url(complaint_form, format: :json)
