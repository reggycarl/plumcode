class HomeController < ApplicationController
	before_action :authenticate_user!,:only => [ :apply]

	 # layout "doc_patients",:only => [ :docs]
  def index
  	 @courses = Course.all
  end

  def all_courses
  	 @courses = Course.all
  end

   def apply
  	 @courses = Course.all
  end
end
