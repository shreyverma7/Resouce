create database MISDB;
use MISDB;

CREATE TABLE hired_candidates (
  Id int NOT NULL Primary Key,
  First_Name varchar(100) NOT NULL,
  Middle_Name varchar(100) DEFAULT NULL,
  Last_Name varchar(100) NOT NULL,
  Email varchar(50) NOT NULL,
  Mobile_Num bigint NOT NULL,
  Hired_City varchar(50) NOT NULL,
  Hired_Date datetime NOT NULL,
  Degree varchar(100) NOT NULL,
  Aggregate_Per float DEFAULT NULL,
  Current_Pincode int DEFAULT NULL,
  Permanent_Pincode int DEFAULT NULL,
  Hired_Lab varchar(20) DEFAULT NULL,
  Attitude_Remark varchar(15) DEFAULT NULL,
  Communication_Remark varchar(15) DEFAULT NULL,
  Knowledge_Remark varchar(15) DEFAULT NULL,
  Status varchar(20) NOT NULL,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL,
);

select * from hired_candidates;

-- Insert 10 random records into hired_candidates
INSERT INTO hired_candidates
(Id, First_Name, Middle_Name, Last_Name, Email, Mobile_Num, Hired_City, Hired_Date, Degree, Aggregate_Per, Current_Pincode, Permanent_Pincode, Hired_Lab, Attitude_Remark, Communication_Remark, Knowledge_Remark, Status, Creator_Stamp, Creator_User)
VALUES
(1, 'John', 'A', 'Doe', 'john.doe@example.com', 9876543210, 'New York', '2023-01-01', 'B.Sc', 78.5, 10001, 10001, 'Lab A', 'Good', 'Excellent', 'Excellent', 'Hired', '2023-09-26 09:00:00', 1),
(11, 'Jane', 'Ann', 'Doe', 'jane.doe@example.com', 9876543211, 'New York', '2023-01-15', 'MBA', 85.5, 10002, 10002, 'Lab B', 'Good', 'Excellent', 'Excellent', 'Hired', '2023-09-26 10:30:00', 2),
(3, 'Michael', 'B', 'Smith', 'michael.smith@example.com', 9876543212, 'Los Angeles', '2023-02-10', 'PhD', 92.0, 90003, 90003, 'Lab C', 'Excellent', 'Good', 'Excellent', 'Hired', '2023-09-26 11:45:00', 3),
(4, 'Emily', 'C', 'Johnson', 'emily.johnson@example.com', 9876543213, 'Chicago', '2023-03-05', 'M.Sc', 88.5, 60004, 60004, 'Lab A', 'Good', 'Good', 'Good', 'Hired', '2023-09-26 13:00:00', 4),
(5, 'William', 'D', 'Brown', 'william.brown@example.com', 9876543214, 'Houston', '2023-04-20', 'B.Tech', 80.0, 77005, 77005, 'Lab B', 'Good', 'Good', 'Good', 'Hired', '2023-09-26 14:15:00', 1),
(6, 'Olivia', 'E', 'Taylor', 'olivia.taylor@example.com', 9876543215, 'San Francisco', '2023-05-15', 'MS', 87.0, 94006, 94006, 'Lab C', 'Good', 'Good', 'Good', 'Hired', '2023-09-26 15:30:00', 2),
(7, 'James', 'F', 'Anderson', 'james.anderson@example.com', 9876543216, 'Miami', '2023-06-10', 'B.Com', 75.5, 33007, 33007, 'Lab A', 'Good', 'Good', 'Good', 'Hired', '2023-09-26 16:45:00', 3),
(8, 'Sophia', 'G', 'Martinez', 'sophia.martinez@example.com', 9876543217, 'Denver', '2023-07-25', 'B.E', 82.0, 80208, 80208, 'Lab B', 'Good', 'Good', 'Good', 'Hired', '2023-09-26 18:00:00', 4),
(9, 'Benjamin', 'H', 'Garcia', 'benjamin.garcia@example.com', 9876543218, 'Seattle', '2023-08-30', 'B.Sc', 79.0, 98009, 98009, 'Lab C', 'Good', 'Good', 'Good', 'Hired', '2023-09-26 19:15:00', 1),
(10, 'Emma', 'I', 'Lopez', 'emma.lopez@example.com', 9876543219, 'Boston', '2023-09-20', 'B.Tech', 81.0, 22010, 22010, 'Lab A', 'Good', 'Good', 'Good', 'Hired', '2023-09-26 20:30:00', 2);


 CREATE TABLE fellowship_candidates (
id int NOT NULL,
first_name varchar(100) NOT NULL,
middle_name varchar(100) DEFAULT NULL,
last_name varchar(100) NOT NULL,
email varchar(50) NOT NULL,
mobile_num bigint NOT NULL,
hired_city varchar(50) NOT NULL,
hired_date datetime NOT NULL,
degree varchar(50) NOT NULL,
aggr_per float DEFAULT NULL,
current_pincode int DEFAULT NULL,
permanent_pincode int DEFAULT NULL,
hired_lab varchar(20) DEFAULT NULL,
attitude_remark varchar(15) DEFAULT NULL,
communication_remark varchar(15) DEFAULT NULL,
knowledge_remark varchar(15) DEFAULT NULL,
birth_date date NOT NULL,
is_birth_date_verified int DEFAULT 0,
parent_name varchar(50) DEFAULT NULL,
parent_occupation varchar(100) NOT NULL,
parent_mobile_num bigint NOT NULL,
parent_annual_sal float DEFAULT NULL,
local_addr varchar(255) NOT NULL,
permanent_addr varchar(150) DEFAULT NULL,
photo_path varchar(500) DEFAULT NULL,
joining_date date DEFAULT NULL,
candidate_status varchar(20) NOT NULL,
personal_info_filled int DEFAULT 0,
bank_info_filled int DEFAULT 0,
educational_info_filled int DEFAULT 0,
doc_status varchar(20) DEFAULT NULL,
remark varchar(150) DEFAULT NULL,
creator_stamp datetime DEFAULT NULL,
creator_user int DEFAULT NULL,
PRIMARY KEY (id)
)
select * from fellowship_candidates;
insert into fellowship_candidates values(3, 'prem', 'kumar', 'sahu', 'prem.63584@gmail.com ',
8956741236, 'Chennai','2019-12-14','B.E' , 77.25,5225,5278,'chennai', 'Good', 'Good' , 'Good',
'1999-12-1', 2, 'ram', 'bussiness' , 75849625123, 300000, 'Pune', 'Pune' , 'photo_path', '2019-12-13', 'Good',
1, 1, 1, 'Correct', 'Good', null, 1);
INSERT INTO fellowship_candidates 
(id, first_name, middle_name, last_name, email, mobile_num, hired_city, hired_date, degree, aggr_per, current_pincode, permanent_pincode, hired_lab, attitude_remark, communication_remark, knowledge_remark, birth_date, is_birth_date_verified, parent_name, parent_occupation, parent_mobile_num, parent_annual_sal, local_addr, permanent_addr, photo_path, joining_date, candidate_status, personal_info_filled, bank_info_filled, educational_info_filled, doc_status, remark, creator_stamp, creator_user)
VALUES 
(7, 'Lucas', 'M', 'Brown', 'lucas.brown@example.com', 9876543245, 'Miami', '2023-07-25', 'B.Sc', 81.5, 33008, 33008, 'Lab B', 'Good', 'Good', 'Good', '1995-07-20', 1, 'Charlotte', 'Designer', 9876543246, 89000, 'Miami', 'Miami', 'photo_path_5', '2023-07-25', 'Hired', 1, 1, 1, 'Correct', 'Good', NULL, 3),
(8, 'Mia', 'N', 'King', 'mia.king@example.com', 9876543247, 'Denver', '2023-08-30', 'B.Tech', 79.5, 80209, 80209, 'Lab C', 'Good', 'Good', 'Good', '1994-08-25', 1, 'William', 'Writer', 9876543248, 85000, 'Denver', 'Denver', 'photo_path_6', '2023-08-30', 'Hired', 1, 1, 1, 'Correct', 'Good', NULL, 4),
(9, 'Liam', 'O', 'Martin', 'liam.martin@example.com', 9876543249, 'Seattle', '2023-09-10', 'PhD', 91.0, 22011, 22011, 'Lab A', 'Good', 'Good', 'Good', '1993-09-05', 1, 'Emily', 'Researcher', 9876543250, 87000, 'Seattle', 'Seattle', 'photo_path_7', '2023-09-10', 'Hired', 1, 1, 1, 'Correct', 'Good', NULL, 1),
(10, 'Ethan', 'P', 'Ward', 'ethan.ward@example.com', 9876543251, 'Boston', '2023-09-26', 'M.Sc', 88.5, 22012, 22012, 'Lab B', 'Good', 'Good', 'Good', '1992-09-20', 1, 'Ava', 'Scientist', 9876543252, 86000, 'Boston', 'Boston', 'photo_path_8', '2023-09-26', 'Hired', 1, 1, 1, 'Correct', 'Good', NULL, 2);


