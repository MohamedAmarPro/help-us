class DonationsController < ApplicationController
   def create

    donation = Donation.create!(state: "pending", user: current_user)

    line_items = params[:organizations].map do |orga|
      if orga[:status] == "true"
        organization = Organization.find(orga[:id].to_i)
       { name: organization.name, amount: orga[:price].to_i, currency: 'eur', quantity: 1 }
      end
    end.compact

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: line_items,
      success_url: donation_url(donation),
      cancel_url: donation_url(donation)
    )

    donation.update(checkout_session_id: session.id)

    raise


    # params_orga = params[:organizations].map {|orga| {id: orga[:id], price: orga[:price], status: orga[:status]}}
    # params_orga.each do |param|

    #   if param[:status] == "true"
    #     organization = Organization.find(param[:id])
    #     orga_dona = OrgaDona.create(price: param[:price], organization: organization, donation: donation)
    #   end

    # end



#     donation = Donation.new
#     orga_dona = Donation.create!(: teddy,  amount: teddy.price, state: 'pending', user: current_user)

#   redirect_to new_order_payment_path(order)
 end
end
