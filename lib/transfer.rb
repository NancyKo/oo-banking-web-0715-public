require 'pry'
class Transfer
  # code here
attr_accessor :name, :from, :amount, :status

  def initialize(name, from, amount)
  	@name = name
  	@from = from
  	@amount = amount
  	@status = 'pending'
  end

  def sender
  	@name
  end

  def receiver
  	@from
  end 

  def both_valid?
  	@name.valid? && @from.valid?
  	sender.valid? && receiver.valid?
  end

  def execute_transaction
  	unless self.status == 'complete'
  		sender.balance = sender.balance - @amount 
  		receiver.deposit(amount)
  		self.status = 'complete'
  	end
			# binding.pry
  	# if self.status == 'complete'
			"Transaction rejected. Please check your account balance."  
			# self.status = 'rejected'
		# end
	end
end