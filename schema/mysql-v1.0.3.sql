
--
-- Table structure for table `CogisInspection`
--

DROP TABLE IF EXISTS `CogisInspection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CogisInspection` (
  `st_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_num` varchar(15) NOT NULL,
  `county_code` varchar(10) DEFAULT NULL,
  `county_name` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `doc_href` varchar(120) DEFAULT NULL,
  `loc_id` varchar(15) DEFAULT NULL,
  `operator` varchar(60) DEFAULT NULL,
  `insp_api_num` varchar(30) DEFAULT NULL,
  `insp_status` varchar(15) DEFAULT NULL,
  `insp_overall` varchar(30) DEFAULT NULL,
  `ir_pass_fail` varchar(10) DEFAULT NULL,
  `fr_pass_fail` varchar(10) DEFAULT NULL,
  `violation` varchar(10) DEFAULT NULL,
  `site_lat` varchar(20) DEFAULT NULL,
  `site_lng` varchar(20) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ft_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`st_id`),
  KEY `doc_num_index` (`doc_num`),
  KEY `lat` (`site_lat`),
  KEY `lng` (`site_lng`)
) ENGINE=InnoDB AUTO_INCREMENT=2789 DEFAULT CHARSET=utf8 COMMENT='COGIS well inspection records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CogisSpill`
--

DROP TABLE IF EXISTS `CogisSpill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CogisSpill` (
  `st_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_num` varchar(15) NOT NULL,
  `county_code` varchar(10) DEFAULT NULL,
  `county_name` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `doc_href` varchar(120) DEFAULT NULL,
  `facility_id` varchar(15) DEFAULT NULL,
  `operator_num` varchar(15) DEFAULT NULL,
  `company_name` varchar(60) DEFAULT NULL,
  `groundwater` varchar(10) DEFAULT NULL,
  `surfacewater` varchar(10) DEFAULT NULL,
  `berm_contained` varchar(10) DEFAULT NULL,
  `spill_area` varchar(15) DEFAULT NULL,
  `spill_lat` varchar(20) DEFAULT NULL,
  `spill_lng` varchar(20) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ft_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`st_id`),
  UNIQUE KEY `idcogisspill_UNIQUE` (`st_id`),
  KEY `doc_num_index` (`doc_num`),
  KEY `lat` (`spill_lat`),
  KEY `lng` (`spill_lng`)
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `Nightfire_file`
--

DROP TABLE IF EXISTS `Nightfire_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Nightfire_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(60) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filename_UNIQUE` (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Nightfire_record`
--

DROP TABLE IF EXISTS `Nightfire_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Nightfire_record` (
  `file_num` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `Lat_GMTCO` double DEFAULT NULL,
  `Lon_GMTCO` double DEFAULT NULL,
  `CM_IICMO` int(11) DEFAULT NULL,
  `COT_IVCOP` double DEFAULT NULL,
  `EPS_IVCOP` double DEFAULT NULL,
  `QF1_IVCOP` int(11) DEFAULT NULL,
  `QF2_IVCOP` int(11) DEFAULT NULL,
  `QF3_IVCOP` int(11) DEFAULT NULL,
  `Total_Rad` double DEFAULT NULL,
  `BB_Temp` int(11) DEFAULT NULL,
  `M07_Rad` double DEFAULT NULL,
  `M08_Rad` double DEFAULT NULL,
  `M10_Rad` double DEFAULT NULL,
  `M12_Rad` double DEFAULT NULL,
  `M13_Rad` double DEFAULT NULL,
  `M14_Rad` double DEFAULT NULL,
  `M15_Rad` double DEFAULT NULL,
  `M16_Rad` double DEFAULT NULL,
  `SOLZ_GMTCO` double DEFAULT NULL,
  `SOLA_GMTCO` double DEFAULT NULL,
  `SATZ_GMTCO` double DEFAULT NULL,
  `SATA_GMTCO` double DEFAULT NULL,
  `SCVX_GMTCO` double DEFAULT NULL,
  `SCVY_GMTCO` double DEFAULT NULL,
  `SCVZ_GMTCO` double DEFAULT NULL,
  `SCPX_GMTCO` double DEFAULT NULL,
  `SCPY_GMTCO` double DEFAULT NULL,
  `SCPZ_GMTCO` double DEFAULT NULL,
  `SCAX_GMTCO` double DEFAULT NULL,
  `SCAY_GMTCO` double DEFAULT NULL,
  `SCAZ_GMTCO` double DEFAULT NULL,
  `QF1_GMTCO` int(11) DEFAULT NULL,
  `QF2_GMTCO` int(11) DEFAULT NULL,
  `QF1_IICMO` int(11) DEFAULT NULL,
  `QF2_IICMO` int(11) DEFAULT NULL,
  `QF3_IICMO` int(11) DEFAULT NULL,
  `QF4_IICMO` int(11) DEFAULT NULL,
  `QF5_IICMO` int(11) DEFAULT NULL,
  `QF6_IICMO` int(11) DEFAULT NULL,
  `Date_Mscan` datetime DEFAULT NULL,
  `M10_Center` int(11) DEFAULT NULL,
  `M10_Avg` double DEFAULT NULL,
  `M10_Std` double DEFAULT NULL,
  `M10_Nsigma` int(11) DEFAULT NULL,
  `M10_DN` int(11) DEFAULT NULL,
  `M10_Sample` int(11) DEFAULT NULL,
  `M10_Line` int(11) DEFAULT NULL,
  `M10_File` varchar(120) DEFAULT NULL,
  `Proc_Date` datetime DEFAULT NULL,
  `DNB_Sample` int(11) DEFAULT NULL,
  `DNB_Line` int(11) DEFAULT NULL,
  `DNB_Lat` double DEFAULT NULL,
  `DNB_Lon` double DEFAULT NULL,
  `DNB_Rad` int(11) DEFAULT NULL,
  `DNB_Dist` int(11) DEFAULT NULL,
  PRIMARY KEY (`file_num`,`ID`),
  KEY `lat` (`Lat_GMTCO`),
  KEY `lng` (`Lon_GMTCO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
