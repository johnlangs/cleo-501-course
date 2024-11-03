# subject_csce = Subject.create(name: 'Computer Science and Engineering', code: 'CSCE')
# subject_math = Subject.create(name: 'Mathematics', code: 'MATH')
# subject_engr = Subject.create(name: 'Engineering', code: 'ENGR')
# subject_chem = Subject.create(name: 'Chemistry', code: 'CHEM')
# subject_english = Subject.create(name: 'English', code: 'ENGL')
# subject_stat = Subject.create(name: 'Statistics', code: 'STAT')
#
system("python3 main.py")

# Create Degree Plans
degree_plan1 = DegreePlan.create(name: 'BS in Computer Science')
degree_plan2 = DegreePlan.create(name: 'BS in Computer Engineering')

# First year requirements
# First semester
# req_gen_chem_1 = Requirement.create(degree_plan: degree_plan1, name: 'General Chemistry For Engineering Students I')
# chem_107 = Course.create(name: 'General Chemistry For Engineering Students I', code: 107, credits: 3, subject_id: subject_chem.id)
# RequirementCourse.create(requirement: req_gen_chem_1, course: chem_107)
#
# req_gen_chem_1_lab = Requirement.create(degree_plan: degree_plan1, name: 'General Chemistry For Engineering Students Laboratory ')
# chem_117 = Course.create(name: 'General Chemistry For Engineering Students Laboratory', code: 117, credits: 1, subject_id: subject_chem.id)
# RequirementCourse.create(requirement: req_gen_chem_1_lab, course: chem_117)
#
# req_english_1 = Requirement.create(degree_plan: degree_plan1, name: 'Introduction to Rhetoric and Composition')
# english_103 = Course.create(name: 'Introduction to Rhetoric and Composition', code: 103, credits: 3, subject_id: subject_english.id)
# RequirementCourse.create(requirement: req_english_1, course: english_103)
#
# req_engineering_1 = Requirement.create(degree_plan: degree_plan1, name: 'Engineering Lab I - Computation')
# engr_102 = Course.create(name: 'Engineering Lab I - Computation', code: 102, credits: 1, subject_id: subject_engr.id)
# RequirementCourse.create(requirement: req_engineering_1, course: engr_102)
#
# req_calculus_1 = Requirement.create(degree_plan: degree_plan1, name: 'Engineering Mathematics I')
# math_151 = Course.create(name: 'Engineering Mathematics I', code: 151, credits: 4, subject_id: subject_math.id)
# RequirementCourse.create(requirement: req_calculus_1, course: math_151)
#
# # Second semester
# req_engineering_2 = Requirement.create(degree_plan: degree_plan1, name: 'Experimental Physics and Engineering Lab II - Mechanics')
# engr_216 = Course.create(name: 'Experimental Physics and Engineering Lab II - Mechanics', code: 216, credits: 2, subject_id: subject_engr.id)
# RequirementCourse.create(requirement: req_engineering_2, course: engr_216)
#
# req_calculus_2 = Requirement.create(degree_plan: degree_plan1, name: 'Engineering Mathematics II')
# math_152 = Course.create(name: 'Engineering Mathematics II', code: 152, credits: 4, subject_id: subject_math.id)
# RequirementCourse.create(requirement: req_calculus_2, course: math_152)
#
# req_physics_1 = Requirement.create(degree_plan: degree_plan1, name: 'Newtonian Mechanics for Engineering and Science')
# phys_206 = Course.create(name: 'Newtonian Mechanics for Engineering and Science', code: 206, credits: 3, subject_id: subject_engr.id)
# RequirementCourse.create(requirement: req_physics_1, course: phys_206)
#
# req_semester_2_flex = Requirement.create(degree_plan: degree_plan1, name: 'University Core Curriculum')
#
# # Second year requirements
# # First semester
# req_csce_181 = Requirement.create(degree_plan: degree_plan1, name: 'Introduction to Computing')
# csce_181 = Course.create(name: 'Introduction to Computing', code: '181', credits: 1, subject_id: 1)
# RequirementCourse.create(requirement: req_csce_181, course: csce_181)
#
# req_csce_120 = Requirement.create(degree_plan: degree_plan1, name: 'Program Design and Concepts')
# csce_120 = Course.create(name: 'Program Design and Concepts', code: '120', credits: 3, subject_id: 1)
# RequirementCourse.create(requirement: req_csce_120, course: csce_120)
#
# req_csce_222 = Requirement.create(degree_plan: degree_plan1, name: 'Discrete Structures for Computing')
# csce_222 = Course.create(name: 'Discrete Structures for Computing', code: '222', credits: 3, subject_id: 1)
# RequirementCourse.create(requirement: req_csce_222, course: csce_222)
#
# req_linear_algebra = Requirement.create(degree_plan: degree_plan1, name: 'Linear Algebra')
# math_304 = Course.create(name: 'Linear Algebra', code: 304, credits: 3, subject_id: subject_math.id)
# RequirementCourse.create(requirement: req_linear_algebra, course: math_304)
#
# req_science_elective = Requirement.create(degree_plan: degree_plan1, name: 'Science Elective')
#
# req_general_elective_semester_2 = Requirement.create(degree_plan: degree_plan1, name: 'General Elective')
#
# # Second semester
# req_csce_221 = Requirement.create(degree_plan: degree_plan1, name: 'Data Structures and Algorithms')
# csce_221 = Course.create(name: 'Data Structures and Algorithms', code: 221, credits: 4, subject_id: 1)
# RequirementCourse.create(requirement: req_csce_221, course: csce_221)
#
# req_csce_312 = Requirement.create(degree_plan: degree_plan1, name: 'Computer Organization')
# csce_312 = Course.create(name: 'Computer Organization', code: 312, credits: 3, subject_id: 1)
# RequirementCourse.create(requirement: req_csce_312, course: csce_312)
#
# req_csce_314 = Requirement.create(degree_plan: degree_plan1, name: 'Programming Languages')
# csce_314 = Course.create(name: 'Programming Languages', code: 314, credits: 3, subject_id: 1)
# RequirementCourse.create(requirement: req_csce_314, course: csce_314)
#
# req_communication = Requirement.create(degree_plan: degree_plan1, name: 'Communication')
# english_210 = Course.create(name: 'Technical and Professional Writing', code: 210, credits: 3, subject_id: subject_english.id)
# RequirementCourse.create(requirement: req_communication, course: english_210)
#
# req_emphasis_elective_1 = Requirement.create(degree_plan: degree_plan1, name: 'Emphasis Elective')
#
# # Third year requirements
# # First semester
# req_csce_313 = Requirement.create(degree_plan: degree_plan1, name: 'Introduction to Computer Systems')
# csce_313 = Course.create(name: 'Introduction to Computer Systems', code: 313, credits: 3, subject_id: 1)
# RequirementCourse.create(requirement: req_csce_313, course: csce_313)
#
# req_csce_331 = Requirement.create(degree_plan: degree_plan1, name: 'Foundations of Software Engineering')
# csce_331 = Course.create(name: 'Principal of Software Engineering', code: 331, credits: 3, subject_id: 1)
# RequirementCourse.create(requirement: req_csce_331, course: csce_331)
#
# req_stat_211 = Requirement.create(degree_plan: degree_plan1, name: 'Principles of Statistics I')
# stat_211 = Course.create(name: 'Principles of Statistics I', code: 211, credits: 3, subject_id: subject_stat.id)
# RequirementCourse.create(requirement: req_stat_211, course: stat_211)
#
# req_semester_5_flex = Requirement.create(degree_plan: degree_plan1, name: 'University Core Curriculum')
#
# req_emphasis_elective_2 = Requirement.create(degree_plan: degree_plan1, name: 'Emphasis Elective')
#
# # Second semester
# req_csce_411 = Requirement.create(degree_plan: degree_plan1, name: 'Design and Analysis of Algorithms')
# csce_411 = Course.create(name: 'Design and Analysis of Algorithms', code: 411, credits: 3, subject_id: subject_csce.id)
# RequirementCourse.create(requirement: req_csce_411, course: csce_411)
#
# req_csce_481 = Requirement.create(degree_plan: degree_plan1, name: 'Seminar')
# csce_481 = Course.create(name: 'Seminar', code: 481, credits: 1, subject_id: subject_csce.id)
# RequirementCourse.create(requirement: req_csce_481, course: csce_481)
#
# req_upper_level_math = Requirement.create(degree_plan: degree_plan1, name: 'Upper Level Math')
#
# req_cs_elective = Requirement.create(degree_plan: degree_plan1, name: 'CS Elective')
#
# req_science_elective_1 = Requirement.create(degree_plan: degree_plan1, name: 'Science Elective')
#
# req_high_impact = Requirement.create(degree_plan: degree_plan1, name: 'High Impact Experience')
# csce_399 = Course.create(name: 'High Impact Experience', code: 399, credits: 0, subject_id: subject_csce.id)
# RequirementCourse.create(requirement: req_high_impact, course: csce_399)
#
# # Fourth year requirements
# # First semester
# req_sems_7_flex = Requirement.create(degree_plan: degree_plan1, name: 'University Core Curriculum')
#
# req_cs_elective_2 = Requirement.create(degree_plan: degree_plan1, name: 'CS Elective')
#
# req_cs_elective_3 = Requirement.create(degree_plan: degree_plan1, name: 'CS Elective')
#
# req_cs_elective_4 = Requirement.create(degree_plan: degree_plan1, name: 'CS Elective')
#
# req_emphasis_elective_3 = Requirement.create(degree_plan: degree_plan1, name: 'Emphasis Elective')
#
# # Second semester
# req_capstone = Requirement.create(degree_plan: degree_plan1, name: 'Senior Capstone Design')
# csce_482 = Course.create(name: 'Senior Capstone Design', code: 491, credits: 3, subject_id: subject_csce.id)
# RequirementCourse.create(requirement: req_capstone, course: csce_482)
#
# req_semester_8_flex = Requirement.create(degree_plan: degree_plan1, name: 'University Core Curriculum')
#
# req_semester_8_flex_2 = Requirement.create(degree_plan: degree_plan1, name: 'University Core Curriculum')
#
# req_emphasis_elective_4 = Requirement.create(degree_plan: degree_plan1, name: 'Emphasis Elective')


# UserInterest.create(interest: 'science')
# UserInterest.create(interest: 'math')
# UserInterest.create(interest: 'art')

# User.create(email: 'student@tamu.edu', encrypted_password: '12345', isAdmin: false)
# User.create(email: 'admin@tamu.edu', encrypted_password: 'adminPass', isAdmin: true)

Major.create(name: "Computer Science")
Major.create(name: "Computer Engineering")
