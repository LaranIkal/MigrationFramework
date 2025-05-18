-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 02, 2009 at 11:15 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Migration_support`
--
CREATE DATABASE `Migration_support` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Migration_support`;

-- --------------------------------------------------------

--
-- Table structure for table `AVL`
--

CREATE TABLE IF NOT EXISTS `AVL` (
  `Item` varchar(255) default NULL,
  `Mitm` varchar(255) default NULL,
  `Manu` varchar(255) default NULL,
  `Sern` varchar(10) default NULL,
  `Bpid` varchar(255) default NULL,
  `Pack` varchar(255) default NULL,
  `Cuni` varchar(255) default NULL,
  `Ccty` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `Prio` varchar(255) default NULL,
  `Volu` varchar(255) default NULL,
  `Cert` varchar(255) default NULL,
  `Com1` varchar(255) default NULL,
  `Com2` varchar(255) default NULL,
  `Ltbd` varchar(255) default NULL,
  `Ctnu` varchar(255) default NULL,
  `Ctqa` varchar(255) default NULL,
  `Ctop` varchar(255) default NULL,
  `Cted` varchar(255) default NULL,
  `Shts` varchar(255) default NULL,
  KEY `avl_idx1` (`Item`,`Mitm`,`Manu`,`Sern`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Boms`
--

CREATE TABLE IF NOT EXISTS `Boms` (
  `Mitm` varchar(255) default NULL,
  `Pono` varchar(255) default NULL,
  `Seqn` varchar(255) default NULL,
  `Sitm` varchar(255) default NULL,
  `Opno` varchar(255) default NULL,
  `Cwar` varchar(255) default NULL,
  `Lsel` varchar(255) default NULL,
  `Leng` varchar(255) default NULL,
  `Widt` varchar(255) default NULL,
  `Noun` varchar(255) default NULL,
  `Qana` varchar(255) default NULL,
  `Preq` varchar(255) default NULL,
  `Scpf` varchar(255) default NULL,
  `Scpq` varchar(255) default NULL,
  `Indt` varchar(255) default NULL,
  `Exdt` varchar(255) default NULL,
  `Exin` varchar(255) default NULL,
  `Nnts` varchar(255) default NULL,
  `Cpha` varchar(255) default NULL,
  `Phst` varchar(255) default NULL,
  `Pdoc` varchar(255) default NULL,
  `Ltom` varchar(255) default NULL,
  `Ltov` varchar(255) default NULL,
  `Yldo` varchar(255) default NULL,
  `Scro` varchar(255) default NULL,
  KEY `boms_idx` (`Mitm`,`Pono`,`Seqn`),
  KEY `boms_idx2` (`Sitm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Flex_Owned_Inventory`
--

CREATE TABLE IF NOT EXISTS `Flex_Owned_Inventory` (
  `Warehouse` varchar(255) default NULL,
  `Location` varchar(255) default NULL,
  `Item` varchar(255) default NULL,
  `Unit` varchar(255) default NULL,
  `QTY` decimal(20,4) default NULL,
  `PackingSize` tinyint(4) default NULL,
  KEY `Flex_Owned_Inventory_idx1` (`Warehouse`,`Location`,`Item`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PO_Lines`
--

CREATE TABLE IF NOT EXISTS `PO_Lines` (
  `Orno` varchar(255) default NULL,
  `Pono` varchar(255) default NULL,
  `Item` varchar(255) default NULL,
  `Cuqp` varchar(255) default NULL,
  `Oqua` varchar(255) default NULL,
  `Pric` varchar(255) default NULL,
  `Sdsc` varchar(255) default NULL,
  `Ldam` varchar(255) default NULL,
  `Dtrm` varchar(255) default NULL,
  `Odat` varchar(255) default NULL,
  `Elgb` varchar(255) default NULL,
  `Ddtf` varchar(255) default NULL,
  `Vryn` varchar(255) default NULL,
  `Cwar` varchar(255) default NULL,
  `Cadr` varchar(255) default NULL,
  `Sfbp` varchar(255) default NULL,
  `Sfad` varchar(255) default NULL,
  `Ddta` varchar(255) default NULL,
  `Cvat` varchar(255) default NULL,
  `Lsel` varchar(255) default NULL,
  `Clot` varchar(255) default NULL,
  `Btsp` varchar(255) default NULL,
  `Rdta` varchar(255) default NULL,
  `Ddtc` varchar(255) default NULL,
  `Ddtd` varchar(255) default NULL,
  `Qual` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Purchase_orders`
--

CREATE TABLE IF NOT EXISTS `Purchase_orders` (
  `otbp` varchar(100) default NULL,
  `Sfbp` varchar(100) default NULL,
  `Cofc` varchar(100) default NULL,
  `Cotp` varchar(100) default NULL,
  `Orno` varchar(100) default NULL,
  `Odat` varchar(100) default NULL,
  `Ccon` varchar(100) default NULL,
  `Sorn` varchar(100) default NULL,
  `Refa` varchar(100) default NULL,
  `Refb` varchar(100) default NULL,
  `Ddat` varchar(100) default NULL,
  `Ddtc` varchar(100) default NULL,
  `Cwar` varchar(100) default NULL,
  `Cdec` varchar(100) default NULL,
  `Retr` varchar(100) default NULL,
  `Otad` varchar(100) default NULL,
  `odis` varchar(100) default NULL,
  `sfad` varchar(100) default NULL,
  `cadr` varchar(100) default NULL,
  `ifbp` varchar(100) default NULL,
  `ifad` varchar(100) default NULL,
  `ccur` varchar(100) default NULL,
  `ratp` varchar(100) default NULL,
  `ratf` varchar(100) default NULL,
  `ratt` varchar(100) default NULL,
  `mcfr` varchar(100) default NULL,
  `ccty` varchar(100) default NULL,
  `sbim` varchar(100) default NULL,
  `cvyn` varchar(100) default NULL,
  `ptbp` varchar(100) default NULL,
  `ptad` varchar(100) default NULL,
  `cpay` varchar(100) default NULL,
  `cfsg` varchar(100) default NULL,
  `empty` varchar(100) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `avl_prim_key`
--

CREATE TABLE IF NOT EXISTS `avl_prim_key` (
  `item` varchar(255) default NULL,
  `mitm` varchar(255) default NULL,
  `manuf` varchar(255) default NULL,
  `seqn` varchar(5) default NULL,
  KEY `avl_prim_key_idx1` (`item`,`mitm`,`manuf`,`seqn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `avl_prim_key_comp`
--

CREATE TABLE IF NOT EXISTS `avl_prim_key_comp` (
  `item` varchar(255) default NULL,
  `mitm` varchar(255) default NULL,
  `manuf` varchar(255) default NULL,
  `seqn` varchar(5) default NULL,
  KEY `avl_prim_key_comp_idx1` (`item`,`mitm`,`manuf`,`seqn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_item_rel_ship`
--

CREATE TABLE IF NOT EXISTS `eng_item_rel_ship` (
  `Project` varchar(255) default NULL,
  `MainItem` varchar(255) default NULL,
  `EngItem` varchar(255) default NULL,
  `EngItemRev` varchar(255) default NULL,
  `EItemCopied` varchar(255) default NULL,
  `EItemCopyDate` varchar(255) default NULL,
  `EBOMCopied` varchar(255) default NULL,
  `EBOMCopyDate` varchar(255) default NULL,
  `Empty` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_item_revisions`
--

CREATE TABLE IF NOT EXISTS `eng_item_revisions` (
  `Item` varchar(255) default NULL,
  `revision` varchar(255) default NULL,
  `desc` varchar(255) default NULL,
  `order` varchar(255) default NULL,
  `efectivedate` varchar(255) default NULL,
  `expirydate` varchar(255) default NULL,
  `engineer` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `drawing_loc` varchar(255) default NULL,
  `date_from_cad` varchar(255) default NULL,
  `drawing` varchar(255) default NULL,
  `eitem_text` varchar(255) default NULL,
  `empty` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `error_log_processing`
--

CREATE TABLE IF NOT EXISTS `error_log_processing` (
  `KOR` varchar(6) default NULL,
  `RecordNo` varchar(6) default NULL,
  `Message` varchar(512) default NULL,
  `Line` varchar(512) default NULL,
  `MainLine` varchar(512) default NULL,
  KEY `KOR` (`KOR`,`RecordNo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isi_srcp`
--

CREATE TABLE IF NOT EXISTS `isi_srcp` (
  `item_group` varchar(100) default NULL,
  `item` varchar(100) default NULL,
  `bp_buy_from` varchar(100) default NULL,
  `bp_ship_from` varchar(100) default NULL,
  `efdt` varchar(100) default NULL,
  `srcp` varchar(100) default NULL,
  KEY `isi_srcp_idx1` (`item_group`,`item`,`bp_buy_from`,`bp_ship_from`,`efdt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_code_systems`
--

CREATE TABLE IF NOT EXISTS `item_code_systems` (
  `citt` varchar(3) default NULL,
  `cust_supp` varchar(9) default NULL,
  `Item` varchar(255) default NULL,
  `altern_item` varchar(255) default NULL,
  `empty` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_code_systems2`
--

CREATE TABLE IF NOT EXISTS `item_code_systems2` (
  `citt` varchar(255) NOT NULL,
  `cust_supp` varchar(255) NOT NULL,
  `Item` varchar(255) NOT NULL,
  `altern_item` varchar(255) NOT NULL,
  `empty` varchar(255) NOT NULL,
  KEY `item_code_systems_idx1` (`citt`,`cust_supp`,`Item`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_code_systems3`
--

CREATE TABLE IF NOT EXISTS `item_code_systems3` (
  `citt` varchar(255) NOT NULL,
  `cust_supp` varchar(255) NOT NULL,
  `Item` varchar(255) NOT NULL,
  `altern_item` varchar(255) NOT NULL,
  `empty` varchar(255) NOT NULL,
  KEY `item_code_systems_idx1` (`citt`,`cust_supp`,`Item`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_production_data`
--

CREATE TABLE IF NOT EXISTS `item_production_data` (
  `Item` varchar(255) default NULL,
  `Seak` varchar(255) default NULL,
  `Unom` varchar(255) default NULL,
  `Scpf` varchar(255) default NULL,
  `Cpha` varchar(255) default NULL,
  `Phst` varchar(255) default NULL,
  `Oltm` varchar(255) default NULL,
  `Runi` varchar(255) default NULL,
  `Oqdr` varchar(255) default NULL,
  `Bfep` varchar(255) default NULL,
  `Bfcp` varchar(255) default NULL,
  `Bfhr` varchar(255) default NULL,
  `Coac` varchar(255) default NULL,
  `Crmp` varchar(255) default NULL,
  `Dris` varchar(255) default NULL,
  `Repi` varchar(255) default NULL,
  `Pcrp` varchar(255) default NULL,
  KEY `Item` (`Item`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_supplier_information`
--

CREATE TABLE IF NOT EXISTS `item_supplier_information` (
  `item` varchar(100) default NULL,
  `Citg` varchar(100) default NULL,
  `otbp` varchar(100) default NULL,
  `Sfbp` varchar(100) default NULL,
  `Efdt` varchar(100) default NULL,
  `Exdt` varchar(100) default NULL,
  `Pref` varchar(100) default NULL,
  `Sbim` varchar(100) default NULL,
  `Appr` varchar(100) default NULL,
  `Blck` varchar(100) default NULL,
  `Prio` varchar(100) default NULL,
  `Srcp` varchar(100) default NULL,
  `Rtdm` varchar(100) default NULL,
  `Rtdp` varchar(100) default NULL,
  `Rtqm` varchar(100) default NULL,
  `Rtqp` varchar(100) default NULL,
  `Cofc` varchar(100) default NULL,
  `Qual` varchar(100) default NULL,
  `Cons` varchar(100) default NULL,
  `Oqmf` varchar(100) default NULL,
  `Mioq` varchar(100) default NULL,
  `Maoq` varchar(100) default NULL,
  `Fioq` varchar(100) default NULL,
  `Ecoq` varchar(100) default NULL,
  `Ipti` varchar(100) default NULL,
  `Iptu` varchar(100) default NULL,
  `Sfti` varchar(100) default NULL,
  `Sftu` varchar(100) default NULL,
  `Suti` varchar(100) default NULL,
  `Sutu` varchar(100) default NULL,
  `Oltf` varchar(100) default NULL,
  `Scfu` varchar(100) default NULL,
  `Freh` varchar(100) default NULL,
  `Frel` varchar(100) default NULL,
  `Matr` varchar(100) default NULL,
  `Scrd` varchar(100) default NULL,
  `Demr` varchar(100) default NULL,
  `Cums` varchar(100) default NULL,
  `Auth` varchar(100) default NULL,
  `Depu` varchar(100) default NULL,
  `Capq` varchar(100) default NULL,
  `Capd` varchar(100) default NULL,
  `Capu` varchar(100) default NULL,
  `Capt` varchar(100) default NULL,
  KEY `isi_idx1` (`item`,`Citg`,`otbp`,`Efdt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_lines_baan5`
--

CREATE TABLE IF NOT EXISTS `po_lines_baan5` (
  `po_baan5` varchar(255) NOT NULL default '',
  `position` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`po_baan5`,`position`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reference_designators`
--

CREATE TABLE IF NOT EXISTS `reference_designators` (
  `mitem` varchar(255) default NULL,
  `position` varchar(255) default NULL,
  `seqn` varchar(255) default NULL,
  `location` varchar(255) default NULL,
  `netqty` varchar(255) default NULL,
  `empty` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `routing_code_by_item`
--

CREATE TABLE IF NOT EXISTS `routing_code_by_item` (
  `item` varchar(100) default NULL,
  `routing` varchar(100) default NULL,
  `description` varchar(100) default NULL,
  `std_routing_yes_no` varchar(10) default NULL,
  `standard_routing` varchar(100) default NULL,
  `routing_unit` varchar(100) default NULL,
  `up_to_order_qty` varchar(100) default NULL,
  `week_bucket_planning` varchar(100) default NULL,
  `automatic_update` varchar(100) default NULL,
  KEY `routing_code_by_item_idx1` (`item`,`routing`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `routing_operations`
--

CREATE TABLE IF NOT EXISTS `routing_operations` (
  `Manufactured_Item` varchar(100) default NULL,
  `Routing` varchar(100) default NULL,
  `Operation` varchar(100) default NULL,
  `Seq_Number` varchar(100) default NULL,
  `Task` varchar(100) default NULL,
  `Work_Center` varchar(100) default NULL,
  `Machine` varchar(100) default NULL,
  `Effective_Date` varchar(20) default NULL,
  `Expiry_Date` varchar(20) default NULL,
  `Average_Setup_Time` varchar(100) default NULL,
  `Fixed_Setup_Time` varchar(100) default NULL,
  `Production_Rate_Per` varchar(100) default NULL,
  `Cycle_Time` varchar(100) default NULL,
  `Fixed_Duration` varchar(100) default NULL,
  `Man_Occupation_for_Production` varchar(100) default NULL,
  `Machine_Occupation` varchar(100) default NULL,
  `Transfer_Lot_100_perc` varchar(100) default NULL,
  `Transfer_Lot_Quantity` varchar(100) default NULL,
  `Yield_Type` varchar(100) default NULL,
  `Yield_Percentage` varchar(100) default NULL,
  `Extra_Information` varchar(100) default NULL,
  `Subcontracting_Rate_Factor` varchar(100) default NULL,
  `Backflushing` varchar(100) default NULL,
  `Count_Point` varchar(100) default NULL,
  `Quantity_by_Pull_Note` varchar(100) default NULL,
  `Number_of_Pull_Notes` varchar(100) default NULL,
  `Description_on_Pull_Note` varchar(100) default NULL,
  KEY `routing_operations_idx1` (`Manufactured_Item`,`Routing`,`Operation`,`Seq_Number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `whse_loc`
--

CREATE TABLE IF NOT EXISTS `whse_loc` (
  `whse` varchar(100) default NULL,
  `loc` varchar(100) default NULL,
  KEY `whse_loc_idx1` (`whse`,`loc`),
  KEY `whse_idx1` (`whse`,`loc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Database: `SJ_Migration`
--
CREATE DATABASE `SJ_Migration` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `SJ_Migration`;

-- --------------------------------------------------------

--
-- Table structure for table `Additional_ISI`
--

CREATE TABLE IF NOT EXISTS `Additional_ISI` (
  `Itemcode` varchar(255) default NULL,
  `BuyfromBP` varchar(255) default NULL,
  `OrderMethod` varchar(255) default NULL,
  `FlexpassEnabled` varchar(255) default NULL,
  `ShiptoWHPOLine` varchar(255) default NULL,
  `ExcludefromTransferGPManufactu` varchar(255) default NULL,
  `ExcludefromTransferGlobal_Custo` varchar(255) default NULL,
  `ShiptoAddressPOHeader` varchar(255) default NULL,
  `CountryofOrigin` varchar(255) default NULL,
  `Euro` varchar(255) default NULL,
  `LiabilityHorizon1` varchar(255) default NULL,
  `LiabilityHorizon2` varchar(255) default NULL,
  `LiabilityHorizon3` varchar(255) default NULL,
  `LiabilityPercentage1` varchar(255) default NULL,
  `LiabilityPercentage2` varchar(255) default NULL,
  `LiabilityPercentage3` varchar(255) default NULL,
  `ForecastCommitmentServiceLevel1` varchar(255) default NULL,
  `ForecastCommitmentServiceLevel2` varchar(255) default NULL,
  `ForecastCommitmentServiceLevel3` varchar(255) default NULL,
  `ForecastCommitmentPercentage1` varchar(255) default NULL,
  `ForecastCommitmentPercentage2` varchar(255) default NULL,
  `ForecastCommitmentPercentage3` varchar(255) default NULL,
  `InitialSupplyTime` varchar(255) default NULL,
  `InspectionText` varchar(255) default NULL,
  `MoistureSensitiveDevice` varchar(255) default NULL,
  `EnableReductionofLiabilityPO` varchar(255) default NULL,
  `AllowaddlinetoexistingPO` varchar(255) default NULL,
  `NonFlexpassEnabled` varchar(255) default NULL,
  `SMIReferenceNo.` varchar(255) default NULL,
  `Daysofstockminimum` varchar(255) default NULL,
  `Daysofstockmaximum` varchar(255) default NULL,
  `Calc.dailyrunratenonweighted` varchar(255) default NULL,
  `Calc.dailyrunrateweighted` varchar(255) default NULL,
  `Stocknonweightedminimum` varchar(255) default NULL,
  `Stocknonweightedmaximum` varchar(255) default NULL,
  `Stockweightedminimum` varchar(255) default NULL,
  `Stockweightedmaximum` varchar(255) default NULL,
  `Stockeffectiveminimum` varchar(255) default NULL,
  `Stockeffectivemaximum` varchar(255) default NULL,
  `Manualoverride` varchar(255) default NULL,
  `TermsofDelive` varchar(255) default NULL,
  `NamePlaceofDelivery` varchar(255) default NULL,
  `CommunicatorID` varchar(255) default NULL,
  `UseWeightedDe` varchar(255) default NULL,
  `RescheduleWindow` varchar(255) default NULL,
  `Upside` varchar(255) default NULL,
  `UpsideWindow` varchar(255) default NULL,
  `StandardPart` varchar(255) default NULL,
  `Freshness` varchar(255) default NULL,
  `NCNR` varchar(255) default NULL,
  `Dummy` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EngineeringItems206`
--

CREATE TABLE IF NOT EXISTS `EngineeringItems206` (
  `EngineeringItem` varchar(255) default NULL,
  `Description` varchar(255) default NULL,
  `Material` varchar(255) default NULL,
  `Size` varchar(255) default NULL,
  `Standard` varchar(255) default NULL,
  `Weight` varchar(255) default NULL,
  `SearchKeyI` varchar(255) default NULL,
  `SearchKeyII` varchar(255) default NULL,
  `EngineeringItemgroup` varchar(255) default NULL,
  `PhysicalProduct` varchar(255) default NULL,
  `Project` varchar(255) default NULL,
  `E-ItemReference` varchar(255) default NULL,
  `ProductType` varchar(255) default NULL,
  `SelectionCode` varchar(255) default NULL,
  `SignalCode` varchar(255) default NULL,
  `Engineer` varchar(255) default NULL,
  `DrawingSize` varchar(255) default NULL,
  `BOMUnit` varchar(255) default NULL,
  `UnitSet` varchar(255) default NULL,
  `Unit` varchar(255) default NULL,
  `OrderPolicy` varchar(255) default NULL,
  `ItemGroup` varchar(255) default NULL,
  `ItemType` varchar(255) default NULL,
  `E-ItemText` varchar(255) default NULL,
  `Dummy` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EngineeringItems335`
--

CREATE TABLE IF NOT EXISTS `EngineeringItems335` (
  `EngineeringItem` varchar(255) default NULL,
  `Description` varchar(255) default NULL,
  `Material` varchar(255) default NULL,
  `Size` varchar(255) default NULL,
  `Standard` varchar(255) default NULL,
  `Weight` varchar(255) default NULL,
  `SearchKeyI` varchar(255) default NULL,
  `SearchKeyII` varchar(255) default NULL,
  `EngineeringItemgroup` varchar(255) default NULL,
  `PhysicalProduct` varchar(255) default NULL,
  `Project` varchar(255) default NULL,
  `E-ItemReference` varchar(255) default NULL,
  `ProductType` varchar(255) default NULL,
  `SelectionCode` varchar(255) default NULL,
  `SignalCode` varchar(255) default NULL,
  `Engineer` varchar(255) default NULL,
  `DrawingSize` varchar(255) default NULL,
  `BOMUnit` varchar(255) default NULL,
  `UnitSet` varchar(255) default NULL,
  `Unit` varchar(255) default NULL,
  `OrderPolicy` varchar(255) default NULL,
  `ItemGroup` varchar(255) default NULL,
  `ItemType` varchar(255) default NULL,
  `E-ItemText` varchar(255) default NULL,
  `Dummy` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `HKCLASSES`
--

CREATE TABLE IF NOT EXISTS `HKCLASSES` (
  `type` smallint(6) NOT NULL,
  `name` char(190) NOT NULL,
  `value` longtext NOT NULL,
  `user` char(50) default NULL,
  `update` datetime default NULL,
  PRIMARY KEY  (`type`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `InventoryItems206`
--
CREATE TABLE IF NOT EXISTS `InventoryItems206` (
`BaaNVItem` varchar(255)
);
-- --------------------------------------------------------

--
-- Table structure for table `Inventory_104`
--

CREATE TABLE IF NOT EXISTS `Inventory_104` (
  `warehouse` varchar(255) default NULL,
  `item` varchar(255) default NULL,
  `unit` varchar(255) default NULL,
  `qty` varchar(255) default NULL,
  KEY `inventory_104_idx1` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Inventory_206`
--

CREATE TABLE IF NOT EXISTS `Inventory_206` (
  `warehouse` varchar(255) default NULL,
  `item` varchar(255) default NULL,
  `unit` varchar(255) default NULL,
  `qty` varchar(255) default NULL,
  KEY `inventory_104_idx1` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Inventory_BaaNV_104`
--

CREATE TABLE IF NOT EXISTS `Inventory_BaaNV_104` (
  `ItemBaaNV` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `QTD` double default '0',
  `STDCost` float default '0',
  KEY `Inventory_BaaNV_104_idx1` (`ItemBaaNV`,`Warehouse`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Inventory_BaaNV_206`
--

CREATE TABLE IF NOT EXISTS `Inventory_BaaNV_206` (
  `ItemBaaNV` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `QTD` double default '0',
  `STDCost` float default '0',
  KEY `Inventory_BaaNV_104_idx1` (`ItemBaaNV`,`Warehouse`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Inventory_baan_iv_206`
--

CREATE TABLE IF NOT EXISTS `Inventory_baan_iv_206` (
  `BAANIVITEM` varchar(255) default NULL,
  `BAANVITEM` varchar(255) default NULL,
  `WAREHOUSE` varchar(255) default NULL,
  `QUANTITY` double NOT NULL,
  `STANDARD_COST` double NOT NULL,
  KEY `Inventory_baaniv_104_idx1` (`BAANVITEM`,`WAREHOUSE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Inventory_baaniv_104`
--

CREATE TABLE IF NOT EXISTS `Inventory_baaniv_104` (
  `BAANIVITEM` varchar(255) default NULL,
  `BAANVITEM` varchar(255) default NULL,
  `WAREHOUSE` varchar(255) default NULL,
  `QUANTITY` double NOT NULL,
  `STANDARD_COST` double NOT NULL,
  KEY `Inventory_baaniv_104_idx1` (`BAANVITEM`,`WAREHOUSE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Invoice_to`
--

CREATE TABLE IF NOT EXISTS `Invoice_to` (
  `Invoice-toBusinessPartner` varchar(255) NOT NULL default '',
  `Department` varchar(255) default NULL,
  `TermsofPaymen` varchar(255) default NULL,
  `LatePaymentSu` varchar(255) default NULL,
  `Language` varchar(255) default NULL,
  `Currency` varchar(255) default NULL,
  `ExchangeRateT` varchar(255) default NULL,
  `Tax` varchar(255) default NULL,
  `CreditLimit` varchar(255) default NULL,
  `CreditLimitInsured` varchar(255) default NULL,
  `CreditInsuranc` varchar(255) default NULL,
  `ReferenceCreditInsuranceCompany` varchar(255) default NULL,
  `ExpiryDateofInsuredCreditLimit` varchar(255) default NULL,
  `DateInvoiced` varchar(255) default NULL,
  `PaymentMethod` varchar(255) default NULL,
  `StatementMethod` varchar(255) default NULL,
  `NumberofExtraInvoiceCopies` varchar(255) default NULL,
  `InvoicingMetho` varchar(255) default NULL,
  `InvoiceInterval` varchar(255) default NULL,
  `FinancialCusto` varchar(255) default NULL,
  `BusinessPartne` varchar(255) default NULL,
  `DateLastCreditReview` varchar(255) default NULL,
  `HighestCreditUsedsinceDateLast` varchar(255) default NULL,
  `CreditAnalyst` varchar(255) default NULL,
  `CreditBureauR` varchar(255) default NULL,
  `CreditRating` varchar(255) default NULL,
  `ToleranceAmountforDueInvoices` varchar(255) default NULL,
  `TolerancePercentageforDueInvoic` varchar(255) default NULL,
  `ReturnTermsofPayment` varchar(255) default NULL,
  `ReturnLatePaymentSurcharge` varchar(255) default NULL,
  `ReturnPaymentMethod` varchar(255) default NULL,
  `BusinessPartne1` varchar(255) default NULL,
  `SearchKey` varchar(255) default NULL,
  `AllowRetro-Billing` varchar(255) default NULL,
  `CalendarCode` varchar(255) default NULL,
  `Pay-fromBusine` varchar(255) default NULL,
  `AddressCode` varchar(255) default NULL,
  `ContactCode` varchar(255) default NULL,
  `BusinessPartne2` varchar(255) default NULL,
  `StartDate` varchar(255) default NULL,
  `EndDate` varchar(255) default NULL,
  `InvoiceDeliver` varchar(255) default NULL,
  `ChargeInterest` varchar(255) default NULL,
  `Text` varchar(255) default NULL,
  `CashDiscount` varchar(255) default NULL,
  `CashDiscountR` varchar(255) default NULL,
  `InterestType` varchar(255) default NULL,
  `InterestRate` varchar(255) default NULL,
  `InterestPeriod` varchar(255) default NULL,
  `BusinessPartnerCategory` varchar(255) default NULL,
  `TaxbasedonNotionalWholesalePri` varchar(255) default NULL,
  `CertificateNumber` varchar(255) default NULL,
  `ValidityDate` varchar(255) default NULL,
  `ClosingMethod` varchar(255) default NULL,
  `PaymentAgreeme` varchar(255) default NULL,
  `Subcontracting` varchar(255) default NULL,
  `PriceBookforNWP` varchar(255) default NULL,
  `DateLastVerified` varchar(255) default NULL,
  `PaymentDay1` varchar(255) default NULL,
  `PaymentDay2` varchar(255) default NULL,
  `PaymentDay3` varchar(255) default NULL,
  `Empty` varchar(255) default NULL,
  KEY `invoice_to_idx1` (`Invoice-toBusinessPartner`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Item_Costing_Data_Default`
--

CREATE TABLE IF NOT EXISTS `Item_Costing_Data_Default` (
  `Company` varchar(255) default NULL,
  `ItemType` varchar(255) default NULL,
  `ItemGroup` varchar(255) default NULL,
  `CostComponent` varchar(255) default NULL,
  `SurchargesbyI` varchar(255) default NULL,
  `SurchargesbyW` varchar(255) default NULL,
  `LotPrice` varchar(255) default NULL,
  `AggregatedMate` varchar(255) default NULL,
  `AggregatedOper` varchar(255) default NULL,
  `AggregatedSurc` varchar(255) default NULL,
  `Currency` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Item_General_Data_Default`
--

CREATE TABLE IF NOT EXISTS `Item_General_Data_Default` (
  `Company` varchar(255) default NULL,
  `ItemType` varchar(255) default NULL,
  `ItemGroup` varchar(255) default NULL,
  `ItemTypeSpeci` varchar(255) default NULL,
  `Material` varchar(255) default NULL,
  `Size` varchar(255) default NULL,
  `Standard` varchar(255) default NULL,
  `UnitSet` varchar(255) default NULL,
  `InventoryUnit` varchar(255) default NULL,
  `WeightUnit` varchar(255) default NULL,
  `Weight` varchar(255) default NULL,
  `LotControl` varchar(255) default NULL,
  `ProductType` varchar(255) default NULL,
  `SelectionCode` varchar(255) default NULL,
  `ItemSignal` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `CountryofOrig` varchar(255) default NULL,
  `ProductClass` varchar(255) default NULL,
  `ProductLine` varchar(255) default NULL,
  `Manufacturer` varchar(255) default NULL,
  `CommodityCode` varchar(255) default NULL,
  `EANCode` varchar(255) default NULL,
  `CostComponent` varchar(255) default NULL,
  `CreatePurchaseItem` varchar(255) default NULL,
  `CreateItemSalesData` varchar(255) default NULL,
  `CreateItemProductionData` varchar(255) default NULL,
  `CreateItemOrderingData` varchar(255) default NULL,
  `CreateItemServiceData` varchar(255) default NULL,
  `CreateItemProjectData` varchar(255) default NULL,
  `CreateItemCostingData` varchar(255) default NULL,
  `CreateItemWarehouseData` varchar(255) default NULL,
  `Revision-Contro` varchar(255) default NULL,
  `ItemDefaultText` varchar(255) default NULL,
  `CreateItemPlanningData` varchar(255) default NULL,
  `ItemFiscalGro` varchar(255) default NULL,
  KEY `itm_gen_data_idx1` (`ItemGroup`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Item_Ordering_Data_Default`
--

CREATE TABLE IF NOT EXISTS `Item_Ordering_Data_Default` (
  `Company` varchar(255) default NULL,
  `ItemType` varchar(255) default NULL,
  `ItemGroup` varchar(255) default NULL,
  `OrderPolicy` varchar(255) default NULL,
  `OrderSystem` varchar(255) default NULL,
  `OrderMethod` varchar(255) default NULL,
  `OrderQuantity` varchar(255) default NULL,
  `MinimumOrderQ` varchar(255) default NULL,
  `MaximumOrderQ` varchar(255) default NULL,
  `FixedOrderQua` varchar(255) default NULL,
  `EconomicOrder` varchar(255) default NULL,
  `ServiceLevel` varchar(255) default NULL,
  `SafetyStock` varchar(255) default NULL,
  `MaximumInvento` varchar(255) default NULL,
  `SeasonPattern` varchar(255) default NULL,
  `SeasonPattern1` varchar(255) default NULL,
  `Re-OrderPoint` varchar(255) default NULL,
  `OrderInterval` varchar(255) default NULL,
  `SafetyTime` varchar(255) default NULL,
  `OrderCosts` varchar(255) default NULL,
  `UpdateInventor` varchar(255) default NULL,
  `UpdateOrderQu` varchar(255) default NULL,
  `PeriodType` varchar(255) default NULL,
  `NumberofPerio` varchar(255) default NULL,
  `Planner` varchar(255) default NULL,
  `JITItem` varchar(255) default NULL,
  `SequencedShipmentSchedules` varchar(255) default NULL,
  `ShipmentSchedules` varchar(255) default NULL,
  `PlannedbySCS` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Item_Planning_Data_Default`
--

CREATE TABLE IF NOT EXISTS `Item_Planning_Data_Default` (
  `Company` varchar(255) default NULL,
  `ItemGroup` varchar(255) default NULL,
  `ItemType` varchar(255) default NULL,
  `PlanLevel` varchar(255) default NULL,
  `MasterPlanUnit` varchar(255) default NULL,
  `PlanUnit` varchar(255) default NULL,
  `DefaultWarehouse` varchar(255) default NULL,
  `MaintainMasterPlan` varchar(255) default NULL,
  `ExtraLeadTime` varchar(255) default NULL,
  `FixedLeadTimeHorizon` varchar(255) default NULL,
  `Constraint` varchar(255) default NULL,
  `Priority` varchar(255) default NULL,
  `AutomaticUpdateofProductionPlan` varchar(255) default NULL,
  `AutomaticUpdateofPurchasePlan` varchar(255) default NULL,
  `AutomaticUpdateofInventoryPlan` varchar(255) default NULL,
  `AutomaticUpdateofDemandForecast` varchar(255) default NULL,
  `CentralSupplyChainControl` varchar(255) default NULL,
  `ForecastTimeFence` varchar(255) default NULL,
  `OrderHorizon` varchar(255) default NULL,
  `PlanningHorizon` varchar(255) default NULL,
  `TimeFence` varchar(255) default NULL,
  `CriticalinCTP` varchar(255) default NULL,
  `ComponentCTP` varchar(255) default NULL,
  `CapacityCTP` varchar(255) default NULL,
  `CTPTimeFence` varchar(255) default NULL,
  `FamilyCTP` varchar(255) default NULL,
  `FamilyCTPHorizon` varchar(255) default NULL,
  `FamilySite` varchar(255) default NULL,
  `FamilyItem` varchar(255) default NULL,
  `Planner` varchar(255) default NULL,
  `OnlineATPUpdate` varchar(255) default NULL,
  `ForecastBasedGenerationMethod` varchar(255) default NULL,
  `DependentDemandForecast` varchar(255) default NULL,
  `ForecastHorizon` varchar(255) default NULL,
  `ChannelATP` varchar(255) default NULL,
  `CycleCTP` varchar(255) default NULL,
  `DefaultSource` varchar(255) default NULL,
  `DefaultEnterpriseUnitforPlannin` varchar(255) default NULL,
  `ReleaseTimeFence` varchar(255) default NULL,
  `PlannedbyBaan` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Item_Production_Data_Default`
--

CREATE TABLE IF NOT EXISTS `Item_Production_Data_Default` (
  `Company` varchar(255) default NULL,
  `ItemGroup` varchar(255) default NULL,
  `ItemType` varchar(255) default NULL,
  `Phantom` varchar(255) default NULL,
  `OrderQtyDependentRouting` varchar(255) default NULL,
  `UsePhantomInv` varchar(255) default NULL,
  `RPTItem` varchar(255) default NULL,
  `ScheduleCode` varchar(255) default NULL,
  `RatePercentageforPlanning` varchar(255) default NULL,
  `BackflushifMa` varchar(255) default NULL,
  `BackflushMater` varchar(255) default NULL,
  `BackflushHours` varchar(255) default NULL,
  `NumberofPull` varchar(255) default NULL,
  `QuantitybyPul` varchar(255) default NULL,
  `BOMUnit` varchar(255) default NULL,
  `RoutingUnit` varchar(255) default NULL,
  `ScrapFactor` varchar(255) default NULL,
  `ScrapQuantity` varchar(255) default NULL,
  `DirectProcessOutbound` varchar(255) default NULL,
  `CriticalforOr` varchar(255) default NULL,
  `BOMUpdatedby` varchar(255) default NULL,
  `OrderLeadTime` varchar(255) default NULL,
  `CriticalItemi` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Item_Purchase_Data_Default`
--

CREATE TABLE IF NOT EXISTS `Item_Purchase_Data_Default` (
  `Company` varchar(255) default NULL,
  `Item_Type` varchar(255) default NULL,
  `Item_Group` varchar(255) default NULL,
  `Purchase_Unit` varchar(255) default NULL,
  `Purchase_Price_Unit` varchar(255) default NULL,
  `Purchase_Price_Group` varchar(255) default NULL,
  `Purchase_Statistics_Group` varchar(255) default NULL,
  `Purchase_Currency` varchar(255) default NULL,
  `Tax_Code` varchar(255) default NULL,
  `Buy-from_BP` varchar(255) default NULL,
  `Buyer` varchar(255) default NULL,
  `Delivery_Date_Tolerance` varchar(255) default NULL,
  `Delivery_Date_Tolerance1` varchar(255) default NULL,
  `Quantity_Tolerance` varchar(255) default NULL,
  `Quantity_Tolerance1` varchar(255) default NULL,
  `Purchase_Office` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `Release_Cost_Se` varchar(255) default NULL,
  `Vendor_Rating` varchar(255) default NULL,
  `Inspection` varchar(255) default NULL,
  `Purchase_Text` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Item_Sales_Data_Default`
--

CREATE TABLE IF NOT EXISTS `Item_Sales_Data_Default` (
  `Company` varchar(255) default NULL,
  `ItemType` varchar(255) default NULL,
  `ItemGroup` varchar(255) default NULL,
  `MinimumQuantitytoCommit` varchar(255) default NULL,
  `MinimumRateforCommittment` varchar(255) default NULL,
  `MinimumOrderQuantity` varchar(255) default NULL,
  `SalesUnit` varchar(255) default NULL,
  `SalesPriceUnit` varchar(255) default NULL,
  `SalesPriceGroup` varchar(255) default NULL,
  `SalesStatisticsGroup` varchar(255) default NULL,
  `Commissiongroup` varchar(255) default NULL,
  `Rebategroup` varchar(255) default NULL,
  `UpperMargin` varchar(255) default NULL,
  `LowerMargin` varchar(255) default NULL,
  `TaxCode` varchar(255) default NULL,
  `DirectDeliveryfromQuantity` varchar(255) default NULL,
  `ReleaseCost_Se` varchar(255) default NULL,
  `CommitmentPolicy` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `SalesText` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Item_Warehousing_Data_Default`
--

CREATE TABLE IF NOT EXISTS `Item_Warehousing_Data_Default` (
  `Company` varchar(255) default NULL,
  `ItemType` varchar(255) default NULL,
  `ItemGroup` varchar(255) default NULL,
  `LocationContro` varchar(255) default NULL,
  `FloorStock` varchar(255) default NULL,
  `InventoryCarry` varchar(255) default NULL,
  `FrequencyforS` varchar(255) default NULL,
  `PeriodforShel` varchar(255) default NULL,
  `ShelfLife[Per` varchar(255) default NULL,
  `ExpectedAnnual` varchar(255) default NULL,
  `ForecastMethod` varchar(255) default NULL,
  `OutboundPriori` varchar(255) default NULL,
  `ConsignmentPri` varchar(255) default NULL,
  `HazardousMater` varchar(255) default NULL,
  `ClassofRisk` varchar(255) default NULL,
  `AssayedItem` varchar(255) default NULL,
  `StandardPotenc` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `MatchbetweenBaanIVtablesandAddresses`
--

CREATE TABLE IF NOT EXISTS `MatchbetweenBaanIVtablesandAddresses` (
  `Partnernr` varchar(255) default NULL,
  `Source` varchar(255) default NULL,
  `Seriennr` varchar(255) default NULL,
  `bdaddress` varchar(255) default NULL,
  `BankAddressCode` varchar(255) default NULL,
  `Dummy` varchar(2) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Price_Books206`
--

CREATE TABLE IF NOT EXISTS `Price_Books206` (
  `BaanVItem` varchar(255) default NULL,
  `Currency` varchar(255) default NULL,
  `PriceBreak` varchar(255) default NULL,
  `Quantityunits` varchar(255) default NULL,
  `EffectiveDate` varchar(255) default NULL,
  `ExpirationDate` varchar(255) default NULL,
  `ContractPrice` varchar(255) default NULL,
  `Unit` varchar(255) default NULL,
  `BPID` varchar(255) default NULL,
  KEY `bpid_idx` (`BPID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Price_Books335`
--

CREATE TABLE IF NOT EXISTS `Price_Books335` (
  `BaanVItem` varchar(255) default NULL,
  `Currency` varchar(255) default NULL,
  `PriceBreak` varchar(255) default NULL,
  `Quantityunits` varchar(255) default NULL,
  `EffectiveDate` varchar(255) default NULL,
  `ExpirationDate` varchar(255) default NULL,
  `ContractPrice` varchar(255) default NULL,
  `Unit` varchar(255) default NULL,
  `BPID` varchar(255) default NULL,
  KEY `bpid_idx` (`BPID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Price_Books_Codes_206`
--

CREATE TABLE IF NOT EXISTS `Price_Books_Codes_206` (
  `pbookcode` varchar(255) default NULL,
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Price_Books_Codes_335`
--

CREATE TABLE IF NOT EXISTS `Price_Books_Codes_335` (
  `pbookcode` varchar(255) default NULL,
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Price_Books_Temp`
--

CREATE TABLE IF NOT EXISTS `Price_Books_Temp` (
  `BaanVItem` varchar(255) default NULL,
  `Currency` varchar(255) default NULL,
  `PriceBreak` varchar(255) default NULL,
  `Quantityunits` varchar(255) default NULL,
  `EffectiveDate` varchar(255) default NULL,
  `ExpirationDate` varchar(255) default NULL,
  `ContractPrice` varchar(255) default NULL,
  `Unit` varchar(255) default NULL,
  `BPID` varchar(255) default NULL,
  KEY `bpid_idx` (`BPID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Suppliers`
--

CREATE TABLE IF NOT EXISTS `Suppliers` (
  `BAANVCODE` varchar(100) default NULL,
  `BAANIVCODE` varchar(100) default NULL,
  `Company` varchar(100) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Suppliers_addresses_xref`
--

CREATE TABLE IF NOT EXISTS `Suppliers_addresses_xref` (
  `bpcodeBV` varchar(100) NOT NULL,
  `addressBV` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `boms206`
--

CREATE TABLE IF NOT EXISTS `boms206` (
  `Manufactureditem` varchar(255) default NULL,
  `Position` varchar(255) default NULL,
  `Sequencenumber` varchar(255) default NULL,
  `Item` varchar(255) default NULL,
  `Operation` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `Lotselection` varchar(255) default NULL,
  `Length` varchar(255) default NULL,
  `Width` varchar(255) default NULL,
  `Numberofunits` varchar(255) default NULL,
  `Netquantity` varchar(255) default NULL,
  `Percentagerequired` varchar(255) default NULL,
  `Scrapfactor` varchar(255) default NULL,
  `Scrapquantity` varchar(255) default NULL,
  `Effectivedate` varchar(255) default NULL,
  `Expirydate` varchar(255) default NULL,
  `Extrainformation` varchar(255) default NULL,
  `Numberofpullnotes` varchar(255) default NULL,
  `Phantom` varchar(255) default NULL,
  `Usephantominventory` varchar(255) default NULL,
  `Printonorderdocument` varchar(255) default NULL,
  `Useleadtimeoffset` varchar(255) default NULL,
  `Leadtimeoffset` varchar(255) default NULL,
  `Yieldforaggregatedplanning` varchar(255) default NULL,
  `Routingscrapaggregated` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `boms335`
--

CREATE TABLE IF NOT EXISTS `boms335` (
  `Manufactureditem` varchar(255) default NULL,
  `Position` varchar(255) default NULL,
  `Sequencenumber` varchar(255) default NULL,
  `Item` varchar(255) default NULL,
  `Operation` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `Lotselection` varchar(255) default NULL,
  `Length` varchar(255) default NULL,
  `Width` varchar(255) default NULL,
  `Numberofunits` varchar(255) default NULL,
  `Netquantity` varchar(255) default NULL,
  `Percentagerequired` varchar(255) default NULL,
  `Scrapfactor` varchar(255) default NULL,
  `Scrapquantity` varchar(255) default NULL,
  `Effectivedate` varchar(255) default NULL,
  `Expirydate` varchar(255) default NULL,
  `Extrainformation` varchar(255) default NULL,
  `Numberofpullnotes` varchar(255) default NULL,
  `Phantom` varchar(255) default NULL,
  `Usephantominventory` varchar(255) default NULL,
  `Printonorderdocument` varchar(255) default NULL,
  `Useleadtimeoffset` varchar(255) default NULL,
  `Leadtimeoffset` varchar(255) default NULL,
  `Yieldforaggregatedplanning` varchar(255) default NULL,
  `Routingscrapaggregated` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bp_temp2`
--

CREATE TABLE IF NOT EXISTS `bp_temp2` (
  `equivalence_type` varchar(100) default NULL,
  `BAANIVCODE` varchar(100) default NULL,
  `valueto` varchar(100) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bpshipfrom`
--

CREATE TABLE IF NOT EXISTS `bpshipfrom` (
  `ShipfromBusinessPartner` varchar(255) default NULL,
  `BusinessPartnerStatus` varchar(255) default NULL,
  `StartDate` varchar(255) default NULL,
  `EndDate` varchar(255) default NULL,
  `Language` varchar(255) default NULL,
  `BusinessPartnerSignal` varchar(255) default NULL,
  `BusinessPartnerType` varchar(255) default NULL,
  `VendorRating` varchar(255) default NULL,
  `AddressCode` varchar(255) default NULL,
  `CalendarCode` varchar(255) default NULL,
  `ContactCode` varchar(255) default NULL,
  `BuyfromBusinessPartner` varchar(255) default NULL,
  `Carrier` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `Inspection` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bpshipto`
--

CREATE TABLE IF NOT EXISTS `bpshipto` (
  `ShiptoBusinessPartner` varchar(255) default NULL,
  `BusinessPartnerStatus` varchar(255) default NULL,
  `StartDate` varchar(255) default NULL,
  `EndDate` varchar(255) default NULL,
  `Language` varchar(255) default NULL,
  `BusinessPartnerSignal` varchar(255) default NULL,
  `BusinessPartnerType` varchar(255) default NULL,
  `AddressCode` varchar(255) default NULL,
  `CalendarCode` varchar(255) default NULL,
  `ContactCode` varchar(255) default NULL,
  `SoldtoBusinessPartner` varchar(255) default NULL,
  `Carrier` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `cost_polines_baan4_104`
--
CREATE TABLE IF NOT EXISTS `cost_polines_baan4_104` (
`pobaan4` varchar(100)
,`PositionNumber` varchar(255)
,`accountbaanV` varchar(255)
,`dim1baaniv` varchar(255)
,`dim2baan4` varchar(255)
,`dim3baan4` varchar(255)
,`dim4baaNVMandatory` varchar(255)
);
-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `BAANVCODE` varchar(100) default NULL,
  `BAANIVCODE` varchar(100) default NULL,
  `Company` varchar(100) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_item_rel_ship206`
--

CREATE TABLE IF NOT EXISTS `eng_item_rel_ship206` (
  `Project` varchar(255) default NULL,
  `MainItem` varchar(255) default NULL,
  `EngItem` varchar(255) default NULL,
  `EngItemRev` varchar(255) character set latin1 collate latin1_general_cs default NULL,
  `EItemCopied` varchar(255) default NULL,
  `EItemCopyDate` varchar(255) default NULL,
  `EBOMCopied` varchar(255) default NULL,
  `EBOMCopyDate` varchar(255) default NULL,
  `Empty` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_item_rel_ship335`
--

CREATE TABLE IF NOT EXISTS `eng_item_rel_ship335` (
  `Project` varchar(255) default NULL,
  `MainItem` varchar(255) default NULL,
  `EngItem` varchar(255) default NULL,
  `EngItemRev` varchar(255) character set latin1 collate latin1_general_cs default NULL,
  `EItemCopied` varchar(255) default NULL,
  `EItemCopyDate` varchar(255) default NULL,
  `EBOMCopied` varchar(255) default NULL,
  `EBOMCopyDate` varchar(255) default NULL,
  `Empty` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_item_revisions206`
--

CREATE TABLE IF NOT EXISTS `eng_item_revisions206` (
  `Item` varchar(255) default NULL,
  `revision` varchar(255) character set latin1 collate latin1_general_cs default NULL,
  `desc` varchar(255) default NULL,
  `order` varchar(255) default NULL,
  `efectivedate` varchar(255) default NULL,
  `expirydate` varchar(255) default NULL,
  `engineer` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `drawing_loc` varchar(255) default NULL,
  `date_from_cad` varchar(255) default NULL,
  `drawing` varchar(255) default NULL,
  `eitem_text` varchar(255) default NULL,
  `empty` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_item_revisions335`
--

CREATE TABLE IF NOT EXISTS `eng_item_revisions335` (
  `Item` varchar(255) default NULL,
  `revision` varchar(255) character set latin1 collate latin1_general_cs default NULL,
  `desc` varchar(255) default NULL,
  `order` varchar(255) default NULL,
  `efectivedate` varchar(255) default NULL,
  `expirydate` varchar(255) default NULL,
  `engineer` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `drawing_loc` varchar(255) default NULL,
  `date_from_cad` varchar(255) default NULL,
  `drawing` varchar(255) default NULL,
  `eitem_text` varchar(255) default NULL,
  `empty` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fifam011335`
--

CREATE TABLE IF NOT EXISTS `fifam011335` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  `DAT5` varchar(255) default NULL,
  `DAT6` varchar(255) default NULL,
  `DAT7` varchar(255) default NULL,
  `DAT8` varchar(255) default NULL,
  `DAT9` varchar(255) default NULL,
  `DAT10` varchar(255) default NULL,
  `DAT11` varchar(255) default NULL,
  `DAT12` varchar(255) default NULL,
  `DAT13` varchar(255) default NULL,
  KEY `fifam011335_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fimrg601104`
--

CREATE TABLE IF NOT EXISTS `fimrg601104` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  `DAT5` varchar(255) default NULL,
  `DAT6` varchar(255) default NULL,
  `DAT7` varchar(255) default NULL,
  `DAT8` varchar(255) default NULL,
  `DAT9` varchar(255) default NULL,
  `DAT10` varchar(255) default NULL,
  `DAT11` varchar(255) default NULL,
  `DAT12` varchar(255) default NULL,
  `DAT13` varchar(255) default NULL,
  `DAT14` varchar(255) default NULL,
  `DAT15` varchar(255) default NULL,
  `DAT16` varchar(255) default NULL,
  `DAT17` varchar(255) default NULL,
  `DAT18` varchar(255) default NULL,
  `DAT19` varchar(255) default NULL,
  `DAT20` varchar(255) default NULL,
  `DAT21` varchar(255) default NULL,
  `DAT22` varchar(255) default NULL,
  `DAT23` varchar(255) default NULL,
  `DAT24` varchar(255) default NULL,
  `DAT25` varchar(255) default NULL,
  `DAT26` varchar(255) default NULL,
  `DAT27` varchar(255) default NULL,
  `DAT28` varchar(255) default NULL,
  `DAT29` varchar(255) default NULL,
  `DAT30` varchar(255) default NULL,
  `DAT31` varchar(255) default NULL,
  `DAT32` varchar(255) default NULL,
  `DAT33` varchar(255) default NULL,
  `DAT34` varchar(255) default NULL,
  `DAT35` varchar(255) default NULL,
  `DAT36` varchar(255) default NULL,
  `DAT37` varchar(255) default NULL,
  `DAT38` varchar(255) default NULL,
  `DAT39` varchar(255) default NULL,
  `DAT40` varchar(255) default NULL,
  `DAT41` varchar(255) default NULL,
  `DAT42` varchar(255) default NULL,
  `DAT43` varchar(255) default NULL,
  `DAT44` varchar(255) default NULL,
  `DAT45` varchar(255) default NULL,
  `DAT46` varchar(255) default NULL,
  `DAT47` varchar(255) default NULL,
  `DAT48` varchar(255) default NULL,
  `DAT49` varchar(255) default NULL,
  `DAT50` varchar(255) default NULL,
  `DAT51` varchar(255) default NULL,
  `DAT52` varchar(255) default NULL,
  `DAT53` varchar(255) default NULL,
  `DAT54` varchar(255) default NULL,
  `DAT55` varchar(255) default NULL,
  `DAT56` varchar(255) default NULL,
  `DAT57` varchar(255) default NULL,
  `DAT58` varchar(255) default NULL,
  `DAT59` varchar(255) default NULL,
  `DAT60` varchar(255) default NULL,
  `DAT61` varchar(255) default NULL,
  `DAT62` varchar(255) default NULL,
  `DAT63` varchar(255) default NULL,
  `DAT64` varchar(255) default NULL,
  `DAT65` varchar(255) default NULL,
  `DAT66` varchar(255) default NULL,
  `DAT67` varchar(255) default NULL,
  `DAT68` varchar(255) default NULL,
  `DAT69` varchar(255) default NULL,
  `DAT70` varchar(255) default NULL,
  `DAT71` varchar(255) default NULL,
  `DAT72` varchar(255) default NULL,
  `DAT73` varchar(255) default NULL,
  `DAT74` varchar(255) default NULL,
  `DAT75` varchar(255) default NULL,
  KEY `fimrg601104_idx1` (`DAT1`),
  KEY `fimrg601104_idx3` (`DAT3`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fimrg601206`
--

CREATE TABLE IF NOT EXISTS `fimrg601206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  `DAT5` varchar(255) default NULL,
  `DAT6` varchar(255) default NULL,
  `DAT7` varchar(255) default NULL,
  `DAT8` varchar(255) default NULL,
  `DAT9` varchar(255) default NULL,
  `DAT10` varchar(255) default NULL,
  `DAT11` varchar(255) default NULL,
  `DAT12` varchar(255) default NULL,
  `DAT13` varchar(255) default NULL,
  `DAT14` varchar(255) default NULL,
  `DAT15` varchar(255) default NULL,
  `DAT16` varchar(255) default NULL,
  `DAT17` varchar(255) default NULL,
  `DAT18` varchar(255) default NULL,
  `DAT19` varchar(255) default NULL,
  `DAT20` varchar(255) default NULL,
  `DAT21` varchar(255) default NULL,
  `DAT22` varchar(255) default NULL,
  `DAT23` varchar(255) default NULL,
  `DAT24` varchar(255) default NULL,
  `DAT25` varchar(255) default NULL,
  `DAT26` varchar(255) default NULL,
  `DAT27` varchar(255) default NULL,
  `DAT28` varchar(255) default NULL,
  `DAT29` varchar(255) default NULL,
  `DAT30` varchar(255) default NULL,
  `DAT31` varchar(255) default NULL,
  `DAT32` varchar(255) default NULL,
  `DAT33` varchar(255) default NULL,
  `DAT34` varchar(255) default NULL,
  `DAT35` varchar(255) default NULL,
  `DAT36` varchar(255) default NULL,
  `DAT37` varchar(255) default NULL,
  `DAT38` varchar(255) default NULL,
  `DAT39` varchar(255) default NULL,
  `DAT40` varchar(255) default NULL,
  `DAT41` varchar(255) default NULL,
  `DAT42` varchar(255) default NULL,
  `DAT43` varchar(255) default NULL,
  `DAT44` varchar(255) default NULL,
  `DAT45` varchar(255) default NULL,
  `DAT46` varchar(255) default NULL,
  `DAT47` varchar(255) default NULL,
  `DAT48` varchar(255) default NULL,
  `DAT49` varchar(255) default NULL,
  `DAT50` varchar(255) default NULL,
  `DAT51` varchar(255) default NULL,
  `DAT52` varchar(255) default NULL,
  `DAT53` varchar(255) default NULL,
  `DAT54` varchar(255) default NULL,
  `DAT55` varchar(255) default NULL,
  `DAT56` varchar(255) default NULL,
  `DAT57` varchar(255) default NULL,
  `DAT58` varchar(255) default NULL,
  `DAT59` varchar(255) default NULL,
  `DAT60` varchar(255) default NULL,
  `DAT61` varchar(255) default NULL,
  `DAT62` varchar(255) default NULL,
  `DAT63` varchar(255) default NULL,
  `DAT64` varchar(255) default NULL,
  `DAT65` varchar(255) default NULL,
  `DAT66` varchar(255) default NULL,
  `DAT67` varchar(255) default NULL,
  `DAT68` varchar(255) default NULL,
  `DAT69` varchar(255) default NULL,
  `DAT70` varchar(255) default NULL,
  `DAT71` varchar(255) default NULL,
  `DAT72` varchar(255) default NULL,
  `DAT73` varchar(255) default NULL,
  `DAT74` varchar(255) default NULL,
  `DAT75` varchar(255) default NULL,
  KEY `fimrg601104_idx1` (`DAT1`),
  KEY `fimrg601104_idx3` (`DAT3`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fimrg700104`
--

CREATE TABLE IF NOT EXISTS `fimrg700104` (
  `table` varchar(255) NOT NULL default '',
  `sequence` varchar(100) default NULL,
  `field` varchar(255) NOT NULL default '',
  `type_of_value` varchar(255) default NULL,
  `kor` varchar(255) NOT NULL default '',
  `valuefrom` varchar(255) default NULL,
  `valueto` varchar(255) default NULL,
  `export` varchar(100) default NULL,
  `empty` varchar(255) default NULL,
  PRIMARY KEY  (`kor`,`table`,`field`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fimrg700206`
--

CREATE TABLE IF NOT EXISTS `fimrg700206` (
  `table` varchar(255) NOT NULL default '',
  `sequence` varchar(100) default NULL,
  `field` varchar(255) NOT NULL default '',
  `type_of_value` varchar(255) default NULL,
  `kor` varchar(255) NOT NULL default '',
  `valuefrom` varchar(255) default NULL,
  `valueto` varchar(255) default NULL,
  `export` varchar(10) default NULL,
  `empty` varchar(255) default NULL,
  PRIMARY KEY  (`kor`,`table`,`field`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fimrg702104`
--

CREATE TABLE IF NOT EXISTS `fimrg702104` (
  `from_table` varchar(100) default NULL,
  `from_val` varchar(100) default NULL,
  `to_val` varchar(100) default NULL,
  `empty` varchar(100) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fimrg702206`
--

CREATE TABLE IF NOT EXISTS `fimrg702206` (
  `from_table` varchar(100) default NULL,
  `from_val` varchar(100) default NULL,
  `to_val` varchar(100) default NULL,
  `empty` varchar(100) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fimrg901104`
--

CREATE TABLE IF NOT EXISTS `fimrg901104` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  `DAT5` varchar(255) default NULL,
  `dat6` varchar(255) default NULL,
  KEY `fimrg901104_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_valuation_104`
--

CREATE TABLE IF NOT EXISTS `inventory_valuation_104` (
  `itembaaniv` varchar(255) default NULL,
  `onhand` varchar(255) default NULL,
  `stdcost` varchar(255) default NULL,
  `total` varchar(255) default NULL,
  KEY `inventory_val_idx1` (`itembaaniv`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isi_item_bp`
--

CREATE TABLE IF NOT EXISTS `isi_item_bp` (
  `item` varchar(255) default NULL,
  `supp` varchar(255) default NULL,
  KEY `isi_item_bp_idx1` (`item`,`supp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isi_item_bp_baan206`
--

CREATE TABLE IF NOT EXISTS `isi_item_bp_baan206` (
  `item` varchar(255) default NULL,
  `supp` varchar(255) default NULL,
  KEY `isi_item_bp_baan_206_idx1` (`item`,`supp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isi_item_bp_baan335`
--

CREATE TABLE IF NOT EXISTS `isi_item_bp_baan335` (
  `item` varchar(255) default NULL,
  `supp` varchar(255) default NULL,
  KEY `isi_item_bp_baan-335_idx1` (`item`,`supp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemGroups`
--

CREATE TABLE IF NOT EXISTS `itemGroups` (
  `ITEM_GROUP` varchar(6) default NULL,
  `DESCRIPTION` varchar(30) default NULL,
  KEY `idx_lookup_itemGroups` (`ITEM_GROUP`,`DESCRIPTION`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_groups_comp_206`
--

CREATE TABLE IF NOT EXISTS `item_groups_comp_206` (
  `item_group_code` varchar(120) NOT NULL default '',
  `Description` varchar(255) default NULL,
  `Currency` varchar(30) default '',
  `Cost_To_Be_Specified` varchar(10) NOT NULL default '',
  `Empty` varchar(10) default NULL,
  KEY `item_groups_comp_206_idx1` (`item_group_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_groups_comp_335`
--

CREATE TABLE IF NOT EXISTS `item_groups_comp_335` (
  `item_group_code` varchar(120) NOT NULL default '',
  `Description` varchar(255) default NULL,
  `Currency` varchar(30) default '',
  `Cost_To_Be_Specified` varchar(10) NOT NULL default '',
  `Empty` varchar(10) default NULL,
  KEY `item_groups_comp_335_idx1` (`item_group_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemgeneraldata206`
--

CREATE TABLE IF NOT EXISTS `itemgeneraldata206` (
  `Item` varchar(255) default NULL,
  `Description` varchar(255) default NULL,
  `Itemtype` varchar(255) default NULL,
  `ItemGroup` varchar(255) default NULL,
  `ItemTypeSpecification` varchar(255) default NULL,
  `UnitSet` varchar(255) default NULL,
  `InventoryUnit` varchar(255) default NULL,
  `Weightunit` varchar(255) default NULL,
  `Weight` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `LotControl` varchar(255) default NULL,
  `SearchKeyI` varchar(255) default NULL,
  `SearchKeyII` varchar(255) default NULL,
  `Material` varchar(255) default NULL,
  `Standard` varchar(255) default NULL,
  `Size` varchar(255) default NULL,
  `ProductType` varchar(255) default NULL,
  `SelectionCode` varchar(255) default NULL,
  `CountryofOrigin` varchar(255) default NULL,
  `ProductClass` varchar(255) default NULL,
  `ProductLine` varchar(255) default NULL,
  `Manufacturer` varchar(255) default NULL,
  `CommodityCode` varchar(255) default NULL,
  `SignalCode` varchar(255) default NULL,
  `EANCode` varchar(255) default NULL,
  `CostCompProjSer` varchar(255) default NULL,
  `Revisioncontrolled` varchar(255) default NULL,
  `UpdateMethodEItemRelation` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemgeneraldata335`
--

CREATE TABLE IF NOT EXISTS `itemgeneraldata335` (
  `Item` varchar(255) default NULL,
  `Description` varchar(255) default NULL,
  `Itemtype` varchar(255) default NULL,
  `ItemGroup` varchar(255) default NULL,
  `ItemTypeSpecification` varchar(255) default NULL,
  `UnitSet` varchar(255) default NULL,
  `InventoryUnit` varchar(255) default NULL,
  `Weightunit` varchar(255) default NULL,
  `Weight` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `LotControl` varchar(255) default NULL,
  `SearchKeyI` varchar(255) default NULL,
  `SearchKeyII` varchar(255) default NULL,
  `Material` varchar(255) default NULL,
  `Standard` varchar(255) default NULL,
  `Size` varchar(255) default NULL,
  `ProductType` varchar(255) default NULL,
  `SelectionCode` varchar(255) default NULL,
  `CountryofOrigin` varchar(255) default NULL,
  `ProductClass` varchar(255) default NULL,
  `ProductLine` varchar(255) default NULL,
  `Manufacturer` varchar(255) default NULL,
  `CommodityCode` varchar(255) default NULL,
  `SignalCode` varchar(255) default NULL,
  `EANCode` varchar(255) default NULL,
  `CostCompProjSer` varchar(255) default NULL,
  `Revisioncontrolled` varchar(255) default NULL,
  `UpdateMethodEItemRelation` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemorderingdata206`
--

CREATE TABLE IF NOT EXISTS `itemorderingdata206` (
  `Item` varchar(255) default NULL,
  `OrderPolicy` varchar(255) default NULL,
  `OrderSystem` varchar(255) default NULL,
  `OrderMethod` varchar(255) default NULL,
  `JITItem` varchar(255) default NULL,
  `PlannedbySCSPlanner` varchar(255) default NULL,
  `ShippingSchedules` varchar(255) default NULL,
  `SequencedshippingSchedules` varchar(255) default NULL,
  `OrderQuantityMultipleof` varchar(255) default NULL,
  `MinimumOrderQuantity` varchar(255) default NULL,
  `MaximumOrderQuantity` varchar(255) default NULL,
  `FixedOrderQuantity` varchar(255) default NULL,
  `EconomicOrderQuantity` varchar(255) default NULL,
  `ReOrderPoint` varchar(255) default NULL,
  `MaximumInventory` varchar(255) default NULL,
  `ServiceLevel` varchar(255) default NULL,
  `SafetyStock` varchar(255) default NULL,
  `OrderInterval` varchar(255) default NULL,
  `SafetyTime` varchar(255) default NULL,
  `FirstAllowedOrderDate` varchar(255) default NULL,
  `OrderCosts` varchar(255) default NULL,
  `Planner` varchar(255) default NULL,
  `SeasonPatternforSafetyStock` varchar(255) default NULL,
  `SeasonPatternforDemand` varchar(255) default NULL,
  `numberofPeriods` varchar(255) default NULL,
  `Periodtype` varchar(255) default NULL,
  `UpdateInventoryOrderData` varchar(255) default NULL,
  `OrderQuantityProject` varchar(255) default NULL,
  `UpdateOrderQuantityProject` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemorderingdata335`
--

CREATE TABLE IF NOT EXISTS `itemorderingdata335` (
  `Item` varchar(255) default NULL,
  `OrderPolicy` varchar(255) default NULL,
  `OrderSystem` varchar(255) default NULL,
  `OrderMethod` varchar(255) default NULL,
  `JITItem` varchar(255) default NULL,
  `PlannedbySCSPlanner` varchar(255) default NULL,
  `ShippingSchedules` varchar(255) default NULL,
  `SequencedshippingSchedules` varchar(255) default NULL,
  `OrderQuantityMultipleof` varchar(255) default NULL,
  `MinimumOrderQuantity` varchar(255) default NULL,
  `MaximumOrderQuantity` varchar(255) default NULL,
  `FixedOrderQuantity` varchar(255) default NULL,
  `EconomicOrderQuantity` varchar(255) default NULL,
  `ReOrderPoint` varchar(255) default NULL,
  `MaximumInventory` varchar(255) default NULL,
  `ServiceLevel` varchar(255) default NULL,
  `SafetyStock` varchar(255) default NULL,
  `OrderInterval` varchar(255) default NULL,
  `SafetyTime` varchar(255) default NULL,
  `FirstAllowedOrderDate` varchar(255) default NULL,
  `OrderCosts` varchar(255) default NULL,
  `Planner` varchar(255) default NULL,
  `SeasonPatternforSafetyStock` varchar(255) default NULL,
  `SeasonPatternforDemand` varchar(255) default NULL,
  `numberofPeriods` varchar(255) default NULL,
  `Periodtype` varchar(255) default NULL,
  `UpdateInventoryOrderData` varchar(255) default NULL,
  `OrderQuantityProject` varchar(255) default NULL,
  `UpdateOrderQuantityProject` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemplanningdata206`
--

CREATE TABLE IF NOT EXISTS `itemplanningdata206` (
  `PlanLevel` varchar(255) default NULL,
  `PlanItem` varchar(255) default NULL,
  `PlanItemType` varchar(255) default NULL,
  `Planner` varchar(255) default NULL,
  `DefaultWarehouse` varchar(255) default NULL,
  `DefaultSupplySource` varchar(255) default NULL,
  `DefaultEnterpriseUnitforPlanning` varchar(255) default NULL,
  `MaintainMasterPlan` varchar(255) default NULL,
  `DependentDemandForecast` varchar(255) default NULL,
  `CentralMultisitePlanning` varchar(255) default NULL,
  `TimeFence` varchar(255) default NULL,
  `ForecastTimeFence` varchar(255) default NULL,
  `OrderHorizon` varchar(255) default NULL,
  `PlanningHorizon` varchar(255) default NULL,
  `ExtraLeadTime` varchar(255) default NULL,
  `FixedLeadTimeHorizon` varchar(255) default NULL,
  `Constraint1` varchar(255) default NULL,
  `AutomaticUpdateofProductionPlan` varchar(255) default NULL,
  `AutomaticUpdateofPurchasePlan` varchar(255) default NULL,
  `AutomaticupdateofInventoryPlan` varchar(255) default NULL,
  `AutomaticUpdateofDemandForecast` varchar(255) default NULL,
  `ForecastBasedGenerationMethod` varchar(255) default NULL,
  `ForecastHorizon` varchar(255) default NULL,
  `MasterPlanUnit` varchar(255) default NULL,
  `Priority` varchar(255) default NULL,
  `CriticalinCTP` varchar(255) default NULL,
  `ComponentCTP` varchar(255) default NULL,
  `CapacityCTP` varchar(255) default NULL,
  `OnlineCTPUpdate` varchar(255) default NULL,
  `ChannelCTP` varchar(255) default NULL,
  `CycleCTP` varchar(255) default NULL,
  `CTPTimeFence` varchar(255) default NULL,
  `FamilyCTP` varchar(255) default NULL,
  `FamilySite` varchar(255) default NULL,
  `FamilyItem` varchar(255) default NULL,
  `FamilyCTPHorizon` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemplanningdata335`
--

CREATE TABLE IF NOT EXISTS `itemplanningdata335` (
  `PlanLevel` varchar(255) default NULL,
  `PlanItem` varchar(255) default NULL,
  `PlanItemType` varchar(255) default NULL,
  `Planner` varchar(255) default NULL,
  `DefaultWarehouse` varchar(255) default NULL,
  `DefaultSupplySource` varchar(255) default NULL,
  `DefaultEnterpriseUnitforPlanning` varchar(255) default NULL,
  `MaintainMasterPlan` varchar(255) default NULL,
  `DependentDemandForecast` varchar(255) default NULL,
  `CentralMultisitePlanning` varchar(255) default NULL,
  `TimeFence` varchar(255) default NULL,
  `ForecastTimeFence` varchar(255) default NULL,
  `OrderHorizon` varchar(255) default NULL,
  `PlanningHorizon` varchar(255) default NULL,
  `ExtraLeadTime` varchar(255) default NULL,
  `FixedLeadTimeHorizon` varchar(255) default NULL,
  `Constraint1` varchar(255) default NULL,
  `AutomaticUpdateofProductionPlan` varchar(255) default NULL,
  `AutomaticUpdateofPurchasePlan` varchar(255) default NULL,
  `AutomaticupdateofInventoryPlan` varchar(255) default NULL,
  `AutomaticUpdateofDemandForecast` varchar(255) default NULL,
  `ForecastBasedGenerationMethod` varchar(255) default NULL,
  `ForecastHorizon` varchar(255) default NULL,
  `MasterPlanUnit` varchar(255) default NULL,
  `Priority` varchar(255) default NULL,
  `CriticalinCTP` varchar(255) default NULL,
  `ComponentCTP` varchar(255) default NULL,
  `CapacityCTP` varchar(255) default NULL,
  `OnlineCTPUpdate` varchar(255) default NULL,
  `ChannelCTP` varchar(255) default NULL,
  `CycleCTP` varchar(255) default NULL,
  `CTPTimeFence` varchar(255) default NULL,
  `FamilyCTP` varchar(255) default NULL,
  `FamilySite` varchar(255) default NULL,
  `FamilyItem` varchar(255) default NULL,
  `FamilyCTPHorizon` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemproductiondata335`
--

CREATE TABLE IF NOT EXISTS `itemproductiondata335` (
  `Item` varchar(255) default NULL,
  `SearchKey` varchar(255) default NULL,
  `BOMUnit` varchar(255) default NULL,
  `ScrapFactor` varchar(255) default NULL,
  `ScrapQuantity` varchar(255) default NULL,
  `Phantom` varchar(255) default NULL,
  `UsePhantomInventory` varchar(255) default NULL,
  `OrderLeadTime` varchar(255) default NULL,
  `RoutingUnit` varchar(255) default NULL,
  `OrderQtyDependentRouting` varchar(255) default NULL,
  `BackflushMaterials` varchar(255) default NULL,
  `QuantitybyPullNote` varchar(255) default NULL,
  `BackflushifMaterial` varchar(255) default NULL,
  `NumberofPullNotes` varchar(255) default NULL,
  `BackflushHours` varchar(255) default NULL,
  `CriticalforOrderAcceptance` varchar(255) default NULL,
  `CriticalIteminMasterPlanning` varchar(255) default NULL,
  `DirectProcessOutbound` varchar(255) default NULL,
  `RPTItem` varchar(255) default NULL,
  `ScheduleCode` varchar(255) default NULL,
  `RatePercentageforPlanning` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itempurchasingdata206`
--

CREATE TABLE IF NOT EXISTS `itempurchasingdata206` (
  `Item` varchar(255) default NULL,
  `SearchKey1` varchar(255) default NULL,
  `BuyfromBp` varchar(255) default NULL,
  `Buyer` varchar(255) default NULL,
  `VendorRating` varchar(255) default NULL,
  `PurchaseUnit` varchar(255) default NULL,
  `PurchasePriceUnit` varchar(255) default NULL,
  `PurchaseCurrency` varchar(255) default NULL,
  `PurchasePrice` varchar(255) default NULL,
  `PurchasePriceInHomeCurrency` varchar(255) default NULL,
  `Taxcode` varchar(255) default NULL,
  `PurchasePriceGroup` varchar(255) default NULL,
  `PurchaseStatisticsGroup` varchar(255) default NULL,
  `PurchaseOffice` varchar(255) default NULL,
  `DeliveryDateTolerance` varchar(255) default NULL,
  `DeliveryDateTolerance1` varchar(255) default NULL,
  `QuantityTolerance` varchar(255) default NULL,
  `QuantityTolerance1` varchar(255) default NULL,
  `AccessoriesAllowed` varchar(255) default NULL,
  `Inspection` varchar(255) default NULL,
  `Supplytime` varchar(255) default NULL,
  `UnitForSupplytime` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `ReleaseCostServiceItemstoWarehouse` varchar(255) default NULL,
  `NoofDaysFwdReading` varchar(255) default NULL,
  `NoofDaysBkwdReading` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itempurchasingdata335`
--

CREATE TABLE IF NOT EXISTS `itempurchasingdata335` (
  `Item` varchar(255) default NULL,
  `SearchKey1` varchar(255) default NULL,
  `BuyfromBp` varchar(255) default NULL,
  `Buyer` varchar(255) default NULL,
  `VendorRating` varchar(255) default NULL,
  `PurchaseUnit` varchar(255) default NULL,
  `PurchasePriceUnit` varchar(255) default NULL,
  `PurchaseCurrency` varchar(255) default NULL,
  `PurchasePrice` varchar(255) default NULL,
  `PurchasePriceInHomeCurrency` varchar(255) default NULL,
  `Taxcode` varchar(255) default NULL,
  `PurchasePriceGroup` varchar(255) default NULL,
  `PurchaseStatisticsGroup` varchar(255) default NULL,
  `PurchaseOffice` varchar(255) default NULL,
  `DeliveryDateTolerance` varchar(255) default NULL,
  `DeliveryDateTolerance1` varchar(255) default NULL,
  `QuantityTolerance` varchar(255) default NULL,
  `QuantityTolerance1` varchar(255) default NULL,
  `AccessoriesAllowed` varchar(255) default NULL,
  `Inspection` varchar(255) default NULL,
  `Supplytime` varchar(255) default NULL,
  `UnitForSupplytime` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `ReleaseCostServiceItemstoWarehouse` varchar(255) default NULL,
  `NoofDaysFwdReading` varchar(255) default NULL,
  `NoofDaysBkwdReading` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items_xref_comp_206`
--

CREATE TABLE IF NOT EXISTS `items_xref_comp_206` (
  `item` varchar(255) default NULL,
  `itemgroup` varchar(255) default NULL,
  `baanvitem` varchar(255) default NULL,
  `eitem` varchar(255) default NULL,
  `baanveitem` varchar(255) default NULL,
  `revision` varchar(255) default NULL,
  `baanvrevision` varchar(255) default NULL,
  `commcode` varchar(255) default NULL,
  `dummy` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemsalesdata206`
--

CREATE TABLE IF NOT EXISTS `itemsalesdata206` (
  `Item` varchar(255) default NULL,
  `SearchKey1` varchar(255) default NULL,
  `SalesUnit` varchar(255) default NULL,
  `MinimumQuantitytoCommit` varchar(255) default NULL,
  `MinimumRateforCommitment` varchar(255) default NULL,
  `MinimumOrderQuantity` varchar(255) default NULL,
  `DirectDeliveryfromQuantity` varchar(255) default NULL,
  `CommitmentPolicy` varchar(255) default NULL,
  `ReleasetoWarehouse` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `ReturnComponents` varchar(255) default NULL,
  `SalesPriceUnit` varchar(255) default NULL,
  `SalesPrice` varchar(255) default NULL,
  `SalesPriceGroup` varchar(255) default NULL,
  `SalesStatisticsGroup` varchar(255) default NULL,
  `SuggestedRetailPrice` varchar(255) default NULL,
  `UpperMargin` varchar(255) default NULL,
  `LowerMargin` varchar(255) default NULL,
  `CommissionGroup` varchar(255) default NULL,
  `SalesRebateGroup` varchar(255) default NULL,
  `TaxCode` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemsalesdata335`
--

CREATE TABLE IF NOT EXISTS `itemsalesdata335` (
  `Item` varchar(255) default NULL,
  `SearchKey1` varchar(255) default NULL,
  `SalesUnit` varchar(255) default NULL,
  `MinimumQuantitytoCommit` varchar(255) default NULL,
  `MinimumRateforCommitment` varchar(255) default NULL,
  `MinimumOrderQuantity` varchar(255) default NULL,
  `DirectDeliveryfromQuantity` varchar(255) default NULL,
  `CommitmentPolicy` varchar(255) default NULL,
  `ReleasetoWarehouse` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `ReturnComponents` varchar(255) default NULL,
  `SalesPriceUnit` varchar(255) default NULL,
  `SalesPrice` varchar(255) default NULL,
  `SalesPriceGroup` varchar(255) default NULL,
  `SalesStatisticsGroup` varchar(255) default NULL,
  `SuggestedRetailPrice` varchar(255) default NULL,
  `UpperMargin` varchar(255) default NULL,
  `LowerMargin` varchar(255) default NULL,
  `CommissionGroup` varchar(255) default NULL,
  `SalesRebateGroup` varchar(255) default NULL,
  `TaxCode` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemsupinfo206`
--

CREATE TABLE IF NOT EXISTS `itemsupinfo206` (
  `Item` varchar(255) default NULL,
  `ItemGroup` varchar(255) default NULL,
  `BuyfromBP` varchar(255) default NULL,
  `ShipfromBP` varchar(255) default NULL,
  `Effectivedate` varchar(255) default NULL,
  `Expirationdate` varchar(255) default NULL,
  `Preferred` varchar(255) default NULL,
  `ForwardingAgent` varchar(255) default NULL,
  `SelfBilledInv` varchar(255) default NULL,
  `Approved` varchar(255) default NULL,
  `Blocked` varchar(255) default NULL,
  `BlockingReason` varchar(255) default NULL,
  `Priority` varchar(255) default NULL,
  `SourcingPercentage` varchar(255) default NULL,
  `DeliveryDateTolerance` varchar(255) default NULL,
  `DeliveryDateTolerance1` varchar(255) default NULL,
  `QuantityTolerance` varchar(255) default NULL,
  `QuantityTolerance1` varchar(255) default NULL,
  `PurchaseOffice` varchar(255) default NULL,
  `Inspection` varchar(255) default NULL,
  `Consigned` varchar(255) default NULL,
  `OrderQuantityMultipleof` varchar(255) default NULL,
  `MinimumOrderQuantity` varchar(255) default NULL,
  `MaximumOrderQuantity` varchar(255) default NULL,
  `Fixedorderquantity` varchar(255) default NULL,
  `EconomicOrderQuantity` varchar(255) default NULL,
  `InternalProcessingTime` varchar(255) default NULL,
  `UnitforInternalProcessingTime` varchar(255) default NULL,
  `SafetyTime` varchar(255) default NULL,
  `UnitforSafetyTime` varchar(255) default NULL,
  `SupplyTime` varchar(255) default NULL,
  `UnitforSupply` varchar(255) default NULL,
  `LeadTimeHorizon` varchar(255) default NULL,
  `ScheduleOrdertype` varchar(255) default NULL,
  `PeriodTableCode` varchar(255) default NULL,
  `PatternCode` varchar(255) default NULL,
  `SegmentSet` varchar(255) default NULL,
  `FreezeTimeIncreaseRemaining` varchar(255) default NULL,
  `FreezingTimeReduceRemaining` varchar(255) default NULL,
  `MaterialReleaseType` varchar(255) default NULL,
  `ScheduleReleseDetail` varchar(255) default NULL,
  `ReleaseEdiMessagesDirectly` varchar(255) default NULL,
  `Cumulatives` varchar(255) default NULL,
  `Authorizations` varchar(255) default NULL,
  `ShipmentorDeliveryBased` varchar(255) default NULL,
  `SupplierCapacity` varchar(255) default NULL,
  `MinimumCapacityTolerance` varchar(255) default NULL,
  `MaximumCapacitytolerance` varchar(255) default NULL,
  `CapacitytimeUnit` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemsupinfo335`
--

CREATE TABLE IF NOT EXISTS `itemsupinfo335` (
  `Item` varchar(255) default NULL,
  `ItemGroup` varchar(255) default NULL,
  `BuyfromBP` varchar(255) default NULL,
  `ShipfromBP` varchar(255) default NULL,
  `Effectivedate` varchar(255) default NULL,
  `Expirationdate` varchar(255) default NULL,
  `Preferred` varchar(255) default NULL,
  `ForwardingAgent` varchar(255) default NULL,
  `SelfBilledInv` varchar(255) default NULL,
  `Approved` varchar(255) default NULL,
  `Blocked` varchar(255) default NULL,
  `BlockingReason` varchar(255) default NULL,
  `Priority` varchar(255) default NULL,
  `SourcingPercentage` varchar(255) default NULL,
  `DeliveryDateTolerance` varchar(255) default NULL,
  `DeliveryDateTolerance1` varchar(255) default NULL,
  `QuantityTolerance` varchar(255) default NULL,
  `QuantityTolerance1` varchar(255) default NULL,
  `PurchaseOffice` varchar(255) default NULL,
  `Inspection` varchar(255) default NULL,
  `Consigned` varchar(255) default NULL,
  `OrderQuantityMultipleof` varchar(255) default NULL,
  `MinimumOrderQuantity` varchar(255) default NULL,
  `MaximumOrderQuantity` varchar(255) default NULL,
  `Fixedorderquantity` varchar(255) default NULL,
  `EconomicOrderQuantity` varchar(255) default NULL,
  `InternalProcessingTime` varchar(255) default NULL,
  `UnitforInternalProcessingTime` varchar(255) default NULL,
  `SafetyTime` varchar(255) default NULL,
  `UnitforSafetyTime` varchar(255) default NULL,
  `SupplyTime` varchar(255) default NULL,
  `UnitforSupply` varchar(255) default NULL,
  `LeadTimeHorizon` varchar(255) default NULL,
  `ScheduleOrdertype` varchar(255) default NULL,
  `PeriodTableCode` varchar(255) default NULL,
  `PatternCode` varchar(255) default NULL,
  `SegmentSet` varchar(255) default NULL,
  `FreezeTimeIncreaseRemaining` varchar(255) default NULL,
  `FreezingTimeReduceRemaining` varchar(255) default NULL,
  `MaterialReleaseType` varchar(255) default NULL,
  `ScheduleReleseDetail` varchar(255) default NULL,
  `ReleaseEdiMessagesDirectly` varchar(255) default NULL,
  `Cumulatives` varchar(255) default NULL,
  `Authorizations` varchar(255) default NULL,
  `ShipmentorDeliveryBased` varchar(255) default NULL,
  `SupplierCapacity` varchar(255) default NULL,
  `MinimumCapacityTolerance` varchar(255) default NULL,
  `MaximumCapacitytolerance` varchar(255) default NULL,
  `CapacitytimeUnit` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `itemsxref206`
--
CREATE TABLE IF NOT EXISTS `itemsxref206` (
`BaaNIVItem` varchar(255)
,`BaaNVItem` varchar(255)
);
-- --------------------------------------------------------

--
-- Table structure for table `mro_po_detail_baan5206`
--

CREATE TABLE IF NOT EXISTS `mro_po_detail_baan5206` (
  `T$ORNO` varchar(255) NOT NULL default '',
  `T$PONO` varchar(255) NOT NULL default '',
  `T$PACN` varchar(255) default NULL,
  `T$DIM1` varchar(255) default NULL,
  `T$DIM2` varchar(255) default NULL,
  `T$DIM3` varchar(255) default NULL,
  `T$DIM4` varchar(255) default NULL,
  PRIMARY KEY  (`T$ORNO`,`T$PONO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mro_po_detail_baan5335`
--

CREATE TABLE IF NOT EXISTS `mro_po_detail_baan5335` (
  `T$ORNO` varchar(255) NOT NULL default '',
  `T$PONO` varchar(255) NOT NULL default '',
  `T$PACN` varchar(255) default NULL,
  `T$DIM1` varchar(255) default NULL,
  `T$DIM2` varchar(255) default NULL,
  `T$DIM3` varchar(255) default NULL,
  `T$DIM4` varchar(255) default NULL,
  PRIMARY KEY  (`T$ORNO`,`T$PONO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `podetail206`
--

CREATE TABLE IF NOT EXISTS `podetail206` (
  `PurchaseOrder` varchar(255) default NULL,
  `PositionNumber` varchar(255) default NULL,
  `CodeItemType` varchar(255) default NULL,
  `Item` varchar(255) default NULL,
  `Project` varchar(255) default NULL,
  `EngineeringItem` varchar(255) default NULL,
  `PurchaseUnit` varchar(255) default NULL,
  `OrderedQuantity` varchar(255) default NULL,
  `Price` varchar(255) default NULL,
  `Orderamount` varchar(255) default NULL,
  `StandardDescription` varchar(255) default NULL,
  `LineDiscount` varchar(255) default NULL,
  `DiscountAmount` varchar(255) default NULL,
  `DiscountCode` varchar(255) default NULL,
  `Determining` varchar(255) default NULL,
  `OrderDate` varchar(255) default NULL,
  `Eligible` varchar(255) default NULL,
  `OrderConfirmationDate` varchar(255) default NULL,
  `VendorRating` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `WarehouseAddress` varchar(255) default NULL,
  `ShipfromBP` varchar(255) default NULL,
  `ShipfromAddress` varchar(255) default NULL,
  `ShipfromContact` varchar(255) default NULL,
  `PlannedDeliveryDate` varchar(255) default NULL,
  `ForwardingAgent` varchar(255) default NULL,
  `TaxCode` varchar(255) default NULL,
  `LotSelection` varchar(255) default NULL,
  `Lot` varchar(255) default NULL,
  `InventoryPostingStatus` varchar(255) default NULL,
  `ReleaseDate` varchar(255) default NULL,
  `ConfirmedDeliveryDate` varchar(255) default NULL,
  `ChangedDeliveryDate` varchar(255) default NULL,
  `Inspection` varchar(255) default NULL,
  `Activity` varchar(255) default NULL,
  `Element` varchar(255) default NULL,
  `Extension` varchar(255) default NULL,
  `CostComponent` varchar(255) default NULL,
  `PurchaseLedgerAccountNumber` varchar(255) default NULL,
  `Dimension1` varchar(255) default NULL,
  `Dimension2` varchar(255) default NULL,
  `Dimension3` varchar(255) default NULL,
  `Dimension4` varchar(255) default NULL,
  `Dimension5` varchar(255) default NULL,
  `PurchaseAcknowledgementCode` varchar(255) default NULL,
  `ChangeOrderSequence` varchar(255) default NULL,
  `ChangeReason` varchar(255) default NULL,
  `ChangeType` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `podetail335`
--

CREATE TABLE IF NOT EXISTS `podetail335` (
  `PurchaseOrder` varchar(255) default NULL,
  `PositionNumber` varchar(255) default NULL,
  `CodeItemType` varchar(255) default NULL,
  `Item` varchar(255) default NULL,
  `Project` varchar(255) default NULL,
  `EngineeringItem` varchar(255) default NULL,
  `PurchaseUnit` varchar(255) default NULL,
  `OrderedQuantity` varchar(255) default NULL,
  `Price` varchar(255) default NULL,
  `Orderamount` varchar(255) default NULL,
  `StandardDescription` varchar(255) default NULL,
  `LineDiscount` varchar(255) default NULL,
  `DiscountAmount` varchar(255) default NULL,
  `DiscountCode` varchar(255) default NULL,
  `Determining` varchar(255) default NULL,
  `OrderDate` varchar(255) default NULL,
  `Eligible` varchar(255) default NULL,
  `OrderConfirmationDate` varchar(255) default NULL,
  `VendorRating` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `WarehouseAddress` varchar(255) default NULL,
  `ShipfromBP` varchar(255) default NULL,
  `ShipfromAddress` varchar(255) default NULL,
  `ShipfromContact` varchar(255) default NULL,
  `PlannedDeliveryDate` varchar(255) default NULL,
  `ForwardingAgent` varchar(255) default NULL,
  `TaxCode` varchar(255) default NULL,
  `LotSelection` varchar(255) default NULL,
  `Lot` varchar(255) default NULL,
  `InventoryPostingStatus` varchar(255) default NULL,
  `ReleaseDate` varchar(255) default NULL,
  `ConfirmedDeliveryDate` varchar(255) default NULL,
  `ChangedDeliveryDate` varchar(255) default NULL,
  `Inspection` varchar(255) default NULL,
  `Activity` varchar(255) default NULL,
  `Element` varchar(255) default NULL,
  `Extension` varchar(255) default NULL,
  `CostComponent` varchar(255) default NULL,
  `PurchaseLedgerAccountNumber` varchar(255) default NULL,
  `Dimension1` varchar(255) default NULL,
  `Dimension2` varchar(255) default NULL,
  `Dimension3` varchar(255) default NULL,
  `Dimension4` varchar(255) default NULL,
  `Dimension5` varchar(255) default NULL,
  `PurchaseAcknowledgementCode` varchar(255) default NULL,
  `ChangeOrderSequence` varchar(255) default NULL,
  `ChangeReason` varchar(255) default NULL,
  `ChangeType` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `polines_gldata_with_pobaan5_104`
--
CREATE TABLE IF NOT EXISTS `polines_gldata_with_pobaan5_104` (
`to` varchar(100)
,`PositionNumber` varchar(255)
,`accountbaanV` varchar(255)
,`dim1baaniv` varchar(255)
,`dim2baan4` varchar(255)
,`dim3baan4` varchar(255)
,`dim4baaNVMandatory` varchar(255)
);
-- --------------------------------------------------------

--
-- Table structure for table `polines_with_gldata_104`
--

CREATE TABLE IF NOT EXISTS `polines_with_gldata_104` (
  `PurchaseOrder` varchar(255) default NULL,
  `PositionNumber` varchar(255) default NULL,
  `accountbaanV` varchar(255) default NULL,
  `dim1baaniv` varchar(255) default NULL,
  `dim2baan4` varchar(255) default NULL,
  `dim3baan4` varchar(255) default NULL,
  `dim4baaNVMandatory` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pricebookssls206`
--

CREATE TABLE IF NOT EXISTS `pricebookssls206` (
  `PriceBookCode` varchar(255) default NULL,
  `baanivitem` varchar(255) default NULL,
  `Currency` varchar(255) default NULL,
  `PriceBreak` varchar(255) default NULL,
  `QTYUM` varchar(255) default NULL,
  `EFDT` varchar(255) default NULL,
  `EXDT` varchar(255) default NULL,
  `PRIC` varchar(255) default NULL,
  `PriceUM` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pricebookssls335`
--

CREATE TABLE IF NOT EXISTS `pricebookssls335` (
  `PriceBookCode` varchar(255) default NULL,
  `baanivitem` varchar(255) default NULL,
  `Currency` varchar(255) default NULL,
  `PriceBreak` varchar(255) default NULL,
  `QTYUM` varchar(255) default NULL,
  `EFDT` varchar(255) default NULL,
  `EXDT` varchar(255) default NULL,
  `PRIC` varchar(255) default NULL,
  `PriceUM` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `routing_operations206`
--

CREATE TABLE IF NOT EXISTS `routing_operations206` (
  `Manufactured_Item` varchar(100) default NULL,
  `Routing` varchar(100) default NULL,
  `Operation` varchar(100) default NULL,
  `Seq_Number` varchar(100) default NULL,
  `Task` varchar(100) default NULL,
  `Work_Center` varchar(100) default NULL,
  `Machine` varchar(100) default NULL,
  `Effective_Date` varchar(20) default NULL,
  `Expiry_Date` varchar(20) default NULL,
  `Average_Setup_Time` varchar(100) default NULL,
  `Fixed_Setup_Time` varchar(100) default NULL,
  `Production_Rate_Per` varchar(100) default NULL,
  `Cycle_Time` varchar(100) default NULL,
  `Fixed_Duration` varchar(100) default NULL,
  `Man_Occupation_for_Production` varchar(100) default NULL,
  `Machine_Occupation` varchar(100) default NULL,
  `Transfer_Lot_100_perc` varchar(100) default NULL,
  `Transfer_Lot_Quantity` varchar(100) default NULL,
  `Yield_Type` varchar(100) default NULL,
  `Yield_Percentage` varchar(100) default NULL,
  `Extra_Information` varchar(100) default NULL,
  `Subcontracting_Rate_Factor` varchar(100) default NULL,
  `Backflushing` varchar(100) default NULL,
  `Count_Point` varchar(100) default NULL,
  `Quantity_by_Pull_Note` varchar(100) default NULL,
  `Number_of_Pull_Notes` varchar(100) default NULL,
  `Description_on_Pull_Note` varchar(100) default NULL,
  KEY `routing_operations_idx1` (`Manufactured_Item`,`Routing`,`Operation`,`Seq_Number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `routing_operations335`
--

CREATE TABLE IF NOT EXISTS `routing_operations335` (
  `Manufactured_Item` varchar(100) default NULL,
  `Routing` varchar(100) default NULL,
  `Operation` varchar(100) default NULL,
  `Seq_Number` varchar(100) default NULL,
  `Task` varchar(100) default NULL,
  `Work_Center` varchar(100) default NULL,
  `Machine` varchar(100) default NULL,
  `Effective_Date` varchar(20) default NULL,
  `Expiry_Date` varchar(20) default NULL,
  `Average_Setup_Time` varchar(100) default NULL,
  `Fixed_Setup_Time` varchar(100) default NULL,
  `Production_Rate_Per` varchar(100) default NULL,
  `Cycle_Time` varchar(100) default NULL,
  `Fixed_Duration` varchar(100) default NULL,
  `Man_Occupation_for_Production` varchar(100) default NULL,
  `Machine_Occupation` varchar(100) default NULL,
  `Transfer_Lot_100_perc` varchar(100) default NULL,
  `Transfer_Lot_Quantity` varchar(100) default NULL,
  `Yield_Type` varchar(100) default NULL,
  `Yield_Percentage` varchar(100) default NULL,
  `Extra_Information` varchar(100) default NULL,
  `Subcontracting_Rate_Factor` varchar(100) default NULL,
  `Backflushing` varchar(100) default NULL,
  `Count_Point` varchar(100) default NULL,
  `Quantity_by_Pull_Note` varchar(100) default NULL,
  `Number_of_Pull_Notes` varchar(100) default NULL,
  `Description_on_Pull_Note` varchar(100) default NULL,
  KEY `routing_operations_idx1` (`Manufactured_Item`,`Routing`,`Operation`,`Seq_Number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `routingcodebyitem206`
--

CREATE TABLE IF NOT EXISTS `routingcodebyitem206` (
  `ManufacturedItem` varchar(255) default NULL,
  `Routing` varchar(255) default NULL,
  `Description` varchar(255) default NULL,
  `StandardRoutingYesNo` varchar(255) default NULL,
  `StandardRouting` varchar(255) default NULL,
  `RoutingUnit` varchar(255) default NULL,
  `UptoOrderQuantity` varchar(255) default NULL,
  `SchedulingArea` varchar(255) default NULL,
  `CorrectedBottleneckWork` varchar(255) default NULL,
  `CorrectedProdRate` varchar(255) default NULL,
  `WeekBucketPlanning` varchar(255) default NULL,
  `AutomaticUpdate` varchar(255) default NULL,
  KEY `routing_idx1` (`StandardRouting`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `routingcodebyitem335`
--

CREATE TABLE IF NOT EXISTS `routingcodebyitem335` (
  `ManufacturedItem` varchar(255) default NULL,
  `Routing` varchar(255) default NULL,
  `Description` varchar(255) default NULL,
  `StandardRoutingYesNo` varchar(255) default NULL,
  `StandardRouting` varchar(255) default NULL,
  `RoutingUnit` varchar(255) default NULL,
  `UptoOrderQuantity` varchar(255) default NULL,
  `SchedulingArea` varchar(255) default NULL,
  `CorrectedBottleneckWork` varchar(255) default NULL,
  `CorrectedProdRate` varchar(255) default NULL,
  `WeekBucketPlanning` varchar(255) default NULL,
  `AutomaticUpdate` varchar(255) default NULL,
  KEY `routing_idx1` (`StandardRouting`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_orders_206`
--

CREATE TABLE IF NOT EXISTS `sales_orders_206` (
  `BPCode` varchar(255) default NULL,
  `ShiptoBP` varchar(255) default NULL,
  `PartNo` varchar(255) default NULL,
  `Quantity` varchar(255) default NULL,
  `UM` varchar(255) default NULL,
  `HeaderWhs` varchar(255) default NULL,
  `Price` varchar(255) default NULL,
  `PosWhs` varchar(255) default NULL,
  `CustOrdNo` varchar(255) default NULL,
  `OrdNoPos` varchar(255) default NULL,
  `RefA` varchar(255) default NULL,
  `RefB` varchar(255) default NULL,
  `OrderDate` varchar(255) default NULL,
  `PlannedDelDate` varchar(255) default NULL,
  `PlnRec.Date` varchar(255) default NULL,
  `TaxCode` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_inventoryitems206`
--

CREATE TABLE IF NOT EXISTS `t_inventoryitems206` (
  `BaaNVItem` varchar(255) default NULL,
  KEY `t_inventoryitems206_idx1` (`BaaNVItem`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_itemsxref206`
--

CREATE TABLE IF NOT EXISTS `t_itemsxref206` (
  `BaaNIVItem` varchar(255) default NULL,
  `BaaNVItem` varchar(255) default NULL,
  KEY `t_itemsxref206_idx1` (`BaaNVItem`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tccom001206`
--

CREATE TABLE IF NOT EXISTS `tccom001206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  `DAT5` varchar(255) default NULL,
  `DAT6` varchar(255) default NULL,
  `DAT7` varchar(255) default NULL,
  `DAT8` varchar(255) default NULL,
  `DAT9` varchar(255) default NULL,
  `DAT10` varchar(255) default NULL,
  `DAT11` varchar(255) default NULL,
  `DAT12` varchar(255) default NULL,
  `DAT13` varchar(255) default NULL,
  `DAT14` varchar(255) default NULL,
  `DAT15` varchar(255) default NULL,
  `DAT16` varchar(255) default NULL,
  `DAT17` varchar(255) default NULL,
  `DAT18` varchar(255) default NULL,
  `DAT19` varchar(255) default NULL,
  `DAT20` varchar(255) default NULL,
  `DAT21` varchar(255) default NULL,
  `DAT22` varchar(255) default NULL,
  `DAT23` varchar(255) default NULL,
  `DAT24` varchar(255) default NULL,
  `DAT25` varchar(255) default NULL,
  `DAT26` varchar(255) default NULL,
  `DAT27` varchar(255) default NULL,
  `DAT28` varchar(255) default NULL,
  `DAT29` varchar(255) default NULL,
  KEY `tccom001206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcibd001`
--

CREATE TABLE IF NOT EXISTS `tcibd001` (
  `Item` varchar(255) NOT NULL default '',
  `ItemType` varchar(255) default NULL,
  `ItemGroup` varchar(255) default NULL,
  `ItemTypeSpecification` varchar(255) default NULL,
  `Description` varchar(255) default NULL,
  `Material` varchar(255) default NULL,
  `Size` varchar(255) default NULL,
  `Standard` varchar(255) default NULL,
  `SearchKeyI` varchar(255) default NULL,
  `SearchKeyII` varchar(255) default NULL,
  `UnitSet` varchar(255) default NULL,
  `InventoryUnit` varchar(255) default NULL,
  `WeightUnit` varchar(255) default NULL,
  `Weight` varchar(255) default NULL,
  `ProductType` varchar(255) default NULL,
  `LotControl` varchar(255) default NULL,
  `SelectionCode` varchar(255) default NULL,
  `ItemSignal` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `CountryofOrigin` varchar(255) default NULL,
  `ProductClass` varchar(255) default NULL,
  `Revision-Controlled` varchar(255) default NULL,
  `UpdateMethodE-ItemRelation` varchar(255) default NULL,
  `ProductLine` varchar(255) default NULL,
  `CommodityCode` varchar(255) default NULL,
  `Manufacturer` varchar(255) default NULL,
  `EANCode` varchar(255) default NULL,
  `ContainerItem` varchar(255) default NULL,
  `Container` varchar(255) default NULL,
  `Project` varchar(255) default NULL,
  `TypeofReplacement` varchar(255) default NULL,
  `ProductVariant` varchar(255) default NULL,
  `DerivedfromItem` varchar(255) default NULL,
  `STOItem` varchar(255) default NULL,
  `CostComponentGeneral` varchar(255) default NULL,
  `ObjectID` varchar(255) default NULL,
  `OptionSet` varchar(255) default NULL,
  `ItemText` varchar(255) default NULL,
  `Netweight` varchar(255) default NULL,
  `ItemFiscalGro` varchar(255) default NULL,
  `CostType` varchar(255) default NULL,
  `ItemTariffHeading` varchar(255) default NULL,
  `Chapter` varchar(255) default NULL,
  `FixedAssetItem` varchar(255) default NULL,
  `PlaceofInstallation` varchar(255) default NULL,
  `DateofInstallation` varchar(255) default NULL,
  `DateofStartinguse` varchar(255) default NULL,
  `ModvatCredit` varchar(255) default NULL,
  `Empty` varchar(255) default NULL,
  PRIMARY KEY  (`Item`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcmcs001206`
--

CREATE TABLE IF NOT EXISTS `tcmcs001206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  `DAT5` varchar(255) default NULL,
  `DAT6` varchar(255) default NULL,
  KEY `tcmcs001206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcmcs002206`
--

CREATE TABLE IF NOT EXISTS `tcmcs002206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  `DAT5` varchar(255) default NULL,
  `DAT6` varchar(255) default NULL,
  `DAT7` varchar(255) default NULL,
  `DAT8` varchar(255) default NULL,
  KEY `tcmcs002206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcmcs003206`
--

CREATE TABLE IF NOT EXISTS `tcmcs003206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  `DAT5` varchar(255) default NULL,
  `DAT6` varchar(255) default NULL,
  `DAT7` varchar(255) default NULL,
  `DAT8` varchar(255) default NULL,
  `DAT9` varchar(255) default NULL,
  `DAT10` varchar(255) default NULL,
  KEY `tcmcs003206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcmcs004206`
--

CREATE TABLE IF NOT EXISTS `tcmcs004206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  KEY `tcmcs004206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcmcs012206`
--

CREATE TABLE IF NOT EXISTS `tcmcs012206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  `DAT5` varchar(255) default NULL,
  `DAT6` varchar(255) default NULL,
  `DAT7` varchar(255) default NULL,
  `DAT8` varchar(255) default NULL,
  `DAT9` varchar(255) default NULL,
  `DAT10` varchar(255) default NULL,
  KEY `tcmcs012206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcmcs013206`
--

CREATE TABLE IF NOT EXISTS `tcmcs013206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  `DAT5` varchar(255) default NULL,
  `DAT6` varchar(255) default NULL,
  `DAT7` varchar(255) default NULL,
  `DAT8` varchar(255) default NULL,
  `DAT9` varchar(255) default NULL,
  `DAT10` varchar(255) default NULL,
  `DAT11` varchar(255) default NULL,
  `DAT12` varchar(255) default NULL,
  `DAT13` varchar(255) default NULL,
  `DAT14` varchar(255) default NULL,
  `DAT15` varchar(255) default NULL,
  `DAT16` varchar(255) default NULL,
  `DAT17` varchar(255) default NULL,
  `DAT18` varchar(255) default NULL,
  `DAT19` varchar(255) default NULL,
  `DAT20` varchar(255) default NULL,
  `DAT21` varchar(255) default NULL,
  `DAT22` varchar(255) default NULL,
  `DAT23` varchar(255) default NULL,
  `DAT24` varchar(255) default NULL,
  `DAT25` varchar(255) default NULL,
  `DAT26` varchar(255) default NULL,
  `DAT27` varchar(255) default NULL,
  `DAT28` varchar(255) default NULL,
  `DAT29` varchar(255) default NULL,
  `DAT30` varchar(255) default NULL,
  `DAT31` varchar(255) default NULL,
  `DAT32` varchar(255) default NULL,
  `DAT33` varchar(255) default NULL,
  KEY `tcmcs013206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcmcs015206`
--

CREATE TABLE IF NOT EXISTS `tcmcs015206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  KEY `tcmcs015206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcmcs018206`
--

CREATE TABLE IF NOT EXISTS `tcmcs018206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  `DAT5` varchar(255) default NULL,
  `DAT6` varchar(255) default NULL,
  `DAT7` varchar(255) default NULL,
  `DAT8` varchar(255) default NULL,
  `DAT9` varchar(255) default NULL,
  KEY `tcmcs018206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcmcs022206`
--

CREATE TABLE IF NOT EXISTS `tcmcs022206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  KEY `tcmcs022206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcmcs023206`
--

CREATE TABLE IF NOT EXISTS `tcmcs023206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  `DAT5` varchar(255) default NULL,
  KEY `tcmcs023206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcmcs024206`
--

CREATE TABLE IF NOT EXISTS `tcmcs024206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  KEY `tcmcs024206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcmcs028206`
--

CREATE TABLE IF NOT EXISTS `tcmcs028206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  KEY `tcmcs028206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcmcs037206`
--

CREATE TABLE IF NOT EXISTS `tcmcs037206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  KEY `tcmcs037206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcmcs041206`
--

CREATE TABLE IF NOT EXISTS `tcmcs041206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  `DAT5` varchar(255) default NULL,
  `DAT6` varchar(255) default NULL,
  `DAT7` varchar(255) default NULL,
  `DAT8` varchar(255) default NULL,
  KEY `tcmcs041206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcmcs044206`
--

CREATE TABLE IF NOT EXISTS `tcmcs044206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  KEY `tcmcs044206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcmcs061206`
--

CREATE TABLE IF NOT EXISTS `tcmcs061206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  KEY `tcmcs061206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcmcs143206`
--

CREATE TABLE IF NOT EXISTS `tcmcs143206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  `DAT5` varchar(255) default NULL,
  `DAT6` varchar(255) default NULL,
  KEY `tcmcs143206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tdpur012206`
--

CREATE TABLE IF NOT EXISTS `tdpur012206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  `DAT5` varchar(255) default NULL,
  `DAT6` varchar(255) default NULL,
  `DAT7` varchar(255) default NULL,
  `DAT8` varchar(255) default NULL,
  `DAT9` varchar(255) default NULL,
  `DAT10` varchar(255) default NULL,
  `DAT11` varchar(255) default NULL,
  `DAT12` varchar(255) default NULL,
  `DAT13` varchar(255) default NULL,
  `DAT14` varchar(255) default NULL,
  `DAT15` varchar(255) default NULL,
  KEY `tdpur012206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tdsls401206`
--

CREATE TABLE IF NOT EXISTS `tdsls401206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  `DAT4` varchar(255) default NULL,
  `DAT5` varchar(255) default NULL,
  `DAT6` varchar(255) default NULL,
  `DAT7` varchar(255) default NULL,
  `DAT8` varchar(255) default NULL,
  `DAT9` varchar(255) default NULL,
  `DAT10` varchar(255) default NULL,
  `DAT11` varchar(255) default NULL,
  `DAT12` varchar(255) default NULL,
  `DAT13` varchar(255) default NULL,
  `DAT14` varchar(255) default NULL,
  `DAT15` varchar(255) default NULL,
  `DAT16` varchar(255) default NULL,
  `DAT17` varchar(255) default NULL,
  `DAT18` varchar(255) default NULL,
  `DAT19` varchar(255) default NULL,
  `DAT20` varchar(255) default NULL,
  `DAT21` varchar(255) default NULL,
  `DAT22` varchar(255) default NULL,
  `DAT23` varchar(255) default NULL,
  `DAT24` varchar(255) default NULL,
  `DAT25` varchar(255) default NULL,
  `DAT26` varchar(255) default NULL,
  `DAT27` varchar(255) default NULL,
  `DAT28` varchar(255) default NULL,
  `DAT29` varchar(255) default NULL,
  `DAT30` varchar(255) default NULL,
  `DAT31` varchar(255) default NULL,
  `DAT32` varchar(255) default NULL,
  `DAT33` varchar(255) default NULL,
  `DAT34` varchar(255) default NULL,
  `DAT35` varchar(255) default NULL,
  `DAT36` varchar(255) default NULL,
  `DAT37` varchar(255) default NULL,
  `DAT38` varchar(255) default NULL,
  `DAT39` varchar(255) default NULL,
  `DAT40` varchar(255) default NULL,
  `DAT41` varchar(255) default NULL,
  `DAT42` varchar(255) default NULL,
  `DAT43` varchar(255) default NULL,
  `DAT44` varchar(255) default NULL,
  `DAT45` varchar(255) default NULL,
  `DAT46` varchar(255) default NULL,
  `DAT47` varchar(255) default NULL,
  `DAT48` varchar(255) default NULL,
  `DAT49` varchar(255) default NULL,
  `DAT50` varchar(255) default NULL,
  `DAT51` varchar(255) default NULL,
  `DAT52` varchar(255) default NULL,
  `DAT53` varchar(255) default NULL,
  `DAT54` varchar(255) default NULL,
  `DAT55` varchar(255) default NULL,
  `DAT56` varchar(255) default NULL,
  `DAT57` varchar(255) default NULL,
  `DAT58` varchar(255) default NULL,
  `DAT59` varchar(255) default NULL,
  `DAT60` varchar(255) default NULL,
  `DAT61` varchar(255) default NULL,
  `DAT62` varchar(255) default NULL,
  `DAT63` varchar(255) default NULL,
  `DAT64` varchar(255) default NULL,
  `DAT65` varchar(255) default NULL,
  `DAT66` varchar(255) default NULL,
  `DAT67` varchar(255) default NULL,
  `DAT68` varchar(255) default NULL,
  `DAT69` varchar(255) default NULL,
  `DAT70` varchar(255) default NULL,
  `DAT71` varchar(255) default NULL,
  `DAT72` varchar(255) default NULL,
  `DAT73` varchar(255) default NULL,
  `DAT74` varchar(255) default NULL,
  `DAT75` varchar(255) default NULL,
  `DAT76` varchar(255) default NULL,
  `DAT77` varchar(255) default NULL,
  `DAT78` varchar(255) default NULL,
  `DAT79` varchar(255) default NULL,
  `DAT80` varchar(255) default NULL,
  `DAT81` varchar(255) default NULL,
  `DAT82` varchar(255) default NULL,
  `DAT83` varchar(255) default NULL,
  `DAT84` varchar(255) default NULL,
  `DAT85` varchar(255) default NULL,
  `DAT86` varchar(255) default NULL,
  `DAT87` varchar(255) default NULL,
  `DAT88` varchar(255) default NULL,
  `DAT89` varchar(255) default NULL,
  `DAT90` varchar(255) default NULL,
  `DAT91` varchar(255) default NULL,
  `DAT92` varchar(255) default NULL,
  `DAT93` varchar(255) default NULL,
  `DAT94` varchar(255) default NULL,
  `DAT95` varchar(255) default NULL,
  `DAT96` varchar(255) default NULL,
  `DAT97` varchar(255) default NULL,
  `DAT98` varchar(255) default NULL,
  `DAT99` varchar(255) default NULL,
  `DAT100` varchar(255) default NULL,
  `DAT101` varchar(255) default NULL,
  `DAT102` varchar(255) default NULL,
  `DAT103` varchar(255) default NULL,
  `DAT104` varchar(255) default NULL,
  `DAT105` varchar(255) default NULL,
  `DAT106` varchar(255) default NULL,
  `DAT107` varchar(255) default NULL,
  `DAT108` varchar(255) default NULL,
  `DAT109` varchar(255) default NULL,
  `DAT110` varchar(255) default NULL,
  `DAT111` varchar(255) default NULL,
  `DAT112` varchar(255) default NULL,
  `DAT113` varchar(255) default NULL,
  `DAT114` varchar(255) default NULL,
  `DAT115` varchar(255) default NULL,
  `DAT116` varchar(255) default NULL,
  `DAT117` varchar(255) default NULL,
  `DAT118` varchar(255) default NULL,
  `DAT119` varchar(255) default NULL,
  `DAT120` varchar(255) default NULL,
  `DAT121` varchar(255) default NULL,
  `DAT122` varchar(255) default NULL,
  `DAT123` varchar(255) default NULL,
  `DAT124` varchar(255) default NULL,
  `DAT125` varchar(255) default NULL,
  `DAT126` varchar(255) default NULL,
  `DAT127` varchar(255) default NULL,
  `DAT128` varchar(255) default NULL,
  `DAT129` varchar(255) default NULL,
  `DAT130` varchar(255) default NULL,
  `DAT131` varchar(255) default NULL,
  `DAT132` varchar(255) default NULL,
  `DAT133` varchar(255) default NULL,
  `DAT134` varchar(255) default NULL,
  `DAT135` varchar(255) default NULL,
  `DAT136` varchar(255) default NULL,
  `DAT137` varchar(255) default NULL,
  `DAT138` varchar(255) default NULL,
  `DAT139` varchar(255) default NULL,
  `DAT140` varchar(255) default NULL,
  `DAT141` varchar(255) default NULL,
  `DAT142` varchar(255) default NULL,
  `DAT143` varchar(255) default NULL,
  `DAT144` varchar(255) default NULL,
  `DAT145` varchar(255) default NULL,
  `DAT146` varchar(255) default NULL,
  `DAT147` varchar(255) default NULL,
  `DAT148` varchar(255) default NULL,
  `DAT149` varchar(255) default NULL,
  `DAT150` varchar(255) default NULL,
  `DAT151` varchar(255) default NULL,
  `DAT152` varchar(255) default NULL,
  `DAT153` varchar(255) default NULL,
  `DAT154` varchar(255) default NULL,
  `DAT155` varchar(255) default NULL,
  `DAT156` varchar(255) default NULL,
  `DAT157` varchar(255) default NULL,
  `DAT158` varchar(255) default NULL,
  `DAT159` varchar(255) default NULL,
  `DAT160` varchar(255) default NULL,
  `DAT161` varchar(255) default NULL,
  `DAT162` varchar(255) default NULL,
  `DAT163` varchar(255) default NULL,
  `DAT164` varchar(255) default NULL,
  `DAT165` varchar(255) default NULL,
  `DAT166` varchar(255) default NULL,
  `DAT167` varchar(255) default NULL,
  `DAT168` varchar(255) default NULL,
  `DAT169` varchar(255) default NULL,
  `DAT170` varchar(255) default NULL,
  `DAT171` varchar(255) default NULL,
  `DAT172` varchar(255) default NULL,
  `DAT173` varchar(255) default NULL,
  `DAT174` varchar(255) default NULL,
  `DAT175` varchar(255) default NULL,
  KEY `tdsls401206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp2-1`
--

CREATE TABLE IF NOT EXISTS `temp2-1` (
  `from` varchar(100) default NULL,
  `to` varchar(100) default NULL,
  KEY `temp2_idx1` (`to`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp2`
--

CREATE TABLE IF NOT EXISTS `temp2` (
  `from` varchar(100) default NULL,
  `to` varchar(100) default NULL,
  KEY `temp2_idx1` (`to`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp3`
--

CREATE TABLE IF NOT EXISTS `temp3` (
  `temp1` varchar(255) default NULL,
  `temp2` varchar(255) default NULL,
  `temp3` varchar(255) default NULL,
  KEY `temp3_idx2` (`temp2`),
  KEY `temp3_idx3` (`temp3`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temporary1`
--

CREATE TABLE IF NOT EXISTS `temporary1` (
  `DAT1` varchar(255) NOT NULL default '',
  KEY `temporary1_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tempt1`
--

CREATE TABLE IF NOT EXISTS `tempt1` (
  `DAT1` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tempt2`
--

CREATE TABLE IF NOT EXISTS `tempt2` (
  `DAT1` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `terms_of_payment`
--

CREATE TABLE IF NOT EXISTS `terms_of_payment` (
  `TERM_OF_PAYMENT` varchar(3) default NULL,
  `DESCRIPTION` varchar(30) default NULL,
  KEY `idx_terms_of_payment_lookup` (`TERM_OF_PAYMENT`,`DESCRIPTION`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tiedm001206`
--

CREATE TABLE IF NOT EXISTS `tiedm001206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  KEY `tiedm001206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tiedm002206`
--

CREATE TABLE IF NOT EXISTS `tiedm002206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  KEY `tiedm002206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tiedm003206`
--

CREATE TABLE IF NOT EXISTS `tiedm003206` (
  `DAT1` varchar(255) default NULL,
  `DAT2` varchar(255) default NULL,
  `DAT3` varchar(255) default NULL,
  KEY `tiedm003206_idx1` (`DAT1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `InventoryItems206`
--
DROP TABLE IF EXISTS `InventoryItems206`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `SJ_Migration`.`InventoryItems206` AS select distinct ltrim(rtrim(`SJ_Migration`.`Inventory_206`.`item`)) AS `BaaNVItem` from `SJ_Migration`.`Inventory_206` where 1;

-- --------------------------------------------------------

--
-- Structure for view `cost_polines_baan4_104`
--
DROP TABLE IF EXISTS `cost_polines_baan4_104`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `SJ_Migration`.`cost_polines_baan4_104` AS select distinct `b`.`from` AS `pobaan4`,`a`.`PositionNumber` AS `PositionNumber`,`a`.`accountbaanV` AS `accountbaanV`,`a`.`dim1baaniv` AS `dim1baaniv`,`a`.`dim2baan4` AS `dim2baan4`,`a`.`dim3baan4` AS `dim3baan4`,`a`.`dim4baaNVMandatory` AS `dim4baaNVMandatory` from (`SJ_Migration`.`polines_with_gldata_104` `a` join `SJ_Migration`.`temp2` `b`) where (`a`.`PurchaseOrder` = `b`.`to`);

-- --------------------------------------------------------

--
-- Structure for view `itemsxref206`
--
DROP TABLE IF EXISTS `itemsxref206`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `SJ_Migration`.`itemsxref206` AS select distinct ltrim(rtrim(`SJ_Migration`.`fimrg601206`.`DAT1`)) AS `BaaNIVItem`,ltrim(rtrim(`SJ_Migration`.`fimrg601206`.`DAT3`)) AS `BaaNVItem` from `SJ_Migration`.`fimrg601206` where 1;

-- --------------------------------------------------------

--
-- Structure for view `polines_gldata_with_pobaan5_104`
--
DROP TABLE IF EXISTS `polines_gldata_with_pobaan5_104`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `SJ_Migration`.`polines_gldata_with_pobaan5_104` AS select `b`.`to` AS `to`,`a`.`PositionNumber` AS `PositionNumber`,`a`.`accountbaanV` AS `accountbaanV`,`a`.`dim1baaniv` AS `dim1baaniv`,`a`.`dim2baan4` AS `dim2baan4`,`a`.`dim3baan4` AS `dim3baan4`,`a`.`dim4baaNVMandatory` AS `dim4baaNVMandatory` from (`SJ_Migration`.`cost_polines_baan4_104` `a` join `SJ_Migration`.`temp2-1` `b`) where (`a`.`pobaan4` = `b`.`from`);
--
-- Database: `Vista_Point`
--
CREATE DATABASE `Vista_Point` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Vista_Point`;

-- --------------------------------------------------------

--
-- Table structure for table `AR`
--

CREATE TABLE IF NOT EXISTS `AR` (
  `TrxDate` double default NULL,
  `DueDate` double default NULL,
  `BusinessPartnerName` varchar(20) default NULL,
  `CustomerCode` varchar(10) default NULL,
  `Empty` double default NULL,
  `Invoice` double default NULL,
  `TaxCountry` varchar(10) default NULL,
  `Tax Code` double default NULL,
  `Currency` varchar(10) default NULL,
  `Rate 1` double default NULL,
  `Rate 2` double default NULL,
  `Rate 3` double default NULL,
  `Total Due` double(16,2) default NULL,
  `Terms` varchar(10) default NULL,
  `Column` double default NULL,
  `GL` double default NULL,
  `Dim1` varchar(10) default NULL,
  `dim2` varchar(10) default NULL,
  `dim3` varchar(10) default NULL,
  `dim4` varchar(10) default NULL,
  `dim5` double default NULL,
  `LedgerAcct` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `BP_baan`
--

CREATE TABLE IF NOT EXISTS `BP_baan` (
  `bp` varchar(100) NOT NULL default '',
  `title` varchar(100) default NULL,
  `name` varchar(100) default NULL,
  `search_key` varchar(100) default NULL,
  `parent_bp` varchar(100) default NULL,
  `bp_status` varchar(100) default NULL,
  `start_date` varchar(100) default NULL,
  `end_date` varchar(100) default NULL,
  `language` varchar(100) default NULL,
  `currency` varchar(100) default NULL,
  `one_timebp` varchar(100) default NULL,
  `edi` varchar(100) default NULL,
  `tax_number` varchar(100) default NULL,
  `verification_date` varchar(100) default NULL,
  `affiliated_company` varchar(100) default NULL,
  `affiliated_company_num` varchar(100) default NULL,
  `legal_identification` varchar(100) default NULL,
  `comercial_identification` varchar(100) default NULL,
  `bp_for_te` varchar(100) default NULL,
  `address_code` varchar(100) default NULL,
  `contact_code` varchar(100) default NULL,
  `front_office_number` varchar(100) default NULL,
  `internal_bp` varchar(100) default NULL,
  `text` varchar(100) default NULL,
  `i-code` varchar(100) default NULL,
  `financial_dept` varchar(100) default NULL,
  `offset` varchar(100) default NULL,
  `empty` varchar(100) default NULL,
  PRIMARY KEY  (`bp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `BaaN_Addresses`
--

CREATE TABLE IF NOT EXISTS `BaaN_Addresses` (
  `address_code` varchar(100) default NULL,
  `name` varchar(100) default NULL,
  `name2` varchar(100) default NULL,
  `address` varchar(100) default NULL,
  `address2` varchar(100) default NULL,
  `house_number` varchar(100) default NULL,
  `po_bx_num` varchar(100) default NULL,
  `city` varchar(100) default NULL,
  `city2` varchar(100) default NULL,
  `zip_code` varchar(100) default NULL,
  `route` varchar(100) default NULL,
  `telephone` varchar(100) default NULL,
  `telex` varchar(100) default NULL,
  `fax` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `search_key` varchar(100) default NULL,
  `tax_number` varchar(100) default NULL,
  `verification_date` varchar(100) default NULL,
  `addres_format` varchar(100) default NULL,
  `calendar_code` varchar(100) default NULL,
  `geo_code` varchar(100) default NULL,
  `date_last_modif` varchar(100) default NULL,
  `front_office_number` varchar(100) default NULL,
  `time_zone` varchar(100) default NULL,
  `internet` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `text` varchar(100) default NULL,
  `custom_area` varchar(100) default NULL,
  `shipment_area` varchar(100) default NULL,
  `fiscal_id` varchar(100) default NULL,
  `fiscal_id_num` varchar(100) default NULL,
  `Bank_branch_code` varchar(100) default NULL,
  `swift_code` varchar(100) default NULL,
  `clearing_number` varchar(100) default NULL,
  `bank_name` varchar(100) default NULL,
  `bank_branch_name` varchar(100) default NULL,
  `date` varchar(100) default NULL,
  `Transac_Seq_numebr` varchar(100) default NULL,
  `seq.conctrol` varchar(100) default NULL,
  `empty` varchar(100) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Carriers_AP`
--

CREATE TABLE IF NOT EXISTS `Carriers_AP` (
  `carrier_code` varchar(100) default NULL,
  `Description` varchar(100) default NULL,
  KEY `Carriers_AR_idx1` (`carrier_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Carriers_AR`
--

CREATE TABLE IF NOT EXISTS `Carriers_AR` (
  `carrier_code` varchar(100) default NULL,
  `Description` varchar(100) default NULL,
  KEY `Carriers_AR_idx1` (`carrier_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ar_open`
--

CREATE TABLE IF NOT EXISTS `ar_open` (
  `Trx_Date` varchar(100) default NULL,
  `Due_Date` varchar(100) default NULL,
  `Business_Partner` varchar(100) default NULL,
  `Invoice` varchar(100) default NULL,
  `Tax_Country` varchar(100) default NULL,
  `Currency` varchar(100) default NULL,
  `Total_Due` double default NULL,
  `Terms` varchar(100) default NULL,
  `Ledger_Acct` varchar(100) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `baan_items_by_customer`
--
CREATE TABLE IF NOT EXISTS `baan_items_by_customer` (
`customer_number` varchar(100)
,`baan_item` varchar(129)
,`macola_part_num` varchar(100)
,`macola_cust_code` varchar(100)
,`baan_item_group_code` varchar(120)
,`description` varchar(255)
,`warehouse` varchar(20)
);
-- --------------------------------------------------------

--
-- Table structure for table `baan_ship_to`
--

CREATE TABLE IF NOT EXISTS `baan_ship_to` (
  `bp_baan_code` varchar(100) NOT NULL,
  `address_code` varchar(100) default NULL,
  PRIMARY KEY  (`bp_baan_code`),
  KEY `baan_ship_to_idx1` (`address_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `baan_so_lines`
--

CREATE TABLE IF NOT EXISTS `baan_so_lines` (
  `so_number` varchar(100) default NULL,
  `position` varchar(100) default NULL,
  `item_code_system` varchar(100) default NULL,
  `item_code` varchar(100) default NULL,
  `shipt-to-bp` varchar(100) default NULL,
  `ship-to-address` varchar(100) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `baan_sold_to`
--

CREATE TABLE IF NOT EXISTS `baan_sold_to` (
  `baan_code` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`baan_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bp_baan_bp_macola`
--

CREATE TABLE IF NOT EXISTS `bp_baan_bp_macola` (
  `bp_baan` varchar(100) default NULL,
  `bp_macola` varchar(100) default NULL,
  `Fin_Group` varchar(20) default NULL,
  KEY `bp_idx1` (`bp_baan`),
  KEY `bp_idx2` (`bp_macola`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `bp_baan_bp_macola_with_desc`
--
CREATE TABLE IF NOT EXISTS `bp_baan_bp_macola_with_desc` (
`bp_macola` varchar(100)
,`bp_baan` varchar(100)
,`name` varchar(100)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `item_baan_macola_rel`
--
CREATE TABLE IF NOT EXISTS `item_baan_macola_rel` (
`baan_item` varchar(129)
,`macola_part_num` varchar(100)
,`macola_cust_code` varchar(100)
,`baan_item_group_code` varchar(120)
,`description` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `item_baan_macola_rel_with_warehouse`
--
CREATE TABLE IF NOT EXISTS `item_baan_macola_rel_with_warehouse` (
`baan_item` varchar(129)
,`macola_part_num` varchar(100)
,`macola_cust_code` varchar(100)
,`baan_item_group_code` varchar(120)
,`description` varchar(255)
,`warehouse` varchar(20)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `item_codes_by_item_code_system`
--
CREATE TABLE IF NOT EXISTS `item_codes_by_item_code_system` (
`GEN|` varchar(4)
,`baan_item` varchar(129)
,`concat(b.customer_part_num,"|")` varchar(101)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `item_groups`
--
CREATE TABLE IF NOT EXISTS `item_groups` (
`item_group_code` varchar(120)
,`customer_name` varchar(255)
, char(0)
,`Cost_To_Be_Specified` int(1)
,`My_exp_` char(0)
);
-- --------------------------------------------------------

--
-- Table structure for table `item_groupst`
--

CREATE TABLE IF NOT EXISTS `item_groupst` (
  `item_group_code` varchar(120) default NULL,
  `Description` varchar(255) default NULL,
  `Currency` char(0) character set utf8 NOT NULL default '',
  `Cost_To_Be_Specified` int(1) NOT NULL default '0',
  `Empty` char(0) character set utf8 NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_prefix`
--

CREATE TABLE IF NOT EXISTS `item_prefix` (
  `customer_num` varchar(100) default NULL,
  `customer_name` varchar(255) default NULL,
  `prefix` varchar(20) default NULL,
  KEY `item_prefix_idx1` (`customer_num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_prices`
--

CREATE TABLE IF NOT EXISTS `item_prices` (
  `ifs_part_num` varchar(100) default NULL,
  `purchase_price` varchar(100) default NULL,
  `sales_price` varchar(100) default NULL,
  KEY `item_prices_idex1` (`ifs_part_num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items_by_customer`
--

CREATE TABLE IF NOT EXISTS `items_by_customer` (
  `part_no` varchar(100) default NULL,
  `description` varchar(255) default NULL,
  `macola_part_num` varchar(100) default NULL,
  `customer_part_num` varchar(100) default NULL,
  `customer_number` varchar(100) default NULL,
  `macola_cust_code` varchar(100) default NULL,
  `customer_name` varchar(255) default NULL,
  `manuf_lead_time` varchar(10) default NULL,
  `bp_pl` varchar(100) default NULL,
  `warehouse` varchar(20) default NULL,
  `direct_delivery` varchar(10) default NULL,
  `item_group` varchar(100) default NULL,
  KEY `items_by_customer_idx1` (`customer_number`,`part_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `macola_bp_not_in_baan`
--
CREATE TABLE IF NOT EXISTS `macola_bp_not_in_baan` (
`Business_Partner` varchar(100)
);
-- --------------------------------------------------------

--
-- Table structure for table `macola_customer_list`
--

CREATE TABLE IF NOT EXISTS `macola_customer_list` (
  `cus_no` varchar(100) default NULL,
  `cus_name` varchar(255) default NULL,
  `addr_1` varchar(255) default NULL,
  `addr_2` varchar(255) default NULL,
  `city` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `zip` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `cus_alt_adr_cd` varchar(100) default NULL,
  `cus_name2` varchar(255) default NULL,
  `addr_12` varchar(255) default NULL,
  `addr_22` varchar(255) default NULL,
  `city2` varchar(100) default NULL,
  `state1` varchar(100) default NULL,
  `zip1` varchar(100) default NULL,
  `country1` varchar(100) default NULL,
  `slspsn_no` varchar(100) default NULL,
  `cus_type_cd` varchar(100) default NULL,
  `credit_limit` varchar(100) default NULL,
  `hold_fg` varchar(100) default NULL,
  `terr` varchar(100) default NULL,
  `ship_via_cd` varchar(100) default NULL,
  `ar_terms_cd` varchar(100) default NULL,
  KEY `macola_customer_list_idx1` (`cus_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `macola_po_detail`
--

CREATE TABLE IF NOT EXISTS `macola_po_detail` (
  `macola_po` varchar(100) default NULL,
  `position` varchar(100) default NULL,
  `macola_item` varchar(100) default NULL,
  `ordered_qty` varchar(100) default NULL,
  `price` varchar(100) default NULL,
  `order_date` varchar(100) default NULL,
  `macola_warehouse` varchar(100) default NULL,
  `promised_date` varchar(100) default NULL,
  KEY `macola_po_detail_idx1` (`macola_po`,`position`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `macola_so_in_baan`
--

CREATE TABLE IF NOT EXISTS `macola_so_in_baan` (
  `baan_so` varchar(100) default NULL,
  `macola_so` varchar(100) default NULL,
  KEY `macola_so_in_baan_idx1` (`macola_so`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_headers_from_macola`
--

CREATE TABLE IF NOT EXISTS `po_headers_from_macola` (
  `macola_bp` varchar(100) default NULL,
  `buyer_code` varchar(100) default NULL,
  `Macola_PO_Num` varchar(100) default NULL,
  `comment` varchar(100) default NULL,
  `carrier_code` varchar(100) default NULL,
  `delivery_date` varchar(100) default NULL,
  `confirmed_delivery_date` varchar(100) default NULL,
  `warehouse` varchar(100) default NULL,
  `Terms_of_Delivery` varchar(100) default NULL,
  `Terms_of_payment` varchar(100) default NULL,
  `order_date` varchar(20) default NULL,
  KEY `po_headers_from_macola_idx1` (`Macola_PO_Num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_lines_from_macola`
--

CREATE TABLE IF NOT EXISTS `po_lines_from_macola` (
  `macola_po` varchar(100) NOT NULL default '',
  `position` varchar(100) NOT NULL default '',
  `item_code` varchar(100) default NULL,
  `qty` varchar(100) default NULL,
  `price` varchar(100) default NULL,
  `requested_date` varchar(100) default NULL,
  `warehouse` varchar(100) default NULL,
  `promised_date` varchar(100) default NULL,
  PRIMARY KEY  (`macola_po`,`position`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_macola_po_baan`
--

CREATE TABLE IF NOT EXISTS `po_macola_po_baan` (
  `pomacola` varchar(100) default NULL,
  `pobaan` varchar(100) default NULL,
  `shipfrom_bp` varchar(100) default NULL,
  `shipfrom_addrs` varchar(100) default NULL,
  KEY `po_macola_po_baan_idx1` (`pomacola`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_line_by_macola_item`
--

CREATE TABLE IF NOT EXISTS `product_line_by_macola_item` (
  `macola_item` varchar(100) default NULL,
  `product_line` varchar(100) default NULL,
  KEY `product_line_by_macola_item_idx1` (`macola_item`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_lines`
--

CREATE TABLE IF NOT EXISTS `product_lines` (
  `code` varchar(100) default NULL,
  `description` varchar(100) default NULL,
  `empty` varchar(10) default NULL,
  KEY `product_lines_idx1` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `repeated_macola_items`
--
CREATE TABLE IF NOT EXISTS `repeated_macola_items` (
`Rows` bigint(21)
,`macola_part_num` varchar(100)
);
-- --------------------------------------------------------

--
-- Table structure for table `sales_orders`
--

CREATE TABLE IF NOT EXISTS `sales_orders` (
  `bp_sold_to` varchar(100) default NULL,
  `bp_ship_to` varchar(100) default NULL,
  `macola_item` varchar(100) default NULL,
  `qty` varchar(100) default NULL,
  `sales_unit` varchar(20) default NULL,
  `price` varchar(100) default NULL,
  `Whse` varchar(20) default NULL,
  `refa_order` varchar(100) default NULL,
  `refb_carrier` varchar(100) default NULL,
  `Cust_PO` varchar(100) default NULL,
  `order_date` varchar(100) default NULL,
  `planned_delivery_date` varchar(100) default NULL,
  `planned_receipt_date` varchar(100) default NULL,
  `sales_rep` varchar(100) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `sales_orders_1`
--
CREATE TABLE IF NOT EXISTS `sales_orders_1` (
`bp_sold_to` varchar(100)
,`baan_sold_to` varchar(100)
,`baan_shipt_to` varchar(100)
,`macola_item` varchar(100)
,`qty` varchar(100)
,`sales_unit` varchar(20)
,`warehouse_header` char(0)
,`price` varchar(100)
,`Whse` varchar(20)
,`refa_order` varchar(100)
,`refb_carrier` varchar(100)
,`Cust_PO` varchar(100)
,`order_date` varchar(100)
,`planned_delivery_date` varchar(100)
,`planned_receipt_date` varchar(100)
,`sales_rep` varchar(100)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `sales_orders_2`
--
CREATE TABLE IF NOT EXISTS `sales_orders_2` (
`bp_sold_to` varchar(100)
,`baan_sold_to` varchar(100)
,`baan_shipt_to` varchar(100)
,`macola_item` varchar(100)
,`qty` varchar(100)
,`sales_unit` varchar(20)
,`warehouse_header` char(0)
,`price` varchar(100)
,`Whse` varchar(20)
,`refa_order` varchar(100)
,`refb_carrier` varchar(100)
,`Cust_PO` varchar(100)
,`order_date` varchar(100)
,`planned_delivery_date` varchar(100)
,`planned_receipt_date` varchar(100)
,`sales_rep` varchar(100)
,`warehouse` varchar(20)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `sales_orders_final`
--
CREATE TABLE IF NOT EXISTS `sales_orders_final` (
`baan_sold_to` varchar(100)
,`baan_shipt_to` varchar(100)
,`baan_item` varchar(129)
,`qty` varchar(100)
,`lower(s.sales_unit)` varchar(20)
,`warehouse_header` char(0)
,`price` varchar(100)
,`warehouse` varchar(20)
,`refa_order` varchar(100)
,`refb_carrier` varchar(100)
,`Cust_PO` varchar(100)
,`order_date` varchar(100)
,`planned_delivery_date` varchar(100)
,`planned_receipt_date` varchar(100)
,`sales_rep` varchar(100)
);
-- --------------------------------------------------------

--
-- Table structure for table `sales_price`
--

CREATE TABLE IF NOT EXISTS `sales_price` (
  `baan_item` varchar(100) NOT NULL default '',
  `purchase_price` varchar(20) default NULL,
  `sales_price` varchar(20) default NULL,
  PRIMARY KEY  (`baan_item`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_one_field`
--

CREATE TABLE IF NOT EXISTS `temp_one_field` (
  `one_field` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_two_fields`
--

CREATE TABLE IF NOT EXISTS `temp_two_fields` (
  `cod1` varchar(255) default NULL,
  `cod2` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tfacr200`
--

CREATE TABLE IF NOT EXISTS `tfacr200` (
  `t$ttyp` varchar(255) default NULL,
  `t$ninv` varchar(255) default NULL,
  `t$line` varchar(255) default NULL,
  `t$tdoc` varchar(255) default NULL,
  `t$docn` varchar(255) default NULL,
  `t$lino` varchar(255) default NULL,
  `t$itbp` varchar(255) default NULL,
  `t$docd` varchar(255) default NULL,
  `t$trec` varchar(255) default NULL,
  `t$ccur` varchar(255) default NULL,
  `t$rate$1` varchar(255) default NULL,
  `t$rate$2` varchar(255) default NULL,
  `t$rate$3` varchar(255) default NULL,
  `t$ratf$1` varchar(255) default NULL,
  `t$ratf$2` varchar(255) default NULL,
  `t$ratf$3` varchar(255) default NULL,
  `t$rade` varchar(255) default NULL,
  `t$amnt` varchar(255) default NULL,
  `t$amti` varchar(255) default NULL,
  `t$amth$1` varchar(255) default NULL,
  `t$amth$2` varchar(255) default NULL,
  `t$amth$3` varchar(255) default NULL,
  `t$ratd` varchar(255) default NULL,
  `t$rtyp` varchar(255) default NULL,
  `t$vatc` varchar(255) default NULL,
  `t$cvat` varchar(255) default NULL,
  `t$vata` varchar(255) default NULL,
  `t$vati` varchar(255) default NULL,
  `t$vath$1` varchar(255) default NULL,
  `t$vath$2` varchar(255) default NULL,
  `t$vath$3` varchar(255) default NULL,
  `t$svam` varchar(255) default NULL,
  `t$svah$1` varchar(255) default NULL,
  `t$svah$2` varchar(255) default NULL,
  `t$svah$3` varchar(255) default NULL,
  `t$lpdt` varchar(255) default NULL,
  `t$lapa` varchar(255) default NULL,
  `t$lapi` varchar(255) default NULL,
  `t$laph$1` varchar(255) default NULL,
  `t$laph$2` varchar(255) default NULL,
  `t$laph$3` varchar(255) default NULL,
  `t$did1` varchar(255) default NULL,
  `t$dc1a` varchar(255) default NULL,
  `t$dc1i` varchar(255) default NULL,
  `t$dc1h$1` varchar(255) default NULL,
  `t$dc1h$2` varchar(255) default NULL,
  `t$dc1h$3` varchar(255) default NULL,
  `t$did2` varchar(255) default NULL,
  `t$dc2a` varchar(255) default NULL,
  `t$dc2i` varchar(255) default NULL,
  `t$dc2h$1` varchar(255) default NULL,
  `t$dc2h$2` varchar(255) default NULL,
  `t$dc2h$3` varchar(255) default NULL,
  `t$did3` varchar(255) default NULL,
  `t$dc3a` varchar(255) default NULL,
  `t$dc3i` varchar(255) default NULL,
  `t$dc3h$1` varchar(255) default NULL,
  `t$dc3h$2` varchar(255) default NULL,
  `t$dc3h$3` varchar(255) default NULL,
  `t$pada` varchar(255) default NULL,
  `t$padi` varchar(255) default NULL,
  `t$padh$1` varchar(255) default NULL,
  `t$padh$2` varchar(255) default NULL,
  `t$padh$3` varchar(255) default NULL,
  `t$baco` varchar(255) default NULL,
  `t$baca$1` varchar(255) default NULL,
  `t$baca$2` varchar(255) default NULL,
  `t$baca$3` varchar(255) default NULL,
  `t$basi` varchar(255) default NULL,
  `t$cdam$1` varchar(255) default NULL,
  `t$cdam$2` varchar(255) default NULL,
  `t$cdam$3` varchar(255) default NULL,
  `t$tore$1` varchar(255) default NULL,
  `t$tore$2` varchar(255) default NULL,
  `t$tore$3` varchar(255) default NULL,
  `t$dued` varchar(255) default NULL,
  `t$refr` varchar(255) default NULL,
  `t$ccrs` varchar(255) default NULL,
  `t$cpay` varchar(255) default NULL,
  `t$otyp` varchar(255) default NULL,
  `t$oinv` varchar(255) default NULL,
  `t$paym` varchar(255) default NULL,
  `t$proj` varchar(255) default NULL,
  `t$orno` varchar(255) default NULL,
  `t$prob` varchar(255) default NULL,
  `t$prop` varchar(255) default NULL,
  `t$pref` varchar(255) default NULL,
  `t$bank` varchar(255) default NULL,
  `t$lett` varchar(255) default NULL,
  `t$post` varchar(255) default NULL,
  `t$pdat` varchar(255) default NULL,
  `t$balc` varchar(255) default NULL,
  `t$balh$1` varchar(255) default NULL,
  `t$balh$2` varchar(255) default NULL,
  `t$balh$3` varchar(255) default NULL,
  `t$bala` varchar(255) default NULL,
  `t$bahc$1` varchar(255) default NULL,
  `t$bahc$2` varchar(255) default NULL,
  `t$bahc$3` varchar(255) default NULL,
  `t$stat` varchar(255) default NULL,
  `t$year` varchar(255) default NULL,
  `t$prod` varchar(255) default NULL,
  `t$btno` varchar(255) default NULL,
  `t$vaty` varchar(255) default NULL,
  `t$vatp` varchar(255) default NULL,
  `t$crep` varchar(255) default NULL,
  `t$liqd` varchar(255) default NULL,
  `t$adrs` varchar(255) default NULL,
  `t$lamt` varchar(255) default NULL,
  `t$step` varchar(255) default NULL,
  `t$rcpt` varchar(255) default NULL,
  `t$doub` varchar(255) default NULL,
  `t$cain` varchar(255) default NULL,
  `t$lvat` varchar(255) default NULL,
  `t$typa` varchar(255) default NULL,
  `t$doca` varchar(255) default NULL,
  `t$pfbp` varchar(255) default NULL,
  `t$ofbp` varchar(255) default NULL,
  `t$text` varchar(255) default NULL,
  `t$arrq` varchar(255) default NULL,
  `t$doct$l` varchar(255) default NULL,
  `t$docn$l` varchar(255) default NULL,
  `t$seri$l` varchar(255) default NULL,
  `t$cdis$l` varchar(255) default NULL,
  `t$cdih$l$1` varchar(255) default NULL,
  `t$cdih$l$2` varchar(255) default NULL,
  `t$cdih$l$3` varchar(255) default NULL,
  `t$seqn$l` varchar(255) default NULL,
  `t$tinv$l` varchar(255) default NULL,
  `t$cltr$l` varchar(255) default NULL,
  `t$stno$l` varchar(255) default NULL,
  `t$hcod$l` varchar(255) default NULL,
  `t$hdes$l` varchar(255) default NULL,
  `t$cldt$l` varchar(255) default NULL,
  `t$ctyp$l` varchar(255) default NULL,
  `t$cdoc$l` varchar(255) default NULL,
  `t$trcn$l` varchar(255) default NULL,
  `t$cwoc$l` varchar(255) default NULL,
  `t$stac$l` varchar(255) default NULL,
  `empty` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `the_product_lines`
--
CREATE TABLE IF NOT EXISTS `the_product_lines` (
`bp_pl` varchar(100)
);
-- --------------------------------------------------------

--
-- Structure for view `baan_items_by_customer`
--
DROP TABLE IF EXISTS `baan_items_by_customer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Vista_Point`.`baan_items_by_customer` AS select distinct `a`.`customer_number` AS `customer_number`,concat(_latin1'         ',ltrim(rtrim(`b`.`prefix`)),ltrim(rtrim(`a`.`part_no`))) AS `baan_item`,`a`.`macola_part_num` AS `macola_part_num`,`a`.`macola_cust_code` AS `macola_cust_code`,concat(`b`.`prefix`,`a`.`item_group`) AS `baan_item_group_code`,`a`.`description` AS `description`,`a`.`warehouse` AS `warehouse` from ((`Vista_Point`.`items_by_customer` `a` join `Vista_Point`.`item_prefix` `b`) join `Vista_Point`.`the_product_lines` `c`) where ((`a`.`customer_number` = `b`.`customer_num`) and (`c`.`bp_pl` = `a`.`bp_pl`) and (ltrim(rtrim(`a`.`macola_part_num`)) <> _latin1''));

-- --------------------------------------------------------

--
-- Structure for view `bp_baan_bp_macola_with_desc`
--
DROP TABLE IF EXISTS `bp_baan_bp_macola_with_desc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Vista_Point`.`bp_baan_bp_macola_with_desc` AS select `a`.`bp_macola` AS `bp_macola`,`a`.`bp_baan` AS `bp_baan`,`b`.`name` AS `name` from (`Vista_Point`.`bp_baan_bp_macola` `a` join `Vista_Point`.`BP_baan` `b`) where (`a`.`bp_baan` = `b`.`bp`);

-- --------------------------------------------------------

--
-- Structure for view `item_baan_macola_rel`
--
DROP TABLE IF EXISTS `item_baan_macola_rel`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Vista_Point`.`item_baan_macola_rel` AS select distinct concat(_latin1'         ',ltrim(rtrim(`b`.`prefix`)),ltrim(rtrim(`a`.`part_no`))) AS `baan_item`,`a`.`macola_part_num` AS `macola_part_num`,`a`.`macola_cust_code` AS `macola_cust_code`,concat(`b`.`prefix`,`a`.`item_group`) AS `baan_item_group_code`,`a`.`description` AS `description` from ((`Vista_Point`.`items_by_customer` `a` join `Vista_Point`.`item_prefix` `b`) join `Vista_Point`.`the_product_lines` `c`) where ((`a`.`customer_number` = `b`.`customer_num`) and (`c`.`bp_pl` = `a`.`bp_pl`) and (ltrim(rtrim(`a`.`macola_part_num`)) <> _latin1''));

-- --------------------------------------------------------

--
-- Structure for view `item_baan_macola_rel_with_warehouse`
--
DROP TABLE IF EXISTS `item_baan_macola_rel_with_warehouse`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Vista_Point`.`item_baan_macola_rel_with_warehouse` AS select distinct concat(_latin1'         ',ltrim(rtrim(`b`.`prefix`)),ltrim(rtrim(`a`.`part_no`))) AS `baan_item`,`a`.`macola_part_num` AS `macola_part_num`,`a`.`macola_cust_code` AS `macola_cust_code`,concat(`b`.`prefix`,`a`.`item_group`) AS `baan_item_group_code`,`a`.`description` AS `description`,`a`.`warehouse` AS `warehouse` from ((`Vista_Point`.`items_by_customer` `a` join `Vista_Point`.`item_prefix` `b`) join `Vista_Point`.`the_product_lines` `c`) where ((`a`.`customer_number` = `b`.`customer_num`) and (`c`.`bp_pl` = `a`.`bp_pl`) and (ltrim(rtrim(`a`.`macola_part_num`)) <> _latin1''));

-- --------------------------------------------------------

--
-- Structure for view `item_codes_by_item_code_system`
--
DROP TABLE IF EXISTS `item_codes_by_item_code_system`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Vista_Point`.`item_codes_by_item_code_system` AS select distinct _utf8'GEN|' AS `GEN|`,`a`.`baan_item` AS `baan_item`,concat(`b`.`customer_part_num`,_latin1'|') AS `concat(b.customer_part_num,"|")` from (`Vista_Point`.`item_baan_macola_rel` `a` join `Vista_Point`.`items_by_customer` `b`) where ((`a`.`macola_part_num` = `b`.`macola_part_num`) and (`a`.`macola_cust_code` = `b`.`macola_cust_code`) and (ltrim(rtrim(`a`.`macola_cust_code`)) <> _latin1'')) union select distinct _utf8'GEN|' AS `GEN|`,`a`.`baan_item` AS `baan_item`,concat(`b`.`customer_part_num`,_latin1'|') AS `concat(b.customer_part_num,"|")` from (`Vista_Point`.`item_baan_macola_rel` `a` join `Vista_Point`.`items_by_customer` `b`) where ((`a`.`macola_part_num` = `b`.`macola_part_num`) and (ltrim(rtrim(`a`.`macola_cust_code`)) = _latin1''));

-- --------------------------------------------------------

--
-- Structure for view `item_groups`
--
DROP TABLE IF EXISTS `item_groups`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Vista_Point`.`item_groups` AS select distinct concat(`b`.`prefix`,`a`.`item_group`) AS `item_group_code`,`a`.`customer_name` AS `customer_name`,_utf8'' AS ``,2 AS `Cost_To_Be_Specified`,_utf8'' AS `My_exp_` from (`Vista_Point`.`items_by_customer` `a` join `Vista_Point`.`item_prefix` `b`) where (`a`.`customer_number` = `b`.`customer_num`);

-- --------------------------------------------------------

--
-- Structure for view `macola_bp_not_in_baan`
--
DROP TABLE IF EXISTS `macola_bp_not_in_baan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Vista_Point`.`macola_bp_not_in_baan` AS select distinct `a`.`Business_Partner` AS `Business_Partner` from `Vista_Point`.`ar_open` `a` where ((select count(0) AS `count(*)` from `Vista_Point`.`bp_baan_bp_macola` `b` where (`b`.`bp_macola` = `a`.`Business_Partner`)) = 0) union select distinct `a`.`bp_sold_to` AS `bp_sold_to` from `Vista_Point`.`sales_orders` `a` where ((select count(0) AS `count( * )` from `Vista_Point`.`bp_baan_bp_macola` `b` where (`b`.`bp_macola` = `a`.`bp_sold_to`)) = 0);

-- --------------------------------------------------------

--
-- Structure for view `repeated_macola_items`
--
DROP TABLE IF EXISTS `repeated_macola_items`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Vista_Point`.`repeated_macola_items` AS select count(0) AS `Rows`,`item_baan_macola_rel`.`macola_part_num` AS `macola_part_num` from `Vista_Point`.`item_baan_macola_rel` group by `item_baan_macola_rel`.`macola_part_num` order by count(0) desc;

-- --------------------------------------------------------

--
-- Structure for view `sales_orders_1`
--
DROP TABLE IF EXISTS `sales_orders_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Vista_Point`.`sales_orders_1` AS select distinct `a`.`bp_sold_to` AS `bp_sold_to`,`b`.`bp_baan` AS `baan_sold_to`,`b`.`bp_baan` AS `baan_shipt_to`,`a`.`macola_item` AS `macola_item`,`a`.`qty` AS `qty`,lcase(`a`.`sales_unit`) AS `sales_unit`,_utf8'' AS `warehouse_header`,`a`.`price` AS `price`,`a`.`Whse` AS `Whse`,`a`.`refa_order` AS `refa_order`,`a`.`refb_carrier` AS `refb_carrier`,`a`.`Cust_PO` AS `Cust_PO`,`a`.`order_date` AS `order_date`,`a`.`planned_delivery_date` AS `planned_delivery_date`,`a`.`planned_receipt_date` AS `planned_receipt_date`,`a`.`sales_rep` AS `sales_rep` from (`Vista_Point`.`sales_orders` `a` join `Vista_Point`.`bp_baan_bp_macola` `b` on((`a`.`bp_sold_to` = `b`.`bp_macola`)));

-- --------------------------------------------------------

--
-- Structure for view `sales_orders_2`
--
DROP TABLE IF EXISTS `sales_orders_2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Vista_Point`.`sales_orders_2` AS select distinct `a`.`bp_sold_to` AS `bp_sold_to`,`a`.`baan_sold_to` AS `baan_sold_to`,`a`.`baan_shipt_to` AS `baan_shipt_to`,`a`.`macola_item` AS `macola_item`,`a`.`qty` AS `qty`,`a`.`sales_unit` AS `sales_unit`,`a`.`warehouse_header` AS `warehouse_header`,`a`.`price` AS `price`,`a`.`Whse` AS `Whse`,`a`.`refa_order` AS `refa_order`,`a`.`refb_carrier` AS `refb_carrier`,`a`.`Cust_PO` AS `Cust_PO`,`a`.`order_date` AS `order_date`,`a`.`planned_delivery_date` AS `planned_delivery_date`,`a`.`planned_receipt_date` AS `planned_receipt_date`,`a`.`sales_rep` AS `sales_rep`,`b`.`warehouse` AS `warehouse` from (`Vista_Point`.`sales_orders_1` `a` join `Vista_Point`.`items_by_customer` `b`) where ((`a`.`macola_item` = `b`.`macola_part_num`) and (`a`.`bp_sold_to` = `b`.`macola_cust_code`)) union select distinct `a`.`bp_sold_to` AS `bp_sold_to`,`a`.`baan_sold_to` AS `baan_sold_to`,`a`.`baan_shipt_to` AS `baan_shipt_to`,`a`.`macola_item` AS `macola_item`,`a`.`qty` AS `qty`,`a`.`sales_unit` AS `sales_unit`,`a`.`warehouse_header` AS `warehouse_header`,`a`.`price` AS `price`,`a`.`Whse` AS `Whse`,`a`.`refa_order` AS `refa_order`,`a`.`refb_carrier` AS `refb_carrier`,`a`.`Cust_PO` AS `Cust_PO`,`a`.`order_date` AS `order_date`,`a`.`planned_delivery_date` AS `planned_delivery_date`,`a`.`planned_receipt_date` AS `planned_receipt_date`,`a`.`sales_rep` AS `sales_rep`,`b`.`warehouse` AS `warehouse` from (`Vista_Point`.`sales_orders_1` `a` join `Vista_Point`.`items_by_customer` `b`) where ((`a`.`macola_item` = `b`.`macola_part_num`) and (ltrim(rtrim(`b`.`macola_cust_code`)) = _latin1''));

-- --------------------------------------------------------

--
-- Structure for view `sales_orders_final`
--
DROP TABLE IF EXISTS `sales_orders_final`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Vista_Point`.`sales_orders_final` AS select `s`.`baan_sold_to` AS `baan_sold_to`,`s`.`baan_shipt_to` AS `baan_shipt_to`,`f`.`baan_item` AS `baan_item`,`s`.`qty` AS `qty`,lcase(`s`.`sales_unit`) AS `lower(s.sales_unit)`,_utf8'' AS `warehouse_header`,`s`.`price` AS `price`,`s`.`warehouse` AS `warehouse`,`s`.`refa_order` AS `refa_order`,`s`.`refb_carrier` AS `refb_carrier`,`s`.`Cust_PO` AS `Cust_PO`,`s`.`order_date` AS `order_date`,`s`.`planned_delivery_date` AS `planned_delivery_date`,`s`.`planned_receipt_date` AS `planned_receipt_date`,`s`.`sales_rep` AS `sales_rep` from (`Vista_Point`.`sales_orders_2` `s` join `Vista_Point`.`item_baan_macola_rel` `f`) where ((`s`.`bp_sold_to` = `f`.`macola_cust_code`) and (`s`.`macola_item` = `f`.`macola_part_num`)) union select `s`.`baan_sold_to` AS `baan_sold_to`,`s`.`baan_shipt_to` AS `baan_shipt_to`,`f`.`baan_item` AS `baan_item`,`s`.`qty` AS `qty`,lcase(`s`.`sales_unit`) AS `lower(s.sales_unit)`,_utf8'' AS `warehouse_header`,`s`.`price` AS `price`,`s`.`warehouse` AS `warehouse`,`s`.`refa_order` AS `refa_order`,`s`.`refb_carrier` AS `refb_carrier`,`s`.`Cust_PO` AS `Cust_PO`,`s`.`order_date` AS `order_date`,`s`.`planned_delivery_date` AS `planned_delivery_date`,`s`.`planned_receipt_date` AS `planned_receipt_date`,`s`.`sales_rep` AS `sales_rep` from (`Vista_Point`.`sales_orders_2` `s` join `Vista_Point`.`item_baan_macola_rel` `f`) where ((`s`.`macola_item` = `f`.`macola_part_num`) and (ltrim(rtrim(`f`.`macola_cust_code`)) = _latin1''));

-- --------------------------------------------------------

--
-- Structure for view `the_product_lines`
--
DROP TABLE IF EXISTS `the_product_lines`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Vista_Point`.`the_product_lines` AS select distinct `Vista_Point`.`items_by_customer`.`bp_pl` AS `bp_pl` from `Vista_Point`.`items_by_customer` where 1;
--
-- Database: `flex_migration`
--
CREATE DATABASE `flex_migration` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `flex_migration`;

-- --------------------------------------------------------

--
-- Table structure for table `Additional_ISI`
--

CREATE TABLE IF NOT EXISTS `Additional_ISI` (
  `Itemcode` varchar(255) default NULL,
  `BuyfromBP` varchar(255) default NULL,
  `OrderMethod` varchar(255) default NULL,
  `FlexpassEnabled` varchar(255) default NULL,
  `ShiptoWHPOLine` varchar(255) default NULL,
  `ExcludefromTransferGPManufactu` varchar(255) default NULL,
  `ExcludefromTransferGlobal_Custo` varchar(255) default NULL,
  `ShiptoAddressPOHeader` varchar(255) default NULL,
  `CountryofOrigin` varchar(255) default NULL,
  `Euro` varchar(255) default NULL,
  `LiabilityHorizon1` varchar(255) default NULL,
  `LiabilityHorizon2` varchar(255) default NULL,
  `LiabilityHorizon3` varchar(255) default NULL,
  `LiabilityPercentage1` varchar(255) default NULL,
  `LiabilityPercentage2` varchar(255) default NULL,
  `LiabilityPercentage3` varchar(255) default NULL,
  `ForecastCommitmentServiceLevel1` varchar(255) default NULL,
  `ForecastCommitmentServiceLevel2` varchar(255) default NULL,
  `ForecastCommitmentServiceLevel3` varchar(255) default NULL,
  `ForecastCommitmentPercentage1` varchar(255) default NULL,
  `ForecastCommitmentPercentage2` varchar(255) default NULL,
  `ForecastCommitmentPercentage3` varchar(255) default NULL,
  `InitialSupplyTime` varchar(255) default NULL,
  `InspectionText` varchar(255) default NULL,
  `MoistureSensitiveDevice` varchar(255) default NULL,
  `EnableReductionofLiabilityPO` varchar(255) default NULL,
  `AllowaddlinetoexistingPO` varchar(255) default NULL,
  `NonFlexpassEnabled` varchar(255) default NULL,
  `SMIReferenceNo.` varchar(255) default NULL,
  `Daysofstockminimum` varchar(255) default NULL,
  `Daysofstockmaximum` varchar(255) default NULL,
  `Calc.dailyrunratenonweighted` varchar(255) default NULL,
  `Calc.dailyrunrateweighted` varchar(255) default NULL,
  `Stocknonweightedminimum` varchar(255) default NULL,
  `Stocknonweightedmaximum` varchar(255) default NULL,
  `Stockweightedminimum` varchar(255) default NULL,
  `Stockweightedmaximum` varchar(255) default NULL,
  `Stockeffectiveminimum` varchar(255) default NULL,
  `Stockeffectivemaximum` varchar(255) default NULL,
  `Manualoverride` varchar(255) default NULL,
  `TermsofDelive` varchar(255) default NULL,
  `NamePlaceofDelivery` varchar(255) default NULL,
  `CommunicatorID` varchar(255) default NULL,
  `UseWeightedDe` varchar(255) default NULL,
  `RescheduleWindow` varchar(255) default NULL,
  `Upside` varchar(255) default NULL,
  `UpsideWindow` varchar(255) default NULL,
  `StandardPart` varchar(255) default NULL,
  `Freshness` varchar(255) default NULL,
  `NCNR` varchar(255) default NULL,
  `Dummy` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Addresses`
--

CREATE TABLE IF NOT EXISTS `Addresses` (
  `AddressCode` varchar(255) default NULL,
  `Name` varchar(255) default NULL,
  `SearchKey` varchar(255) default NULL,
  `Country` varchar(255) default NULL,
  `Address` varchar(255) default NULL,
  `HouseNumber` varchar(255) default NULL,
  `POBoxNumber` varchar(255) default NULL,
  `ZipCodePostalCode` varchar(255) default NULL,
  `City` varchar(255) default NULL,
  `GEOCode` varchar(255) default NULL,
  `StateProvince` varchar(255) default NULL,
  `Telephone` varchar(255) default NULL,
  `Fax` varchar(255) default NULL,
  `Telex` varchar(255) default NULL,
  `Internet` varchar(255) default NULL,
  `Email` varchar(255) default NULL,
  `TaxNumber` varchar(255) default NULL,
  `VerificationDate` varchar(255) default NULL,
  `Route` varchar(255) default NULL,
  `AddressFormat` varchar(255) default NULL,
  `CalendarCode` varchar(255) default NULL,
  `TimeZone` varchar(255) default NULL,
  `Name2` varchar(255) default NULL,
  `Address2` varchar(255) default NULL,
  `City2` varchar(255) default NULL,
  `Series` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EngineeringItems`
--

CREATE TABLE IF NOT EXISTS `EngineeringItems` (
  `EngineeringItem` varchar(255) default NULL,
  `Description` varchar(255) default NULL,
  `Material` varchar(255) default NULL,
  `Size` varchar(255) default NULL,
  `Standard` varchar(255) default NULL,
  `Weight` varchar(255) default NULL,
  `SearchKeyI` varchar(255) default NULL,
  `SearchKeyII` varchar(255) default NULL,
  `EngineeringItemgroup` varchar(255) default NULL,
  `PhysicalProduct` varchar(255) default NULL,
  `Project` varchar(255) default NULL,
  `E-ItemReference` varchar(255) default NULL,
  `ProductType` varchar(255) default NULL,
  `SelectionCode` varchar(255) default NULL,
  `SignalCode` varchar(255) default NULL,
  `Engineer` varchar(255) default NULL,
  `DrawingSize` varchar(255) default NULL,
  `BOMUnit` varchar(255) default NULL,
  `UnitSet` varchar(255) default NULL,
  `Unit` varchar(255) default NULL,
  `OrderPolicy` varchar(255) default NULL,
  `ItemGroup` varchar(255) default NULL,
  `ItemType` varchar(255) default NULL,
  `E-ItemText` varchar(255) default NULL,
  `Dummy` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `boms`
--

CREATE TABLE IF NOT EXISTS `boms` (
  `Manufactureditem` varchar(255) default NULL,
  `Position` varchar(255) default NULL,
  `Sequencenumber` varchar(255) default NULL,
  `Item` varchar(255) default NULL,
  `Operation` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `Lotselection` varchar(255) default NULL,
  `Length` varchar(255) default NULL,
  `Width` varchar(255) default NULL,
  `Numberofunits` varchar(255) default NULL,
  `Netquantity` varchar(255) default NULL,
  `Percentagerequired` varchar(255) default NULL,
  `Scrapfactor` varchar(255) default NULL,
  `Scrapquantity` varchar(255) default NULL,
  `Effectivedate` varchar(255) default NULL,
  `Expirydate` varchar(255) default NULL,
  `Extrainformation` varchar(255) default NULL,
  `Numberofpullnotes` varchar(255) default NULL,
  `Phantom` varchar(255) default NULL,
  `Usephantominventory` varchar(255) default NULL,
  `Printonorderdocument` varchar(255) default NULL,
  `Useleadtimeoffset` varchar(255) default NULL,
  `Leadtimeoffset` varchar(255) default NULL,
  `Yieldforaggregatedplanning` varchar(255) default NULL,
  `Routingscrapaggregated` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bpbuyfrom`
--

CREATE TABLE IF NOT EXISTS `bpbuyfrom` (
  `BuyfromBusinessPartner` varchar(255) default NULL,
  `BusinessPartnerStatus` varchar(255) default NULL,
  `StartDate` varchar(255) default NULL,
  `EndDate` varchar(255) default NULL,
  `Language` varchar(255) default NULL,
  `Area` varchar(255) default NULL,
  `LineofBusiness` varchar(255) default NULL,
  `BusinessPartnerSignal` varchar(255) default NULL,
  `BusinessPartnerType` varchar(255) default NULL,
  `VendorRating` varchar(255) default NULL,
  `BusinessPartnerforStatisticsUpdate` varchar(255) default NULL,
  `AddressCode` varchar(255) default NULL,
  `CalendarCode` varchar(255) default NULL,
  `ContactCode` varchar(255) default NULL,
  `RateDeterminator` varchar(255) default NULL,
  `PurchasePriceList` varchar(255) default NULL,
  `OrderDiscount` varchar(255) default NULL,
  `BusinessPartnerforPricesandDiscounts` varchar(255) default NULL,
  `PurchaseOffice` varchar(255) default NULL,
  `Contact(Purchase)` varchar(255) default NULL,
  `PurchaseOrderType` varchar(255) default NULL,
  `OurCustomerNumber` varchar(255) default NULL,
  `ListGroup` varchar(255) default NULL,
  `PrintPurchaseOrderbyException` varchar(255) default NULL,
  `TermsofDelivery` varchar(255) default NULL,
  `ReturnTermsofDelivery` varchar(255) default NULL,
  `ShipfromBusinessPartner` varchar(255) default NULL,
  `ScheduleQuantityQualifier` varchar(255) default NULL,
  `InvoicefromBusinessPartner` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bpinvoicefrom`
--

CREATE TABLE IF NOT EXISTS `bpinvoicefrom` (
  `InvoicefromBusinessPartner` varchar(255) default NULL,
  `Department` varchar(255) default NULL,
  `BusinessPartnerStatus` varchar(255) default NULL,
  `StartDate` varchar(255) default NULL,
  `EndDate` varchar(255) default NULL,
  `Language` varchar(255) default NULL,
  `BusinessPartnerSignal` varchar(255) default NULL,
  `BusinessPartnerType` varchar(255) default NULL,
  `VendorRating` varchar(255) default NULL,
  `AddressCode` varchar(255) default NULL,
  `CalendarCode` varchar(255) default NULL,
  `ContactCode` varchar(255) default NULL,
  `Currency` varchar(255) default NULL,
  `ExchangeRateType` varchar(255) default NULL,
  `FinancialSupplierGroup` varchar(255) default NULL,
  `StatementMethod` varchar(255) default NULL,
  `Subcontracting` varchar(255) default NULL,
  `Tax` varchar(255) default NULL,
  `BlockingCodeforPurchaseInvoices` varchar(255) default NULL,
  `CreditLimit` varchar(255) default NULL,
  `DateLastCreditReview` varchar(255) default NULL,
  `TermsofPayment` varchar(255) default NULL,
  `ReturnTermsofPayment` varchar(255) default NULL,
  `LatePaymentSurcharge` varchar(255) default NULL,
  `ReturnLatePaymentSurcharge` varchar(255) default NULL,
  `PaytoBusinessPartner` varchar(255) default NULL,
  `PaymentMethod` varchar(255) default NULL,
  `ReturnPaymentMethod` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bpinvoiceto`
--

CREATE TABLE IF NOT EXISTS `bpinvoiceto` (
  `InvoicetoBusinessPartner` varchar(255) default NULL,
  `Department` varchar(255) default NULL,
  `BusinessPartnerStatus` varchar(255) default NULL,
  `StartDate` varchar(255) default NULL,
  `EndDate` varchar(255) default NULL,
  `Language` varchar(255) default NULL,
  `BusinessPartnerSignal` varchar(255) default NULL,
  `BusinessPartnerType` varchar(255) default NULL,
  `AddressCode` varchar(255) default NULL,
  `CalendarCode` varchar(255) default NULL,
  `ContactCode` varchar(255) default NULL,
  `Currency` varchar(255) default NULL,
  `ExchangeRateType` varchar(255) default NULL,
  `FinancialCustomerGroup` varchar(255) default NULL,
  `StatementMethod` varchar(255) default NULL,
  `NumberofExtraInvoiceCopies` varchar(255) default NULL,
  `InvoicingMethod` varchar(255) default NULL,
  `InvoiceDeliveryMethod` varchar(255) default NULL,
  `InvoiceInterval` varchar(255) default NULL,
  `Tax` varchar(255) default NULL,
  `ChargeInterest` varchar(255) default NULL,
  `CreditRating` varchar(255) default NULL,
  `CreditAnalyst` varchar(255) default NULL,
  `CreditBureauReferenceNumber` varchar(255) default NULL,
  `CreditLimit` varchar(255) default NULL,
  `DateLastCreditReview` varchar(255) default NULL,
  `CreditLimitInsured` varchar(255) default NULL,
  `CreditInsuranceCompany` varchar(255) default NULL,
  `ReferenceCreditInsuranceCompany` varchar(255) default NULL,
  `ExpiryDateofInsuredCredit` varchar(255) default NULL,
  `ToleranceAmountforDueInvoice` varchar(255) default NULL,
  `TolerancePercentageforDueInvoice` varchar(255) default NULL,
  `TermsofPayment` varchar(255) default NULL,
  `ReturnTermsofPayment` varchar(255) default NULL,
  `LatePaymentSurcharge` varchar(255) default NULL,
  `ReturnLatePaymentSurcharge` varchar(255) default NULL,
  `PayfromBusinessPartner` varchar(255) default NULL,
  `PaymentMethod` varchar(255) default NULL,
  `ReturnPaymentMethod` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bppayby`
--

CREATE TABLE IF NOT EXISTS `bppayby` (
  `PayfromBusinessPartner` varchar(255) default NULL,
  `Department` varchar(255) default NULL,
  `BusinessPartnerStatus` varchar(255) default NULL,
  `StartDate` varchar(255) default NULL,
  `EndDate` varchar(255) default NULL,
  `Language` varchar(255) default NULL,
  `BusinessPartnerSignal` varchar(255) default NULL,
  `BusinessPartnerType` varchar(255) default NULL,
  `AddressCode` varchar(255) default NULL,
  `CalendarCode` varchar(255) default NULL,
  `ContactCode` varchar(255) default NULL,
  `Currency` varchar(255) default NULL,
  `ExchangeRateType` varchar(255) default NULL,
  `Bank` varchar(255) default NULL,
  `ExtraDaysafterDueDate` varchar(255) default NULL,
  `ReminderMethod` varchar(255) default NULL,
  `RemittoAddress` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bppayto`
--

CREATE TABLE IF NOT EXISTS `bppayto` (
  `PaytoBusinessPartner` varchar(255) default NULL,
  `Department` varchar(255) default NULL,
  `BusinessPartnerStatus` varchar(255) default NULL,
  `StartDate` varchar(255) default NULL,
  `EndDate` varchar(255) default NULL,
  `Language` varchar(255) default NULL,
  `BusinessPartnerSignal` varchar(255) default NULL,
  `BusinessPartnerType` varchar(255) default NULL,
  `VendorRating` varchar(255) default NULL,
  `AddressCode` varchar(255) default NULL,
  `CalendarCode` varchar(255) default NULL,
  `ContactCode` varchar(255) default NULL,
  `Currency` varchar(255) default NULL,
  `ExchangeRateType` varchar(255) default NULL,
  `Bank` varchar(255) default NULL,
  `ExtraDaysafterDueDate` varchar(255) default NULL,
  `FactoringCompany` varchar(255) default NULL,
  `CustomerNumberatFactor` varchar(255) default NULL,
  `BankFactoringCompany` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bpshipfrom`
--

CREATE TABLE IF NOT EXISTS `bpshipfrom` (
  `ShipfromBusinessPartner` varchar(255) default NULL,
  `BusinessPartnerStatus` varchar(255) default NULL,
  `StartDate` varchar(255) default NULL,
  `EndDate` varchar(255) default NULL,
  `Language` varchar(255) default NULL,
  `BusinessPartnerSignal` varchar(255) default NULL,
  `BusinessPartnerType` varchar(255) default NULL,
  `VendorRating` varchar(255) default NULL,
  `AddressCode` varchar(255) default NULL,
  `CalendarCode` varchar(255) default NULL,
  `ContactCode` varchar(255) default NULL,
  `BuyfromBusinessPartner` varchar(255) default NULL,
  `Carrier` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `Inspection` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bpshipto`
--

CREATE TABLE IF NOT EXISTS `bpshipto` (
  `ShiptoBusinessPartner` varchar(255) default NULL,
  `BusinessPartnerStatus` varchar(255) default NULL,
  `StartDate` varchar(255) default NULL,
  `EndDate` varchar(255) default NULL,
  `Language` varchar(255) default NULL,
  `BusinessPartnerSignal` varchar(255) default NULL,
  `BusinessPartnerType` varchar(255) default NULL,
  `AddressCode` varchar(255) default NULL,
  `CalendarCode` varchar(255) default NULL,
  `ContactCode` varchar(255) default NULL,
  `SoldtoBusinessPartner` varchar(255) default NULL,
  `Carrier` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bpsoldto`
--

CREATE TABLE IF NOT EXISTS `bpsoldto` (
  `SoldtoBusinessPartner` varchar(255) default NULL,
  `BusinessPartnerStatus` varchar(255) default NULL,
  `StartDate` varchar(255) default NULL,
  `EndDate` varchar(255) default NULL,
  `Language` varchar(255) default NULL,
  `Area` varchar(255) default NULL,
  `LineofBusiness` varchar(255) default NULL,
  `BusinessPartnerSignal` varchar(255) default NULL,
  `BusinessPartnerType` varchar(255) default NULL,
  `BusinessPartnerforStatisticsUpdate` varchar(255) default NULL,
  `AddressCode` varchar(255) default NULL,
  `CalendarCode` varchar(255) default NULL,
  `ContactCode` varchar(255) default NULL,
  `ResponseTime` varchar(255) default NULL,
  `Byte Priority?` varchar(255) default NULL,
  `RateDeterminatory` varchar(255) default NULL,
  `SalesPriceUnit` varchar(255) default NULL,
  `PriceListforDirectDelivery` varchar(255) default NULL,
  `OrderDiscount` varchar(255) default NULL,
  `UpperMargin` varchar(255) default NULL,
  `LowerMargin` varchar(255) default NULL,
  `BusinessPartnerforPricesandDiscounts` varchar(255) default NULL,
  `SalesOffice` varchar(255) default NULL,
  `InsideSalesRep` varchar(255) default NULL,
  `OutsideSalesRep` varchar(255) default NULL,
  `SalesOrderType` varchar(255) default NULL,
  `OurSupplierNumber` varchar(255) default NULL,
  `ListGroup` varchar(255) default NULL,
  `Channel` varchar(255) default NULL,
  `EDIOrderChangeResponse` varchar(255) default NULL,
  `AcknowledgebyException` varchar(255) default NULL,
  `ShippingConstraint` varchar(255) default NULL,
  `CustomerPriority` varchar(255) default NULL,
  `TermsofDelivery` varchar(255) default NULL,
  `ReturnTermsofDelivery` varchar(255) default NULL,
  `ShiptoBusinessPartner` varchar(255) default NULL,
  `ScheduleQuantityQuality` varchar(255) default NULL,
  `InvoicetoBusinessPartner` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_item_rel_ship`
--

CREATE TABLE IF NOT EXISTS `eng_item_rel_ship` (
  `Project` varchar(255) default NULL,
  `MainItem` varchar(255) default NULL,
  `EngItem` varchar(255) default NULL,
  `EngItemRev` varchar(255) character set latin1 collate latin1_general_cs default NULL,
  `EItemCopied` varchar(255) default NULL,
  `EItemCopyDate` varchar(255) default NULL,
  `EBOMCopied` varchar(255) default NULL,
  `EBOMCopyDate` varchar(255) default NULL,
  `Empty` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_item_revisions`
--

CREATE TABLE IF NOT EXISTS `eng_item_revisions` (
  `Item` varchar(255) default NULL,
  `revision` varchar(255) character set latin1 collate latin1_general_cs default NULL,
  `desc` varchar(255) default NULL,
  `order` varchar(255) default NULL,
  `efectivedate` varchar(255) default NULL,
  `expirydate` varchar(255) default NULL,
  `engineer` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `drawing_loc` varchar(255) default NULL,
  `date_from_cad` varchar(255) default NULL,
  `drawing` varchar(255) default NULL,
  `eitem_text` varchar(255) default NULL,
  `empty` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_code_systems`
--

CREATE TABLE IF NOT EXISTS `item_code_systems` (
  `citt` varchar(3) default NULL,
  `cust_supp` varchar(9) default NULL,
  `Item` varchar(255) default NULL,
  `altern_item` varchar(255) default NULL,
  `empty` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemcostingdata`
--

CREATE TABLE IF NOT EXISTS `itemcostingdata` (
  `Item` varchar(255) default NULL,
  `CostComponentDetails` varchar(255) default NULL,
  `SurchargesbyItem` varchar(255) default NULL,
  `SurchargesbyWarehouse` varchar(255) default NULL,
  `LotPrice` varchar(255) default NULL,
  `AggregatedMaterialCostComponent` varchar(255) default NULL,
  `AggregatedOperationCostComponent` varchar(255) default NULL,
  `AggregatedSurchargeCostComponent` varchar(255) default NULL,
  `Currency` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemgeneraldata`
--

CREATE TABLE IF NOT EXISTS `itemgeneraldata` (
  `Item` varchar(255) default NULL,
  `Description` varchar(255) default NULL,
  `Itemtype` varchar(255) default NULL,
  `ItemGroup` varchar(255) default NULL,
  `ItemTypeSpecification` varchar(255) default NULL,
  `UnitSet` varchar(255) default NULL,
  `InventoryUnit` varchar(255) default NULL,
  `Weightunit` varchar(255) default NULL,
  `Weight` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `LotControl` varchar(255) default NULL,
  `SearchKeyI` varchar(255) default NULL,
  `SearchKeyII` varchar(255) default NULL,
  `Material` varchar(255) default NULL,
  `Standard` varchar(255) default NULL,
  `Size` varchar(255) default NULL,
  `ProductType` varchar(255) default NULL,
  `SelectionCode` varchar(255) default NULL,
  `CountryofOrigin` varchar(255) default NULL,
  `ProductClass` varchar(255) default NULL,
  `ProductLine` varchar(255) default NULL,
  `Manufacturer` varchar(255) default NULL,
  `CommodityCode` varchar(255) default NULL,
  `SignalCode` varchar(255) default NULL,
  `EANCode` varchar(255) default NULL,
  `CostCompProjSer` varchar(255) default NULL,
  `Revisioncontrolled` varchar(255) default NULL,
  `UpdateMethodEItemRelation` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemorderingdata`
--

CREATE TABLE IF NOT EXISTS `itemorderingdata` (
  `Item` varchar(255) default NULL,
  `OrderPolicy` varchar(255) default NULL,
  `OrderSystem` varchar(255) default NULL,
  `OrderMethod` varchar(255) default NULL,
  `JITItem` varchar(255) default NULL,
  `PlannedbySCSPlanner` varchar(255) default NULL,
  `ShippingSchedules` varchar(255) default NULL,
  `SequencedshippingSchedules` varchar(255) default NULL,
  `OrderQuantityMultipleof` varchar(255) default NULL,
  `MinimumOrderQuantity` varchar(255) default NULL,
  `MaximumOrderQuantity` varchar(255) default NULL,
  `FixedOrderQuantity` varchar(255) default NULL,
  `EconomicOrderQuantity` varchar(255) default NULL,
  `ReOrderPoint` varchar(255) default NULL,
  `MaximumInventory` varchar(255) default NULL,
  `ServiceLevel` varchar(255) default NULL,
  `SafetyStock` varchar(255) default NULL,
  `OrderInterval` varchar(255) default NULL,
  `SafetyTime` varchar(255) default NULL,
  `FirstAllowedOrderDate` varchar(255) default NULL,
  `OrderCosts` varchar(255) default NULL,
  `Planner` varchar(255) default NULL,
  `SeasonPatternforSafetyStock` varchar(255) default NULL,
  `SeasonPatternforDemand` varchar(255) default NULL,
  `numberofPeriods` varchar(255) default NULL,
  `Periodtype` varchar(255) default NULL,
  `UpdateInventoryOrderData` varchar(255) default NULL,
  `OrderQuantityProject` varchar(255) default NULL,
  `UpdateOrderQuantityProject` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemplanningdata`
--

CREATE TABLE IF NOT EXISTS `itemplanningdata` (
  `PlanLevel` varchar(255) default NULL,
  `PlanItem` varchar(255) default NULL,
  `PlanItemType` varchar(255) default NULL,
  `Planner` varchar(255) default NULL,
  `DefaultWarehouse` varchar(255) default NULL,
  `DefaultSupplySource` varchar(255) default NULL,
  `DefaultEnterpriseUnitforPlanning` varchar(255) default NULL,
  `MaintainMasterPlan` varchar(255) default NULL,
  `DependentDemandForecast` varchar(255) default NULL,
  `CentralMultisitePlanning` varchar(255) default NULL,
  `TimeFence` varchar(255) default NULL,
  `ForecastTimeFence` varchar(255) default NULL,
  `OrderHorizon` varchar(255) default NULL,
  `PlanningHorizon` varchar(255) default NULL,
  `ExtraLeadTime` varchar(255) default NULL,
  `FixedLeadTimeHorizon` varchar(255) default NULL,
  `Constraint1` varchar(255) default NULL,
  `AutomaticUpdateofProductionPlan` varchar(255) default NULL,
  `AutomaticUpdateofPurchasePlan` varchar(255) default NULL,
  `AutomaticupdateofInventoryPlan` varchar(255) default NULL,
  `AutomaticUpdateofDemandForecast` varchar(255) default NULL,
  `ForecastBasedGenerationMethod` varchar(255) default NULL,
  `ForecastHorizon` varchar(255) default NULL,
  `MasterPlanUnit` varchar(255) default NULL,
  `Priority` varchar(255) default NULL,
  `CriticalinCTP` varchar(255) default NULL,
  `ComponentCTP` varchar(255) default NULL,
  `CapacityCTP` varchar(255) default NULL,
  `OnlineCTPUpdate` varchar(255) default NULL,
  `ChannelCTP` varchar(255) default NULL,
  `CycleCTP` varchar(255) default NULL,
  `CTPTimeFence` varchar(255) default NULL,
  `FamilyCTP` varchar(255) default NULL,
  `FamilySite` varchar(255) default NULL,
  `FamilyItem` varchar(255) default NULL,
  `FamilyCTPHorizon` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemproductiondata`
--

CREATE TABLE IF NOT EXISTS `itemproductiondata` (
  `Item` varchar(255) default NULL,
  `SearchKey` varchar(255) default NULL,
  `BOMUnit` varchar(255) default NULL,
  `ScrapFactor` varchar(255) default NULL,
  `ScrapQuantity` varchar(255) default NULL,
  `Phantom` varchar(255) default NULL,
  `UsePhantomInventory` varchar(255) default NULL,
  `OrderLeadTime` varchar(255) default NULL,
  `RoutingUnit` varchar(255) default NULL,
  `OrderQtyDependentRouting` varchar(255) default NULL,
  `BackflushMaterials` varchar(255) default NULL,
  `QuantitybyPullNote` varchar(255) default NULL,
  `BackflushifMaterial` varchar(255) default NULL,
  `NumberofPullNotes` varchar(255) default NULL,
  `BackflushHours` varchar(255) default NULL,
  `CriticalforOrderAcceptance` varchar(255) default NULL,
  `CriticalIteminMasterPlanning` varchar(255) default NULL,
  `DirectProcessOutbound` varchar(255) default NULL,
  `RPTItem` varchar(255) default NULL,
  `ScheduleCode` varchar(255) default NULL,
  `RatePercentageforPlanning` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itempurchasingdata`
--

CREATE TABLE IF NOT EXISTS `itempurchasingdata` (
  `Item` varchar(255) default NULL,
  `SearchKey1` varchar(255) default NULL,
  `BuyfromBp` varchar(255) default NULL,
  `Buyer` varchar(255) default NULL,
  `VendorRating` varchar(255) default NULL,
  `PurchaseUnit` varchar(255) default NULL,
  `PurchasePriceUnit` varchar(255) default NULL,
  `PurchaseCurrency` varchar(255) default NULL,
  `PurchasePrice` varchar(255) default NULL,
  `PurchasePriceInHomeCurrency` varchar(255) default NULL,
  `Taxcode` varchar(255) default NULL,
  `PurchasePriceGroup` varchar(255) default NULL,
  `PurchaseStatisticsGroup` varchar(255) default NULL,
  `PurchaseOffice` varchar(255) default NULL,
  `DeliveryDateTolerance` varchar(255) default NULL,
  `DeliveryDateTolerance1` varchar(255) default NULL,
  `QuantityTolerance` varchar(255) default NULL,
  `QuantityTolerance1` varchar(255) default NULL,
  `AccessoriesAllowed` varchar(255) default NULL,
  `Inspection` varchar(255) default NULL,
  `Supplytime` varchar(255) default NULL,
  `UnitForSupplytime` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `ReleaseCostServiceItemstoWarehouse` varchar(255) default NULL,
  `NoofDaysFwdReading` varchar(255) default NULL,
  `NoofDaysBkwdReading` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemsalesdata`
--

CREATE TABLE IF NOT EXISTS `itemsalesdata` (
  `Item` varchar(255) default NULL,
  `SearchKey1` varchar(255) default NULL,
  `SalesUnit` varchar(255) default NULL,
  `MinimumQuantitytoCommit` varchar(255) default NULL,
  `MinimumRateforCommitment` varchar(255) default NULL,
  `MinimumOrderQuantity` varchar(255) default NULL,
  `DirectDeliveryfromQuantity` varchar(255) default NULL,
  `CommitmentPolicy` varchar(255) default NULL,
  `ReleasetoWarehouse` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `ReturnComponents` varchar(255) default NULL,
  `SalesPriceUnit` varchar(255) default NULL,
  `SalesPrice` varchar(255) default NULL,
  `SalesPriceGroup` varchar(255) default NULL,
  `SalesStatisticsGroup` varchar(255) default NULL,
  `SuggestedRetailPrice` varchar(255) default NULL,
  `UpperMargin` varchar(255) default NULL,
  `LowerMargin` varchar(255) default NULL,
  `CommissionGroup` varchar(255) default NULL,
  `SalesRebateGroup` varchar(255) default NULL,
  `TaxCode` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemsupinfo`
--

CREATE TABLE IF NOT EXISTS `itemsupinfo` (
  `Item` varchar(255) default NULL,
  `ItemGroup` varchar(255) default NULL,
  `BuyfromBP` varchar(255) default NULL,
  `ShipfromBP` varchar(255) default NULL,
  `Effectivedate` varchar(255) default NULL,
  `Expirationdate` varchar(255) default NULL,
  `Preferred` varchar(255) default NULL,
  `ForwardingAgent` varchar(255) default NULL,
  `SelfBilledInv` varchar(255) default NULL,
  `Approved` varchar(255) default NULL,
  `Blocked` varchar(255) default NULL,
  `BlockingReason` varchar(255) default NULL,
  `Priority` varchar(255) default NULL,
  `SourcingPercentage` varchar(255) default NULL,
  `DeliveryDateTolerance` varchar(255) default NULL,
  `DeliveryDateTolerance1` varchar(255) default NULL,
  `QuantityTolerance` varchar(255) default NULL,
  `QuantityTolerance1` varchar(255) default NULL,
  `PurchaseOffice` varchar(255) default NULL,
  `Inspection` varchar(255) default NULL,
  `Consigned` varchar(255) default NULL,
  `OrderQuantityMultipleof` varchar(255) default NULL,
  `MinimumOrderQuantity` varchar(255) default NULL,
  `MaximumOrderQuantity` varchar(255) default NULL,
  `Fixedorderquantity` varchar(255) default NULL,
  `EconomicOrderQuantity` varchar(255) default NULL,
  `InternalProcessingTime` varchar(255) default NULL,
  `UnitforInternalProcessingTime` varchar(255) default NULL,
  `SafetyTime` varchar(255) default NULL,
  `UnitforSafetyTime` varchar(255) default NULL,
  `SupplyTime` varchar(255) default NULL,
  `UnitforSupply` varchar(255) default NULL,
  `LeadTimeHorizon` varchar(255) default NULL,
  `ScheduleOrdertype` varchar(255) default NULL,
  `PeriodTableCode` varchar(255) default NULL,
  `PatternCode` varchar(255) default NULL,
  `SegmentSet` varchar(255) default NULL,
  `FreezeTimeIncreaseRemaining` varchar(255) default NULL,
  `FreezingTimeReduceRemaining` varchar(255) default NULL,
  `MaterialReleaseType` varchar(255) default NULL,
  `ScheduleReleseDetail` varchar(255) default NULL,
  `ReleaseEdiMessagesDirectly` varchar(255) default NULL,
  `Cumulatives` varchar(255) default NULL,
  `Authorizations` varchar(255) default NULL,
  `ShipmentorDeliveryBased` varchar(255) default NULL,
  `SupplierCapacity` varchar(255) default NULL,
  `MinimumCapacityTolerance` varchar(255) default NULL,
  `MaximumCapacitytolerance` varchar(255) default NULL,
  `CapacitytimeUnit` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemwarehousingdata`
--

CREATE TABLE IF NOT EXISTS `itemwarehousingdata` (
  `Item` varchar(255) default NULL,
  `SearchKey` varchar(255) default NULL,
  `PackageDefinition` varchar(255) default NULL,
  `LocationControlled` varchar(255) default NULL,
  `FloorStock` varchar(255) default NULL,
  `InventoryCarryingCosts` varchar(255) default NULL,
  `FrequencyforStorageInspection` varchar(255) default NULL,
  `PeriodforShelfLife` varchar(255) default NULL,
  `ShelfLifePeriods` varchar(255) default NULL,
  `Height` varchar(255) default NULL,
  `Width` varchar(255) default NULL,
  `Depth` varchar(255) default NULL,
  `HazardousMaterial` varchar(255) default NULL,
  `ClassofRisk` varchar(255) default NULL,
  `ExpectedAnnualIssue` varchar(255) default NULL,
  `ForecastMethod` varchar(255) default NULL,
  `OutboundPriority` varchar(255) default NULL,
  `ABCCode` varchar(255) default NULL,
  `ConsignmentPriority` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `podetail`
--

CREATE TABLE IF NOT EXISTS `podetail` (
  `PurchaseOrder` varchar(255) default NULL,
  `PositionNumber` varchar(255) default NULL,
  `CodeItemType` varchar(255) default NULL,
  `Item` varchar(255) default NULL,
  `Project` varchar(255) default NULL,
  `EngineeringItem` varchar(255) default NULL,
  `PurchaseUnit` varchar(255) default NULL,
  `OrderedQuantity` varchar(255) default NULL,
  `Price` varchar(255) default NULL,
  `Orderamount` varchar(255) default NULL,
  `StandardDescription` varchar(255) default NULL,
  `LineDiscount` varchar(255) default NULL,
  `DiscountAmount` varchar(255) default NULL,
  `DiscountCode` varchar(255) default NULL,
  `Determining` varchar(255) default NULL,
  `OrderDate` varchar(255) default NULL,
  `Eligible` varchar(255) default NULL,
  `OrderConfirmationDate` varchar(255) default NULL,
  `VendorRating` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `WarehouseAddress` varchar(255) default NULL,
  `ShipfromBP` varchar(255) default NULL,
  `ShipfromAddress` varchar(255) default NULL,
  `ShipfromContact` varchar(255) default NULL,
  `PlannedDeliveryDate` varchar(255) default NULL,
  `ForwardingAgent` varchar(255) default NULL,
  `TaxCode` varchar(255) default NULL,
  `LotSelection` varchar(255) default NULL,
  `Lot` varchar(255) default NULL,
  `InventoryPostingStatus` varchar(255) default NULL,
  `ReleaseDate` varchar(255) default NULL,
  `ConfirmedDeliveryDate` varchar(255) default NULL,
  `ChangedDeliveryDate` varchar(255) default NULL,
  `Inspection` varchar(255) default NULL,
  `Activity` varchar(255) default NULL,
  `Element` varchar(255) default NULL,
  `Extension` varchar(255) default NULL,
  `CostComponent` varchar(255) default NULL,
  `PurchaseLedgerAccountNumber` varchar(255) default NULL,
  `Dimension1` varchar(255) default NULL,
  `Dimension2` varchar(255) default NULL,
  `Dimension3` varchar(255) default NULL,
  `Dimension4` varchar(255) default NULL,
  `Dimension5` varchar(255) default NULL,
  `PurchaseAcknowledgementCode` varchar(255) default NULL,
  `ChangeOrderSequence` varchar(255) default NULL,
  `ChangeReason` varchar(255) default NULL,
  `ChangeType` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `podetail206`
--

CREATE TABLE IF NOT EXISTS `podetail206` (
  `PurchaseOrder` varchar(255) default NULL,
  `PositionNumber` varchar(255) default NULL,
  `CodeItemType` varchar(255) default NULL,
  `Item` varchar(255) default NULL,
  `Project` varchar(255) default NULL,
  `EngineeringItem` varchar(255) default NULL,
  `PurchaseUnit` varchar(255) default NULL,
  `OrderedQuantity` varchar(255) default NULL,
  `Price` varchar(255) default NULL,
  `Orderamount` varchar(255) default NULL,
  `StandardDescription` varchar(255) default NULL,
  `LineDiscount` varchar(255) default NULL,
  `DiscountAmount` varchar(255) default NULL,
  `DiscountCode` varchar(255) default NULL,
  `Determining` varchar(255) default NULL,
  `OrderDate` varchar(255) default NULL,
  `Eligible` varchar(255) default NULL,
  `OrderConfirmationDate` varchar(255) default NULL,
  `VendorRating` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `WarehouseAddress` varchar(255) default NULL,
  `ShipfromBP` varchar(255) default NULL,
  `ShipfromAddress` varchar(255) default NULL,
  `ShipfromContact` varchar(255) default NULL,
  `PlannedDeliveryDate` varchar(255) default NULL,
  `ForwardingAgent` varchar(255) default NULL,
  `TaxCode` varchar(255) default NULL,
  `LotSelection` varchar(255) default NULL,
  `Lot` varchar(255) default NULL,
  `InventoryPostingStatus` varchar(255) default NULL,
  `ReleaseDate` varchar(255) default NULL,
  `ConfirmedDeliveryDate` varchar(255) default NULL,
  `ChangedDeliveryDate` varchar(255) default NULL,
  `Inspection` varchar(255) default NULL,
  `Activity` varchar(255) default NULL,
  `Element` varchar(255) default NULL,
  `Extension` varchar(255) default NULL,
  `CostComponent` varchar(255) default NULL,
  `PurchaseLedgerAccountNumber` varchar(255) default NULL,
  `Dimension1` varchar(255) default NULL,
  `Dimension2` varchar(255) default NULL,
  `Dimension3` varchar(255) default NULL,
  `Dimension4` varchar(255) default NULL,
  `Dimension5` varchar(255) default NULL,
  `PurchaseAcknowledgementCode` varchar(255) default NULL,
  `ChangeOrderSequence` varchar(255) default NULL,
  `ChangeReason` varchar(255) default NULL,
  `ChangeType` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `poheaders`
--

CREATE TABLE IF NOT EXISTS `poheaders` (
  `BuyfromBP` varchar(255) default NULL,
  `ShipfromBP` varchar(255) default NULL,
  `PurchaseOffice` varchar(255) default NULL,
  `PurchaseOrderType` varchar(255) default NULL,
  `PurchaseOrder` varchar(255) default NULL,
  `OrderDate` varchar(255) default NULL,
  `Buyer` varchar(255) default NULL,
  `SupplierOrderNumber` varchar(255) default NULL,
  `ReferenceA` varchar(255) default NULL,
  `ReferenceB` varchar(255) default NULL,
  `Contract` varchar(255) default NULL,
  `DeliveryDate` varchar(255) default NULL,
  `ConfirmedDeliveryDate` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `TermsofDelivery` varchar(255) default NULL,
  `OriginalDocument` varchar(255) default NULL,
  `OrignalOrder` varchar(255) default NULL,
  `ReturnReason` varchar(255) default NULL,
  `BuyfromContact` varchar(255) default NULL,
  `BuyfromAddress` varchar(255) default NULL,
  `Lineofbusiness` varchar(255) default NULL,
  `Area` varchar(255) default NULL,
  `Orderdiscount` varchar(255) default NULL,
  `BusinessPartnerforPricesdiscounts` varchar(255) default NULL,
  `BusinessPartnersTexts` varchar(255) default NULL,
  `Shipfromaddress` varchar(255) default NULL,
  `Shipfromcontact` varchar(255) default NULL,
  `Carrier` varchar(255) default NULL,
  `Deliveryaddress` varchar(255) default NULL,
  `Invoicefrombusinesspartner` varchar(255) default NULL,
  `Invoicefromaddress` varchar(255) default NULL,
  `Invoicefromcontact` varchar(255) default NULL,
  `Currency` varchar(255) default NULL,
  `Purchaserate` varchar(255) default NULL,
  `Ratefactor` varchar(255) default NULL,
  `Ratetype` varchar(255) default NULL,
  `Fixedratemethod` varchar(255) default NULL,
  `Country` varchar(255) default NULL,
  `Selfbilledinvoice` varchar(255) default NULL,
  `Tax` varchar(255) default NULL,
  `Paytobusinesspartner` varchar(255) default NULL,
  `Paytoaddress` varchar(255) default NULL,
  `Paytocontact` varchar(255) default NULL,
  `Termsofpayment` varchar(255) default NULL,
  `Latepaymentsurcharge` varchar(255) default NULL,
  `Remittanceagreement` varchar(255) default NULL,
  `Aknowledgecode` varchar(255) default NULL,
  `changeorderseqNo` varchar(255) default NULL,
  `Changereasonlines` varchar(255) default NULL,
  `Changetypelines` varchar(255) default NULL,
  `Financialsuppliergroup` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reference_designators`
--

CREATE TABLE IF NOT EXISTS `reference_designators` (
  `mitem` varchar(255) default NULL,
  `position` varchar(255) default NULL,
  `seqn` varchar(255) default NULL,
  `location` varchar(255) default NULL,
  `netqty` varchar(255) default NULL,
  `empty` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `routingcodebyitem`
--

CREATE TABLE IF NOT EXISTS `routingcodebyitem` (
  `ManufacturedItem` varchar(255) default NULL,
  `Routing` varchar(255) default NULL,
  `Description` varchar(255) default NULL,
  `StandardRoutingYesNo` varchar(255) default NULL,
  `StandardRouting` varchar(255) default NULL,
  `RoutingUnit` varchar(255) default NULL,
  `UptoOrderQuantity` varchar(255) default NULL,
  `SchedulingArea` varchar(255) default NULL,
  `CorrectedBottleneckWork` varchar(255) default NULL,
  `CorrectedProdRate` varchar(255) default NULL,
  `WeekBucketPlanning` varchar(255) default NULL,
  `AutomaticUpdate` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `routingoperations`
--

CREATE TABLE IF NOT EXISTS `routingoperations` (
  `ManufacturedItem` varchar(255) default NULL,
  `Routing` varchar(255) default NULL,
  `Operation` varchar(255) default NULL,
  `SequenceNumber` varchar(255) default NULL,
  `Task` varchar(255) default NULL,
  `WorkCenter` varchar(255) default NULL,
  `Machine` varchar(255) default NULL,
  `EffectiveDate` varchar(255) default NULL,
  `ExpiryDate` varchar(255) default NULL,
  `AverageSetupTime` varchar(255) default NULL,
  `FixedSetupTime` varchar(255) default NULL,
  `ProductionRatePer` varchar(255) default NULL,
  `CycleTime` varchar(255) default NULL,
  `FixedDuration` varchar(255) default NULL,
  `ManOccupationforSetup` varchar(255) default NULL,
  `ManOccupationforProduction` varchar(255) default NULL,
  `MachineOccupation` varchar(255) default NULL,
  `TransferLot100` varchar(255) default NULL,
  `TransferLotQuantity` varchar(255) default NULL,
  `ScrapQuantity` varchar(255) default NULL,
  `YieldType` varchar(255) default NULL,
  `YieldPercentage` varchar(255) default NULL,
  `ExtraInformation` varchar(255) default NULL,
  `SubcontractingRateFactor` varchar(255) default NULL,
  `Backflushing` varchar(255) default NULL,
  `CountPoint` varchar(255) default NULL,
  `QuantitybyPullNote` varchar(255) default NULL,
  `NumberofPullNotes` varchar(255) default NULL,
  `DescriptiononPullNote` varchar(255) default NULL,
  `PhysicalLocation` varchar(255) default NULL,
  `Activity` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcibd001`
--

CREATE TABLE IF NOT EXISTS `tcibd001` (
  `Item` varchar(255) NOT NULL default '',
  `ItemType` varchar(255) default NULL,
  `ItemGroup` varchar(255) default NULL,
  `ItemTypeSpecification` varchar(255) default NULL,
  `Description` varchar(255) default NULL,
  `Material` varchar(255) default NULL,
  `Size` varchar(255) default NULL,
  `Standard` varchar(255) default NULL,
  `SearchKeyI` varchar(255) default NULL,
  `SearchKeyII` varchar(255) default NULL,
  `UnitSet` varchar(255) default NULL,
  `InventoryUnit` varchar(255) default NULL,
  `WeightUnit` varchar(255) default NULL,
  `Weight` varchar(255) default NULL,
  `ProductType` varchar(255) default NULL,
  `LotControl` varchar(255) default NULL,
  `SelectionCode` varchar(255) default NULL,
  `ItemSignal` varchar(255) default NULL,
  `Warehouse` varchar(255) default NULL,
  `CountryofOrigin` varchar(255) default NULL,
  `ProductClass` varchar(255) default NULL,
  `Revision-Controlled` varchar(255) default NULL,
  `UpdateMethodE-ItemRelation` varchar(255) default NULL,
  `ProductLine` varchar(255) default NULL,
  `CommodityCode` varchar(255) default NULL,
  `Manufacturer` varchar(255) default NULL,
  `EANCode` varchar(255) default NULL,
  `ContainerItem` varchar(255) default NULL,
  `Container` varchar(255) default NULL,
  `Project` varchar(255) default NULL,
  `TypeofReplacement` varchar(255) default NULL,
  `ProductVariant` varchar(255) default NULL,
  `DerivedfromItem` varchar(255) default NULL,
  `STOItem` varchar(255) default NULL,
  `CostComponentGeneral` varchar(255) default NULL,
  `ObjectID` varchar(255) default NULL,
  `OptionSet` varchar(255) default NULL,
  `ItemText` varchar(255) default NULL,
  `Netweight` varchar(255) default NULL,
  `ItemFiscalGro` varchar(255) default NULL,
  `CostType` varchar(255) default NULL,
  `ItemTariffHeading` varchar(255) default NULL,
  `Chapter` varchar(255) default NULL,
  `FixedAssetItem` varchar(255) default NULL,
  `PlaceofInstallation` varchar(255) default NULL,
  `DateofInstallation` varchar(255) default NULL,
  `DateofStartinguse` varchar(255) default NULL,
  `ModvatCredit` varchar(255) default NULL,
  `Empty` varchar(255) default NULL,
  PRIMARY KEY  (`Item`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