Create TABLE candidates_personal_det_check(
Id int NOT NULL,
candidate_id int NOT NULL,
field_name int NOT NULL,
is_verified int DEFAULT NULL,
lastupd_stamp datetime DEFAULT NULL,
lastupd_user int DEFAULT NULL,
creator_stamp datetime DEFAULT NULL,
creator_user int DEFAULT NULL
)
select * from candidates_personal_det_check;

-- Insert 10 random records into candidates_personal_det_check
INSERT INTO candidates_personal_det_check
(Id, candidate_id, field_name, is_verified, lastupd_stamp, lastupd_user, creator_stamp, creator_user)
VALUES
(1, 1, 1, 1, '2023-09-26 10:00:00', 2, '2023-09-26 09:00:00', 1),
(2, 2, 2, 0, NULL, NULL, '2023-09-26 09:30:00', 2),
(3, 3, 3, 1, '2023-09-26 11:00:00', 1, '2023-09-26 10:30:00', 3),
(4, 4, 1, 0, NULL, NULL, '2023-09-26 11:30:00', 2),
(5, 5, 2, 1, '2023-09-26 13:00:00', 3, '2023-09-26 12:00:00', 4),
(6, 6, 3, 0, NULL, NULL, '2023-09-26 13:30:00', 1),
(7, 7, 1, 1, '2023-09-26 15:00:00', 4, '2023-09-26 14:00:00', 3),
(8, 8, 2, 0, NULL, NULL, '2023-09-26 15:30:00', 2),
(9, 9, 3, 1, '2023-09-26 17:00:00', 1, '2023-09-26 16:00:00', 4),
(10, 10, 1, 0, NULL, NULL, '2023-09-26 17:30:00', 3);


 

