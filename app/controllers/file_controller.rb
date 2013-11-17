class FileController < ApplicationController
  def index
    @words = Word.all
#    puts "=================================================================================="
    
    #puts file.original_filename unless file.nil?
  end

  def upload
    puts "=================================================================================="
    file = params[:file]
    unless file.nil?
      case file.content_type
      when "text/csv"
        Iconv::CSV.foreach(file.path.to_s ) do |row|
          if Word.find_by_name(row[0]).nil?
            Word.create!(:name => row[0],:stemmer => Stemmer::stem_word(row[0]))
          end
        end
      #else 
       # raise "Unknown file type: #{file.original_filename}"
      end
    end
    redirect_to "/", :alert => "hi"
  end
end
