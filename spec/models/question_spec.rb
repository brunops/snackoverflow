require 'spec_helper'

describe Question do
  let(:valid_params) {{body: "what is wheat germ?"}}
  let(:invalid_params) {{}}

  it "can be saved with valid params" do
    @question = Question.create(valid_params)
    @question.should be_persisted
  end

  it "cannot be saved without a body" do
    @question = Question.create(invalid_params)
    @question.should_not be_persisted
  end

  it "should belong to the user who created it" do
    user = FactoryGirl.create(:user)
    question = user.questions.create(valid_params)
    expect(question.user).to eq(user)
  end

  it {should have_many(:answers)}
end