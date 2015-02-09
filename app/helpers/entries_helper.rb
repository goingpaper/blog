module EntriesHelper
  
  def word_count(entry)
    return entry.split.size
  end
end
