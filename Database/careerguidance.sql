

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `careerguidance`
--
CREATE DATABASE IF NOT EXISTS `careerguidance` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `careerguidance`;

-- --------------------------------------------------------

--
-- Table structure for table `applicationform`
--

CREATE TABLE IF NOT EXISTS `applicationform` (
  `AppId` int(10) NOT NULL AUTO_INCREMENT,
  `RegNo` int(10) NOT NULL,
  `JobId` int(10) NOT NULL,
  `AppliedDate` date NOT NULL,
  `Resume` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`AppId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `applicationform`
--

INSERT INTO `applicationform` (`AppId`, `RegNo`, `JobId`, `AppliedDate`, `Resume`, `Status`) VALUES
(1, 0, 0, '2013-12-15', '', ''),
(2, 0, 0, '2013-12-15', '', ''),
(3, 0, 0, '2013-12-15', '', ''),
(4, 0, 0, '2013-12-15', '', ''),
(5, 0, 0, '2013-12-15', 'Synopsis.docx', 'Enabled'),
(6, 0, 0, '2013-12-15', 'Synopsis.docx', 'Enabled'),
(7, 66, 44, '2013-12-15', 'Synopsis.docx', 'Enabled'),
(8, 111603, 0, '2013-12-17', 'Chrysanthemum.jpg', 'Enabled'),
(9, 123, 23, '2013-12-18', '', 'Enabled'),
(10, 0, 0, '2013-12-18', '', 'Enabled'),
(11, 0, 0, '2013-12-18', '', 'Enabled'),
(12, 0, 0, '2013-12-18', '', 'Enabled'),
(13, 0, 0, '2013-12-20', '27961sendmail.zip', 'Enabled');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE IF NOT EXISTS `companies` (
  `CompanyId` int(10) NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(50) NOT NULL,
  `CompanyInfo` text NOT NULL,
  `Address` text NOT NULL,
  `EmailId` varchar(30) NOT NULL,
  `ContactNo` varchar(15) NOT NULL,
  `CompanyLogo` varchar(100) NOT NULL,
  `Website` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`CompanyId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`CompanyId`, `CompanyName`, `CompanyInfo`, `Address`, `EmailId`, `ContactNo`, `CompanyLogo`, `Website`, `Status`) VALUES
(3, 'IBM', 'software company', 'mangalore', 'admin@ibm.co', '9998887744', '', 'ww.ibm.com', 'Enabled'),
(4, 'tata', 'tata con', 'bangalmail.coore', 'tata@g', '87665', 'Chrysanthemum.jpg', 'www.h.bb', 'Disabled'),
(5, 'microsoft', 'tata con', 'bangalmail.coore', 'tata@g', '87665', 'Chrysanthemum.jpg', 'www.h.bb', 'Enabled'),
(6, 'dell', 'tata con', 'bangalmail.coore', 'tata@g', '87665', 'Chrysanthemum.jpg', 'www.h.bb', 'Enabled'),
(7, 'infosys', 'software company', 'mangalore', 'admin@ibm.com', '99013378943', '', 'www.ibm.com', 'Enabled'),
(8, 'ibmas', 'software company', 'mangalore', 'admin@ibm.co', '9874563210', '', 'ww.ibm.com', 'Enabled'),
(9, 'wipro', '  ', 'wsfghgf\r\njhjy', 'wipro@gmail.com', '89652410', '1003195_705066926193685_1966589445_n.jpg', 'www.wipro.com', 'Enabled'),
(10, 'ibmcv', '  ', 'byfrugugu\r\nbikuhg', 'ibm@yaahoo.com', '852412036', '1003195_705066926193685_1966589445_n.jpg', 'www.ibm.com', 'Enabled');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `CourseId` int(10) NOT NULL AUTO_INCREMENT,
  `CourseName` varchar(25) NOT NULL,
  `coursecode` int(10) NOT NULL,
  `Comment` text NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`CourseId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseId`, `CourseName`, `coursecode`, `Comment`, `Status`) VALUES