CREATE TABLE candidate_bank_det (
  id int NOT NULL Primary Key,
  candidate_id int NOT NULL,
  CONSTRAINT FK_candidate_bank_det_candidate_id FOREIGN KEY (candidate_id) REFERENCES fellowship_candidates (id),
  name varchar(100) NOT NULL,
  account_num bigint NOT NULL,
  is_account_num_verified int DEFAULT 0,
  ifsc_code varchar(20) NOT NULL,
  is_ifsc_code_verified int DEFAULT 0,
  pan_number varchar(10) DEFAULT NULL,
  is_pan_number_verified int DEFAULT 0,
  addhaar_num bigint NOT NULL,
  is_addhaar_num_verified int DEFAULT 0,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
);
select * from candidate_bank_det;

-- Insert 10 random records into candidate_bank_det
INSERT INTO candidate_bank_det
(id, candidate_id, name, account_num, is_account_num_verified, ifsc_code, is_ifsc_code_verified, pan_number, is_pan_number_verified, addhaar_num, is_addhaar_num_verified, creator_stamp, creator_user)
VALUES
(1, 1, 'John Doe', 1234567890, 1, 'ABCD123456', 1, 'ABCPD1234X', 1, 9876543210, 1, '2023-09-26 10:00:00', 2),
(2, 2, 'Jane Smith', 2345678901, 0, 'EFGH234567', 1, NULL, 0, 8765432109, 1, '2023-09-26 10:30:00', 2),
(3, 3, 'Robert Johnson', 3456789012, 1, 'IJKL345678', 1, 'IJKPE4567Y', 1, 7654321098, 1, '2023-09-26 11:00:00', 3),
(4, 4, 'Emily Brown', 4567890123, 0, 'MNOP456789', 1, NULL, 0, 6543210987, 1, '2023-09-26 11:30:00', 2),
(5, 5, 'Michael Wilson', 5678901234, 1, 'QRST567890', 1, 'QRSTP5678Z', 1, 5432109876, 1, '2023-09-26 12:00:00', 3),
(6, 6, 'Olivia Davis', 6789012345, 0, 'UVWX678901', 1, NULL, 0, 4321098765, 1, '2023-09-26 12:30:00', 1),
(7, 7, 'David Lee', 7890123456, 1, 'YZAB789012', 1, 'YZABQ5678A', 1, 3210987654, 1, '2023-09-26 13:00:00', 4),
(8, 8, 'Sophia Garcia', 8901234567, 0, 'CDEF890123', 1, NULL, 0, 2109876543, 1, '2023-09-26 13:30:00', 2),
(9, 9, 'Daniel Taylor', 9012345678, 1, 'GHIJ901234', 1, 'GHIJP6789P', 1, 1098765432, 1, '2023-09-26 14:00:00', 4),
(10, 10, 'Sara Anderson', 1234567890, 0, 'KLMN123456', 1, NULL, 0, 1234567890, 1, '2023-09-26 14:30:00', 3);


CREATE TABLE candidates_bank_det_check (
id int NOT NULL,
candidate_id int NOT NULL,
field_name int NOT NULL,
is_verified int DEFAULT NULL,
lastupd_stamp datetime DEFAULT NULL,
lastupd_user int DEFAULT NULL,
creator_stamp datetime DEFAULT NULL,
creator_user int DEFAULT NULL
);

select * from candidates_bank_det_check;
-- Insert 10 random records into candidates_bank_det_check
INSERT INTO candidates_bank_det_check
(id, candidate_id, field_name, is_verified, lastupd_stamp, lastupd_user, creator_stamp, creator_user)
VALUES
(1, 1, 1, 1, '2023-09-26 10:00:00', 2, '2023-09-26 09:00:00', 1),
(2, 2, 2, 0, NULL, NULL, '2023-09-26 09:30:00', 2),
(3, 3, 3, 1, '2023-09-26 11:00:00', 1, '2023-09-26 10:30:00', 3),
(4, 4, 1, 0, NULL, NULL, '2023-09-26 11:30:00', 2),
(5, 5, 2, 1, '2023-09-26 13:00:00', 3, '2023-09-26 12:00:00', 4),
(6, 6, 3, 0, NULL, NULL, '2023-09-26 13:30:00', 1),
(7, 7, 1, 1, '2023-09-26 15:00:00', 4, '2023-09-26 14:00:00', 3),
(8, 8, 2, 0, NULL, NULL, '2023-09-26 15:30:00', 2),
(9, 9, 3, 1, '2023-09-26 17:00:00', 1, '2023-09-26 16:00:00', 4),
(10, 10, 1, 0, NULL, NULL, '2023-09-26 17:30:00', 3);


