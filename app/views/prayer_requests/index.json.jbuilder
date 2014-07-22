json.array!(@prayer_requests) do |prayer_request|
  json.extract! prayer_request, :id, :group_id, :status, :requested_by, :focus, :description, :until
  json.url prayer_request_url(prayer_request, format: :json)
end