(3, 'BCA', 123, ' Computer application ', 'Enabled'),
(4, 'MCA', 1151, 'Computer application', 'Enabled'),
(9, 'BA', 1123, 'Computer application', 'Enabled'),
(10, 'BCOM', 1123, 'Computer application', 'Enabled'),
(11, 'Bsc', 0, ' Computer application ', 'Disabled'),
(12, 'BBA', 0, ' Computer application ', 'Enabled'),
(13, 'BAD', 45, ' Computer application ', 'Enabled'),
(17, 'MAD', 1234, ' ', 'Enabled');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `empid` int(10) NOT NULL AUTO_INCREMENT,
  `empname` varchar(50) NOT NULL,
  `logintype` varchar(25) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `designation` varchar(25) NOT NULL,
  `lastlogin` datetime NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`empid`, `empname`, `logintype`, `loginid`, `password`, `designation`, `lastlogin`, `status`) VALUES
(1, 'Admin', 'Administrator', 'admin', 'admin', 'system Admin', '2014-02-06 07:07:55', 'Enabled'),
(2, 'Merin James', 'Employee', 'merinjamez@gmail.com', 'merinjames', 'nkrvhiojnvjdn\r\njcndhhei', '0000-00-00 00:00:00', 'Enabled'),
(3, 'Raja', 'Employee', 'raj@gmail.coma', 'raj111', 'Prof', '0000-00-00 00:00:00', 'Enabled'),
(4, 'Raj kiran', 'Employee', 'rajkiran', '111', 'Professor', '0000-00-00 00:00:00', 'Select'),
(5, 'Raja', 'Employee', 'adminsss', '111', 'Project developer', '0000-00-00 00:00:00', 'Select'),
(6, 'Raja', 'Employee', 'raj@gmail.coma', '11', '222', '0000-00-00 00:00:00', 'Enabled'),
(7, 'Mahesh kumar', 'Employee', 'mah', '123', 'Developer', '0000-00-00 00:00:00', 'Enabled');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `JobId` int(10) NOT NULL AUTO_INCREMENT,
  `CompanyId` int(10) NOT NULL,
  `JobTitle` varchar(30) NOT NULL,
  `JobLocation` varchar(25) NOT NULL,
  `JobResponsibility` text NOT NULL,
  `Eligibility` text NOT NULL,
  `SelectionProcess` varchar(100) NOT NULL,
  `Compensation` text NOT NULL,
  `InterviewDate` date NOT NULL,
  `RegistrationTime` date NOT NULL,
  `Venue` varchar(20) NOT NULL,
  `DocReq` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`JobId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`JobId`, `CompanyId`, `JobTitle`, `JobLocation`, `JobResponsibility`, `Eligibility`, `SelectionProcess`, `Compensation`, `InterviewDate`, `RegistrationTime`, `Venue`, `DocReq`, `Status`) VALUES
(1, 3, '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', 'Enabled'),
(2, 4, 'kjo', 'jiju', 'iui', 'hui', 'hi', 'gyu', '2012-12-11', '2012-12-11', 'mangalore', 'ads', 'Enabled'),
(3, 5, 'Software Designer', 'Mangalore', 'irhvfihv', '', '', '', '0000-00-00', '0000-00-00', '', '', 'Enabled'),
(4, 0, 'test job', 'mangalore', 'test res', 'eli', 'test', '123', '2013-08-08', '2013-08-08', 'mangalore', 'sdfg', 'Enabled');

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE IF NOT EXISTS `qualification` (
  `QualId` int(10) NOT NULL AUTO_INCREMENT,
  `RegNo` bigint(10) NOT NULL,
  `Qualification` varchar(25) NOT NULL,
  `YOP` date NOT NULL,
  `BoardOfExamination` varchar(100) NOT NULL,
  `AvgMarks` float(10,2) NOT NULL,
  PRIMARY KEY (`QualId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `selectedcandidate`
--

