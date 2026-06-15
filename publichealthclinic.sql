-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2026 at 05:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `publichealthclinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `AppointmentID` int(11) NOT NULL,
  `PatientID` int(11) DEFAULT NULL,
  `DoctorID` int(11) DEFAULT NULL,
  `AppointmentDate` date DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`AppointmentID`, `PatientID`, `DoctorID`, `AppointmentDate`, `Status`) VALUES
(1, 1, 1, '2026-06-01', 'Completed'),
(2, 2, 2, '2026-06-02', 'Completed'),
(3, 3, 3, '2026-06-03', 'Pending'),
(4, 4, 4, '2026-06-04', 'Completed'),
(5, 5, 5, '2026-06-05', 'Completed'),
(6, 6, 6, '2026-06-06', 'Pending'),
(7, 7, 7, '2026-06-07', 'Completed'),
(8, 8, 8, '2026-06-08', 'Completed'),
(9, 9, 9, '2026-06-09', 'Pending'),
(10, 10, 10, '2026-06-10', 'Completed'),
(11, 11, 11, '2026-06-11', 'Completed'),
(12, 12, 12, '2026-06-12', 'Pending'),
(13, 13, 13, '2026-06-13', 'Completed'),
(14, 14, 14, '2026-06-14', 'Completed'),
(15, 15, 15, '2026-06-15', 'Pending'),
(16, 16, 16, '2026-06-16', 'Completed'),
(17, 17, 17, '2026-06-17', 'Completed'),
(18, 18, 18, '2026-06-18', 'Pending'),
(19, 19, 19, '2026-06-19', 'Completed'),
(20, 20, 20, '2026-06-20', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `DoctorID` int(11) NOT NULL,
  `DoctorName` varchar(100) NOT NULL,
  `Specialization` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`DoctorID`, `DoctorName`, `Specialization`, `Phone`) VALUES
(1, 'Dr Sheku Kamara', 'General Medicine', '078200001'),
(2, 'Dr Mariama Sesay', 'Pediatrics', '078200002'),
(3, 'Dr Musa Bangura', 'Cardiology', '078200003'),
(4, 'Dr Aminata Kallon', 'Dermatology', '078200004'),
(5, 'Dr Ibrahim Koroma', 'Neurology', '078200005'),
(6, 'Dr Hawa Conteh', 'Orthopedics', '078200006'),
(7, 'Dr Fatmata Jalloh', 'Gynecology', '078200007'),
(8, 'Dr Mohamed Turay', 'General Medicine', '078200008'),
(9, 'Dr Sorie Kanu', 'Pediatrics', '078200009'),
(10, 'Dr Adama Kamara', 'Cardiology', '078200010'),
(11, 'Dr Alhaji Sesay', 'Dermatology', '078200011'),
(12, 'Dr Kadiatu Bangura', 'Neurology', '078200012'),
(13, 'Dr Mustapha Koroma', 'Orthopedics', '078200013'),
(14, 'Dr Isatu Kallon', 'Gynecology', '078200014'),
(15, 'Dr Yayah Jalloh', 'General Medicine', '078200015'),
(16, 'Dr Mabinty Conteh', 'Pediatrics', '078200016'),
(17, 'Dr Abubakarr Kamara', 'Cardiology', '078200017'),
(18, 'Dr Zainab Turay', 'Dermatology', '078200018'),
(19, 'Dr Abdul Kanu', 'Neurology', '078200019'),
(20, 'Dr Rugiatu Sesay', 'Orthopedics', '078200020');

-- --------------------------------------------------------

--
-- Table structure for table `medications`
--

CREATE TABLE `medications` (
  `MedicationID` int(11) NOT NULL,
  `MedicationName` varchar(100) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medications`
--

