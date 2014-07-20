json.array!(@groups) do |group|
  json.extract! group, :id, :name, :meeting_day, :meeting_time, :location
  json.url group_url(group, format: :json)
end
