class HomesController < ApplicationController
  before_filter :authenticate_user!, :except => [:info, :index]
  def index
    @entries = Entry.all
    total = 0
    for i in @entries do
      total+=i.word_count
    end
    @total = total
  end
  
  def info
    
  end
end
