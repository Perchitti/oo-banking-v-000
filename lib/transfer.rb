class Transfer
  # your code here

  def initialize(sender, receiver, status = "pending", transfer_amount)
    @sender = sender
    @receiver = receiver
    @status = status
    @transfer_amount = transfer_amount
end
