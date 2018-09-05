# frozen_string_literal: true

class LeadsController < ApplicationController
  def index; end

  def create
    @lead = Lead.new(params[:lead].permit!)
    if @lead.save
      render action: 'index', saved: true
    else
      render action: 'index', errors: @lead.errors
    end
  end
end
