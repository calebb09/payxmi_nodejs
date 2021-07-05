-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 01:37 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `andrqeah_pay2wallet`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `sn` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(1255) NOT NULL,
  `permissions` varchar(25550) NOT NULL DEFAULT '1',
  `role` varchar(15) NOT NULL,
  `active` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`sn`, `email`, `password`, `permissions`, `role`, `active`) VALUES
(1, 'admin@gmail.com', 'sha256:1000:MTA4OGU2MzAwMzg3NThjMWQwNDllOGU3OWMzZWJkYTk=:CuEanNEztUMbzmpcFQUXQou8JZOLANHw', '1', '', 1),
(5, 'testing@gmail.com', 'sha256:1000:MTA4OGU2MzAwMzg3NThjMWQwNDllOGU3OWMzZWJkYTk=:CuEanNEztUMbzmpcFQUXQou8JZOLANHw', 'customer, content', 'admin', 1),
(4, 'codegente@gmail.com', 'sha256:1000:MTA4OGU2MzAwMzg3NThjMWQwNDllOGU3OWMzZWJkYTk=:lQNLDOHxb88Ynm/L0xBddcPe07Rn/GHq', 'transaction, customer, content, staff', '', 1),
(6, 'codegente@gmail.comx', 'sha256:1000:MTA4OGU2MzAwMzg3NThjMWQwNDllOGU3OWMzZWJkYTk=:CuEanNEztUMbzmpcFQUXQou8JZOLANHw', 'content, staff, banner', '', 1),
(7, 'codegente22@gmail.com', 'sha256:1000:MTA4OGU2MzAwMzg3NThjMWQwNDllOGU3OWMzZWJkYTk=:CuEanNEztUMbzmpcFQUXQou8JZOLANHw', 'customer, content, staff', '', 1),
(8, 'masresha@cdi24.com', '$2b$16$zH382E.P2KkqZJIfg77SWeSp/wVlzue4m6NMP/UU/DhwVQS/wLCv.', 'super_admin', 'super_admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `sn` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `bank_name` varchar(1255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `iban` varchar(255) NOT NULL,
  `bic` varchar(255) NOT NULL,
  `is_default` varchar(22) NOT NULL DEFAULT '0',
  `created_at` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`sn`, `user_id`, `bank_name`, `account_number`, `iban`, `bic`, `is_default`, `created_at`) VALUES
(1, '11', 'Cassa Centrale Raiffeisen', '4.444-0', 'IT1827XK444309993AT', 'RZSBIT', '0', '1609401198'),
(2, '11', 'State Bank of Ethiopia', '6465455515', 'ITX45354556', '7y87uuguy', '0', '1609655528'),
(3, '12', 'BMP', '12345678', 'IT123456789088900000', 'BMP0944', '0', '1609829411'),
(4, '11', 'refwq', 'ed', 'de', 'ed', '0', '1610009031'),
(5, '12', 'Intesa san Paolo', '12345', 'IT1236892628182727282828N', 'BIC0221', '1', '1610024521'),
(6, '12', 'Other Bank', '123456087', 'IT266739474939292', 'BIC29228', '0', '1610348958'),
(7, '14', 'Cassa centeral', '4.444-001', 'IT516717277272827', 'CC177373', '1', '1610957685'),
(8, '14', 'SBI', '34555677', 'IT45676556777644', 'SBHHH445664', '0', '1610957969'),
(9, '12', 'BPM', '1234567', 'IT23475147893963567387527', 'BIC0024BPN', '0', '1611127279'),
(10, '12', 'BNP', '20120000', 'IT0005467890987665468', 'BIC95000', '0', '1611934268'),
(11, '12', 'Intesa', '0000', 'IT1234567', 'BIC12345', '0', '1611934646'),
(12, '14', 'bshbs', '', 'hsbd', 'vdb', '0', '1612016094');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `sn` int(11) NOT NULL,
  `data_key` varchar(255) NOT NULL,
  `data` varchar(45222) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`sn`, `data_key`, `data`) VALUES
