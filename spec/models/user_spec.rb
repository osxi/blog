describe User do

  before(:each) { @user = User.new(email: 'user@example.com') }

  subject { @user }

  it { should respond_to(:email) }

  it "#email returns a string" do
    expect(@user.email).to match 'user@example.com'
  end

  it 'can update name attribute' do
    updated_email_address = 'foo@poo.io'
    @user.update_attribute(:email, updated_email_address)
    expect(@user.email).to eq(updated_email_address)
  end

end
