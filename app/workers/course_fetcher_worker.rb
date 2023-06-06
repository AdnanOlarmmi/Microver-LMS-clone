class CourseFetcherWorker
    include Sidekiq::Worker
  
    def perform
      # Fetch courses from the remote API
      courses = fetch_courses
  
      # Update the local database with new courses
      courses.each do |course|
        Course.create(name: course['name'], description: course['description'])
      end
    end
  
    private
  
    def fetch_courses
      # Implement the logic to fetch courses from the remote API
      
    end
  end
  