(1, 'terms', 'Terms and conditions'),
(2, 'about', '<p>&nbsp;</p>\r\n\r\n<p>About us</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(3, 'privacy', '<p>Thank you for choosing to be part of our community&nbsp;</p>\r\n'),
(5, 'guidelines', '<h2><strong>Why do I Need to Complete KYC?</strong></h2>\r\n\r\n<p>Wallet services provided by Paytm Payments Bank are governed under the&nbsp;<a href=\"https://rbi.org.in/Scripts/BS_ViewMasDirections.aspx?id=11142\" target=\"_blank\">RBI guidelines of pre-paid instruments</a>. These guidelines require that for issuing Wallet to customer Minimum KYC must be completed. Further, Minimum KYC is valid for 24 months. For using Wallet beyond 24 months as well as for availing complete benefits of Wallet, Full KYC needs to be completed.&nbsp;</p>\r\n\r\n<p>Also, for availing Savings Account services (optional) provided by Paytm Payments Bank, Full KYC needs to be completed.</p>\r\n\r\n<p>Minimum KYC allows you partial access to benefits of Paytm Wallet. With you minimum KYC wallet you&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Can pay to 12 Million+ Merchants who accept Paytm</li>\r\n	<li>Can pay online on any app/website</li>\r\n	<li>Maintain balance up to â‚¹10,000 per month</li>\r\n	<li>Cannot send money to a friend&rsquo;s wallet</li>\r\n	<li>Cannot transfer money to the bank</li>\r\n	<li>Cannot keep the balance of up to â‚¹1,00,000</li>\r\n	<li>Cannot open Savings Account</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>How do I Complete my Minimum KYC?</h2>\r\n\r\n<p>In case your Minimum KYC is not complete, you will see an exclamation mark against your Name in the flyout menu that opens from the left. Tapping on your name will take you to the profile page where you will see a banner showing you that your wallet is not active. Tapping on the banner will take you to the screen where you can provide your Name and Unique identification number of any of Passport, Voter ID, Driving License or NREGA Job Card.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>What Happens if I Don&rsquo;t Complete my Minimum KYC?</h2>\r\n\r\n<p>Minimum KYC is required for using Wallet. Without Minimum KYC it is still possible for you to use Paytm for UPI money transfer and make purchases using credit/debit cards and net-banking.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>What Happens if my Minimum KYC Expires?</h2>\r\n\r\n<p>As per&nbsp;<a href=\"https://rbi.org.in/Scripts/BS_ViewMasDirections.aspx?id=11142\" target=\"_blank\">RBI guidelines</a>, your Minimum KYC will expire in 24 months unless you complete Full KYC with in-person verification. After expiry, you will not be able to add money to your wallet or transfer the balance amount to your bank account. You can however continue to use your existing wallet balance for making payments at 12 Million+ merchant outlets as well as online payments on apps/websites accepting Paytm. You can also continue to use Paytm for UPI money transfer and make purchases using credit/debit cards and net-banking.&nbsp;</p>\r\n\r\n<h2>How do I Know if my Minimum KYC is Complete and When is it Expiring?</h2>\r\n\r\n<p>If your Minimum KYC is complete, you will see a KYC icon on Paytm Home Page on the Blue Strip at the top. On tapping on this icon you will be able to see details of your Minimum KYC expiry date. In case your Minimum KYC has expired, it will be mentioned on this screen.</p>\r\n\r\n<h2>What is Full KYC and What are the Benefits of Completing Full KYC?</h2>\r\n\r\n<p>You can become a full KYC customer once you complete your in-person verification. By becoming a full KYC verified customer, you will get the following benefits:</p>\r\n\r\n<ul>\r\n	<li>The amount of money you can hold in your wallet gets upgraded from â‚¹10,000 to â‚¹1,00,000</li>\r\n	<li>No spending limit on your wallet account</li>\r\n	<li>You can transfer money to any other wallet or bank account</li>\r\n	<li>You become eligible to open Paytm Payments Bank Savings Account</li>\r\n</ul>\r\n\r\n<p>Click&nbsp;<a href=\"http://m.p-y.tm/kyc\" target=\"_blank\">here</a>&nbsp;to complete your Full KYC.</p>\r\n\r\n<h2>How do I Complete my Full KYC?</h2>\r\n\r\n<p>To become a Full KYC customer, you need to complete in-person verification in any of the following ways:</p>\r\n\r\n<p>1.&nbsp;<strong>Aadhaar based KYC at your Nearby KYC Point:</strong>&nbsp; You can find Nearby KYC points by tapping on&nbsp;<a href=\"http://m.p-y.tm/kyc\" target=\"_blank\">http://m.p-y.tm/kyc</a>&nbsp;on your smartphone or visiting&nbsp;<a href=\"https://www.paytmbank.com/Policies/non-aadhaar-kyc-point\" target=\"_blank\">this link</a>&nbsp;on your browser. You may also tap on the Nearby icon on the blue strip at the top of Paytm App Home page. You need to carry your Aadhaar and PAN* for verification. You will need to verify your Aadhaar biometrically.</p>\r\n\r\n<p>&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `merchant_links`
--

CREATE TABLE `merchant_links` (
  `sn` int(11) NOT NULL,
  `id` varchar(255) NOT NULL,
  `merchant` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `reason` varchar(1255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merchant_links`
--

INSERT INTO `merchant_links` (`sn`, `id`, `merchant`, `amount`, `reason`, `status`, `created_at`) VALUES
(1, '5111608972053354', '11', '12', 'test generator', '0', '1608972053'),
(2, '8941608972116406', '11', '200', 'testing the project', '0', '1608972116'),
(3, '5141608972171226', '11', '210', 'testing the project', '0', '1608972171'),
(4, '4331608972274358', '11', '320', 'testing the project', '0', '1608972274'),
(5, '5051608973706373', '11', '25', 'payment for letting me know if you have to be a great day', '0', '1608973706'),
(6, '4181609829265297', '12', '20', 'for rent', '0', '1609829265'),
(7, '4831612002843112', '12', '20', 'rent', '0', '1612002843'),
(8, '1491613052236812', '14', '10', 'To recieve payment', '0', '1613052236');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `sn` int(11) NOT NULL,
  `user` varchar(255) NOT NULL DEFAULT '0',
  `msg` varchar(1255) NOT NULL,
  `redirect` varchar(255) NOT NULL DEFAULT '0',
  `extra` varchar(2555) NOT NULL DEFAULT '',
  `created_at` varchar(22) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`sn`, `user`, `msg`, `redirect`, `extra`, `created_at`) VALUES
(1, '', 'Codegente Jaipur request â‚¬ 12 for recent payment split', '1', '3;12', '1603363076'),
(2, '', 'Codegente Jaipur request â‚¬ 6 for recent payment split', '1', '3;6', '1603363303'),
(3, '', 'Codegente Jaipur request â‚¬ 6 for recent payment split', '1', '3;6', '1603363353'),
(4, '', 'Codegente Jaipur request â‚¬ 6 for recent payment split', '1', '3;6', '1603363374'),
(7, '2', 'Codegente Jaipur request â‚¬ 6 for recent payment split', '1', '8740060004;6', '1603363756'),
(8, '2', 'Codegente Jaipur request â‚¬ 6 for recent payment split', '1', '8740060004;6', '1603363854'),
(9, '2', 'Your recieved â‚¬ 10 from Codegente Jaipur', '2', '', '1603365217'),
(11, '2', 'Codegente Jaipur request â‚¬ 5 for recent payment split', '1', '8740060004;5', '1603365253'),
(12, '3', 'Your recieved â‚¬ 5 from Codegente Jaipur', '2', '', '1603365280');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_transactions`
--

CREATE TABLE `paypal_transactions` (
  `sn` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `amount` int(12) NOT NULL,
  `created_at` varchar(22) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paypal_transactions`
--

INSERT INTO `paypal_transactions` (`sn`, `user_id`, `transaction_id`, `amount`, `created_at`) VALUES
(1, '2', 'PAYID-L6DJKYA5KJ64096T91444440', 5, '1602655593'),
(2, '2', 'PAYID-L6DJL2Y7UE22340WJ578942U', 5, '1602655728'),
(3, '2', 'PAYID-L6DKEMQ365411046M0016326', 5, '1602658871'),
(4, '3', 'PAYID-L6EUFLI6PX5325279067153N', 100, '1602831027'),
(5, '3', 'PAYID-L6FMKFQ9PB16973J1733382E', 200, '1602929953'),
(6, '3', 'PAYID-L6FM5GY94V23133H9509014V', 12, '1602932386'),
(7, '4', 'PAYID-L6KWYCY7SY84355B2878320V', 50, '1603628050');

-- --------------------------------------------------------

--
-- Table structure for table `promotional_slider`
--

CREATE TABLE `promotional_slider` (
  `sn` int(11) NOT NULL,
  `image` varchar(1255) NOT NULL,
  `redirect` varchar(22) NOT NULL,
  `active` varchar(22) NOT NULL DEFAULT '1',
  `created_at` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promotional_slider`
--

INSERT INTO `promotional_slider` (`sn`, `image`, `redirect`, `active`, `created_at`) VALUES
(1, 'upload/banner_banner_1.jpg', '2', '2', '1555669853'),
(2, 'upload/unnamed.jpg', '3', '1', '1555669853');

-- --------------------------------------------------------

--
-- Table structure for table `settlement`
--

CREATE TABLE `settlement` (
  `sn` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `reason` varchar(1255) NOT NULL,
  `account_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settlement`
--

INSERT INTO `settlement` (`sn`, `user_id`, `amount`, `reason`, `account_id`, `status`, `created_at`) VALUES
(1, '11', '28', '', '', '1', '1609675378'),
(2, '14', '2', 'vdscdc', '2', '1', '1609675486'),
(3, '12', '0', '', '3', '1', '1610349017');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `sn` int(11) NOT NULL,
  `user_customers` int(11) NOT NULL,
  `tokens` text NOT NULL,
  `revoked` int(1) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id`, `sn`, `user_customers`, `tokens`, `revoked`, `updated_at`, `date_created`) VALUES
(1, 8, 0, 'D0zGTkNtZoHp3ZsnHhFzxfllMANrYxWGsdahcte7GIvIQD3T8UMP28FXBMeIDY1FBSj3eHBAY/eLtInD6iXdxQ==', 1, '2021-06-20 12:07:14', '0000-00-00 00:00:00'),
(2, 0, 17, 'i4L1iHTgXbgKsRbucdF7oQbs+ephouv2QCE2eomqxfuRXXR19OXPwtPohd181Oj1vhfb3c2NyC7Sz+ThYOaIZQ==', 1, '2021-06-21 02:41:33', '2021-06-20 10:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_bank`
--

CREATE TABLE `transaction_bank` (
  `sn` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` int(20) NOT NULL,
  `reference_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_card`
--

CREATE TABLE `transaction_card` (
  `sn` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `reference_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE `transaction_history` (
  `sn` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `receiverID` int(11) NOT NULL,
  `amount` int(255) NOT NULL,
  `type` varchar(22) NOT NULL,
  `trans_type` int(1) NOT NULL,
  `extra_info` varchar(255) NOT NULL,
  `created_at` varchar(22) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_history`
--

INSERT INTO `transaction_history` (`sn`, `user_id`, `receiverID`, `amount`, `type`, `trans_type`, `extra_info`, `created_at`) VALUES
(1, '2', 0, 5, '1', 0, '', '1602658871'),
(2, '3', 0, 100, '1', 0, '', '1602831027'),
(3, '3', 0, 20, '2', 0, '8740090005', '1602924792'),
(4, '2', 0, 20, '3', 0, '8740060004', '1602924792'),
(5, '3', 0, 20, '2', 0, '8740090005', '1602924792'),
(6, '2', 0, 20, '3', 0, '8740060004', '1602924792'),
(7, '3', 0, 20, '2', 0, '8740090005', '1602924793'),
(8, '2', 0, 20, '3', 0, '8740060004', '1602924793'),
(9, '3', 0, 20, '2', 0, '8740090005', '1602924793'),
(10, '2', 0, 20, '3', 0, '8740060004', '1602924793'),
(11, '3', 0, 20, '2', 0, '8740090005', '1602924794'),
(12, '2', 0, 20, '3', 0, '8740060004', '1602924794'),
(13, '3', 0, 200, '1', 0, '', '1602929953'),
(14, '3', 0, 15, '2', 0, '8740090005', '1602931099'),
(15, '2', 0, 15, '3', 0, '8740060004', '1602931099'),
(16, '3', 0, 15, '2', 0, '8740090005', '1602931190'),
(17, '2', 0, 15, '3', 0, '8740060004', '1602931190'),
(18, '3', 0, 7, '2', 0, '8740090005', '1602931235'),
(19, '2', 0, 7, '3', 0, '8740060004', '1602931235'),
(20, '3', 0, 20, '2', 0, '8740090005', '1602931920'),
(21, '2', 0, 20, '3', 0, '8740060004', '1602931920'),
(22, '3', 0, 12, '1', 0, '', '1602932386'),
(32, '3', 0, 532, 'wallet', 0, '', '1606298305'),
(24, '2', 0, 12, '3', 0, '8740060004', '1602932387'),
(25, '2', 0, 10, '2', 0, '8740060004', '1603085607'),
(26, '3', 0, 10, '3', 0, '8740090005', '1603085607'),
(27, '3', 0, 10, '2', 0, '8740090005', '1603365217'),
(28, '2', 0, 10, '3', 0, '8740060004', '1603365217'),
(29, '2', 0, 5, '2', 0, '8740060004', '1603365280'),
(30, '3', 0, 5, '3', 0, '8740090005', '1603365280'),
(31, '4', 0, 50, '1', 0, '', '1603628050'),
(33, '3', 0, 521, '2', 0, 'Testing', '1606298376');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sn` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'customer',
  `mobile` varchar(555) NOT NULL,
  `name` varchar(555) NOT NULL,
  `email` varchar(512) NOT NULL,
  `password` varchar(512) NOT NULL,
  `wallet` int(155) NOT NULL DEFAULT 0,
  `kyc` varchar(12) NOT NULL DEFAULT '0' COMMENT '0 - Pending | 1 - Docs | 2 - Selfie | 3 - Confirmed | 4 - Cancelled',
  `country` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `token` varchar(1024) NOT NULL DEFAULT '',
  `wallet_limit` int(21) NOT NULL DEFAULT 2000,
  `active` varchar(1) NOT NULL DEFAULT '1',
  `settlement` varchar(22) NOT NULL DEFAULT '',
  `created_at` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sn`, `type`, `mobile`, `name`, `email`, `password`, `wallet`, `kyc`, `country`, `country_code`, `token`, `wallet_limit`, `active`, `settlement`, `created_at`) VALUES
(2, 'customer', '8740090005', 'Codegente Jaipur', 'codegente@gmail.com', 'e1adc3949ba59abbe56e057f2f883e', 174, '3', 'India', '91', 'ceacceeeeb779b6a8f9eafe615a60f19', 2000, '1', '', '1602149546'),
(3, 'customer', '8740060004', 'Codegente Jaipur', 'codegente@gmail.com', 'b37b81b414b0bf626221ef76f749', 118, '3', 'India', '91', 'a06ab7b598efefc4f3ce40a89b6d3a3d', 2000, '1', '', '1602327682'),
(4, 'customer', '9696969696', 'Codegente Jaipur', 'gh@g.yu', 'e1adc3949ba59abbe56e057f2f883e', 50, '3', 'India', '91', 'c2340838aec906d20b0d98eb67026770', 2000, '1', '', '1603627965'),
(5, 'customer', '3496300382', 'Manas', 'bhuyanmj@gmail.com', 'e1adc3949ba59abbe56e057f2f883e', 2490, '3', 'Italy', '39', '7a15659f1dcbd3d080fc97579a8d3bab', 2000, '1', '', '1603628003'),
(6, 'customer', '3496300383', 'MJ Bhuyan', 'bhuyanmj.online@gmail.com', 'e1adc3949ba59abbe56e057f2f883e', 0, '3', 'Italy', '39', '8fcc2f97e63bc3a8c58c46b945af0858', 2000, '1', '', '1603801060'),
(7, 'customer', '9879879879', 'Codegente Jaipur', 'asd@asd.asd', 'e1adc3949ba59abbe56e057f2f883e', 25900, '3', 'India', '91', 'fa154ea7ce98d96a3e73f8bccd7beee1', 200022, '1', '', '1603881276'),
(9, 'customer', '3781305873', 'francesco foresti', 'forestifra@gmail.com', 'acbd9ab2f68bea3f5291f825416546a1', 0, '3', 'Italy', '39', '7e4626b8dcd4bebde308ca1639e7a360', 2000, '1', '', '1607790703'),
(10, 'customer', '3282669228', 'alessandro', 'lsn.lodigiani@gmail.com', '25d55ad283aa40af464c76d713c7ad', 10, '0', 'Italy', '39', '385273a20f005f5e350520bfae0ecbbe', 2000, '1', '', '1607790937'),
(11, 'merchant', '7014965550', 'Codegente Jaipur', 'codegentemer@gmail.com', 'b37b81b414b0bf626221ef76f749', 80, '3', 'India', '91', '3808b9ae5d1b9276ae89f261047d49e0', 2000, '1', '', '1608886618'),
(12, 'merchant', '9957031792', 'MJ', 'bhuyanmj@hotmail.com', 'e1adc3949ba59abbe56e057f2f883e', 10, '3', 'India', '91', 'ea98877bd5aae96c41b4cb99471dfb7f', 2000, '1', 'monthly', '1609829147'),
(13, 'merchant', '8740060001', 'Pankaz', 'asd@as.jn', 'b37b81b414b0bf626221ef76f749', 4, '3', 'India', '91', 'af4a4bbd07cac7567c8201d4b16a95a6', 2000, '1', '', '1610899468'),
(14, 'merchant', '8740060002', 'Codegente Jaipur', 'codegente@gmazil.com', 'b37b81b414b0bf626221ef76f749', 400, '3', 'India', '91', 'd9e417bb2f47ae7d75770ec8d4a965b9', 2000, '1', 'monthly', '1610949666'),
(15, 'customer', '3518339643', 'ManasJ', 'payxmi.holding@gmail.com', 'e1adc3949ba59abbe56e057f2f883e', 0, '3', 'Italy', '39', '6e8604ab45f31a7420ecbe113b650f6e', 2000, '1', '', '1611955076'),
(16, 'customer', '3381847423', 'Andres Farfan', 'farfangrandasandres@gmail.com', '35acc28f8e3be8ed80d8ea4bb3249012', 0, '0', 'Italy', '39', 'ee98f86e871153d0e1800d1d5bc478ba', 2000, '1', '', '1619987262'),
(17, 'customer', '+251913221899', 'Caleb Bogale', 'calebb090@gmail.com', '$2b$16$bd.1s.3hKf7T1rxmhJoyJuCSvPI/nJ5Q9gOaKcH/xX4ck1FnUlsU6', 0, '0', 'Ethiopia', '153', '', 2000, '1', '', '1624196102.383');

-- --------------------------------------------------------

--
-- Table structure for table `users_kyc`
--

CREATE TABLE `users_kyc` (
  `sn` int(11) NOT NULL,
  `user_id` varchar(12) NOT NULL,
  `document_type` varchar(255) NOT NULL,
  `front_side` varchar(1255) NOT NULL,
  `back_side` varchar(1255) NOT NULL,
  `selfie` varchar(1255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_kyc`
--

INSERT INTO `users_kyc` (`sn`, `user_id`, `document_type`, `front_side`, `back_side`, `selfie`) VALUES
(5, '2', 'Driving Licence', '3e919f5ea817fc2320748e78271958cb.jpg', '4161f5ba70a1aea4ab60546e434cadb3.jpg', '346e410311bb37061fd722d055beea75.'),
(4, '3', 'Identity Card', '7187010a8eff32b093b2ea1a2870bf89.jpg', 'b058f56cce84353f79435e5219861e8f.jpg', '5f51f236e35bb0bcfd4d673523de20aa.'),
(6, '4', 'Identity Card', '57f3e52e12db4a7b63e8c9012908d0ec.jpg', 'ca47247087c7583fba794bb16e0132a3.jpg', 'acf685bb1e7395281df230e57aec9879.'),
(7, '5', 'Passport', '932031a51899ef5d24653e0dc2dba236.jpg', 'e6286ec91e032d43b5841273bf9e2149.jpg', '6a8ae221239c757d98221d8dcb31a636.'),
(8, '6', 'Passport', '8f82fb0eaf11d083eda326721d575ac2.jpg', '3be404f2751e10e5bbfde167fe7533f9.jpg', '8bdf3186968cc2362a3ecc7ab56e928d.'),
(9, '7', 'Identity Card', '92e3f25b0f37291f57d1c892f8ea0158.jpg', '3e58a2d5e4a651d3bcc06ff3d9874f52.jpg', 'e4e807c5019186e8d28febb7ac13b24c.'),
(10, '8', 'Passport', '86dc80bc643bd2833f1ac43018e7ead3.jpg', '6badf4dfed8b4a926b22b59b0ae35cc0.jpg', 'b303e09e5fc2bd6a603b8162fb546acc.'),
(11, '9', 'Passport', 'fbfe2cfbaed627365d164dda303833ae.jpg', 'c84b1c56a88a27a81476e25aa9075e3c.jpg', '7a5d2e8981e73272e675d709a1d3abd6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `merchant_links`
--
ALTER TABLE `merchant_links`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `paypal_transactions`
--
ALTER TABLE `paypal_transactions`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `promotional_slider`
--
ALTER TABLE `promotional_slider`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `settlement`
--
ALTER TABLE `settlement`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_bank`
--
ALTER TABLE `transaction_bank`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `transaction_card`
--
ALTER TABLE `transaction_card`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `users_kyc`
--
ALTER TABLE `users_kyc`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `merchant_links`
--
ALTER TABLE `merchant_links`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `paypal_transactions`
--
ALTER TABLE `paypal_transactions`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `promotional_slider`
--
ALTER TABLE `promotional_slider`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settlement`
--
ALTER TABLE `settlement`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction_bank`
--
ALTER TABLE `transaction_bank`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_card`
--
ALTER TABLE `transaction_card`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users_kyc`
--
ALTER TABLE `users_kyc`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
