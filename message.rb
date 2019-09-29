class Message 
    @@messages_sent = 0
    def initialize(from, to)
      @from = from 
      @to = to 
      @@messages_sent +=1 
    end
  end
  my_message = Message.new("FROM ME", "TO YOU")
  
  class Email < Message
    def initialize(from, to)
      @from = from 
      @to = to 
      super   
      end 
  end 