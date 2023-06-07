class CourseFetcherWorker
  include Sidekiq::Worker

  def perform
    courses = fetch_courses
    courses.each do |course|
      Course.find_or_create_by(name: course['name']) do |c|
        c.description = course['description']
      end
    end
  end

  private

  def fetch_courses
    url = 'https://microverse-take-home-api.herokuapp.com/api/v1/courses'
    headers = { 'Authorization' => 'Bearer tooth.RED.bear.fork' }

    response = HTTParty.get(url, headers:)

    if response.code == 200
      courses_data = JSON.parse(response.body)['data']
      courses_data.map do |course_data|
        course_attributes = course_data['attributes']
        { 'name' => course_attributes['title'], 'description' => course_attributes['description'] }
      end
    else
      render json: { message: 'Error fetching courses' }, status: :unprocessable_entity
    end
  end
end
