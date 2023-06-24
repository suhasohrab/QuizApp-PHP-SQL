-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 09:31 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('1', '1'),
('2', '7'),
('3', '11'),
('4', '14'),
('5', '18'),
('6', '21'),
('7', '26'),
('8', '29'),
('9', '33'),
('10', '38'),
('11', '44'),
('12', '45'),
('13', '51'),
('14', '56'),
('15', '58'),
('16', '64'),
('17', '65'),
('18', '71'),
('19', '74'),
('20', '80'),
('21', '83'),
('22', '85'),
('23', '89'),
('24', '94'),
('25', '99'),
('26', '103'),
('27', '107'),
('28', '109'),
('29', '113'),
('30', '118'),
('31', '123'),
('32', '126'),
('33', '130'),
('34', '133'),
('35', '137'),
('36', '143'),
('37', '148'),
('38', '152'),
('39', '155'),
('40', '158'),
('41', '164'),
('42', '165'),
('43', '169'),
('44', '173'),
('45', '177'),
('46', '184'),
('47', '185'),
('48', '191'),
('49', '196'),
('50', '198'),
('51', '202'),
('52', '207'),
('53', '212'),
('54', '213'),
('55', '217'),
('56', '224'),
('57', '225'),
('58', '229'),
('59', '234'),
('60', '237'),
('61', '244'),
('62', '245'),
('63', '249'),
('64', '256'),
('65', '258'),
('66', '261'),
('67', '265'),
('68', '271'),
('69', '276'),
('70', '277'),
('71', '283'),
('72', '287'),
('73', '292'),
('74', '293'),
('75', '298'),
('76', '303'),
('77', '308'),
('78', '310'),
('79', '316'),
('80', '319'),
('81', '321'),
('82', '328'),
('83', '329'),
('84', '335'),
('85', '340'),
('86', '342'),
('87', '348'),
('88', '351'),
('89', '353'),
('90', '358'),
('91', '362'),
('92', '365'),
('93', '371'),
('94', '375'),
('95', '377'),
('96', '383'),
('97', '385'),
('98', '391'),
('99', '395');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` varchar(50) DEFAULT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `correct`, `wrong`, `date`) VALUES
('suha@gmail.com', '5b141f1e83', -37, 32, '0', 37, '2023-06-20 17:46:00'),
('sarah@gmail.com', '5b141f1e83', -97, 99, '1', 100, '2023-06-20 19:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('1', 'Interaction Design', '1'),
('1', 'Information Architecture', '2'),
('1', 'Visual Design', '3'),
('1', 'Dropdown List', '4'),
('2', 'Pagination', '5'),
('2', 'Tag', '6'),
('2', 'Breadcrumb', '7'),
('2', 'Search Field', '8'),
('3', 'Feedback', '9'),
('3', 'Visibility', '10'),
('3', 'Tolerance', '11'),
('3', 'Simplicity', '12'),
('4', 'Natural Language Interface', '13'),
('4', 'Command Language based interface', '14'),
('4', 'Web based interface', '15'),
('4', 'Menu based interface', '16'),
('5', 'Discover', '17'),
('5', 'Design', '18'),
('5', 'Deploy', '19'),
('5', 'Develop', '20'),
('6', 'Progressive Enhancement', '21'),
('6', 'Size Optimization', '22'),
('6', 'Breakpoints', '23'),
('6', 'Low Load Time', '24'),
('7', 'View', '25'),
('7', 'Property', '26'),
('7', 'Account Name', '27'),
('7', 'Measurement', '28'),
('8', 'Realtime Overview', '29'),
('8', 'Acquisition Overview', '30'),
('8', 'Behavior Overview', '31'),
('8', 'Audience Overview', '32'),
('9', 'Keyboard Planner', '33'),
('9', 'Grammarly', '34'),
('9', 'Trust Flow', '35'),
('9', 'SEMrush', '36'),
('10', 'Search Engine Result Pages', '37'),
('10', 'Social Media Optimization', '38'),
('10', 'Cookies', '39'),
('10', 'Sitemap', '40'),
('11', 'Compress Images', '41'),
('11', 'Creates Fast Load Time for Mobile Pages', '42'),
('11', 'Creates Short Search Terms', '43'),
('11', 'Creates Social Signals', '44'),
('12', 'Tabs', '45'),
('12', 'Different Heading', '46'),
('12', 'Different Sites', '47'),
('12', 'Footer', '48'),
('13', 'Cloaking', '49'),
('13', 'Keyword Stuffing', '50'),
('13', 'Links Submission in Social Bookmarking Sites', '51'),
('13', 'Stealing Content', '52'),
('14', 'Algorithms', '53'),
('14', 'Social Signals', '54'),
('14', 'Small Touch Elements', '55'),
('14', 'Keywords', '56'),
('15', 'URL Naming', '57'),
('15', 'URL Size', '58'),
('15', 'URL Structure', '59'),
('15', 'URL Length', '60'),
('16', 'Subdomain', '61'),
('16', 'Subdirectory', '62'),
('16', 'General Level Domain', '63'),
('16', 'Country Code Top Level Domain', '64'),
('17', 'Product', '65'),
('17', 'Informational', '66'),
('17', 'Brand', '67'),
('17', 'Transactional', '68'),
('18', 'Domainname.com/uk', '69'),
('18', 'Domainname.co.uk', '70'),
('18', 'Uk.domainname.com', '71'),
('18', 'Domainname.co.uk', '72'),
('19', 'Transactional', '73'),
('19', 'Informational', '74'),
('19', 'Brand', '75'),
('19', 'Product', '76'),
('20', 'Crawling', '77'),
('20', 'Serving', '78'),
('20', 'Indexing', '79'),
('20', 'All of These', '80'),
('21', 'Self-Created Links', '81'),
('21', 'Internal Links', '82'),
('21', 'Inbound Links', '83'),
('21', 'Outbound Links', '84'),
('22', 'SEO Friendly Content', '85'),
('22', 'Sitemap', '86'),
('22', 'Minimal Bounce Rate', '87'),
('22', 'Popup Ads', '88'),
('23', 'Rank', '89'),
('23', 'Load Time', '90'),
('23', 'Sitemap', '91'),
('23', 'Structure', '92'),
('24', 'Internal Links', '93'),
('24', 'Social Signals', '94'),
('24', 'Ranking for Keywords', '95'),
('24', 'Search Volume', '96'),
('25', 'Content Layout', '97'),
('25', 'Navigation', '98'),
('25', 'Digital Content', '99'),
('25', 'Tab System', '100'),
('26', 'Adaptable', '101'),
('26', 'Viewpoints', '102'),
('26', 'Media Queries', '103'),
('26', 'Spreadsheets', '104'),
('27', 'Smartphone', '105'),
('27', 'Notebook', '106'),
('27', 'Camera', '107'),
('27', 'Tablet', '108'),
('28', 'CSS', '109'),
('28', 'Java', '110'),
('28', 'XML', '111'),
('28', 'CSS and HTML', '112'),
('29', 'Fluid Grid', '113'),
('29', 'Grid', '114'),
('29', 'Fluid', '115'),
('29', 'Liquid Grid', '116'),
('30', 'Hierarchy', '117'),
('30', 'Spreadsheet', '118'),
('30', 'HTML', '119'),
('30', 'Tags', '120'),
('31', 'JavaScript', '121'),
('31', 'CSS', '122'),
('31', 'XHTML', '123'),
('31', 'DHTML', '124'),
('32', 'Auto Play', '125'),
('32', 'Preload', '126'),
('32', 'Loop', '127'),
('32', 'Auto Buffer', '128'),
('33', '<?DOCTYPE>', '129'),
('33', '<?DOCTYPE html>', '130'),
('33', '<?DOCTYPE html!>', '131'),
('33', '<?DOCTYPE html?>', '132'),
('34', '<side>', '133'),
('34', '<nav>', '134'),
('34', '<mark>', '135'),
('34', '<selection>', '136'),
('35', 'STRONG', '137'),
('35', 'SUB', '138'),
('35', 'SUP', '139'),
('35', 'INS', '140'),
('36', 'Position Matching', '141'),
('36', 'Character Classes', '142'),
('36', 'Repetition', '143'),
('36', 'Back Reference', '144'),
('37', '<IMG source=\"sample.jpg\" width=\"200\" height=\"100\">', '145'),
('37', '<IMG path=\"sample.jpg\" width=\"200\" height=\"100\">', '146'),
('37', '<IMG name=\"sample.jpg\" width=\"200\" height=\"100\">', '147'),
('37', '<IMG src=\"sample.jpg\" width=\"200\" height=\"100\">', '148'),
('38', 'Data List', '149'),
('38', 'Progress', '150'),
('38', 'Input', '151'),
('38', 'Meter', '152'),
('39', '<meta name=\"HandheldFriendly\" content=\"true\" />', '153'),
('39', '<meta name=\"mobileoptimized\" content=\"width\" />', '154'),
('39', '<meta name=\"apple-mobile-web-app-capable\" content=\"yes\" />', '155'),
('39', '<meta name=\"formatdetection\" content=\"telephone=no\" />', '156'),
('40', '<var geoloc=window.navigator.geolocation;>', '157'),
('40', '<var geoloc=window.navigator.geolocation;>', '158'),
('40', '<var geoloc=navigator.geolocation;>', '159'),
('40', '<var geoloc=navigator.windowgeolocation;>', '160'),
('41', 'Selection', '161'),
('41', 'Aside', '162'),
('41', 'Nav', '163'),
('41', 'Mark', '164'),
('42', '--self', '165'),
('42', '--blank', '166'),
('42', '--top', '167'),
('42', '--new', '168'),
('43', 'canvas', '169'),
('43', 'div', '170'),
('43', 'article', '171'),
('43', 'audio', '172'),
('44', '<p style=\"font-size: 20px; color: red;\"></p>', '173'),
('44', '<p style=\"font-size: 20px; color: red;\"></p>', '174'),
('44', '<p style=\"font-size: 20px; color: red;\"></p>', '175'),
('44', '<p style=\"font-size: 20px; color: red;\"></p>', '176'),
('45', 'App Version', '177'),
('45', 'Version', '178'),
('45', 'AppVer', '179'),
('45', 'Ver', '180'),
('46', 'External', '181'),
('46', 'Inline', '182'),
('46', 'Indeed', '183'),
('46', 'Internal', '184'),
('47', 'Lang', '185'),
('47', 'XML Lang', '186'),
('47', 'Class', '187'),
('47', 'ID', '188'),
('48', 'Max Height', '189'),
('48', 'Min Width', '190'),
('48', 'Spacing', '191'),
('48', 'Padding', '192'),
('49', '/n', '193'),
('49', '/r', '194'),
('49', '/f', '195'),
('49', '/t', '196'),
('50', 'Spreadsheet', '197'),
('50', 'Break Points', '198'),
('50', 'Stacking', '199'),
('50', 'Tab Bars', '200'),
('51', 'Scripting', '201'),
('51', 'Content Audit', '202'),
('51', 'Designing', '203'),
('51', 'Deployment', '204'),
('52', 'Bottom Bar', '205'),
('52', 'Slight down menu', '206'),
('52', 'Navigation Bar', '207'),
('52', 'Black Box Technique', '208'),
('53', 'Related search result', '209'),
('53', 'Related short searches', '210'),
('53', 'Related keywords', '211'),
('53', 'Related searches', '212'),
('54', 'No follow links', '213'),
('54', 'Do follow links', '214'),
('54', 'Natural links', '215'),
('54', 'Contextual links', '216'),
('55', 'Referral', '217'),
('55', 'Social traffic', '218'),
('55', 'Infographics', '219'),
('55', 'Demographics', '220'),
('56', 'Avoiding cookies', '221'),
('56', 'Avoiding automatic redirection', '222'),
('56', 'Using primary language for directed region', '223'),
('56', 'Using secondary language for directed region', '224'),
('57', 'Accelerated mobile pages', '225'),
('57', 'CSS', '226'),
('57', 'Social signals', '227'),
('57', 'Mobile sitemap', '228'),
('58', 'YouTube', '229'),
('58', 'Meta', '230'),
('58', 'Pinterest', '231'),
('58', 'Instagram', '232'),
('59', 'Grid cell', '233'),
('59', 'Gridline', '234'),
('59', 'Grid area', '235'),
('59', 'Grid track', '236'),
('60', 'Columns and rows', '237'),
('60', 'Grid gap', '238'),
('60', 'Vertical grid line', '239'),
('60', 'Grid area', '240'),
('61', 'Display', '241'),
('61', 'Flex direction', '242'),
('61', 'Flex item', '243'),
('61', 'Grid', '244'),
('62', 'Cross start', '245'),
('62', 'Cross begin', '246'),
('62', 'Start', '247'),
('62', 'Cross-start', '248'),
('63', 'Autocomplete', '249'),
('63', 'Form', '250'),
('63', 'Pattern', '251'),
('63', 'Title', '252'),
('64', 'Double semicolon', '253'),
('64', 'Colon', '254'),
('64', 'Semicolon', '255'),
('64', 'Comma', '256'),
('65', 'Image map', '257'),
('65', 'Use map', '258'),
('65', 'Use-map', '259'),
('65', 'Image map', '260'),
('66', '50', '261'),
('66', '80', '262'),
('66', '30', '263'),
('66', '100', '264'),
('67', 'International-friendly URL structure', '265'),
('67', 'Language Tags', '266'),
('67', 'Content marketing', '267'),
('67', 'Cookies', '268'),
('68', 'Opportunity', '269'),
('68', 'Conversation', '270'),
('68', 'Plagiarism', '271'),
('68', 'Conversations', '272'),
('69', 'Too many ads', '273'),
('69', 'Small fonts', '274'),
('69', 'Intrusive interstitial', '275'),
('69', 'Crawl errors', '276'),
('70', 'Protocol', '277'),
('70', 'Path', '278'),
('70', 'URL', '279'),
('70', 'Domain', '280'),
('71', 'Trustflow', '281'),
('71', 'Majestic', '282'),
('71', 'Infographic', '283'),
('71', 'Sitemap', '284'),
('72', 'Social signals', '285'),
('72', 'Popups', '286'),
('72', 'Intrusive interstitials', '287'),
('72', 'Small touch elements', '288'),
('73', 'Method', '289'),
('73', 'Class', '290'),
('73', 'Handler', '291'),
('73', 'Promise', '292'),
('74', '#', '293'),
('74', '*', '294'),
('74', '$', '295'),
('74', '`', '296'),
('75', 'Strong and exchange', '297'),
('75', 'Serialization and deserialization', '298'),
('75', 'Form and deform', '299'),
('75', 'Stack and unstack', '300'),
('76', 'This defines how the flex items should be stacked', '301'),
('76', 'This specifies that flex items will be required', '302'),
('76', 'This defines the type of flex box of the parent container', '303'),
('76', 'This keeps all flex items on the line', '304'),
('77', 'Flex-wrap', '305'),
('77', 'Flex-flow', '306'),
('77', 'Align items', '307'),
('77', 'Align content', '308'),
('78', 'Selectors', '309'),
('78', 'Design and layout', '310'),
('78', 'Text styles', '311'),
('78', 'Alignment', '312'),
('79', 'document.getElement(\"img1\").src=\"sample.jpg\";', '313'),
('79', 'document.getElement(\"img1\").id=\"sample.jpg\";', '314'),
('79', 'document.getElementById(\"img1\").id=\"sample.jpg\";', '315'),
('79', 'document.getElementById(\"img1\").src=\"sample.jpg\";', '316'),
('80', 'Break out', '317'),
('80', 'Link', '318'),
('80', 'Anchor', '319'),
('80', 'Tag', '320'),
('81', 'App version', '321'),
('81', 'Version', '322'),
('81', 'Appver', '323'),
('81', 'Ver', '324'),
('82', 'External', '325'),
('82', 'Online', '326'),
('82', 'Indented', '327'),
('82', 'Internal', '328'),
('83', 'Lang', '329'),
('83', 'xml:lang', '330'),
('83', 'Class', '331'),
('83', 'ID', '332'),
('84', 'Max-height', '333'),
('84', 'Min-width', '334'),
('84', 'Padding', '335'),
('84', 'Spacing', '336'),
('85', '/n', '337'),
('85', '/r', '338'),
('85', '/f', '339'),
('85', '/t', '340'),
('86', 'Address', '341'),
('86', 'Tel', '342'),
('86', 'E-mail', '343'),
('86', 'Range', '344'),
('87', 'Boolean', '345'),
('87', 'Number', '346'),
('87', 'String', '347'),
('87', 'Object', '348'),
('88', 'Apple Safari 3.1', '349'),
('88', 'Mozilla Firefox 3.7', '350'),
('88', 'Google Chrome', '351'),
('88', 'Opera 10.5x', '352'),
('89', 'None', '353'),
('89', 'Overline', '354'),
('89', 'Strike-through', '355'),
('89', 'Line-through', '356'),
('90', '$(document).call()', '357'),
('90', '$(document).ready()', '358'),
('90', '$(document).start()', '359'),
('90', '$(document).run()', '360'),
('91', 'State-name: selector-name {value}', '361'),
('91', 'Selector-name: state-name {property.value}', '362'),
('91', 'State-name: selector-name {property:value}', '363'),
('91', 'Selector-name: state-name{}', '364'),
('92', 'Session', '365'),
('92', 'Application', '366'),
('92', 'Local', '367'),
('92', 'Page', '368'),
('93', 'Unique', '369'),
('93', 'Bounce rate', '370'),
('93', 'Page view', '371'),
('93', 'Page load', '372'),
('94', 'Realtime overview', '373'),
('94', 'Acquisition overview', '374'),
('94', 'Audience overview', '375'),
('94', 'Behavior overview', '376'),
('95', 'The behavior of the visitors on the website and the path to conversion', '377'),
('95', 'How each goal is performing', '378'),
('95', 'Analysis of purchase activity on the site or app', '379'),
('95', 'How marketing channels contribute to conversions', '380'),
('96', 'Ahrens', '381'),
('96', 'Majestic', '382'),
('96', 'Moz', '383'),
('96', 'SEMrush', '384'),
('97', 'Off-page SEO', '385'),
('97', 'On-page SEO', '386'),
('97', 'Mobile SEO', '387'),
('97', 'White hat SEO', '388'),
('98', 'Social signals', '389'),
('98', 'Small touch elements', '390'),
('98', 'Page load time', '391'),
('98', 'Crawl errors', '392'),
('99', 'APQ', '393'),
('99', 'BPQ', '394'),
('99', 'CPQ', '395'),
('99', 'ARQ', '396');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` varchar(10) DEFAULT NULL,
  `qid` int(11) NOT NULL,
  `qns` varchar(255) DEFAULT NULL,
  `choice` int(11) DEFAULT NULL,
  `sn` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b141f1e83', 1, 'What concentrates on setting up an engaging interface with logic behavior?', 4, 1),
('5b141f1e83', 2, 'What is a navigation aid that allows the user to keep track of the location within programs?', 4, 2),
('5b141f1e83', 3, 'Which of the following principal emphasizes the importance of designing the user interface to prevent users from making errors?', 4, 3),
('5b141f1e83', 4, 'What Allows the users to speak in the normal everyday language in order to interact with the system?', 4, 4),
('5b141f1e83', 5, 'Which phase of the responsive work design workflow consists of the process called UX sketches and interaction design?', 4, 5),
('5b141f1e83', 6, 'The footprint of the CSS file on slower devices can be reduced by smart position of the media queries and', 4, 6),
('5b141f1e83', 7, 'Which of the following is used by google analysis to identify a website?', 4, 7),
('5b141f1e83', 8, '. Jane wants to view the number of visitors to her site’s ten most popular pages. In which overview can she find this statistic?', 4, 8),
('5b141f1e83', 9, 'Google Provides a tool called ____ to help user with new keywords.', 4, 9),
('5b141f1e83', 10, 'What increase awareness of new product and services but connection with customer.', 4, 10),
('5b141f1e83', 11, 'Identify the function of Accelerated mobile pages (AMP).', 4, 11),
('5b141f1e83', 12, 'Some of the content in a mobile site can be moved to ____', 4, 12),
('5b141f1e83', 13, 'Which of the following is not a technique of Black Hat SEO', 4, 13),
('5b141f1e83', 14, 'What are Query or search terms given by the users called', 4, 14),
('5b141f1e83', 15, 'Which of the following is not URL optimization?', 4, 15),
('5b141f1e83', 16, 'What is a domain extension and is a two-letter code.', 4, 16),
('5b141f1e83', 17, 'What kind of keyword is purchase', 4, 17),
('5b141f1e83', 18, 'Which one of the following is an example of subdomain', 4, 18),
('5b141f1e83', 19, 'Nia users search query how to clean leather shoes’ what keywords will resolves such queries', 4, 19),
('5b141f1e83', 20, 'Stacy wants to find pet shop in her vicinity. She uses the keyword “pet shops nearby” in google search engine. How does the google display the most relevant result for her query', 4, 20),
('5b141f1e83', 21, 'Backlinks are also called as', 4, 21),
('5b141f1e83', 22, 'These are greater chances of content being shared on social media with ______', 4, 22),
('5b141f1e83', 23, 'Links published on social media positively influence page’s _______', 4, 23),
('5b141f1e83', 24, '__________ Prompts a blogger to set up a blog.', 4, 24),
('5b141f1e83', 25, '________ is intended to be explored on a spectrum of diverse experience', 4, 25),
('5b141f1e83', 26, '_______ don’t work in internet explorer 8 and below.', 4, 26),
('5b141f1e83', 27, 'Which of the following devices is not supported by responsive web design', 4, 27),
('5b141f1e83', 28, 'Which of the following technologies are used by responsive web design to resize, hide, shrinks, enlarge and move the content on any screen', 4, 28),
('5b141f1e83', 29, 'is used to arrange the grid columns in proportion based on page element sizing.', 4, 29),
('5b141f1e83', 30, 'Content audit should always be recorded in a ______', 4, 30),
('5b141f1e83', 31, '____________ uses JavaScript and CSS to make dynamic web pages.', 4, 31),
('5b141f1e83', 32, 'Which attribute od Audio tag identifies whether to replay the audio once it has stopped', 4, 32),
('5b141f1e83', 33, 'Identify the correct syntax of doctype in HTML5', 4, 33),
('5b141f1e83', 34, 'The ___________ element is a column or selection that generally contains data linked to the main information but not as relevant or important as the main information.', 4, 34),
('5b141f1e83', 35, 'The __________ element emphasizes the text as compared to its surrounding text.', 4, 35),
('5b141f1e83', 36, 'Identify the category of pattern matching where characters or symbols allow matching characters the reappear frequently in a sting.', 4, 36),
('5b141f1e83', 37, 'Identify the correct method for displaying an image on a web page.', 4, 37),
('5b141f1e83', 38, 'Which of the following options are new form elements introduced in HTML5 (choose 3 correct answers)', 4, 38),
('5b141f1e83', 39, 'Which of the following meta tags indicates that web application runs in a full screen mode', 4, 39),
('5b141f1e83', 40, 'Identify the correct syntax to create a geolocation object in JavaScript', 4, 40),
('5b141f1e83', 41, 'Which of the following options is text-level semantic tag', 4, 41),
('5b141f1e83', 42, 'which of the following options are correct values for the target attribute of the A element?', 4, 42),
('5b141f1e83', 43, 'Which of the following options are new features in HTML5?', 4, 43),
('5b141f1e83', 44, 'Identify the correct syntax for specifying an inline style for the <p> tag.', 4, 44),
('5b141f1e83', 45, '______________ property of the navigator object retrieves the version number and platform of the browser.', 4, 45),
('5b141f1e83', 46, '____________ styles are placed inside the <head> selection of a particular web page source code.', 4, 46),
('5b141f1e83', 47, 'Identify the attributes of a span tag which is used in specifying a language code for the content in element in XHTML documents', 4, 47),
('5b141f1e83', 48, 'The property OF CSS is used to specify the space between element border and the element content.', 4, 48),
('5b141f1e83', 49, 'Which of the following escapes sequence is used in Java script to insert a horizontal tab in an HTML page', 4, 49),
('5b141f1e83', 50, '_____________ are browser with that have a media question presentation to change the format.', 4, 50),
('5b141f1e83', 51, '____________ is an action where all the content on a web site is checked and compiled into a big list.', 4, 51),
('5b141f1e83', 52, 'What allows swift navigation between different parts of an application.', 4, 52),
('5b141f1e83', 53, 'John find the information displayed at the bottom of the search result extremely useful for identifying long-tail keywords. What is being referred to here?', 4, 53),
('5b141f1e83', 54, 'What promotes an article by increasing visibility?', 4, 54),
('5b141f1e83', 55, 'Visits to a site from links that appear on a different site are referred to as _______.', 4, 55),
('5b141f1e83', 56, 'Which of the following is not a best practice when performing SEO internationalization?', 4, 56),
('5b141f1e83', 57, 'What is an open-source framework designed to create fast load times for mobile pages?', 4, 57),
('5b141f1e83', 58, 'Which is the second largest search engine after Google?', 4, 58),
('5b141f1e83', 59, 'What makes the structure of a grid?', 4, 59),
('5b141f1e83', 60, 'All grid items are placed inside _________.', 4, 60),
('5b141f1e83', 61, 'What component makes a block-level grid container?', 4, 61),
('5b141f1e83', 62, 'In a flexbox, the start point of the cross-axis is ________.', 4, 62),
('5b141f1e83', 63, 'What is a text box control that provides a list of suggestions for users to select from as they type?', 4, 63),
('5b141f1e83', 64, 'To allow multiple addresses in the email field, each address needs to be separated with _______.', 4, 64),
('5b141f1e83', 65, 'In a single <img> tag, use the _______________ attribute to define the image map name.', 4, 65),
('5b141f1e83', 66, 'How many data streams can a Google Analytics property have?', 4, 66),
('5b141f1e83', 67, 'Which of the following is essential to indicate the language that web pages are targeting?', 4, 67),
('5b141f1e83', 68, 'Using someone’s work and publishing it as one’s own is called _______.', 4, 68),
('5b141f1e83', 69, 'What does not allow search engines to crawl?', 4, 69),
('5b141f1e83', 70, 'HTTPS is the secure and most used ______.', 4, 70),
('5b141f1e83', 71, 'Which of the following uses images, charts, and minimal information to convey information?', 4, 71),
('5b141f1e83', 72, 'Ads that block most of a mobile landing page are called _______.', 4, 72),
('5b141f1e83', 73, 'An objective that represents the eventual success or failure of an asynchronous operation is called ______.', 4, 73),
('5b141f1e83', 74, 'To declare a private class field, prefix the name of the class field with ______.', 4, 74),
('5b141f1e83', 75, 'What two features are in JSON?', 4, 75),
('5b141f1e83', 76, 'What does the CSS rule \"display: flex;\" indicate for a flex container?', 4, 76),
('5b141f1e83', 77, 'John needs to adjust the spacing before and between the flex lines. Which property should he ideally use?', 4, 77),
('5b141f1e83', 78, 'The box model refers to the ______ of HTML elements.', 4, 78),
('5b141f1e83', 79, 'Identify the correct method to assign the value \"sample.jpg\" to the SRC attribute of the IMG tag with the id \"img1\" using the document object.', 4, 79),
('5b141f1e83', 80, '—-------is used to point to a specific location in the document.', 4, 80),
('5b141f1e83', 81, '—------------------ property of the navigator object retrieves the version number and platform of the browser.', 4, 81),
('5b141f1e83', 82, '—------------ styles are placed inside the <head> selection of a particular web page source code.', 4, 82),
('5b141f1e83', 83, 'Identify the attribute of a span tag which is used in specifying a language code for the content in an element, in XHTML documents.', 4, 83),
('5b141f1e83', 84, 'The property of css is used to specify the space between element border and the element content.', 4, 84),
('5b141f1e83', 85, 'Which of the following escape sequence is used in JavaScript to insert a horizontal tab in an HTML page?', 4, 85),
('5b141f1e83', 86, 'Which of the following options are new input types in HTML5? (choose 3 correct answers)', 4, 86),
('5b141f1e83', 87, 'Which of the following options is a composite data type in JavaScript?', 4, 87),
('5b141f1e83', 88, 'Which of the following browsers require the -webkit- prefix to support CSS3? (choose 2 correct answers).', 4, 88),
('5b141f1e83', 89, 'Which of the following options are valid values that can be assigned to the text-decoration property? (choose 3 correct answers)', 4, 89),
('5b141f1e83', 90, 'To use an event on a page using jQuery, in which of the following function should the user call the event?', 4, 90),
('5b141f1e83', 91, 'Identify the correct syntax to declare a pseudo-class.', 4, 91),
('5b141f1e83', 92, '—---------- storage keeps track of data specific to one window or tab and discards it as soon as the user closes the tab.', 4, 92),
('5b141f1e83', 93, 'An instance of a page being loaded or related in a browser called a —---------', 4, 93),
('5b141f1e83', 94, 'Which overview report in Google Analytics shows a graph of the number of visitors each day?', 4, 94),
('5b141f1e83', 95, 'The acquisition overview report tells —------', 4, 95),
('5b141f1e83', 96, 'Which of the following first developed domain authority?', 4, 96),
('5b141f1e83', 97, '—-------- is the continuous process for gaining new and relevant links.', 4, 97),
('5b141f1e83', 98, 'Use of compressed image decreases —------------', 4, 98),
('5b141f1e83', 99, 'Which of the following options will be correctly identified by the pattern/[^AB] PQ/?', 4, 99);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` varchar(50) DEFAULT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `correct`, `wrong`, `total`, `date`) VALUES
('5b141f1e83', 'topic 1', '3', 1, 99, '2023-06-20 19:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('suha@gmail.com', -110, '2023-06-20 17:45:37'),
('sarah@gmail.com', -97, '2023-06-20 19:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `college`, `email`, `password`) VALUES
('sarah', 'ned', 'sarah@gmail.com', 'Sarahquiz'),
('Suha', 'ned', 'suha@gmail.com', 'Suhaquiz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
