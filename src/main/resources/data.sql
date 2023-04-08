
INSERT INTO skill (name) VALUES ('Math');
INSERT INTO skill (name) VALUES ('Creativity');
INSERT INTO skill (name) VALUES ('Logical Thinking');
INSERT INTO skill (name) VALUES ('HTML');
INSERT INTO skill (name) VALUES ('CSS');
INSERT INTO skill (name) VALUES ('Javascript');
INSERT INTO skill (name) VALUES ('C/C++');
INSERT INTO skill (name) VALUES ('Python');
INSERT INTO skill (name) VALUES ('Self-Taught');
INSERT INTO skill (name) VALUES ('English');
INSERT INTO skill (name) VALUES ('Teamwork');
INSERT INTO skill (name) VALUES ('Assembly');
INSERT INTO skill (name) VALUES ('C#');
INSERT INTO skill (name) VALUES ('SQL');
INSERT INTO skill (name) VALUES ('Java');
INSERT INTO skill (name) VALUES ('C');
INSERT INTO skill (name) VALUES ('Self_Taught');

INSERT INTO subject (name, score) VALUES ('Linear Algebra', 0);
INSERT INTO subject (name, score) VALUES ('Introduction to Programming', 0);
INSERT INTO subject (name, score) VALUES ('Introduction to Information Technology', 0);
INSERT INTO subject (name, score) VALUES ('Programming Techniques', 0);
INSERT INTO subject (name, score) VALUES ('Discrete Math and Graph Theory', 0);
INSERT INTO subject (name, score) VALUES ('Probability of Application Statistics', 0);
INSERT INTO subject (name, score) VALUES ('Data Structures And Algorithms', 0);
INSERT INTO subject (name, score) VALUES ('Computer Architecture and Assembly Language', 0);
INSERT INTO subject (name, score) VALUES ('Object Oriented Programming', 0);
INSERT INTO subject (name, score) VALUES ('Database', 0);
INSERT INTO subject (name, score) VALUES ('Operating System', 0);
INSERT INTO subject (name, score) VALUES ('Python Programming', 0);
INSERT INTO subject (name, score) VALUES ('Network Basics', 0);
INSERT INTO subject (name, score) VALUES ('Artificial Intelligence', 0);
INSERT INTO subject (name, score) VALUES ('Web Programming', 0);
INSERT INTO subject (name, score) VALUES ('Mobile Programming', 0);
INSERT INTO subject (name, score) VALUES ('Programming on Windows', 0);
INSERT INTO subject (name, score) VALUES ('Advanced Mobile Programming', 0);
INSERT INTO subject (name, score) VALUES ('Machine Learning', 0);
INSERT INTO subject (name, score) VALUES ('Deep Learning', 0);
INSERT INTO subject (name, score) VALUES ('Software Engineering', 0);

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (5, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Linear Algebra' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (2, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Linear Algebra' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Linear Algebra' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (5, (SELECT id FROM skill WHERE name = 'C/C++'), (SELECT id FROM subject WHERE name = 'Introduction to Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (3, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Introduction to Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (2, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Introduction to Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (5, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Introduction to Programming' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Python'), (SELECT id FROM subject WHERE name = 'Introduction to Information Technology' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (2, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Introduction to Information Technology' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (2, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Introduction to Information Technology' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Introduction to Information Technology' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'C/C++'), (SELECT id FROM subject WHERE name = 'Programming Techniques' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Programming Techniques' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (5, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Programming Techniques' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Programming Techniques' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (5, (SELECT id FROM skill WHERE name = 'Self-Taught'), (SELECT id FROM subject WHERE name = 'Programming Techniques' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (2, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Discrete Math and Graph Theory' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (2, (SELECT id FROM skill WHERE name = 'C/C++'), (SELECT id FROM subject WHERE name = 'Discrete Math and Graph Theory' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (2, (SELECT id FROM skill WHERE name = 'Python'), (SELECT id FROM subject WHERE name = 'Discrete Math and Graph Theory' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (2, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Discrete Math and Graph Theory' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Discrete Math and Graph Theory' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (5, (SELECT id FROM skill WHERE name = 'Self-Taught'), (SELECT id FROM subject WHERE name = 'Discrete Math and Graph Theory' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Probability of Application Statistics' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (4, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Probability of Application Statistics' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Probability of Application Statistics' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (5, (SELECT id FROM skill WHERE name = 'Self-Taught'), (SELECT id FROM subject WHERE name = 'Probability of Application Statistics' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Data Structures And Algorithms' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'C/C++'), (SELECT id FROM subject WHERE name = 'Data Structures And Algorithms' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Data Structures And Algorithms' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Data Structures And Algorithms' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (5, (SELECT id FROM skill WHERE name = 'English'), (SELECT id FROM subject WHERE name = 'Data Structures And Algorithms' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (5, (SELECT id FROM skill WHERE name = 'Teamwork'), (SELECT id FROM subject WHERE name = 'Data Structures And Algorithms' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Self-Taught'), (SELECT id FROM subject WHERE name = 'Data Structures And Algorithms' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Computer Architecture and Assembly Language' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Assembly'), (SELECT id FROM subject WHERE name = 'Computer Architecture and Assembly Language' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Computer Architecture and Assembly Language' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'English'), (SELECT id FROM subject WHERE name = 'Computer Architecture and Assembly Language' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (3, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Computer Architecture and Assembly Language' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Self-Taught'), (SELECT id FROM subject WHERE name = 'Computer Architecture and Assembly Language' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (2, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Object Oriented Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Object Oriented Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'C#'), (SELECT id FROM subject WHERE name = 'Object Oriented Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Object Oriented Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Teamwork'), (SELECT id FROM subject WHERE name = 'Object Oriented Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Self-Taught'), (SELECT id FROM subject WHERE name = 'Object Oriented Programming' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (2, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Database' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Database' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'SQL'), (SELECT id FROM subject WHERE name = 'Database' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Database' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Teamwork'), (SELECT id FROM subject WHERE name = 'Database' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Self-Taught'), (SELECT id FROM subject WHERE name = 'Database' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (3, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Operating System' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Operating System' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'C/C++'), (SELECT id FROM subject WHERE name = 'Operating System' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Python'), (SELECT id FROM subject WHERE name = 'Operating System' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (3, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Operating System' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Self-Taught'), (SELECT id FROM subject WHERE name = 'Operating System' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Python Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Python Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (5, (SELECT id FROM skill WHERE name = 'Python'), (SELECT id FROM subject WHERE name = 'Python Programming' AND score = 0));
INSERT INTO subject_skill(score, skill_id, subject_id) VALUES (3, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Python Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (5, (SELECT id FROM skill WHERE name = 'Self-Taught'), (SELECT id FROM subject WHERE name = 'Python Programming' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (2, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Network Basics' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Network Basics' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (3, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Network Basics' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Self-Taught'), (SELECT id FROM subject WHERE name = 'Network Basics' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Artificial Intelligence' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Artificial Intelligence' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Python'), (SELECT id FROM subject WHERE name = 'Artificial Intelligence' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Artificial Intelligence' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Teamwork'), (SELECT id FROM subject WHERE name = 'Artificial Intelligence' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Self-Taught'), (SELECT id FROM subject WHERE name = 'Artificial Intelligence' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (2, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Web Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (4, (SELECT id FROM skill WHERE name = 'HTML'), (SELECT id FROM subject WHERE name = 'Web Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (4, (SELECT id FROM skill WHERE name = 'CSS'), (SELECT id FROM subject WHERE name = 'Web Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (4, (SELECT id FROM skill WHERE name = 'Javascript'), (SELECT id FROM subject WHERE name = 'Web Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Web Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (4, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Web Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Self-Taught'), (SELECT id FROM subject WHERE name = 'Web Programming' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (3, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Mobile Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Java'), (SELECT id FROM subject WHERE name = 'Mobile Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Mobile Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Mobile Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Self-Taught'), (SELECT id FROM subject WHERE name = 'Mobile Programming' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Programming on Windows' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'C#'), (SELECT id FROM subject WHERE name = 'Programming on Windows' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Programming on Windows' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Programming on Windows' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Teamwork'), (SELECT id FROM subject WHERE name = 'Programming on Windows' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Self-Taught'), (SELECT id FROM subject WHERE name = 'Programming on Windows' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Advanced Mobile Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (9, (SELECT id FROM skill WHERE name = 'Java'), (SELECT id FROM subject WHERE name = 'Advanced Mobile Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Advanced Mobile Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Advanced Mobile Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Teamwork'), (SELECT id FROM subject WHERE name = 'Advanced Mobile Programming' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Self-Taught'), (SELECT id FROM subject WHERE name = 'Advanced Mobile Programming' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Machine Learning' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Python'), (SELECT id FROM subject WHERE name = 'Machine Learning' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (9, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Machine Learning' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Teamwork'), (SELECT id FROM subject WHERE name = 'Machine Learning' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Machine Learning' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Self-Taught'), (SELECT id FROM subject WHERE name = 'Machine Learning' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (9, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Deep Learning' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (9, (SELECT id FROM skill WHERE name = 'Python'), (SELECT id FROM subject WHERE name = 'Deep Learning' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (9, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Deep Learning' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Teamwork'), (SELECT id FROM subject WHERE name = 'Deep Learning' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (6, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Deep Learning' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Self-Taught'), (SELECT id FROM subject WHERE name = 'Deep Learning' AND score = 0));

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Math'), (SELECT id FROM subject WHERE name = 'Software Engineering' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'C/C++'), (SELECT id FROM subject WHERE name = 'Software Engineering' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Logical Thinking'), (SELECT id FROM subject WHERE name = 'Software Engineering' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (7, (SELECT id FROM skill WHERE name = 'Creativity'), (SELECT id FROM subject WHERE name = 'Software Engineering' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Teamwork'), (SELECT id FROM subject WHERE name = 'Software Engineering' AND score = 0));
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (8, (SELECT id FROM skill WHERE name = 'Self-Taught'), (SELECT id FROM subject WHERE name = 'Software Engineering' AND score = 0));