class DonationsController < ApplicationController

  def create

    donation = Donation.create!(state: "pending", user: current_user)

    line_items = params[:organizations].map do |orga|
      if orga[:status] == "true"
        organization = Organization.find(orga[:id].to_i)
        product = Stripe::Product.create({name: organization.name})
        price = Stripe::Price.create({
          unit_amount_decimal: orga[:price].to_i * 100,
          currency: 'eur',
          product: product
        })
       { price: price, quantity: 1 }

      end
    end.compact

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: line_items,
      mode: "payment",
      success_url: donation_path(donation),
      cancel_url: donation_path(donation)
    )
    
    donation.update(checkout_session_id: session.id, amount_cents: session.amount_total)

    params[:organizations].each do |orga|

      if orga[:status] == "true"
        organization = Organization.find(orga[:id].to_i)
        orga_dona = OrgaDona.create(price: orga[:price].to_i, organization: organization, donation: donation)
      end

    end

    redirect_to new_donation_payment_path(donation)



 end

 def show
  @donation = current_user.donations.find(params[:id])
end

end
