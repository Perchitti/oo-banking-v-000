class BankAccount

attr_accessor :name

def initialize(name, balance = 100)
  @name = name
  @balance = balance
end
end
