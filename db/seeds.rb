Subject.delete_all

Subject.create!([
                    {subject_code: "Math 101", name: "Algebra", description: "the part of mathematics in which letters and other general symbols are used to represent numbers and quantities in formulae and equations."},
                    {subject_code: "PE 101", name: "Physical Fitness", description: "Making fitness fun every day!"},
                    {subject_code: "Science 101", name: "Biology", description: "Intro to Biology has been evaluated and recommended for 3 semester hours and may be transferred to over 2,000 colleges and universities. The course can be completed at your own pace, and it offers you a convenient, inexpensive and simple way to jumpstart your degree program."},
                    {subject_code: "English 101", name: "Basic English", description: "Learn more about the English language and improve your writing with our online grammar lessons. Select from any of the modules to start an engaging and easy-to-follow exercise."},
                    {subject_code: "Math 102", name: "Trigonometry", description: "In its infancy, trigonometry was treated mainly as an adjunct to astronomy. Only later were trigonometric concepts defined strictly in terms of right triangles without the use of circles. So, to make the most sense out of trigonometry, it seems only natural for us to take that same approach. To do so, we will use the fabulous “unit circle” to enable us to conceptualize the six basic trigonometric functions."},
                    {subject_code: "PE 200", name: "Sports 1", description: "Play Board Games"},
                    {subject_code: "PE 201", name: "Sports 2", description: "Play Table Tennis"},
                    {subject_code: "PE 300", name: "Sports 3", description: "Play Basketball"},
                    {subject_code: "PE 400", name: "Sports 4", description: "Play Soccer"},
                    {subject_code: "Physics", name: "Physics", description: "Physics is the natural science that involves the study of matter and its motion and behavior through space and time, along with related concepts such as energy and force."}
                ])

User.delete_all

User.create!([
                 {first_name: "Oliver Teacher 1", middle_name: "", last_name: "De Quintos", date_of_birth: "09/09/1990", gender: true, contact_no: "09097654321", email: "oliver+teacher1@example.com", password: "password", password_confirmation: "password", is_teacher: true},
                 {first_name: "Oliver Teacher 2", middle_name: "", last_name: "De Quintos", date_of_birth: "09/09/1990", gender: true, contact_no: "09097654322", email: "oliver+teacher2@example.com", password: "password", password_confirmation: "password", is_teacher: true},
                 {first_name: "Oliver Teacher 3", middle_name: "", last_name: "De Quintos", date_of_birth: "09/09/1990", gender: true, contact_no: "09097654323", email: "oliver+teacher3@example.com", password: "password", password_confirmation: "password", is_teacher: true},
                 {first_name: "Oliver Teacher 4", middle_name: "", last_name: "De Quintos", date_of_birth: "09/09/1990", gender: true, contact_no: "09097654324", email: "oliver+teacher4@example.com", password: "password", password_confirmation: "password", is_teacher: true},
                 {first_name: "Oliver Teacher 5", middle_name: "", last_name: "De Quintos", date_of_birth: "09/09/1990", gender: true, contact_no: "09097654325", email: "oliver+teacher5@example.com", password: "password", password_confirmation: "password", is_teacher: true}
             ])

TeacherSubject.delete_all
TeacherSubject.create!([
                           { subject_id: 1, user_id: 1 },
                           { subject_id: 2, user_id: 1 },
                           { subject_id: 3, user_id: 1 },
                           { subject_id: 4, user_id: 1 },
                           { subject_id: 5, user_id: 1 },
                           { subject_id: 6, user_id: 1 },
                           { subject_id: 7, user_id: 1 },
                           { subject_id: 8, user_id: 1 },
                           { subject_id: 9, user_id: 1 },
                           { subject_id: 10, user_id: 1 },
                           { subject_id: 1, user_id: 2 },
                           { subject_id: 2, user_id: 2 },
                           { subject_id: 3, user_id: 2 },
                           { subject_id: 4, user_id: 2 },
                           { subject_id: 5, user_id: 2 },
                           { subject_id: 6, user_id: 2 },
                           { subject_id: 7, user_id: 3 },
                           { subject_id: 8, user_id: 3 },
                           { subject_id: 9, user_id: 3 },
                           { subject_id: 10, user_id: 3 },
                           { subject_id: 1, user_id: 3 },
                           { subject_id: 2, user_id: 3 },
                           { subject_id: 3, user_id: 3 },
                           { subject_id: 4, user_id: 4 },
                           { subject_id: 5, user_id: 4 },
                           { subject_id: 6, user_id: 4 },
                           { subject_id: 7, user_id: 4 },
                           { subject_id: 8, user_id: 4 },
                           { subject_id: 9, user_id: 4 },
                           { subject_id: 10, user_id: 4 },
                           { subject_id: 1, user_id: 5 },
                           { subject_id: 2, user_id: 5 },
                           { subject_id: 3, user_id: 5 },
                           { subject_id: 4, user_id: 5 },
                           { subject_id: 5, user_id: 5 },
                           { subject_id: 6, user_id: 5 },
                           { subject_id: 7, user_id: 5 },
                           { subject_id: 8, user_id: 5 },
                           { subject_id: 9, user_id: 5 },
                           { subject_id: 10, user_id: 5 }
                       ])