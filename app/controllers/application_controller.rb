class ApplicationController < ActionController::Base
 helper_method :total_cash_count,:last_cash_amount,:last_id

  def total_cash_count
    @total_count = 0
    JosCash.all.each do |c|
      @total_count += c.amount
    end
    @total_count
  end

  def last_cash_amount
    @last_cash = 0
    JosCash.all.each do |c|
     @last_cash = c.amount
    end
    @last_cash
  end
 def last_id
    @lastid = 0
    JosCash.all.each do |c|
     @lastid = c.id
    end
    @lastid
  end
module My
 
def self.now
 
"hi how are you"

end
 end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
