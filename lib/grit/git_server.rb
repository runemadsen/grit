module GitServer
  
  def self.call
    puts "Calling Server"
    BERTRPC::Service.new('bf-git-server.makerpress.com', 9999).call.grit
  end
  
end