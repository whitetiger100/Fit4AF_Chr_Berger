json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :description, :project
  json.url job_url(job, format: :json)
end
