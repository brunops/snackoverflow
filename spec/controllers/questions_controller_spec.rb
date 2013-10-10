require 'spec_helper'

describe QuestionsController do
	render_views
	context "questions index page" do
		before(:all) do
			Question.create({body: "question number 1?"})
			Question.create({body: "am I at the top of the page?"})
		end

		it "should list questions" do
			get :index
			expect(response.body).to match("number")
		end

		it "should have links to view each question"
		xit "should include a link to create a new user" do
			get :index
			save_and_open_page
			expect(page).to have_link("Ask a question")
		end #would be more appropriate as a feature test, not a controller test. intended to move
	end

	context "GET #new" do
		it "should assign a new instance of question to a variable" do
			get :new
			expect(assigns(:question)).to be_a(Question)
    end

  context "POST #create"
    it "should redirect to root path" do
     post :create, question: {body: "some body"}
     response.should redirect_to(root_path)
    end

    it "should create a new instance of a question object" do
     expect {
      post :create, question: {body: "some body"}
      }.to change(Question,:count).by (1)
    end
  end

  context "GET #index" do
    before(:all) do
      Question.create({body: "question number 1?"})
      Question.create({body: "am I at the top of the page?"})
    end

    it "should list questions" do
      get :index
      expect(response.body).to match("number")
    end

    it "should have links to view each question"
    xit "should include a link to create a new user" do
      get :index
      save_and_open_page
      expect(page).to have_link("Ask a question")
    end #would be more appropriate as a feature test, not a controller test. intended to move
  end
end