describe "Directory" do
  before :each do
    Directory.delete_all
    Directory.create "department"=>"test"
  end
  
  

  it "should return departments " do
    Directory.find(:all)[0].department.should == "test"
  end
end