class EntriesController < ApplicationController
  before_filter :authenticate_user!, :except => [:show]
  def index
    @entries = Entry.all
  end
  
  def new
    @entry = Entry.new
  end
  
  def create
    if current_user
      wordcount = word_count(entry_params[:body])
      newentry = current_user.entries.create(entry_params.merge(:word_count => wordcount))
      if newentry.save
        redirect_to(action: 'show',id: newentry.id)
      else
         render(action: :new)
      end
    end
  end
  
  def destroy
    entry = Entry.find_by_id(params[:id]) 
    if entry.destroy
      respond_to do |format|
        format.html { redirect_to entries_url }
        format.json { head :no_content }
      end
    end
  end
  
  def word_count(entry)
    return entry.split.size
  end
  
  def show
    @entry = Entry.find_by_id(params[:id]) 

  end
  
  def entry_params
     params.require(:entry).permit(:body,:topic)
  end
end
