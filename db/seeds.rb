system("python3 main.py")

Major.create(name: "Computer Science")
Major.create(name: "Computer Engineering")

# Create Degree Plans
degree_plan1 = DegreePlan.create(name: 'BS in Computer Science')
degree_plan2 = DegreePlan.create(name: 'BS in Computer Engineering')

# Grab all subjects need for reuirements creations from subjects seeded eariler
chem_subject = Subject.find_by(code: 'CHEM')
english_subject = Subject.find_by(code: 'ENGL')
physics_subject = Subject.find_by(code: 'PHYS')
engr_subject = Subject.find_by(code: 'ENGR')
math_subject = Subject.find_by(code: 'MATH')
csce_subject = Subject.find_by(code: 'CSCE')
stat_subject = Subject.find_by(code: 'STAT')

# First year requirements
# First semester
req_gen_chem_1 = Requirement.create(degree_plan: degree_plan1, name: 'General Chemistry For Engineering Students I')
chem_107 = Course.find_by(code: 107, subject_id: chem_subject.id)
RequirementCourse.create(requirement: req_gen_chem_1, course: chem_107)

req_gen_chem_1_lab = Requirement.create(degree_plan: degree_plan1, name: 'General Chemistry For Engineering Students Laboratory ')
chem_117 = Course.find_by(code: 117, subject_id: chem_subject.id)
RequirementCourse.create(requirement: req_gen_chem_1_lab, course: chem_117)

req_english_1 = Requirement.create(degree_plan: degree_plan1, name: 'Introduction to Rhetoric and Composition')
engl_103 = Course.find_by(code: 103, subject_id: english_subject.id)
RequirementCourse.create(requirement: req_english_1, course: engl_103)

req_engineering_1 = Requirement.create(degree_plan: degree_plan1, name: 'Engineering Lab I - Computation')
engr_102 = Course.find_by(code: 102, subject_id: engr_subject.id)
RequirementCourse.create(requirement: req_engineering_1, course: engr_102)

req_calculus_1 = Requirement.create(degree_plan: degree_plan1, name: 'Engineering Mathematics I')
math_151 = Course.find_by(code: 151, subject_id: math_subject.id)
RequirementCourse.create(requirement: req_calculus_1, course: math_151)

# Second semester
req_engineering_2 = Requirement.create(degree_plan: degree_plan1, name: 'Experimental Physics and Engineering Lab II - Mechanics')
engr_216 = Course.find_by(code: 216, subject_id: engr_subject.id)
RequirementCourse.create(requirement: req_engineering_2, course: engr_216)

req_calculus_2 = Requirement.create(degree_plan: degree_plan1, name: 'Engineering Mathematics II')
math_152 = Course.find_by(code: 152, subject_id: math_subject.id)
RequirementCourse.create(requirement: req_calculus_2, course: math_152)

req_physics_1 = Requirement.create(degree_plan: degree_plan1, name: 'Newtonian Mechanics for Engineering and Science')
phys_206 = Course.find_by(code: 206, subject_id: physics_subject.id)
RequirementCourse.create(requirement: req_physics_1, course: phys_206)

req_semester_2_flex = Requirement.create(degree_plan: degree_plan1, name: 'University Core Curriculum')

# Second year requirements
# First semester
req_csce_181 = Requirement.create(degree_plan: degree_plan1, name: 'Introduction to Computing')
csce_181 = Course.find_by(code: 181, subject_id: csce_subject.id)
RequirementCourse.create(requirement: req_csce_181, course: csce_181)

req_csce_120 = Requirement.create(degree_plan: degree_plan1, name: 'Program Design and Concepts')
csce_120 = Course.find_by(code: 120, subject_id: csce_subject.id)
RequirementCourse.create(requirement: req_csce_120, course: csce_120)

req_csce_222 = Requirement.create(degree_plan: degree_plan1, name: 'Discrete Structures for Computing')
csce_222 = Course.find_by(code: 222, subject_id: csce_subject.id)
RequirementCourse.create(requirement: req_csce_222, course: csce_222)

req_linear_algebra = Requirement.create(degree_plan: degree_plan1, name: 'Linear Algebra')
math_304 = Course.find_by(code: 304, subject_id: math_subject.id)
RequirementCourse.create(requirement: req_linear_algebra, course: math_304)

req_science_elective = Requirement.create(degree_plan: degree_plan1, name: 'Science Elective')

req_general_elective_semester_2 = Requirement.create(degree_plan: degree_plan1, name: 'General Elective')

