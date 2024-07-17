class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event

  def create
    @review = @event.reviews.new(review_params)
    @review.user = current_user

    if @review.save
      redirect_to @event, notice: 'Review was successfully created.'
    else
      redirect_to @event, alert: 'Review failed to save.'
    end
  end

  def update
    @review = @event.reviews.find(params[:id])
    if @review.update(review_params)
      redirect_to @event, notice: 'Review was successfully updated.'
    else
      redirect_to @event, alert: 'Review failed to update.'
    end
  end

  def destroy
    @review = @event.reviews.find(params[:id])
    @review.destroy
    redirect_to @event, notice: 'Review was successfully deleted.'
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end