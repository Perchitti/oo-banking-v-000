class Transfer
  # your code here

attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, status = "pending", amount)
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = amount
end

  def valid?
    sender.valid? && receiver.valid?
  end

def execute_transaction
  if valid? && sender.balance > amount && self.status == "pending"
    sender.balance -= amount
    receiver.balance += amount
    self.status = "complete"
  else
    reject_transfer
  end
end

def reverse_transfer
  if valid? && reciever.balance > amount && self.status == "completed"
    receiver.balance -= amount
    sender.balance += amount
    self.status = "reversed"
  else
    reject_transfer
  end
end


def reject_transfer
  self.status = "rejected"
  "Transaction rejected. Please check your account balance."
end


end