----------------------------------------------------------------------------
CREATE TABLE candidate_qualification(
id int NOT NULL primary key,
candidate_id int NOT NULL,
CONSTRAINT FK_candidate_qual_candidate_id FOREIGN KEY (candidate_id) REFERENCES
fellowship_candidates (id),
diploma int DEFAULT 0,
degree_name varchar(10) NOT NULL,
is_degree_name_verified int DEFAULT 0,
employee_decipline varchar(100) NOT NULL,
is_employee_decipline_verified int DEFAULT 0,
passing_year int NOT NULL,
is_passing_year_verified int  DEFAULT 0,
aggr_per float DEFAULT NULL,
final_year_per float DEFAULT NULL,
is_final_year_per_verified int DEFAULT 0,
training_institute varchar(20) NOT NULL,
is_training_institute_verified int DEFAULT 0,
training_duration_month int DEFAULT NULL,
is_training_duration_month_verified int DEFAULT 0,
other_training varchar(255) DEFAULT NULL,
is_other_training_verified int DEFAULT 0,
creator_stamp datetime DEFAULT NULL,
creator_user int DEFAULT NULL,
)
select * from user_details;
-- Insert 10 random records into candidate_qualification
INSERT INTO candidate_qualification
(id, candidate_id, diploma, degree_name, is_degree_name_verified, employee_decipline, is_employee_decipline_verified, passing_year, is_passing_year_verified, aggr_per, final_year_per, is_final_year_per_verified, training_institute, is_training_institute_verified, training_duration_month, is_training_duration_month_verified, other_training, is_other_training_verified, creator_stamp, creator_user)
VALUES
(1, 1, 0, 'B.E', 1, 'Computer Science', 1, 2020, 1, 78.5, 75.0, 1, 'ABC Institute', 1, 12, 1, 'Java Programming', 1, '2023-09-26 10:00:00', 1),
(2, 2, 1, 'B.Sc', 0, 'Physics', 1, 2019, 1, 68.0, 67.5, 0, 'XYZ College', 1, 24, 1, 'Chemistry Lab Skills', 1, '2023-09-26 10:30:00', 2),
(3, 3, 0, 'MBA', 1, 'Business Administration', 1, 2021, 1, 85.0, 83.5, 1, 'MNO University', 1, 18, 1, 'Leadership Training', 1, '2023-09-26 11:00:00', 3),
(4, 4, 1, 'M.Sc', 0, 'Chemistry', 1, 2022, 1, 72.5, 70.0, 0, 'PQR Institute', 1, 36, 1, 'Lab Management', 1, '2023-09-26 11:30:00', 4),
(5, 5, 0, 'B.Tech', 1, 'Electrical Engineering', 1, 2019, 1, 76.0, 74.5, 1, 'LMN College', 1, 24, 1, 'Embedded Systems', 1, '2023-09-26 12:00:00', 5),
(6, 6, 1, 'MBA', 0, 'Marketing', 1, 2021, 1, 88.0, 86.5, 0, 'DEF University', 1, 12, 1, 'Sales Training', 1, '2023-09-26 12:30:00', 6),
(7, 7, 0, 'B.Sc', 1, 'Biology', 1, 2020, 1, 70.5, 69.0, 1, 'GHI College', 1, 18, 1, 'Microbiology', 1, '2023-09-26 13:00:00', 7),
(8, 8, 1, 'B.Tech', 0, 'Mechanical Engineering', 1, 2019, 1, 82.0, 80.5, 0, 'JKL Institute', 1, 36, 1, 'CAD/CAM', 1, '2023-09-26 13:30:00', 8),
(9, 9, 0, 'M.Sc', 1, 'Computer Science', 1, 2022, 1, 75.5, 73.0, 1, 'MNO University', 1, 24, 1, 'Machine Learning', 1, '2023-09-26 14:00:00', 9),
(10, 10, 1, 'B.E', 0, 'Electronics', 1, 2020, 1, 68.5, 66.0, 0, 'PQR Institute', 1, 12, 1, 'Digital Circuits', 1, '2023-09-26 14:30:00', 10);

 

CREATE TABLE candidates_education_det_check (
id int NOT NULL,
candidate_id int  NOT NULL,
field_name int NOT NULL,
is_verified int DEFAULT NULL,
lastupd_stamp datetime DEFAULT NULL,
lastupd_user int DEFAULT NULL,
creator_stamp datetime DEFAULT NULL,
creator_user int DEFAULT NULL
);

-- Insert 10 random records into candidates_education_det_check
INSERT INTO candidates_education_det_check
(id, candidate_id, field_name, is_verified, lastupd_stamp, lastupd_user, creator_stamp, creator_user)
VALUES
(1, 1, 1, 1, '2023-09-26 10:00:00', 2, '2023-09-26 09:00:00', 1),
(2, 2, 2, 0, NULL, NULL, '2023-09-26 09:30:00', 2),
(3, 3, 3, 1, '2023-09-26 11:00:00', 1, '2023-09-26 10:30:00', 3),
(4, 4, 1, 0, NULL, NULL, '2023-09-26 12:30:00', 2),
(5, 5, 2, 1, '2023-09-26 13:00:00', 3, '2023-09-26 12:00:00', 4),
(6, 6, 3, 0, NULL, NULL, '2023-09-26 14:30:00', 1),
(7, 7, 1, 1, '2023-09-26 15:00:00', 4, '2023-09-26 14:00:00', 3),
(8, 8, 2, 0, NULL, NULL, '2023-09-26 16:30:00', 2),
(9, 9, 3, 1, '2023-09-26 17:00:00', 1, '2023-09-26 16:00:00', 4),
(10, 10, 1, 0, NULL, NULL, '2023-09-26 18:30:00', 3);



