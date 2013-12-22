require 'spec_helper'

describe "User pages" do
	subject { page }

  describe "signup page" do
  	before {visit users_new_path}
    
    it { should have_content ('Sign Up')}
    it { should have_title (full_title ("Sign Up"))}
  end
end