INSERT INTO `medications` (`MedicationID`, `MedicationName`, `Quantity`, `Cost`) VALUES
(1, 'Paracetamol', 100, 5.00),
(2, 'Amoxicillin', 80, 10.00),
(3, 'Artemether', 60, 15.00),
(4, 'Ibuprofen', 90, 8.00),
(5, 'Metformin', 70, 12.00),
(6, 'Insulin', 50, 25.00),
(7, 'Salbutamol', 40, 20.00),
(8, 'Vitamin C', 120, 4.00),
(9, 'Omeprazole', 75, 11.00),
(10, 'Ciprofloxacin', 55, 18.00),
(11, 'Medication11', 100, 10.00),
(12, 'Medication12', 100, 10.00),
(13, 'Medication13', 100, 10.00),
(14, 'Medication14', 100, 10.00),
(15, 'Medication15', 100, 10.00),
(16, 'Medication16', 100, 10.00),
(17, 'Medication17', 100, 10.00),
(18, 'Medication18', 100, 10.00),
(19, 'Medication19', 100, 10.00),
(20, 'Medication20', 100, 10.00);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `PatientID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`PatientID`, `FirstName`, `LastName`, `Gender`, `DOB`, `Phone`, `Address`) VALUES
(1, 'John', 'Kamara', 'Male', '1998-01-12', '076111111', 'Freetown'),
(2, 'Musa', 'Bangura', 'Male', '1997-02-15', '076111112', 'Bo'),
(3, 'Fatmata', 'Sesay', 'Female', '2000-03-20', '076111113', 'Kenema'),
(4, 'Aminata', 'Kallon', 'Female', '1999-04-11', '076111114', 'Makeni'),
(5, 'Ibrahim', 'Koroma', 'Male', '1995-05-25', '076111115', 'Kono'),
(6, 'Mariama', 'Turay', 'Female', '2001-06-17', '076111116', 'Port Loko'),
(7, 'Abdul', 'Jalloh', 'Male', '1998-07-09', '076111117', 'Freetown'),
(8, 'Hawa', 'Kamara', 'Female', '1996-08-14', '076111118', 'Bo'),
(9, 'Sorie', 'Conteh', 'Male', '1994-09-22', '076111119', 'Kenema'),
(10, 'Isatu', 'Bangura', 'Female', '2000-10-18', '076111120', 'Makeni'),
(11, 'Mohamed', 'Sesay', 'Male', '1997-11-05', '076111121', 'Kono'),
(12, 'Adama', 'Kanu', 'Female', '1999-12-08', '076111122', 'Freetown'),
(13, 'Alhaji', 'Turay', 'Male', '1996-01-30', '076111123', 'Bo'),
(14, 'Kadiatu', 'Koroma', 'Female', '1998-02-21', '076111124', 'Kenema'),
(15, 'Mustapha', 'Kallon', 'Male', '1995-03-13', '076111125', 'Makeni'),
(16, 'Rugiatu', 'Jalloh', 'Female', '1997-04-28', '076111126', 'Kono'),
(17, 'Yayah', 'Kamara', 'Male', '1998-05-15', '076111127', 'Freetown'),
(18, 'Mabinty', 'Sesay', 'Female', '1999-06-16', '076111128', 'Bo'),
(19, 'Abubakarr', 'Conteh', 'Male', '2000-07-19', '076111129', 'Kenema'),
(20, 'Zainab', 'Bangura', 'Female', '2001-08-10', '076111130', 'Makeni');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `PrescriptionID` int(11) NOT NULL,
  `TreatmentID` int(11) DEFAULT NULL,
  `MedicationID` int(11) DEFAULT NULL,
  `Dosage` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`PrescriptionID`, `TreatmentID`, `MedicationID`, `Dosage`) VALUES
(1, 1, 1, '2 tablets daily'),
(2, 2, 2, '1 capsule daily'),
(3, 3, 3, 'Twice daily'),
(4, 4, 4, '3 tablets daily'),
(5, 5, 5, 'Once daily'),
(6, 6, 6, '10 units daily'),
(7, 7, 7, '2 puffs daily'),
(8, 8, 8, '1 tablet daily'),
(9, 9, 9, 'Once daily'),
(10, 10, 10, 'Twice daily'),
(11, 11, 11, 'Once daily'),
(12, 12, 12, 'Twice daily'),
(13, 13, 13, 'Once daily'),
(14, 14, 14, 'Twice daily'),
(15, 15, 15, 'Once daily'),
(16, 16, 16, 'Twice daily'),
(17, 17, 17, 'Once daily'),
(18, 18, 18, 'Twice daily'),
(19, 19, 19, 'Once daily'),
(20, 20, 20, 'Twice daily');

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

CREATE TABLE `treatments` (
  `TreatmentID` int(11) NOT NULL,
  `AppointmentID` int(11) DEFAULT NULL,
  `Diagnosis` varchar(100) DEFAULT NULL,
  `TreatmentDescription` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`TreatmentID`, `AppointmentID`, `Diagnosis`, `TreatmentDescription`) VALUES
(1, 1, 'Malaria', 'Artemisinin treatment'),
(2, 2, 'Typhoid', 'Antibiotic treatment'),
(3, 3, 'Flu', 'Rest and medication'),
(4, 4, 'Malaria', 'Medication prescribed'),
(5, 5, 'Headache', 'Pain relief treatment'),
(6, 6, 'Ulcer', 'Diet and medication'),
(7, 7, 'Hypertension', 'Blood pressure control'),
(8, 8, 'Asthma', 'Inhaler prescribed'),
(9, 9, 'Diabetes', 'Insulin management'),
(10, 10, 'Malaria', 'Medication prescribed'),
(11, 11, 'Typhoid', 'Antibiotic prescribed'),
(12, 12, 'Flu', 'Medication prescribed'),
(13, 13, 'Asthma', 'Inhaler treatment'),
(14, 14, 'Ulcer', 'Medication prescribed'),
(15, 15, 'Diabetes', 'Treatment plan'),
(16, 16, 'Malaria', 'Drug therapy'),
(17, 17, 'Typhoid', 'Antibiotic therapy'),
(18, 18, 'Headache', 'Pain relief'),
(19, 19, 'Hypertension', 'Monitoring'),
(20, 20, 'Flu', 'Rest and medication');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`AppointmentID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `DoctorID` (`DoctorID`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`DoctorID`);

--
-- Indexes for table `medications`
--
ALTER TABLE `medications`
  ADD PRIMARY KEY (`MedicationID`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`PrescriptionID`),
  ADD KEY `TreatmentID` (`TreatmentID`),
  ADD KEY `MedicationID` (`MedicationID`);

--
-- Indexes for table `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`TreatmentID`),
  ADD KEY `AppointmentID` (`AppointmentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `AppointmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `DoctorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `medications`
--
ALTER TABLE `medications`
  MODIFY `MedicationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `PatientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `PrescriptionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `treatments`
--
ALTER TABLE `treatments`
  MODIFY `TreatmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctors` (`DoctorID`);

--
-- Constraints for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD CONSTRAINT `prescriptions_ibfk_1` FOREIGN KEY (`TreatmentID`) REFERENCES `treatments` (`TreatmentID`),
  ADD CONSTRAINT `prescriptions_ibfk_2` FOREIGN KEY (`MedicationID`) REFERENCES `medications` (`MedicationID`);

--
-- Constraints for table `treatments`
--
ALTER TABLE `treatments`
  ADD CONSTRAINT `treatments_ibfk_1` FOREIGN KEY (`AppointmentID`) REFERENCES `appointments` (`AppointmentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
