module UserPlanCoursesHelper
    def convert_index_to_semester_and_year(index)
      semesters = %w[ Spring Fall ]
      semester_index = index % 2
      year = current_user.graduation_year - (index / 2)

      [ semesters[semester_index], year ]
    end
end
