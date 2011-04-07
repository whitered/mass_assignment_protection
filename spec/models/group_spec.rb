require 'spec_helper'

describe Group do

  before do
    @group = Group.create!
    @user = User.create!
  end


  it 'should add user' do
    @group.users << @user
    @group.users.should include(@user)
    @group.users.reload.should include(@user)
  end

end
