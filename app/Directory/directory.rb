# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class Directory
  include Rhom::PropertyBag

  # Uncomment the following line to enable sync with Directory.
  # enable :sync

  #add model specifc code here
  
  def list
    self
  end
  
end
