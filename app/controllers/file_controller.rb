class FileController < ApplicationController
  def index
    @words = Word.all
    @distance = params[:distance]
    @word1 = params[:word1]
    @word2 = params[:word2]
#    puts "=================================================================================="
    
    #puts file.original_filename unless file.nil?
  end

  def distance
    word1 = params[:word1]
    word2 = params[:word2]
    @distance = Levenshtein_distance(word1, word2)
    redirect_to :controller => "file", :action => "index", :distance => @distance, :word1 => word1, :word2 => word2
  end


def Levenshtein_distance(str1, str2)

    n = str1.length
    m = str2.length
    return nil if m.zero? & n.zero?
    return m if n.zero?
    return n if m.zero?

    d = (0..m).to_a
    x = nil

    n.times do |i|
      e = i + 1
      m.times do |j|
        cost = (str1[i] == str2[j]) ? 0 : 1
        x = [
          d[j+1] + 1, # insertion
          e + 1,      # deletion
          d[j] + cost # substitution
        ].min
        d[j] = e
        e = x
      end
      d[m] = x
    end

    return x
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

  def clean 
    Word.delete_all
    redirect_to "/", :alert => "hi"
  end
end
