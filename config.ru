ip = lambda do |env|
  address = if env["HTTP_X_FORWARDED_FOR"]
    env["HTTP_X_FORWARDED_FOR"].split(",").first
  else
    env["REMOTE_ADDR"]
  end
  [200, {"Content-Type" => "text/plain"}, [address]]
end

run ip