CREATE TABLE user_details (
id int NOT NULL primary key,
email varchar(50) NOT NULL,
first_name varchar(100) NOT NULL,
last_name varchar(100) NOT NULL,
password varchar(15) NOT NULL,
contact_number bigint NOT NULL,
verified bit DEFAULT NULL,
Constraint AK_TransactionID UNIQUE(Email)
);

-- Insert 10 random records into user_details
INSERT INTO user_details
(id, email, first_name, last_name, password, contact_number, verified)
VALUES
(1, 'user1@example.com', 'John', 'Doe', 'password1', 1234567890, 1),
(2, 'user2@example.com', 'Jane', 'Smith', 'password2', 2345678901, 1),
(3, 'user3@example.com', 'Robert', 'Johnson', 'password3', 3456789012, 0),
(4, 'user4@example.com', 'Emily', 'Brown', 'password4', 4567890123, 1),
(5, 'user5@example.com', 'Michael', 'Wilson', 'password5', 5678901234, 0),
(6, 'user6@example.com', 'Olivia', 'Davis', 'password6', 6789012345, 1),
(7, 'user7@example.com', 'David', 'Lee', 'password7', 7890123456, 1),
(8, 'user8@example.com', 'Sophia', 'Garcia', 'password8', 8901234567, 0),
(9, 'user9@example.com', 'Daniel', 'Taylor', 'password9', 9012345678, 1),
(10, 'user10@example.com', 'Sara', 'Anderson', 'password10', 1234567890, 1);


CREATE TABLE user_roles (
user_id int  NOT NULL ,
role_name varchar(100)
)
INSERT INTO user_roles
(user_id, role_name)
VALUES
(3, 'Manager'),
(4, 'Developer'),
(5, 'Supervisor'),
(6, 'Analyst'),
(7, 'Designer'),
(8, 'Tester'),
(9, 'Support'),
(10, 'Coordinator');

select * from user_roles


--join inner join
SELECT *      
FROM dbo.candidate_bank_det INNER JOIN
                         dbo.candidate_qualification ON dbo.candidate_bank_det.id = dbo.candidate_qualification.id INNER JOIN
                         dbo.candidates_bank_det_check ON dbo.candidate_bank_det.id = dbo.candidates_bank_det_check.id INNER JOIN
                         dbo.candidates_education_det_check ON dbo.candidate_bank_det.id = dbo.candidates_education_det_check.id INNER JOIN
                         dbo.candidates_personal_det_check ON dbo.candidate_bank_det.id = dbo.candidates_personal_det_check.Id INNER JOIN
                         dbo.fellowship_candidates ON dbo.candidate_bank_det.candidate_id = dbo.fellowship_candidates.id AND dbo.candidate_qualification.candidate_id = dbo.fellowship_candidates.id INNER JOIN
                         dbo.hired_candidates ON dbo.candidate_bank_det.id = dbo.hired_candidates.Id INNER JOIN
                         dbo.user_details ON dbo.candidate_bank_det.id = dbo.user_details.id CROSS JOIN
                         dbo.user_roles
SELECT        dbo.candidate_bank_det.id, dbo.candidate_bank_det.name, dbo.candidate_qualification.candidate_id, dbo.candidates_bank_det_check.field_name, dbo.candidates_education_det_check.field_name AS Expr1, 
                         dbo.candidates_education_det_check.candidate_id AS Expr2, dbo.candidates_education_det_check.id AS Expr3, dbo.user_details.first_name, dbo.user_details.last_name, dbo.hired_candidates.Mobile_Num, 
                         dbo.hired_candidates.Email, dbo.fellowship_candidates.middle_name, dbo.user_roles.role_name
FROM            dbo.candidate_bank_det INNER JOIN
                         dbo.candidate_qualification ON dbo.candidate_bank_det.id = dbo.candidate_qualification.id INNER JOIN
                         dbo.candidates_bank_det_check ON dbo.candidate_bank_det.id = dbo.candidates_bank_det_check.id INNER JOIN
                         dbo.candidates_education_det_check ON dbo.candidate_bank_det.id = dbo.candidates_education_det_check.id INNER JOIN
                         dbo.candidates_personal_det_check ON dbo.candidate_bank_det.id = dbo.candidates_personal_det_check.Id INNER JOIN
                         dbo.fellowship_candidates ON dbo.candidate_bank_det.candidate_id = dbo.fellowship_candidates.id AND dbo.candidate_qualification.candidate_id = dbo.fellowship_candidates.id INNER JOIN
                         dbo.hired_candidates ON dbo.candidate_bank_det.id = dbo.hired_candidates.Id INNER JOIN
                         dbo.user_details ON dbo.candidate_bank_det.id = dbo.user_details.id CROSS JOIN
                         dbo.user_roles
--------------------------------------------------
CREATE TABLE Company(
Id int NOT NULL PRIMARY KEY,
Name varchar(50) NOT NULL,
Address varchar(150) DEFAULT NULL,
Location varchar(50) DEFAULT NULL,
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);


