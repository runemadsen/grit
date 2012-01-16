module Grit
  
  class GitServer
    
    def initialize(url, port)
      @url = url
      @port = port
    end
    
    def self.call(url, port)
      BERTRPC::Service.new(url, port).call.grit
    end
    
    def call
      puts "Calling Server"
      BERTRPC::Service.new(@url, @port).call.grit
    end
    
  end
  
end