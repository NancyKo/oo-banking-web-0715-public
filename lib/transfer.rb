require 'pry'
class Transfer
  # code here
attr_accessor :name, :from, :amount, :status

	def self.scan
		
	end

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
  end
end