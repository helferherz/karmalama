# class Admin::AdminController < ApplicationController
#   before_action :authorize_admin

#   def authorize_admin
#     unless current_user&.admin?
#       flash[:alert] = 'You are not authorized to access this page.'
#       redirect_to root_path
#     end
#   end


#   def index
#     puts "Inside index action"
#     authorize_admin
#     render 'index'# Display the administrative dashboard view
#   end

#   def new_listing
#     @listing = Listing.new
#   end

#   def create_listing
#     @listing = Listing.new(listing_params)

#     if @listing.save
#       redirect_to admin_dashboard_path, notice: 'Listing created successfully.'
#     else
#       render :new_listing
#     end
#   end

#   def edit_listing
#     @listing = Listing.find(params[:id])
#   end

#   def update_listing
#     @listing = Listing.find(params[:id])

#     if @listing.update(listing_params)
#       redirect_to admin_dashboard_path, notice: 'Listing updated successfully.'
#     else
#       render :edit_listing
#     end
#   end

#   def destroy_listing
#     @listing = Listing.find(params[:id])
#     @listing.destroy

#     redirect_to admin_dashboard_path, notice: 'Listing deleted successfully.'
#   end




#   def listing_params
#     params.require(:listing).permit(:name, :description, :price, :category)
#   end
# end
