=beging
Ruby Exceptions
raise by default throws RuntimeError
rescue by default catches only StandardError and all inherited exceptions
explicit return from ensure without error handling will intercept that exception
during error handling Ruby stores exception in global variable $!
Ruby has retry
at_exit will be executed even if program exits because of excecption
use rescue by method-level to make code shorter
=end



def divide(x ,y)
    begin 
        x/y
    #xception objects are normal Ruby objects. They hold all of the data about "what happened" for the exception you just rescued.
    rescue => e
        puts "there is an error a %s (%s)" %[e.class, e.message]
        puts e.backtrace
    end
end 

divide(4, 0)
#=====================================================================================================================================#


begin
  raise 1234.0
rescue => error
  puts error.inspect
end

#=====================================================================================================================================#

begin
    [] + ''
  rescue TypeError => e
    puts "oops: #{e.message}"
  end
#=====================================================================================================================================#

HTTP_ERRORS = [
  EOFError,
  Errno::ECONNRESET,
  Errno::EINVAL,
  Net::HTTPBadResponse,
  Net::HTTPHeaderSyntaxError,
  Net::ProtocolError,
  Timeout::Error
]

begin
  some.http.call
rescue *HTTP_ERRORS => error
  notify_airbrake(error)
end

#=====================================================================================================================================#
#multiple types of exceptions error catch 

def multiple_error
    begin
        rand(2) == 0 ? ([] + '') : (foo)
      rescue TypeError, NameError => e
        puts "oops: #{e.message}"
    end
end


#=====================================================================================================================================#
def own_exception
    begin
    raise ArgumentError.new("You are Wrong!")
    rescue ArgumentError => e  
    puts e.message
    end
end

#=====================================================================================================================================#
