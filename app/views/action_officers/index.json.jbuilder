json.array!(@action_officers) do |action_officer|
  json.extract! action_officer, :id, :name, :email
  json.url action_officer_url(action_officer, format: :json)
end
