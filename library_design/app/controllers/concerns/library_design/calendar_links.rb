module LibraryDesign
	module CalendarLinks extend ActiveSupport::Concern
		included do
			before_action :create_calendar_link_container
		end

	  private

	  def create_calendar_link_container
	    @calendar_links = []
	  end
	end
end
