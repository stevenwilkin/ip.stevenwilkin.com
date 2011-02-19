ip = lambda do |env| 
  [200, {"Content-Type" => "text/plain"}, [env["REMOTE_ADDR"]]]
end

run ip
