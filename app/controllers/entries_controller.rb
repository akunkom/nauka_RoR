class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params["id"])
  end

  def new
  end

  def create
    @entry = Entry.create(entry_params)
    redirect_to @entry
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :contents)
  end
end