-- Insert 10 random records into the Company table
INSERT INTO Company
(Id, Name, Address, Location, Status, Creator_Stamp, Creator_User)
VALUES
(1, 'ABC Corporation', '123 Main St', 'New York', 1, '2023-09-26 09:00:00', 1),
(2, 'XYZ Inc.', '456 Elm St', 'Los Angeles', 1, '2023-09-26 09:15:00', 2),
(3, 'Tech Solutions Ltd.', '789 Oak St', 'San Francisco', 1, '2023-09-26 09:30:00', 3),
(4, 'Global Innovations', '101 Maple St', 'Chicago', 1, '2023-09-26 09:45:00', 1),
(5, 'Web Wizards', '222 Pine St', 'Seattle', 1, '2023-09-26 10:00:00', 2),
(6, 'Data Systems Inc.', '333 Birch St', 'Boston', 1, '2023-09-26 10:15:00', 3),
(7, 'Infinite Technologies', '444 Cedar St', 'Denver', 1, '2023-09-26 10:30:00', 1),
(8, 'Futuristic Solutions', '555 Redwood St', 'Houston', 1, '2023-09-26 10:45:00', 2),
(9, 'AI Innovations Ltd.', '666 Walnut St', 'Miami', 1, '2023-09-26 11:00:00', 3),
(10, 'Quantum Computing Inc.', '777 Spruce St', 'San Diego', 1, '2023-09-26 11:15:00', 1);


 

