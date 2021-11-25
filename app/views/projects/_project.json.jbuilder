json.extract! project, :id, :project_name, :client_name, :developer, :start_date, :working_hours, :project_status, :payment_date, :invoice_status, :created_at, :updated_at
json.url project_url(project, format: :json)
