
-- Database: `sms`

-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE IF NOT EXISTS `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) NOT NULL,
  `Section` varchar(5) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'First', 1, 'C', '2017-06-06 16:52:33', '0000-00-00 00:00:00'),
(2, 'Second', 2, 'A', '2017-06-06 17:21:20', '0000-00-00 00:00:00'),
(4, 'Fourth', 4, 'C', '2017-06-07 09:20:23', '0000-00-00 00:00:00'),
(5, 'Sixth', 6, 'A', '2017-06-07 09:35:08', '0000-00-00 00:00:00'),
(6, 'Sixth', 6, 'B', '2017-08-28 18:42:41', '0000-00-00 00:00:00'),
(7, 'Seventh', 7, 'B', '2017-08-28 18:52:00', '0000-00-00 00:00:00'),
(8, 'Eight', 8, 'A', '2017-08-28 19:21:05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE IF NOT EXISTS `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(2, 1, 1, 2, 100, '2017-08-24 17:54:09', '2017-08-28 '),
(3, 1, 1, 1, 80, '2017-08-24 17:54:09', '2017-08-28 '),
(4, 1, 1, 5, 78, '2017-08-24 17:54:09', '2017-08-28 '),
(5, 1, 1, 4, 60, '2017-08-24 17:54:09', '2017-08-28 '),
(6, 2, 4, 2, 90, '2017-08-28 18:38:18', NULL),
(7, 2, 4, 1, 75, '2017-08-28 18:38:18', NULL),
(8, 2, 4, 5, 56, '2017-08-28 18:38:18', '2017-08-28 '),
(9, 2, 4, 4, 80, '2017-08-28 18:38:18', '2017-08-28 '),
(10, 4, 7, 2, 54, '2017-08-28 18:56:21', '2017-08-28 '),
(11, 4, 7, 1, 85, '2017-08-28 18:56:21', NULL),
(12, 4, 7, 5, 55, '2017-08-28 18:56:21', '2017-08-28 '),
(13, 4, 7, 7, 65, '2017-08-28 18:56:21', '2017-08-28 '),
(14, 5, 8, 2, 75, '2017-08-28 19:25:07', NULL),
(15, 5, 8, 1, 56, '2017-08-28 19:25:07', NULL),
(16, 5, 8, 5, 52, '2017-08-28 19:25:07', NULL),
(17, 5, 8, 4, 80, '2017-08-28 19:25:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE IF NOT EXISTS `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `RollId` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Status` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Mahabub', '16172103444', 'mahabub@gmail.com', 'Male', '1995-03-03', 1, '2017-06-12 ', '2017-08-26 ', 1),
(2, 'Ranjit singh', '16172103400', 'Ranjit@gmail.com', 'Male', '1995-02-02', 2, '2017-08-19 ', '2017-08-26', 1),
(3, 'Sazzad Hossain', '16172103416', 'Sazzad@gmail.com', 'Male', '2014-08-06', 3, '2017-08-28 ', '2017-08-28 ', 1),
(4, 'Rakib Sarder', '16172103418', 'Rakib@gmail.com', 'Male', '2001-02-03', 4, '2017-08-28 ', '2017-08-28 ', 1),
(5, 'Abul Kalam', '16172103398', 'Abul@gmail.com', 'Male', '2002-02-03', 5, '2017-08-28 ', '2017-08-28 ', 1),
(6, 'Sumaiya Khandokar','16172103432','Sumaiya@gmail.com','Female', '1996-04-05', 6, '2018-08-05', '2019-02-04',1),
(7, 'Mehedy Hasan Bappi','16172103442','Bappy@gmail.com','Male', '1996-01-06', 7, '2018-08-05', '2019-02-04',1);

-- --------------------------------------------------------



CREATE TABLE IF NOT EXISTS `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;



INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(3, 2, 5, 1, '2017-06-07 ', '2017-06-07 '),
(4, 1, 2, 1, '2017-06-12 ', '2017-06-12 '),
(5, 1, 4, 1, '2017-06-12 ', '2017-06-12 '),
(6, 1, 5, 1, '2017-06-12 ', '2017-06-12 '),
(8, 4, 4, 1, '2017-08-26 ', '2017-08-26 '),
(10, 4, 1, 1, '2017-08-26 ', '2017-08-26 '),
(12, 4, 2, 1, '2017-08-26 ', '2017-08-26 '),
(13, 4, 5, 1, '2017-08-26 ', '2017-08-26 '),
(14, 6, 1, 1, '2017-08-28 ', '2017-08-28 '),
(15, 6, 2, 1, '2017-08-28 ', '2017-08-28 '),
(16, 6, 4, 1, '2017-08-28 ', '2017-08-28 '),
(17, 6, 6, 1, '2017-08-28 ', '2017-08-28 '),
(18, 7, 1, 1, '2017-08-28 ', '2017-08-28 '),
(19, 7, 7, 1, '2017-08-28 ', '2017-08-28 '),
(20, 7, 2, 1, '2017-08-28 ', '2017-08-28 '),
(21, 7, 6, 1, '2017-08-28 ', '2017-08-28 '),
(22, 7, 5, 0, '2017-08-28 ', '2017-08-28 '),
(23, 8, 1, 1, '2017-08-28 ', '2017-08-28 '),
(24, 8, 2, 1, '2017-08-28 ', '2017-08-28 '),
(25, 8, 4, 1, '2017-08-28 ', '2017-08-28 '),
(26, 8, 6, 1, '2017-08-28 ', '2017-08-28 '),
(27, 8, 5, 0, '2017-08-28 ', '2017-08-28 ');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE IF NOT EXISTS `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Maths', 'MTH01', '2017-06-07 ', '2017-06-07 '),
(2, 'English', 'ENG11', '2017-06-07 ', '0000-00-00 '),
(4, 'Software', 'Sf1', '2017-06-07 ', '0000-00-00 '),
(5, 'Database', 'Db', '2017-06-07 ', '0000-00-00 '),
(6, 'Social Studies', 'SS01', '2017-08-28 ', '2017-08-28 '),
(7, 'Physics', 'PH01', '2017-08-28 ', '2017-08-28 '),
(8, 'Chemistry', 'CH', '2017-08-28 ', '2017-08-28 ');



ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;



ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;

ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;

ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;

ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