CREATE TABLE Tech_Type(
Id int NOT NULL primary key,
Type_Name varchar(50) NOT NULL,
Cur_Status char(1) DEFAULT NULL,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

-- Insert 10 random records into the Tech_Type table
INSERT INTO Tech_Type
(Id, Type_Name, Cur_Status, Creator_Stamp, Creator_User)
VALUES
(1, 'Programming Languages', 'A', '2023-09-26 09:00:00', 1),
(2, 'Database Systems', 'A', '2023-09-26 09:15:00', 2),
(3, 'Web Development', 'A', '2023-09-26 09:30:00', 3),
(4, 'Machine Learning', 'A', '2023-09-26 09:45:00', 1),
(5, 'Cybersecurity', 'A', '2023-09-26 10:00:00', 2),
(6, 'Cloud Computing', 'A', '2023-09-26 10:15:00', 3),
(7, 'Mobile App Development', 'A', '2023-09-26 10:30:00', 1),
(8, 'Data Analytics', 'A', '2023-09-26 10:45:00', 2),
(9, 'Networking', 'A', '2023-09-26 11:00:00', 3),
(10, 'Artificial Intelligence', 'A', '2023-09-26 11:15:00', 1);


CREATE TABLE Tech_Stack(
Id int NOT NULL primary key,
Tech_Name varchar(50) NOT NULL,
Image_Path varchar(500) DEFAULT NULL,
Framework text DEFAULT NULL,
Cur_Status char(1) DEFAULT NULL,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);
-- Insert 10 random records into the Tech_Stack table
INSERT INTO Tech_Stack
(Id, Tech_Name, Image_Path, Framework, Cur_Status, Creator_Stamp, Creator_User)
VALUES
(1, 'React.js', '/images/react.png', 'React', 'A', '2023-09-26 09:00:00', 1),
(2, 'Node.js', '/images/node.png', 'Express.js', 'A', '2023-09-26 09:15:00', 2),
(3, 'Python', '/images/python.png', 'Django', 'A', '2023-09-26 09:30:00', 3),
(4, 'Java', '/images/java.png', 'Spring Boot', 'A', '2023-09-26 09:45:00', 1),
(5, 'Ruby on Rails', '/images/rails.png', 'Ruby', 'A', '2023-09-26 10:00:00', 2),
(6, 'Angular', '/images/angular.png', 'Angular', 'A', '2023-09-26 10:15:00', 3),
(7, 'PHP', '/images/php.png', 'Laravel', 'A', '2023-09-26 10:30:00', 1),
(8, '.NET', '/images/dotnet.png', '.NET Core', 'A', '2023-09-26 10:45:00', 2),
(9, 'Ruby', '/images/ruby.png', 'Ruby on Rails', 'A', '2023-09-26 11:00:00', 3),
(10, 'Vue.js', '/images/vue.png', 'Vue', 'A', '2023-09-26 11:15:00', 1);


 

CREATE TABLE Maker_Program(
Id int NOT NULL PRIMARY KEY,
Program_Name varchar(100) NOT NULL,
Program_Type varchar(100) DEFAULT NULL,
Program_Link text DEFAULT NULL,
Tech_Stack_Id int DEFAULT NULL
CONSTRAINT FK_Maker_Program_Tech_Stack_Id FOREIGN KEY(Tech_Stack_Id)
REFERENCES Tech_Stack(Id),
Tech_Type_Id int NOT NULL
CONSTRAINT FK_Maker_Program_Tech_Type_Id FOREIGN KEY(Tech_Type_Id)
REFERENCES Tech_Type(Id),
Is_Program_Approved int,
Description varchar(500) DEFAULT NULL,
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL, 
);

INSERT INTO Maker_Program
(Id, Program_Name, Program_Type, Program_Link, Tech_Stack_Id, Tech_Type_Id, Is_Program_Approved, Description, Status, Creator_Stamp, Creator_User)
VALUES
(1, 'Web Development Bootcamp', 'Bootcamp', 'https://example.com/bootcamp1', 1, 1, 1, 'A comprehensive web development bootcamp.', 1, '2023-09-26 09:00:00', 1),
(2, 'Data Science Course', 'Course', 'https://example.com/datascience', 4, 4, 1, 'Learn data science and machine learning.', 1, '2023-09-26 09:15:00', 2),
(3, 'Mobile App Development Workshop', 'Workshop', 'https://example.com/mobileworkshop', 6, 6, 0, 'Hands-on workshop for mobile app development.', 1, '2023-09-26 09:30:00', 3),
(4, 'AI Hackathon', 'Hackathon', 'https://example.com/aihackathon', 10, 10, 1, 'Join the AI hackathon and showcase your skills.', 1, '2023-09-26 09:45:00', 1),
(5, 'Web Design Course', 'Course', 'https://example.com/webdesign', 2, 2, 1, 'Master web design principles.', 1, '2023-09-26 10:00:00', 2),
(6, 'Cloud Computing Seminar', 'Seminar', 'https://example.com/cloudseminar', 5, 5, 1, 'Explore the world of cloud computing.', 1, '2023-09-26 10:15:00', 3),
(7, 'Cybersecurity Training', 'Training', 'https://example.com/cybertraining', 7, 7, 0, 'Enhance your cybersecurity skills.', 1, '2023-09-26 10:30:00', 1),
(8, 'AI for Beginners', 'Course', 'https://example.com/aibeginners', 3, 3, 1, 'Introduction to artificial intelligence.', 1, '2023-09-26 10:45:00', 2),
(9, 'Database Management Workshop', 'Workshop', 'https://example.com/dbworkshop', 9, 9, 1, 'Hands-on workshop for database management.', 1, '2023-09-26 11:00:00', 3),
(10, 'Software Development Bootcamp', 'Bootcamp', 'https://example.com/devbootcamp', 8, 8, 1, 'Intensive bootcamp for software development.', 1, '2023-09-26 11:15:00', 1);


 

CREATE TABLE Lab(
Id int NOT NULL PRIMARY KEY,
Name varchar(50) DEFAULT NULL,
Location varchar(50) DEFAULT NULL,
Address varchar(255) DEFAULT NULL,
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

-- Insert 10 random records into the Lab table
INSERT INTO Lab
(Id, Name, Location, Address, Status, Creator_Stamp, Creator_User)
VALUES
(1, 'Lab A', 'New York', '123 Main St, New York, NY 10001', 1, '2023-09-26 09:00:00', 1),
(2, 'Lab B', 'Los Angeles', '456 Elm St, Los Angeles, CA 90001', 1, '2023-09-26 09:15:00', 2),
(3, 'Lab C', 'Chicago', '789 Oak St, Chicago, IL 60001', 1, '2023-09-26 09:30:00', 3),
(4, 'Lab D', 'San Francisco', '101 Pine St, San Francisco, CA 94101', 1, '2023-09-26 09:45:00', 1),
(5, 'Lab E', 'Houston', '202 Maple St, Houston, TX 77001', 1, '2023-09-26 10:00:00', 2),
(6, 'Lab F', 'Miami', '303 Cedar St, Miami, FL 33101', 1, '2023-09-26 10:15:00', 3),
(7, 'Lab G', 'Seattle', '404 Birch St, Seattle, WA 98101', 1, '2023-09-26 10:30:00', 1),
(8, 'Lab H', 'Denver', '505 Spruce St, Denver, CO 80201', 1, '2023-09-26 10:45:00', 2),
(9, 'Lab I', 'Dallas', '606 Willow St, Dallas, TX 75201', 1, '2023-09-26 11:00:00', 3),
(10, 'Lab J', 'Phoenix', '707 Redwood St, Phoenix, AZ 85001', 1, '2023-09-26 11:15:00', 1);


 

CREATE TABLE App_Parameters(
Id int NOT NULL,
Key_Type varchar(20) NOT NULL,
Key_Value varchar(20) NOT NULL,
Key_Text varchar(80) DEFAULT NULL,
Cur_Status char(1) DEFAULT NULL,
Lastupd_User int DEFAULT NULL,
Lastupd_Stamp datetime DEFAULT NULL,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL,
Seq_Num int DEFAULT NULL
);
-- Insert 10 random records into the App_Parameters table
INSERT INTO App_Parameters
(Id, Key_Type, Key_Value, Key_Text, Cur_Status, Lastupd_User, Lastupd_Stamp, Creator_Stamp, Creator_User, Seq_Num)
VALUES
(1, 'Type A', 'Value 1', 'Text A1', 'A', 1, '2023-09-26 09:00:00', '2023-09-26 09:00:00', 1, 10),
(2, 'Type B', 'Value 2', 'Text B2', 'A', 2, '2023-09-26 09:15:00', '2023-09-26 09:15:00', 2, 20),
(3, 'Type C', 'Value 3', 'Text C3', 'A', 3, '2023-09-26 09:30:00', '2023-09-26 09:30:00', 3, 30),
(4, 'Type A', 'Value 4', 'Text A4', 'A', 1, '2023-09-26 09:45:00', '2023-09-26 09:45:00', 1, 40),
(5, 'Type B', 'Value 5', 'Text B5', 'A', 2, '2023-09-26 10:00:00', '2023-09-26 10:00:00', 2, 50),
(6, 'Type C', 'Value 6', 'Text C6', 'A', 3, '2023-09-26 10:15:00', '2023-09-26 10:15:00', 3, 60),
(7, 'Type A', 'Value 7', 'Text A7', 'A', 1, '2023-09-26 10:30:00', '2023-09-26 10:30:00', 1, 70),
(8, 'Type B', 'Value 8', 'Text B8', 'A', 2, '2023-09-26 10:45:00', '2023-09-26 10:45:00', 2, 80),
(9, 'Type C', 'Value 9', 'Text C9', 'A', 3, '2023-09-26 11:00:00', '2023-09-26 11:00:00', 3, 90),
(10, 'Type A', 'Value 10', 'Text A10', 'A', 1, '2023-09-26 11:15:00', '2023-09-26 11:15:00', 1, 100);


CREATE TABLE Mentor(
Id int NOT NULL PRIMARY KEY,
Name varchar(50) DEFAULT NULL,
Mentor_Type varchar(20) DEFAULT NULL,
Lab_Id int NOT NULL
CONSTRAINT FK_Mentor_Lab_Id FOREIGN KEY(Lab_Id)
REFERENCES Lab(Id),
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);
INSERT INTO Mentor (Id, Name, Mentor_Type, Lab_Id, Status, Creator_Stamp, Creator_User)
VALUES
(1, 'John Smith', 'Technical Mentor', 3, 1, '2023-09-26 14:15:00', 1),
(2, 'Alice Johnson', 'Academic Mentor', 2, 1, '2023-09-26 14:30:00', 2),
(3, 'David Brown', 'Technical Mentor', 1, 1, '2023-09-26 14:45:00', 3),
(4, 'Emily Davis', 'Academic Mentor', 4, 1, '2023-09-26 15:00:00', 1),
(5, 'Michael Wilson', 'Technical Mentor', 3, 1, '2023-09-26 15:15:00', 2),
(6, 'Olivia Garcia', 'Technical Mentor', 2, 1, '2023-09-26 15:30:00', 3),
(7, 'James Martinez', 'Academic Mentor', 1, 1, '2023-09-26 15:45:00', 1),
(8, 'Sophia Lopez', 'Technical Mentor', 4, 1, '2023-09-26 16:00:00', 2),
(9, 'William Hernandez', 'Academic Mentor', 3, 1, '2023-09-26 16:15:00', 3),
(10, 'Isabella Smith', 'Technical Mentor', 2, 1, '2023-09-26 16:30:00', 1);

 

CREATE TABLE Mentor_Ideation_Map(
Id int NOT NULL PRIMARY KEY,
Mentor_Id int NOT NULL
CONSTRAINT FK_Mentor_Ideation_Map_Mentor_Id FOREIGN KEY (Mentor_Id)
REFERENCES Mentor(Id),
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);
INSERT INTO Mentor_Ideation_Map (Id, Mentor_Id, Status, Creator_Stamp, Creator_User)
VALUES
(1, 3, 1, '2023-09-26 17:00:00', 1),
(2, 4, 1, '2023-09-26 17:15:00', 2),
(3, 1, 1, '2023-09-26 17:30:00', 3),
(4, 2, 1, '2023-09-26 17:45:00', 1),
(5, 5, 1, '2023-09-26 18:00:00', 2),
(6, 6, 1, '2023-09-26 18:15:00', 3),
(7, 7, 1, '2023-09-26 18:30:00', 1),
(8, 8, 1, '2023-09-26 18:45:00', 2),
(9, 9, 1, '2023-09-26 19:00:00', 3),
(10, 10, 1, '2023-09-26 19:15:00', 1);


CREATE TABLE Mentor_Techstack(
Id int NOT NULL PRIMARY KEY,
Mentor_Id int NOT NULL
CONSTRAINT FK_Mentor_Mentor_Id FOREIGN KEY(Mentor_Id)
REFERENCES Mentor(Id),
Tech_Stack_Id int NOT NULL
CONSTRAINT FK_Mentor_Tech_Stack_Id FOREIGN KEY(Tech_Stack_Id)
REFERENCES Tech_Stack(Id),
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

INSERT INTO Mentor_Techstack (Id, Mentor_Id, Tech_Stack_Id, Status, Creator_Stamp, Creator_User)
VALUES
(1, 1, 2, 1, '2023-09-26 19:30:00', 1),
(2, 2, 4, 1, '2023-09-26 19:45:00', 2),
(3, 3, 6, 1, '2023-09-26 20:00:00', 3),
(4, 4, 8, 1, '2023-09-26 20:15:00', 1),
(5, 5, 10, 1, '2023-09-26 20:30:00', 2),
(6, 6, 1, 1, '2023-09-26 20:45:00', 3),
(7, 7, 3, 1, '2023-09-26 21:00:00', 1),
(8, 8, 5, 1, '2023-09-26 21:15:00', 2),
(9, 9, 7, 1, '2023-09-26 21:30:00', 3),
(10, 10, 9, 1, '2023-09-26 21:45:00', 1);
