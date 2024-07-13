class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    @event = Event.find(params[:event_id])
    @review = @event.reviews.build(review_params)
    @review.user = current_user

    if @review.save
      redirect_to @event, notice: 'Review was successfully created.'
    else
      redirect_to @event, alert: 'Review failed.'
    end
  end

  def update
    @event = Event.find(params[:event_id])
    @review = @event.reviews.find(params[:id])

    if @review.update(review_params)
      redirect_to @event, notice: 'Review was successfully updated.'
    else
      redirect_to @event, alert: 'Update failed.'
    end
  end

  def destroy
    @event = Event.find(params[:event_id])
    @review = @event.reviews.find(params[:id])
    @review.destroy
    redirect_to @event, notice: 'Review was successfully destroyed.'
  end

  private

    def review_params
      params.require(:review).permit(:content, :rating)
    end
end