require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe TargetsController do

  # This should return the minimal set of attributes required to create a valid
  # Target. As you add validations to Target, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TargetsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all targets as @targets" do
      target = Target.create! valid_attributes
      get :index, {}, valid_session
      assigns(:targets).should eq([target])
    end
  end

  describe "GET show" do
    it "assigns the requested target as @target" do
      target = Target.create! valid_attributes
      get :show, {:id => target.to_param}, valid_session
      assigns(:target).should eq(target)
    end
  end

  describe "GET new" do
    it "assigns a new target as @target" do
      get :new, {}, valid_session
      assigns(:target).should be_a_new(Target)
    end
  end

  describe "GET edit" do
    it "assigns the requested target as @target" do
      target = Target.create! valid_attributes
      get :edit, {:id => target.to_param}, valid_session
      assigns(:target).should eq(target)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Target" do
        expect {
          post :create, {:target => valid_attributes}, valid_session
        }.to change(Target, :count).by(1)
      end

      it "assigns a newly created target as @target" do
        post :create, {:target => valid_attributes}, valid_session
        assigns(:target).should be_a(Target)
        assigns(:target).should be_persisted
      end

      it "redirects to the created target" do
        post :create, {:target => valid_attributes}, valid_session
        response.should redirect_to(Target.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved target as @target" do
        # Trigger the behavior that occurs when invalid params are submitted
        Target.any_instance.stub(:save).and_return(false)
        post :create, {:target => { "name" => "invalid value" }}, valid_session
        assigns(:target).should be_a_new(Target)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Target.any_instance.stub(:save).and_return(false)
        post :create, {:target => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested target" do
        target = Target.create! valid_attributes
        # Assuming there are no other targets in the database, this
        # specifies that the Target created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Target.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => target.to_param, :target => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested target as @target" do
        target = Target.create! valid_attributes
        put :update, {:id => target.to_param, :target => valid_attributes}, valid_session
        assigns(:target).should eq(target)
      end

      it "redirects to the target" do
        target = Target.create! valid_attributes
        put :update, {:id => target.to_param, :target => valid_attributes}, valid_session
        response.should redirect_to(target)
      end
    end

    describe "with invalid params" do
      it "assigns the target as @target" do
        target = Target.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Target.any_instance.stub(:save).and_return(false)
        put :update, {:id => target.to_param, :target => { "name" => "invalid value" }}, valid_session
        assigns(:target).should eq(target)
      end

      it "re-renders the 'edit' template" do
        target = Target.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Target.any_instance.stub(:save).and_return(false)
        put :update, {:id => target.to_param, :target => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested target" do
      target = Target.create! valid_attributes
      expect {
        delete :destroy, {:id => target.to_param}, valid_session
      }.to change(Target, :count).by(-1)
    end

    it "redirects to the targets list" do
      target = Target.create! valid_attributes
      delete :destroy, {:id => target.to_param}, valid_session
      response.should redirect_to(targets_url)
    end
  end

end
