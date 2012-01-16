module Grit
  
  class GitServer
    
    def initialize(url, port, timeout = 10)
      @url = url
      @port = port
      @timeout = timeout
    end
    
    def self.call(url, port, timeout = 10)
      puts "Calling Server"
      BERTRPC::Service.new(url, port, timeout).call.grit
    end
    
    def call
      puts "Calling Server"
      BERTRPC::Service.new(@url, @port, @timeout).call.grit
    end
    
  end
  
end