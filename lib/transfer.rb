class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = transfer_amount
  end
  
  def valid?
    @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
    if self.valid?
      @sender.balance -= amount
      @receiver.blance += amount
      @status = "completed"
    end
  end
  
  def reverse_transfer
    
  end
end
