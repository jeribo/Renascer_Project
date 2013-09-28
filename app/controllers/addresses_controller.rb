class AddressesController < ApplicationController
  before_filter :load_person
  # GET /addresses
  # GET /addresses.json
  def create
    @address = @person.addresses.new(params[:address])
    if @address.save
      respond_to do |format|  
        format.html { redirect_to @address, :notice => 'Address was successfully created'}
        format.js
      end
    else
      repond_to do |format|
        format.html { redirect_to @address, :alert => 'Unable to save addresses'}
        format.js {render 'fail_create.js.erb'}
      end      
    end
  end

  # DELETE /addresses/1
  # DELETE /addresses/1.json
  def destroy
    @address = @person.addresses.find(params[:id])
    @address.destroy
    redirect_to @person, :notice => "Address Deleted"
  end
  private
    def load_person
      @person = Person.find(params[:person_id])
    end
end
