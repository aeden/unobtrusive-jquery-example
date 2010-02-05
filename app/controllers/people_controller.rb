class PeopleController < ApplicationController
  def index
    @people = Person.all
  end
  
  def create
    @person = Person.new(params[:person])
    @person.save!
    respond_to do |format|
      format.html { redirect_to people_url }
      format.json { render :json => @person }
    end
  rescue ActiveRecord::RecordInvalid => e
    render :action => 'new'
  end
  
  def delete
    @person = Person.find(params[:id])
  end
  
  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url }
      format.json { render :json => true }
    end
  end
end