CREATE TABLE IF NOT EXISTS `selectedcandidate` (
  `SCId` int(10) NOT NULL AUTO_INCREMENT,
  `RegNo` int(10) NOT NULL,
  `JobId` int(10) NOT NULL,
  `SelectedDate` date NOT NULL,
  `JoiningDate` date NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`SCId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `selectedcandidate`
--

INSERT INTO `selectedcandidate` (`SCId`, `RegNo`, `JobId`, `SelectedDate`, `JoiningDate`, `Status`) VALUES
(1, 1, 1, '2014-01-01', '2014-01-08', 'Enabled');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `RegNo` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `CourseId` int(10) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `stimg` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(25) NOT NULL,
  `State` varchar(25) NOT NULL,
  `Country` varchar(25) NOT NULL,
  `EmailId` varchar(30) NOT NULL,
  `ContactNo` varchar(15) NOT NULL,
  `MobileNo` varchar(15) NOT NULL,
  `YOJ` varchar(10) NOT NULL,
  `YOP` varchar(10) NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`RegNo`),
  KEY `RegNo` (`RegNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`RegNo`, `password`, `CourseId`, `FirstName`, `LastName`, `stimg`, `DOB`, `Address`, `City`, `State`, `Country`, `EmailId`, `ContactNo`, `MobileNo`, `YOJ`, `YOP`, `Status`) VALUES
('123', '456', 3, 'raj', 'kiran', '', '1983-12-31', 'mangalore', 'bangalore', 'Kerala', 'India', 'raj@gmail..com', '9874561230', '98745623222', '0000-00-00', '0000-00-00', 'Enabled'),
('7987', '465', 9, 'raj', 'kiran', '', '1999-12-31', 'mangalore', 'bangalore', 'Karnataka', 'India', 'admin@ibm.co', '789456131', '987654321', '2000', '2006', 'Enabled');

-- --------------------------------------------------------

--
-- Table structure for table `trainingprogram`
--

CREATE TABLE IF NOT EXISTS `trainingprogram` (
  `TrainingId` int(10) NOT NULL AUTO_INCREMENT,
  `CompanyId` int(10) NOT NULL,
  `TrainingType` varchar(50) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `TPInfo` text NOT NULL,
  `TPDatetime` datetime NOT NULL,
  `Venue` varchar(30) NOT NULL,
  `TPDepartments` varchar(100) NOT NULL,
  `Trainee` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`TrainingId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `trainingprogram`
--

INSERT INTO `trainingprogram` (`TrainingId`, `CompanyId`, `TrainingType`, `Title`, `TPInfo`, `TPDatetime`, `Venue`, `TPDepartments`, `Trainee`, `Status`) VALUES
(5, 6, 'Seminar', 'Job recruitment', 'Seminar about the recruitment of Wipro company', '2014-12-13 10:30:00', 'St.Agnes Auditorium', 'Null,BCA,MCA,BA,BCOM,Bsc,BBA,BCA,MCA', 'Ms.Asha', 'Enabled'),
(6, 3, 'jsciqb', 'bhhioi', 'bjbkkkkkkkcfch\r\nxdgj\r\nfgckhgj', '2014-12-13 10:30:00', 'mangalore', 'hxbik\r\ncebiuw\r\ncfiuohwe', 'bjhpoo', 'Enabled'),
(7, 0, 'a', 'dsfgdfg', 'asdfadf', '2014-01-08 13:59:00', 'test venue', 'asddf', 'test abc', 'Enabled'),
(12, 4, 'hello training', 'test page training', 'this is simple test page created by aravinda', '2014-12-31 12:59:00', 'Mangalore', 'Null,BCA,MCA,BA,BCOM,Bsc,BBA,BCA,MCA', 'old group', 'Enabled'),
(13, 0, '', '', '', '0000-00-00 00:00:00', '', 'Null,BCA,BCOM,Bsc,BBA,BCA', '', 'Select'),
(14, 0, '', '', '', '0000-00-00 00:00:00', '', 'Null,BA,BCOM', '', 'Select'),
(15, 7, 'bbc training prg', 'bbc tele', 'This is test training program created by me', '2014-12-31 00:59:00', 'Mangalore', 'Null,BCA,BA,BBA,MAD', 'Raj shekhar', 'Enabled'),
(16, 0, 'Seminar', 'Job recruitment', 'Seminar about the recruitment of Wipro company', '0000-00-00 00:00:00', 'St.Agnes Auditorium', 'Null,MAD', 'Ms.Asha', 'Select');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
