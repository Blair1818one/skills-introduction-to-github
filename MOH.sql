create database MOH;
show databases;
use MOH;
CREATE TABLE Patients (
patient_id INT PRIMARY KEY AUTO_INCREMENT,
patient_name VARCHAR(100) NOT NULL,
year_born INT,
contact_number VARCHAR(20)
);

DROP TABLE Patients;
DROP TABLE Doctors;
DROP TABLE LabTests;
DROP TABLE Appointments;

CREATE TABLE Doctors (
doctor_id INT PRIMARY KEY AUTO_INCREMENT,
doctor_name VARCHAR(100) NOT NULL,
specialization VARCHAR(100)
);

CREATE TABLE LabTests (
test_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT,
test_name VARCHAR(100) NOT NULL,
test_date DATE,
test_results TEXT,
FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);
CREATE TABLE Appointments (
appointment_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT,
doctor_id INT,
appointment_date DATETIME NOT NULL,
reason_for_visit TEXT,
FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);
drop tables admistions;
CREATE TABLE Admissions (
admission_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT,
ward_room VARCHAR(50),
admission_date DATETIME,
discharge_date DATETIME,
ailment TEXT,
FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

CREATE TABLE DischargeBills (
bill_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT,
admission_id INT,
balance_charges DECIMAL(10, 2),
test_charges DECIMAL(10, 2),
operation_charges DECIMAL(10, 2),
blood_charges DECIMAL(10, 2),
doctors_charges DECIMAL(10, 2),
total_bill DECIMAL(10, 2),
bill_date DATE,
FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
FOREIGN KEY (admission_id) REFERENCES Admissions(admission_id)
);

INSERT INTO Patients (patient_name, year_born, contact_number) VALUES
('Pop sky', 2000, '0770647382'),
('koto jhon', 2004, '0753728243'),
('mukis dan', 2006, '0731142234'),
('blair son', 22003, '0753455576');

INSERT INTO Doctors (doctor_name, specialization) VALUES
('Dr. sky blai', 'General Practitioner'),
('Dr. mawuba dan', 'Pediatrician'),
('Dr. lan witch', 'Cardiologist');

INSERT INTO LabTests (patient_id, test_name, test_date, test_results) VALUES
(1, 'Blood Count', '2025-06-20', 'Normal ranges'),
(2, 'Urinalysis', '2025-06-21', 'Presence of bacteria'),
(1, 'X-Ray Chest', '2025-06-22', 'Clear');

INSERT INTO Appointments (patient_id, doctor_id, appointment_date, reason_for_visit) VALUES
(1, 1, '2025-07-01 10:00:00', 'Routine check-up'),
(2, 2, '2025-07-02 14:30:00', 'Child fever'),
(3, 1, '2025-07-03 11:00:00', 'Follow-up');

ALTER TABLE Patients
ADD COLUMN Address VARCHAR(255);

UPDATE Patients
SET Address = '123 Kampala Road, Kampala'
WHERE patient_id = 1;

UPDATE Patients
SET Address = '456 Jinja Road, Jinja'
WHERE patient_id = 2;

UPDATE Patients
SET Address = '789 Entebbe Road, Entebbe'
WHERE patient_id = 3;

UPDATE Patients
SET Address = '101 Gulu Street, Gulu'
WHERE patient_id = 4;

ALTER TABLE Patients
CHANGE COLUMN patient_name patientz_name VARCHAR(100) NOT NULL;

CREATE VIEW viewone AS
SELECT *
FROM Doctors;

CREATE VIEW viewtwo AS
SELECT patientz_name, year_born
FROM Patients
LIMIT 2;

CREATE VIEW viewthree AS
SELECT COUNT(*) AS total_patients
FROM Patients;

CREATE VIEW viewfour AS
SELECT *
FROM Patients
WHERE patientz_name LIKE 'M%';

CREATE VIEW viewfive AS
SELECT *
FROM Patients
WHERE year_born > 1990;

CREATE VIEW viewsix AS
SELECT patientz_name, (2025 - year_born) AS current_age
FROM Patients;

CREATE VIEW viewseven AS
SELECT patientz_name, Address, year_born
FROM Patients
WHERE year_born < 1980 OR Address LIKE '%Kampala%';

CREATE VIEW vieweight AS
SELECT
    P.patientz_name,
    P.contact_number,
    A.appointment_date,
    D.doctor_name,
    D.specialization
FROM
    Patients AS P
JOIN
    Appointments AS A ON P.patient_id = A.patient_id
JOIN
    Doctors AS D ON A.doctor_id = D.doctor_id;

