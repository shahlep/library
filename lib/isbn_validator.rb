class IsbnValidator

#attribute accessor
 #attr_accessor:isbn
#getter
 attr_reader:isbn
#setter
 attr_writer:isbn
#constructor  
  def initialize(isbn)
    #puts "Initializing"
    #if isbn.nil?
    @isbn=isbn
    #else
    #@isbn=cleanup_isbn(isbn)
 end
    #@isbn=cleanup_isbn(isbn)
    #@isbn=valid?(isbn)	
  end
  
 def valid?
 
  if @isbn.size=10 || @isbn.size=13
   #return true
   @isbn.chars do |c|
   return false unless valid_character?(c)
 #else
  #return false
 end
 end
 private
  def self.valid_character?(c)
  #return c==1 || c==2
  VALID_CHARACTERS.include(c)
 end
 private
 def cleanup_isbn
  @isbn.downcase.gsub("-","").gsub(" ","")
   #@isbn=isbn.gsub("-","")
  #@isbn=isbn.gsub(" ","")
 end 


 
#getters
  #def isbn
    #return @isbn
   # @isbn
  #end

#setters
  #def isbn=(isbn)
  #@isbn=isbn
  #end
end
