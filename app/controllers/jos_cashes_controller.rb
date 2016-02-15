
   require 'foo'
class JosCashesController < ApplicationController
#def now
#@time ="hi"
#$LOAD_PATH << '.'
#end

  def index
    @cash1= Foo.print(3,4)
   @time =My.now()
   
    @cash= JosCash.all
  end

  def input
    @cash= JosCash.new
    
    puts"#{ ApplicationHelper.print}"
  end

  def show
    @cash= JosCash.find(last_id)
  end

  def edit
    @cash= JosCash.find(cash_param)
  end
  def push_cash
    @cash=JosCash.new(cash_params)
    if @cash.save
     redirect_to(:action=>'index')
    else
      render 'index'
    end 
    
    
    def update
      @cash = JosCash.find(last_id)
      @cash.balance = total_cash_count
    @cash.save
    end
    
  end
  private
  def cash_params
      params.require(:jos_cash).permit(:amount, :balance, :description, :in_out)
    end
end
