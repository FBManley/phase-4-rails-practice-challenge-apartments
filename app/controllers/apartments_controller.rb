class ApartmentsController < ApplicationController
    has_many :tenants
    has_many :leases
    before_action :find_apartment
    # /apartments
    def index 
        @apartments = Apartment.all 
        render json: apartments 
    end
    # apartments/:id
    def show  
    end 
    def create 
        @apartment = Apartment.new(params)

    end

    def update  
        if @apartment.update(apartment_params)
            render json:
        else
        end
    end
    # /apartments/:id
    def destroy 
        if @apartment 
            @apartment.destroy
            render json: @apartment 
        else
            render json: {errors: ["Apartment not found"]}, status: :bad_request
    end

    private
    def find_apartment 
        @apartment = Apartment.find_by_id(params [:id])
    end

    def apartment_params 
        params.require(:apartment).permit 
    end

end

