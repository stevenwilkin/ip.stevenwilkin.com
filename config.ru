run lambda do |env|
  ip = env["HTTP_X_FORWARDED_FOR"].try(:split, ',').try(:first) || request.env["REMOTE_ADDR"]
  [200, {"Content-Type" => "text/plain"}, [ip]]
end
