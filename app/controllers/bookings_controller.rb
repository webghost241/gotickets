class BookingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @event = Event.find(params[:event_id])
    @booking = @event.bookings.build(user: current_user)

    if @booking.save
      redirect_to @event, notice: 'You have successfully booked the event.'
    else
      redirect_to @event, alert: 'Booking failed.'
    end
  end

  def destroy
    @event = Event.find(params[:event_id])
    @booking = @event.bookings.find_by(user: current_user)
    @booking.destroy
    redirect_to @event, notice: 'Booking canceled.'
  end
end