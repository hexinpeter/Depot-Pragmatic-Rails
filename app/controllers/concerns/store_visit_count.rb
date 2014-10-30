module StoreVisitCount
	extend ActiveSupport::Concern

	private

	def set_visit_count
		if session[:store_visit_count].nil?
			session[:store_visit_count] = 0
		end
		session[:store_visit_count] += 1
		@visit_count = session[:store_visit_count]
	end
end
