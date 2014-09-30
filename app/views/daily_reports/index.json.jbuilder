json.array!(@daily_reports) do |daily_report|
  json.extract! daily_report, :id, :hatch, :cull, :double, :hen_deaths, :male_deaths, :hen_feed, :male_feed, :house_id
  json.url daily_report_url(daily_report, format: :json)
end
