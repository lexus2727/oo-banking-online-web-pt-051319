class Transfer
  attr_reader :sender
  attr_accessor :receiver, :amount, :status
  
  
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  def valid?
    if sender.valid? && receiver.valid?
      true
    else
      false
    end
  end
  
  def execute_transaction
    if @sender.balance < @amount
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
      
      elsif 
      @status == "complete"
      "Transaction was already executed."
      
  else
    @sender.deposit(@amount * -1)
    @receiver.deposit(@amount)
    @status = "complete"
    
    
  end
end

def reverse_transfer
  if @status = "complete"
  @sender.deposit(@amount)
  @receiver.deposit(@amount * -1)
  @status = "reversed"
  end
end
  
  
  
end
