class PagesController < ApplicationController
  layout 'internal', except: [:index]
  def index
    @locations = Location.all
  end

  def information
  end

  def question
  end

  def conditional
  end

  def contac
  end
  
end
