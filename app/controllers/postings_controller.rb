class PostingsController < ApplicationController
  skip_before_action :authenticate_account!, only: [:index, :show]
  before_action :set_posting, only: [:edit, :show, :update, :destroy]

  def all
    @postings = Posting.posted_by(current_account.employer)
  end

  def index
    @postings = Posting.all
  end

  def new
    @posting = Posting.new
  end

  def show
    @posting = Posting.find(params[:id])
    @posting.increment!(:view_count)
  end

  def create
    # @posting = current_employer.postings.new(posting_params)
    @posting = Posting.new(posting_params)
    if @posting.save
      redirect_to posting_path(@posting),
                  notice: "Successfully created new posting."
    else
      render :new
    end
  end

  def edit
    @posting = Posting.find(params[:id])
  end

  def update
    if @posting.update_attributes(posting_params)
      redirect_to postings_path, notice: "Succesfully updated your posting."
    else
      render "edit"
    end
  end

  def destroy
  end

  private

  def set_posting
    @posting = Posting.find(params[:id])
  end

  def posting_params
    params.require(:posting)
      .permit(:title,
              :description,
              :duration,
              :compensation
      )
      .merge(employer_id: current_account.employer.id)
  end
end
