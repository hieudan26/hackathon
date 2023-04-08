INSERT INTO roles (name) VALUES ('ROLE_USER');
INSERT INTO roles (name) VALUES ('ROLE_ADMIN');

INSERT INTO skill (name) VALUES ('Java');
INSERT INTO skill (name) VALUES ('Python');
INSERT INTO skill (name) VALUES ('SQL');

INSERT INTO student (mssv, name, status) VALUES ('B123456', 'Nguyen Van A', 1);
INSERT INTO student (mssv, name, status) VALUES ('B123457', 'Tran Thi B', 1);

INSERT INTO achievement (score, skill_id, student_id) VALUES (85, 1, 1);
INSERT INTO achievement (score, skill_id, student_id) VALUES (90, 2, 1);
INSERT INTO achievement (score, skill_id, student_id) VALUES (75, 3, 2);

INSERT INTO subject (description, name) VALUES ('Introduction to Java', 'Java');
INSERT INTO subject (description, name) VALUES ('Python for Beginners', 'Python');

INSERT INTO grade_subject (grade, grade_at, user_id, subject_id) VALUES (8, '2022-01-01', 1, 1);
INSERT INTO grade_subject (grade, grade_at, user_id, subject_id) VALUES (7, '2022-01-01', 1, 2);
INSERT INTO grade_subject (grade, grade_at, user_id, subject_id) VALUES (9, '2022-01-01', 2, 1);

INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (90, 1, 1);
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (80, 2, 1);
INSERT INTO subject_skill (score, skill_id, subject_id) VALUES (70, 3, 2);

INSERT INTO users (email, password, username) VALUES ('user@test.com', '$2a$10$6cnDJz6JyU6pNCUgIY.gfuGBpB9BgHkR5EnZ2Qz5c5r5rMN3y3n92', 'user');
INSERT INTO users (email, password, username) VALUES ('admin@test.com', '$2a$10$6cnDJz6JyU6pNCUgIY.gfuGBpB9BgHkR5EnZ2Qz5c5r5rMN3y3n92', 'admin');

INSERT INTO user_roles (user_id, role_id) VALUES (1, 1);
INSERT INTO user_roles (user_id, role_id) VALUES (2, 1);
INSERT INTO user_roles (user_id, role_id) VALUES (2, 2);