# Second semester
# Find courses for requirements
req_csce_221 = Requirement.create(degree_plan: degree_plan1, name: 'Data Structures and Algorithms')
csce_221 = Course.find_by(code: 221, subject_id: csce_subject.id)
RequirementCourse.create(requirement: req_csce_221, course: csce_221)

req_csce_312 = Requirement.create(degree_plan: degree_plan1, name: 'Computer Organization')
csce_312 = Course.find_by(code: 312, subject_id: csce_subject.id)
RequirementCourse.create(requirement: req_csce_312, course: csce_312)

req_csce_314 = Requirement.create(degree_plan: degree_plan1, name: 'Programming Languages')
csce_314 = Course.find_by(code: 314, subject_id: csce_subject.id)
RequirementCourse.create(requirement: req_csce_314, course: csce_314)

req_communication = Requirement.create(degree_plan: degree_plan1, name: 'Communication')
engl_210 = Course.find_by(code: 210, subject_id: english_subject.id)
RequirementCourse.create(requirement: req_communication, course: engl_210)

req_emphasis_elective_1 = Requirement.create(degree_plan: degree_plan1, name: 'Emphasis Elective')

# Third year requirements
# First semester
req_csce_313 = Requirement.create(degree_plan: degree_plan1, name: 'Introduction to Computer Systems')
csce_313 = Course.find_by(code: 313, subject_id: csce_subject.id)
RequirementCourse.create(requirement: req_csce_313, course: csce_313)

req_csce_331 = Requirement.create(degree_plan: degree_plan1, name: 'Foundations of Software Engineering')
csce_331 = Course.find_by(code: 331, subject_id: csce_subject.id)
RequirementCourse.create(requirement: req_csce_331, course: csce_331)

req_stat_211 = Requirement.create(degree_plan: degree_plan1, name: 'Principles of Statistics I')
stat_211 = Course.find_by(code: 211, subject_id: stat_subject.id)
RequirementCourse.create(requirement: req_stat_211, course: stat_211)

req_semester_5_flex = Requirement.create(degree_plan: degree_plan1, name: 'University Core Curriculum')

req_emphasis_elective_2 = Requirement.create(degree_plan: degree_plan1, name: 'Emphasis Elective')

# Second semester
req_csce_411 = Requirement.create(degree_plan: degree_plan1, name: 'Design and Analysis of Algorithms')
csce_411 = Course.find_by(code: 411, subject_id: csce_subject.id)
RequirementCourse.create(requirement: req_csce_411, course: csce_411)

req_csce_481 = Requirement.create(degree_plan: degree_plan1, name: 'Seminar')
csce_481 = Course.find_by(code: 481, subject_id: csce_subject.id)
RequirementCourse.create(requirement: req_csce_481, course: csce_481)

req_upper_level_math = Requirement.create(degree_plan: degree_plan1, name: 'Upper Level Math')

req_cs_elective = Requirement.create(degree_plan: degree_plan1, name: 'CS Elective')

req_science_elective_1 = Requirement.create(degree_plan: degree_plan1, name: 'Science Elective')

req_high_impact = Requirement.create(degree_plan: degree_plan1, name: 'High Impact Experience')
csce_399 = Course.find_by(code: 399, subject_id: csce_subject.id)
RequirementCourse.create(requirement: req_high_impact, course: csce_399)

# Fourth year requirements
# First semester
req_sems_7_flex = Requirement.create(degree_plan: degree_plan1, name: 'University Core Curriculum')

req_cs_elective_2 = Requirement.create(degree_plan: degree_plan1, name: 'Software CS Elective')

req_cs_elective_3 = Requirement.create(degree_plan: degree_plan1, name: 'Systems CS Elective')

req_cs_elective_4 = Requirement.create(degree_plan: degree_plan1, name: 'Theory CS Elective')

req_emphasis_elective_3 = Requirement.create(degree_plan: degree_plan1, name: 'Emphasis Elective')

# Second semester
req_capstone = Requirement.create(degree_plan: degree_plan1, name: 'Senior Capstone Design')
csce_482 = Course.find_by(code: 482, subject_id: csce_subject.id)
RequirementCourse.create(requirement: req_capstone, course: csce_482)

req_semester_8_flex = Requirement.create(degree_plan: degree_plan1, name: 'University Core Curriculum')

req_semester_8_flex_2 = Requirement.create(degree_plan: degree_plan1, name: 'University Core Curriculum')

req_emphasis_elective_4 = Requirement.create(degree_plan: degree_plan1, name: 'Emphasis Elective')
