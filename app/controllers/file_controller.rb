class FileController < ApplicationController
  def index
    @words = Word.all
#    puts "=================================================================================="
    
    #puts file.original_filename unless file.nil?
  end

  def upload
    puts "=================================================================================="
    file = params[:file]
    @words = []
    unless file.nil?
      Iconv::CSV.foreach(file.path ) do |row|
        if Word.find_by_name(row[0]).nil?
          Word.create!(:name => row[0],:stemmer => Stemmer::stem_word(row[0]))
        end
      end
    end
    redirect_to "/", :alert => t("messages.can't_do")
  end
end
