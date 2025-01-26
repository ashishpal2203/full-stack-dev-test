-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2025 at 09:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acef`
--
CREATE DATABASE IF NOT EXISTS `acef` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `acef`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sector_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `sector_id`, `created_at`, `description`) VALUES
(1, 'Mobile Marketing', 1, '2024-10-09 10:17:22', 'App engagement metrics (downloads, session times), Examples of mobile-specific creatives (mobile ads, notifications), User interaction data (click-throughs, conversions from mobile devices), 500 Words Write up (Give Justification and briefly explain the c'),
(2, 'Radio', 1, '2024-10-09 10:17:22', 'Audio clips of radio ads or segments, Listener ratings or surveys, Post-campaign brand awareness reports, 500 Words Write up (Give Justification and briefly explain the core goal of the campaign and why it deserves to win)'),
(3, 'Print & Publishing', 1, '2024-10-09 10:17:22', 'Images of the print ads, Circulation data and audience demographics, Post-campaign brand recall or awareness studies, 500 Words Write up (Give Justification and briefly explain the core goal of the campaign and why it deserves to win)'),
(4, 'Television', 1, '2024-10-09 10:17:22', 'Video clips of the TV ad, Viewership and TRP ratings during the ad airing, Impact on brand awareness or sales data after the campaign, 500 Words Write up (Give Justification and briefly explain the core goal of the campaign and why it deserves to win)'),
(5, 'Out Of Home Media (OOH)', 1, '2024-10-09 10:17:22', 'Photos or videos of the outdoor ads in context, Impressions data (foot traffic or vehicle counts), Campaign impact studies (brand recall surveys, regional sales uplift), 500 Words Write up (Give Justification and briefly explain the core goal of the campa'),
(6, 'Cinema', 1, '2024-10-09 10:17:22', 'Videos or images of cinema ads, Attendance and engagement data for cinema events or activations, 500 Words Write up (Give Justification and briefly explain the core goal of the campaign and why it deserves to win)'),
(7, 'Retail Touch Points & Merchandising', 1, '2024-10-09 10:17:22', 'Photos or videos of in-store displays and merchandising, Sales uplift reports from the campaign period, Customer feedback or survey data, 500 Words Write up (Give Justification and briefly explain the core goal of the activity and why it deserves to win)'),
(8, 'Events', 1, '2024-10-09 10:17:22', 'Event photos or videos, Attendee feedback or engagement metrics (registrations, post-event surveys), Brand impact reports (awareness, lead generation), 500 Words Write up (Give Justification and briefly explain the core goal of the activity and why it des'),
(9, 'BTL Activities', 1, '2024-10-09 10:17:22', 'Photos or videos of the BTL activations, Direct response metrics (sign-ups, purchases), Post-campaign customer engagement data, 500 Words Write up (Give Justification and briefly explain the core goal of the activity and why it deserves to win)'),
(10, 'Non-Traditional Media', 1, '2024-10-09 10:17:22', 'Examples of non-traditional media (ambient advertising, guerilla marketing), Audience interaction data (impressions, foot traffic), Brand recall and customer feedback, 500 Words Write up (Give Justification and briefly explain the core goal of the activit'),
(11, 'Data-Driven Marketing', 1, '2024-10-09 10:17:22', 'Data analytics reports showcasing audience segmentation and targeting, Personalization examples (emails, ads, landing pages), Performance metrics (conversion rates, engagement scores), 500 Words Write up (Give Justification and briefly explain the core go'),
(12, 'Email Marketing', 1, '2024-10-09 10:17:22', 'Email creatives (design and content), Open rate, click-through rate, and conversion metrics, Customer feedback or responses, 500 Words Write up (Give Justification and briefly explain the core goal of the campaign and why it deserves to win)'),
(13, 'Customer Service', 1, '2024-10-09 10:17:22', 'Examples of customer service initiatives (live chat, help desks), Customer satisfaction surveys (CSAT, NPS), Impact reports (repeat customer rate, retention), 500 Words Write up (Give Justification and briefly explain the core goal of the activity and why'),
(14, 'Experiential Marketing', 1, '2024-10-09 10:17:22', 'Photos and videos of the experiential activations, Customer feedback or post-experience surveys, Brand impact and engagement reports, 500 Words Write up (Give Justification and briefly explain the core goal of the activity and why it deserves to win)'),
(15, 'Public Relations (PR)', 1, '2024-10-09 10:17:22', 'Press releases, media coverage examples, Media impact analysis (mentions, share of voice), Audience feedback from PR-driven activities, 500 Words Write up (Give Justification and briefly explain the core goal of the activity and why it deserves to win)'),
(16, 'Social Media App', 1, '2024-10-09 10:17:22', 'Screenshots or video demos of app features used for engagement, User engagement data (daily active users, in-app interactions), Customer reviews or feedback on app experience, 500 Words Write up (Give Justification and briefly explain the core goal and wh'),
(17, 'AI-Powered Engagement', 1, '2024-10-09 10:17:22', 'Demonstration of AI tools or features used, Engagement data or customer interaction reports powered by AI, Testimonials or feedback on AI-driven personalization, 500 Words Write up (Give Justification and briefly explain the core goal and why it deserves '),
(18, 'Online Media', 1, '2024-10-09 10:17:22', 'Links or examples of online media used, Engagement data (views, comments, shares), Audience feedback or interaction reports, 500 Words Write up (Give Justification and briefly explain the core goal and why it deserves to win)'),
(19, 'Word of Mouth Marketing', 1, '2024-10-09 10:17:22', 'Campaign creative or narrative that generated word-of-mouth, Social listening reports or user-generated content examples, Brand sentiment and impact analysis, 500 Words Write up (Give Justification and briefly explain the core goal of the activity and why'),
(20, 'Most Admired Social Message', 1, '2024-10-09 10:17:22', 'Campaign materials (videos, banners, messaging), Audience engagement and sentiment reports, Feedback or testimonials on the social impact of the message, 500 Words Write up (Give Justification and briefly explain the core goal and why it deserves to win)'),
(21, 'Rewards and Incentives', 1, '2024-10-09 10:17:22', 'Examples of loyalty programs, rewards initiatives, Participation and redemption data, Customer satisfaction and loyalty reports, 500 Words Write up (Give Justification and briefly explain the core goal of the initiative and why it deserves to win)'),
(22, 'OTT Platform', 1, '2024-10-09 10:17:22', 'Video ads or branded content examples, Viewership data, engagement metrics (streaming, views, completion rates), Audience feedback or survey data on OTT engagement, 500 Words Write up (Give Justification and briefly explain the core goal of the activity a'),
(90, 'Influencer Marketing Award', 2, '2024-10-14 11:12:28', NULL),
(91, 'Award for Best Podcast ', 3, '2024-10-14 11:19:23', NULL),
(92, 'Excellence Honor', 4, '2024-10-14 11:20:24', NULL),
(93, 'Grand Prix Award Category (Organisation Award)', 5, '2024-10-14 11:21:05', '<p><strong>Criteria:</strong> Effectiveness of OTT platforms in engaging audiences through content.</p>\r\n<p><strong>Suggested Supportives:</strong></p>\r\n<ul>\r\n    <li>Viewership metrics and audience engagement data</li>\r\n    <li>Content examples (shows, a');

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE `sector` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`id`, `name`, `created_at`) VALUES
(1, 'MEDIUMS Marketing', '2024-10-09 09:57:25'),
(2, 'INFLUENCER Marketing', '2024-10-09 09:57:25'),
(3, 'PODCAST Categories', '2024-10-09 09:57:25'),
(4, 'Individual Excellence Honor', '2024-10-09 09:57:25'),
(5, 'Grand Prix Organisation Award', '2024-10-09 09:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `categorie_id`, `created_at`, `description`) VALUES
(1, 'Innovative', 1, '2024-10-11 08:08:59', 'Use of geotargeting or mobile apps for engagement.'),
(2, 'Creative', 1, '2024-10-11 08:08:59', 'Unique mobile-first content (in-app ads, SMS).'),
(3, 'Effective', 1, '2024-10-11 08:08:59', 'Strong conversion rates from mobile channels.'),
(4, 'Successful Use of Technology', 1, '2024-10-11 08:08:59', 'Use of AR, location-based services.'),
(5, 'Best Influencer', 90, '2024-10-14 11:17:23', 'Recognizes the most effective collaboration between a brand and an influencer that resulted in outstanding customer engagement.'),
(6, 'Best Use of Micro-Influencers', 90, '2024-10-14 11:17:23', 'Celebrates the most successful campaign leveraging micro-influencers (those with smaller, highly engaged followings) to connect with niche audiences.'),
(7, 'Best Multi-Platform Influencer Campaign', 90, '2024-10-14 11:17:23', 'Awards the best campaign that utilized influencers across multiple platforms (e.g., Instagram, YouTube, TikTok) to create a cohesive and engaging experience.'),
(8, 'Most Innovative Influencer Campaign', 90, '2024-10-14 11:17:23', 'Recognizes a campaign that pushed the boundaries of traditional influencer marketing, using creative approaches to engage customers.'),
(9, 'Best Long-Term Influencer Partnership', 90, '2024-10-14 11:17:23', 'Celebrates a brand that built a strong, ongoing partnership with an influencer, leading to sustained customer engagement over time.'),
(10, 'Best Use of Influencer in a Product Launch', 90, '2024-10-14 11:17:23', 'Awards the best use of influencer marketing to generate buzz and engage customers during a product launch.'),
(11, 'Best Influencer-Led Content Creation', 90, '2024-10-14 11:17:23', 'Recognizes the most engaging and creative content created by influencers/agency as part of a brand campaign.'),
(12, 'Best Use of Influencer Marketing in Social Causes', 90, '2024-10-14 11:17:23', 'Celebrates a campaign where influencers effectively engaged audiences around a social cause, driving both awareness and action.'),
(13, 'Best Regional/Local Influencer Campaign', 90, '2024-10-14 11:17:23', 'Awards the best use of local or regional influencers to engage specific communities or geographic markets.'),
(14, 'Best Influencer Marketing for Brand Awareness', 90, '2024-10-14 11:17:23', 'Recognizes a campaign that successfully used influencer marketing to significantly enhance brand visibility and awareness.'),
(15, 'Best Authentic Influencer Campaign', 90, '2024-10-14 11:17:23', 'Celebrates campaigns where influencers maintained authenticity while engaging their audience, leading to strong brand trust and loyalty.'),
(16, 'Best Use of Influencers in Live Streaming', 90, '2024-10-14 11:17:23', 'Recognizes the best campaign that utilized live streaming with influencers to engage audiences in real-time.'),
(17, 'Best Influencer-Driven Community Engagement', 90, '2024-10-14 11:17:23', 'Celebrates campaigns where influencers successfully fostered a sense of community and engagement among their followers.'),
(18, 'Best Use of Data in Influencer Marketing', 90, '2024-10-14 11:17:23', 'Awards excellence in using data and analytics to select influencers, measure engagement, and optimize influencer marketing strategies.'),
(19, 'BUSINESS', 91, '2024-10-14 11:25:01', 'Recognizing podcasts that offer insights, advice, and stories on entrepreneurship, leadership, and business growth.'),
(20, 'COMEDY', 91, '2024-10-14 11:25:01', 'Celebrating podcasts that deliver humor, satire, or comedic storytelling, guaranteed to entertain and amuse.'),
(21, 'EDUCATION', 91, '2024-10-14 11:25:01', 'Honoring podcasts dedicated to imparting knowledge, skill-building, or academic discussions across various subjects.'),
(22, 'ENTERTAINMENT', 91, '2024-10-14 11:25:01', 'Showcasing podcasts that cover popular culture, celebrity gossip, or engaging discussions about entertainment trends.'),
(23, 'GENERAL PODCASTING', 91, '2024-10-14 11:25:01', 'Recognizing podcasts that don’t fit neatly into one category but offer diverse content for a wide audience.'),
(24, 'HEALTH', 91, '2024-10-14 11:25:01', 'Highlighting podcasts focused on wellness, fitness, mental health, and medical advice to promote healthy living.'),
(25, 'KIDS & FAMILY', 91, '2024-10-14 11:25:01', 'Celebrating podcasts designed for children and family audiences, providing entertainment, education, or parenting tips.'),
(26, 'MUSIC', 91, '2024-10-14 11:25:01', 'Recognizing podcasts that explore music trends, artist interviews, or deep dives into different musical genres.'),
(27, 'NEWS & POLITICS', 91, '2024-10-14 11:25:01', 'Honoring podcasts delivering timely news coverage, political analysis, and discussions on current affairs.'),
(28, 'RELIGION & SPIRITUALITY', 91, '2024-10-14 11:25:01', 'Showcasing podcasts that discuss religious beliefs, spiritual growth, or philosophical reflections.'),
(29, 'SCIENCE & MEDICINE', 91, '2024-10-14 11:25:01', 'Highlighting podcasts focused on scientific discoveries, medical advancements, and explanations of complex topics.'),
(30, 'SOCIETY - CULTURE', 91, '2024-10-14 11:25:01', 'Recognizing podcasts that delve into societal issues, cultural trends, and human experiences.'),
(31, 'SPORTS & RECREATION', 91, '2024-10-14 11:25:01', 'Celebrating podcasts that cover sports news, athlete interviews, and discussions about fitness or outdoor activities.'),
(32, 'STORYTELLER - DRAMA', 91, '2024-10-14 11:25:01', 'Honoring podcasts that offer compelling storytelling, fictional narratives, or audio dramas.'),
(33, 'TECHNOLOGY', 91, '2024-10-14 11:25:01', 'Recognizing podcasts that provide insights into tech trends, gadget reviews, and innovations shaping the digital world.'),
(34, 'TV & FILM', 91, '2024-10-14 11:25:01', 'Celebrating podcasts that review, discuss, or provide behind-the-scenes insights into TV shows and movies.'),
(35, 'Digital Marketing Professional of the Year', 92, '2024-10-14 11:26:32', 'Honoring an individual who has demonstrated exceptional skills and innovation in the field of digital marketing.'),
(36, 'Customer Engagement Professional of the Year', 92, '2024-10-14 11:26:32', 'Recognizing a professional who excels in creating impactful and engaging customer experiences.'),
(37, 'Outdoor Media Professional of the Year', 92, '2024-10-14 11:26:32', 'Celebrating outstanding achievements in utilizing outdoor media to drive brand visibility and engagement.'),
(38, 'Podcast Professional of the Year', 92, '2024-10-14 11:26:32', 'Awarding excellence in podcast creation, storytelling, and audience engagement.'),
(39, 'Influencer Marketer of the Year', 92, '2024-10-14 11:26:32', 'Honoring the most impactful individual in harnessing influencer marketing for brand success.'),
(40, 'Social Media Engagement Leader', 92, '2024-10-14 11:26:32', 'Recognizing leadership in driving high levels of engagement across social media platforms.'),
(41, 'Radio Jockey of the Year (Non Metro - Overall)', 92, '2024-10-14 11:26:32', 'Celebrating the best radio jockey from non-metro regions for their overall impact and on-air presence.'),
(42, 'Radio Jockey of the Year (Metro - Overall)', 92, '2024-10-14 11:26:32', 'Honoring the most exceptional radio jockey from metro regions for their influence and popularity.'),
(43, 'Celebrity Jockey of the Year', 92, '2024-10-14 11:26:32', 'Recognizing a celebrity radio jockey for their unique contribution to the radio industry.'),
(44, 'Apprentice Jockey of the Year', 92, '2024-10-14 11:26:32', 'Awarding a rising star in radio for outstanding talent and potential in broadcasting.'),
(45, 'Radio Jockey of the Year (Regional Languages)', 92, '2024-10-14 11:26:32', 'Celebrating excellence in radio jockeying in regional languages for connecting with diverse audiences.'),
(46, 'International Radio Jockey of the Year', 92, '2024-10-14 11:26:32', 'Recognizing a radio jockey based outside the country for their global impact and reach.'),
(47, 'Data-Driven Engagement Specialist', 92, '2024-10-14 11:26:32', 'Honoring an expert in leveraging data insights to enhance customer engagement and drive results.'),
(48, 'Emcee/Event Host of the Year', 92, '2024-10-14 11:26:32', 'Celebrating the best emcee or event host for delivering memorable and engaging live experiences.'),
(49, 'News Anchor of the Year', 92, '2024-10-14 11:26:32', 'Awarding a news anchor who excels in delivering news with clarity, insight, and authority.'),
(50, 'Young Customer Engagement Professionals of the Year (Brand) - Age Below 35 years', 92, '2024-10-14 11:26:32', 'Recognizing a young professional from a brand who has made significant strides in customer engagement.'),
(51, 'Young Customer Engagement Professionals of the Year (Agency Professional) - Age Below 35 years', 92, '2024-10-14 11:26:32', 'Honoring a young agency professional for their innovative contributions to customer engagement strategies.'),
(52, 'Digital Marketing Agency for Customer Engagement', 93, '2024-10-14 11:27:42', 'Celebrating an agency excelling in using digital marketing to foster exceptional customer engagement.'),
(53, 'Digital Marketing Agency of the Year (Less than 10 Employees)', 93, '2024-10-14 11:27:42', 'Recognizing a small but impactful digital marketing agency for outstanding performance in customer engagement.'),
(54, 'Influencer Marketing Agency of the Year', 93, '2024-10-14 11:27:42', 'Honoring the agency that leads in leveraging influencer marketing to drive brand success.'),
(55, 'Mobile Marketing Agency for Customer Engagement', 93, '2024-10-14 11:27:42', 'Celebrating an agency that uses mobile platforms to create meaningful customer engagement.'),
(56, 'Mobile Marketing Agency for Customer Engagement (Less than 10 Employees)', 93, '2024-10-14 11:27:42', 'Recognizing a small mobile marketing agency excelling in engaging customers through mobile channels.'),
(57, 'Podcast Agency of the Year', 93, '2024-10-14 11:27:42', 'Awarding the top agency producing impactful and engaging podcasts for brands.'),
(58, 'Creative Agency of the Year', 93, '2024-10-14 11:27:42', 'Honoring an agency that delivers exceptional creativity and innovation across marketing campaigns.'),
(59, 'Advertising Agency of the Year', 93, '2024-10-14 11:27:42', 'Celebrating the best advertising agency for outstanding execution and client success.'),
(60, 'Data Driven Marketing Agency of the Year', 93, '2024-10-14 11:27:42', 'Recognizing the agency that leads in using data analytics to drive marketing strategies and engagement.'),
(61, 'Radio Station for Customer Engagement', 93, '2024-10-14 11:27:42', 'Celebrating a radio station that excels in creating engaging content that resonates with its audience.'),
(62, 'BTL Agency for Customer Engagement', 93, '2024-10-14 11:27:42', 'Honoring an agency specializing in below-the-line marketing to foster customer connections.'),
(63, 'Newspaper for Customer Engagement', 93, '2024-10-14 11:27:42', 'Recognizing a newspaper that delivers content that effectively engages its readers and supports brand interaction.'),
(64, 'Television Channel for Customer Engagement', 93, '2024-10-14 11:27:42', 'Celebrating a television channel that excels in creating compelling content that drives viewer engagement.'),
(65, 'OOH Agency for Customer Engagement', 93, '2024-10-14 11:27:42', 'Honoring an agency that leverages out-of-home media to build strong customer engagement experiences.'),
(66, 'AI Marketing Agency of the Year', 93, '2024-10-14 11:27:42', 'Awarding an agency at the forefront of using AI to enhance marketing and customer engagement strategies.'),
(67, 'Customer Engagement Team of the Year (Agency)', 93, '2024-10-14 11:27:42', 'Recognizing an agency team that excels in delivering outstanding customer engagement campaigns.'),
(68, 'Customer Engagement Team of the Year (Brand)', 93, '2024-10-14 11:27:42', 'Celebrating a brand’s team for their innovative and effective customer engagement strategies.'),
(69, 'OTT Platform of the Year', 93, '2024-10-14 11:27:42', 'Honoring the top over-the-top (OTT) platform that excels in delivering content that engages audiences.'),
(70, 'Online Media for Customer Engagement', 93, '2024-10-14 11:27:42', 'Recognizing an online media platform that effectively engages its users and supports brands.'),
(71, 'Customer Engaged Brands (recognizing different sectors)', 93, '2024-10-14 11:27:42', 'Celebrating brands across sectors that have demonstrated exceptional customer engagement practices.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sector_id` (`sector_id`);

--
-- Indexes for table `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorie_id` (`categorie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `sector`
--
ALTER TABLE `sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`sector_id`) REFERENCES `sector` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_ibfk_1` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `kuberconsultancy`
--
CREATE DATABASE IF NOT EXISTS `kuberconsultancy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kuberconsultancy`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `status`) VALUES
(1, 'kuberconsultancy', '92967a0652fa8322f6479a9b538c3ca4e849f42ead6a496a0c03a36774f0ce8ebd17e2f44d134f027b021609c69a94d06b358ac13d7236a74fd834bf43818378', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_forms`
--

CREATE TABLE `tbl_forms` (
  `member_id` int(10) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `member_number` varchar(100) NOT NULL,
  `member_address` varchar(200) NOT NULL,
  `member_city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_forms`
--

INSERT INTO `tbl_forms` (`member_id`, `member_name`, `member_number`, `member_address`, `member_city`) VALUES
(2, 'Munnu Kumar', '9871689335', 'H No-D-57 Jai Vihar Sunday Market 110043 Delhi', 'Delhi'),
(3, 'Mahesh Kumar', '9873360566', 'S/O Mr Laxman Hno 582 Block-B Sangam Vihar Nr Opp Ganpati Properties 110062 Delhi', 'Delhi'),
(4, 'Subhash .', '9873378503', '313 Rishi Nagar Rani Bagh Near Shiv Mandir Gali 110034 Delhi', 'Delhi'),
(5, 'Om Prakash Kunwar', '9971479851', 'H No WZ 24 Dasghara Toda Pur Delhi 110012 Delhi', 'Delhi'),
(6, 'Mamta Rani', '9999036055', '239 FF Rishi Nagar Rani Bagh Near Canara Bank 110034 Delhi', 'Delhi'),
(7, 'Akash Ahuja', '9910950599', 'H No 45/2 Ashok Nagar Tilak Nagar Metro Station 110018 Delhi', 'Delhi'),
(8, 'Sunil Gujral', '9873957494', 'GG 2/55 C Durgyana Appts Vikas Puri Near Durgyana Mandir 110018 Delhi', 'Delhi'),
(9, 'Hemant Kumar', '9999695051', 'H No-G-60 Block-G Kunwar Singh Nagar Ranholla , 110015 Delhi', 'Delhi'),
(10, 'Raj Kumar', '9999636520', '7/22A Tilak Nagar , 110018 Delhi', 'Delhi'),
(11, 'Chetan Mehla', '9990000304', 'H No-266/B Ward No-2 Mehrauli Prince Public School 110030 Delhi', 'Delhi'),
(12, 'Gagandeep Kaur', '9899980373', 'H No 116A Gali No 5 South Anarkali Krishna Nagar Nr Brijwasi Sweet 110051 Delhi', 'Delhi'),
(13, 'Geetanjli Gupta', '9711410516', '151, Chaudhary Mohalla, Dhool Siras Village, Nr. Bus Stand 110010 Delhi', 'Delhi'),
(14, 'Harish Joshi', '9999276463', 'H No-53 Police Apartment A 3 Pashim Vihar Delhi 110063 Delhi', 'Delhi'),
(15, 'Sumit Bhandari', '9953007166', 'Pkt 14/79 Pocket-14 Rohini Sector-24 Delhi Near-Delhi Public School 110081 Delhi', 'Delhi'),
(16, 'Lalit Kumar Saini', '9711209817', 'H No 122/27 Block CPJ New Seelam Pur Near Naveen Public School 110053 Delhi', 'Delhi'),
(17, 'Mohit .', '9971292567', 'H No A315 Block A Pandav Nagar , 110092 Delhi', 'Delhi'),
(18, 'Mohit Kumar Garg', '9873229908', 'C/O Shri Chand,H.No-C-53, Sreet No-7, West Jyoti Nagar,Behind Gopal Nusring Hm Near Durga Puri Chowk,Shahdara, 110032 Delhi', 'Delhi'),
(19, 'Pankaj Kumar Maurya', '9811635414', 'Plot No-12B Gali No-1 Deep Enclave Part-1 Vikas Nagar Uttam Nagar Nr Verma Road and Tapan Cable 110059 Delhi', 'Delhi'),
(20, 'Pawan Bajaj', '9873917216', 'S/O Mr Raj Kumar H No 170 B/11 4Th Flor East Of Kailash Gali No 11 Top Floor Nr Durga Store 110065 Delhi', 'Delhi'),
(21, 'Neeraj Kumar Suji', '9873541115', 'H No A-62 Basement Haus Khas , 110016 Delhi', 'Delhi'),
(22, 'Asim', '9999138699', '25-A Ganesh Park Rasheed Market Krishna Nagar nr by narang kite houseDelhi 110051 Delhi', 'Delhi'),
(23, 'Riya Sharma', '9999206642', 'H No-227 Chandan Park Gali-5-6 Libas Pur Near Tom Jerry Convent School 110042 Delhi', 'Delhi'),
(24, 'Pawan .', '9873656207', 'H No 117/11 SBM Qtrs Tulsi Ram Bhawan Najaf Garh Road Shivaji Marg Moti Nagar Near Blue Dart Courier 110015 Delhi', 'Delhi'),
(25, 'Harish Chand Sharma', '9868026224', '26 Kasturba Polytechnic Staff Quater Nr-Kastura Politecnic 110085 Delhi', 'Delhi'),
(26, 'Rajesh Saraswat', '9810032046', 'B - 148 Ashoka Enclave Peera Garhi Metro Station 110087 Delhi', 'Delhi'),
(27, 'Seema Shukla', '9953895828', 'H No-18/899, Flats Baba Kharak Singh Marg, Near-R,M,L,Hospital, 110001 Delhi', 'Delhi'),
(28, 'Sulochana .', '9953709491', 'E-32A 3rd Floor Left Side Portion Vishwakarma Colony M B Road Nr Suraj Kund Crossing 110044 Delhi', 'Delhi'),
(29, 'Sumit Kumar Vashney', '9899884577', 'H No-A-1/15 Sanjay Enclave Uttam Nagar Nr-Sahil Chatbhandar 110059 Delhi', 'Delhi'),
(30, 'Vikram Vij', '9711601377', 'S/o Vikram Raj Vij House No-S-2/219 Tilak Nagar Old Mahavir Nagar Near-Om Dairy 110018 Delhi', 'Delhi'),
(31, 'Yameen Khan', '9717780054', 'House No-F-191/S-3 Top Floor Dilshad Colony Seemapuri me hosptal 110095 Delhi', 'Delhi'),
(32, 'Yogesh Kumar', '9711195527', 'H No-138-A A-Block Vikash Vihar Kakrola Delhi Near NSIT 110043 Delhi', 'Delhi'),
(33, 'Lalit Kumar', '9891552325', 'R1/21 Phase-1 Budh Vihar Delhi near Sai Dham Mandir 110086 Delhi', 'Delhi'),
(34, 'Jayant Kumar Sharma', '9716308664', 'Hno 82 Crossing 1 Blk-A Gl-5 Uttrakhand Enclave Burari Behind Joshp Merry School 110084 Delhi', 'Delhi'),
(35, 'Kuldeep Singh Tariyal', '9811964233', 'A/2-140G, Pocket A-2, LIG Mayur Vihar Phase 3 .. 110096 Delhi', 'Delhi'),
(36, 'Yashpal Singh', '9818245505', 'Kh No-17/13, Gali No-10 Amrit Vihar, Burari Near Paradise Public School 110084 Delhi', 'Delhi'),
(37, 'Ruchika Khurana', '9999239317', '36-B PocketA-2 Mayur Vihar Ph-3 Opp Super Dry Cleaner 110096 Delhi', 'Delhi'),
(38, 'Gaurav Arora', '9873340774', 'H. No- B-223 Ashok Vihar-1 Near D Cinema 110052 Delhi', 'Delhi'),
(39, 'Davinder Singh', '9999232922', '7 Staff Qtr Gurudwara Nanak Piao GTK Road Model Town  110009 Delhi', 'Delhi'),
(40, 'Mukesh Kumar', '9899354939', 'D-302 D-Blk Part-2 Qutab Vihar Vihar Goyla Dairy OPG World Sc 110071 Delhi', 'Delhi'),
(41, 'R K Mathur', '9873518895', 'S/O B P Mathur37 Block B Vishwarkrma Colony Lal Kuan Nr Vishkarma Mandir 110044 Delhi', 'Delhi'),
(42, 'Riya Sikka', '9953863330', 'h 271 delhi vikaspuri nr brain international school 110018 Delhi', 'Delhi'),
(43, 'Ruchika Sabhrwal', '9711264293', 'House Nno C-3/309 Janakpuri Near Desu Colony 110058 Delhi', 'Delhi'),
(44, 'Ashok Kumar', '9711260838', 'D-96 MCD Flats Azad Pur Azad pur Metro Station 110033 Delhi', 'Delhi'),
(45, 'Chandramani Mani', '9811973216', '945 Sector-3 R K Puram Near LBS  110022 Delhi', 'Delhi'),
(46, 'Holisol Logisitics Private Limited Robbin Kumar', '9873927260', 'A1 Carriappa Marg, Sainik Farms Nr Saket road 110062 Delhi', 'Delhi'),
(47, 'Naveen .', '9899206378', 'S/o Jogender Singh, H No-B-35 Vijay Nagar, Bawana Delhi Nr White Leat Public School Narela Road 110039 Delhi', 'Delhi'),
(48, 'Akash .', '9711811524', 'C-80 Gali No-19 Khajoori Khas Karawal Nagar Nr Corporationbank Atm 110094 Delhi', 'Delhi'),
(49, 'Sunil Kumar Zunglan', '9711774828', 'H No G-1857 Block G Tigri Colony , 110062 Delhi', 'Delhi'),
(50, 'Kapil Sharma', '9899416225', 'H No 25 D Block Gali No 10 11 Jagat Puri Nr Aman Public School 110093 Delhi', 'Delhi'),
(51, 'Kapil Sharma', '9899649114', 'D-25 Blk-D Gali No-10 Jagat Puri Extn Aman Public School 110093 Delhi', 'Delhi'),
(52, 'Chandra ..', '9654990301', 'D-239 Phase 4 New Colony Street No 8 Aya Nagar Nr Shiv Mandir 110047 Delhi', 'Delhi'),
(53, 'Brijesh Kumar Singh', '9716360435', 'H No-25 Gali No- 1 Moralband Extn. Badarpur Nr Ram Rasoi 110044 Delhi', 'Delhi'),
(54, 'Ashish Kumar', '9718021670', 'H No-C-3/7 Block-C R P Bagh Nr Nanak Piyau Gurudwara 110007 Delhi', 'Delhi'),
(55, 'Prashant Thakur', '9999553343', 'Vijay Thakur B-150,Gali No-2,Kh No-39/4, Burari Near By Pd Joshi Kothi 110084 Delhi', 'Delhi'),
(56, 'Ashutosh Gunjan', '9910519144', 'H No 510/18 Deoli Village Nr Sent Merry Pub School 110062 Delhi', 'Delhi'),
(57, 'Rahul .', '9811793537', 'S/o Saroj H No-B-139 Gautam Puri Ph-2 Near-Kali Mandir and NTPC 110044 Delhi', 'Delhi'),
(58, 'Aayush Yadav', '9811515904', 'S/O Leela Singh H No-8/87 Jain Mandir Gali Chhota Bazar Shahadara Nr-Sahadara Metro Station 110032 Delhi', 'Delhi'),
(59, 'Anshu Chauhan', '9999309404', '76,New Chaupal Dhakka Village Nr Kingsway Camp 110009 Delhi', 'Delhi'),
(60, 'Manmeet S Malhotra', '9899992609', 'H No-208 Block-B 1st Floor Karampura Nr-Moti Nagar Metro 110015 Delhi', 'Delhi'),
(61, 'Abhishek Singh', '9711770975', 'A-88 , 1St F Floor Bhagwan Nagar Ashram 110014 Delhi', 'Delhi'),
(62, 'Gulshan Verma', '9873156653', '62 Pol No - 69 V P O Issapur New Delhi Jaggu Ganral Store 110061 Delhi', 'Delhi'),
(63, 'Neeraj Dagar', '9899181483', 'S/o Mahinder Singh Dagar VPO Issa Pur Near Jaggu Genral Near Store Wali Gali 110073 Delhi', 'Delhi'),
(64, 'Mahima Chawla', '9999017278', 'B-55, Derawal Nagar,Opp-Model Town-2nd Near By Opp-Model Town-2nd 110009 Delhi', 'Delhi'),
(65, 'Sushma Kumari Sawhney', '9899207831', 'Flat No-52 F/F Back Side Block-A gulab Bagh Uttam Nagar 110059 Delhi', 'Delhi'),
(66, 'R C Rohit', '9811505357', '200 F, Pkt-1, Mayur Vihar Ph-1, - 110091 Delhi', 'Delhi'),
(67, 'Ajay Kumar', '9953970563', '139 ,D -Block Dcm Colony Nathu Pura Burari Dcm Colony 110084 Delhi', 'Delhi'),
(68, 'Manoj Singh', '9711971213', 'H No-H-61/5 Street No-3 J P Nagar Ghonda Opp Sanatan Dharmshala In Sunday Market 110053 Delhi', 'Delhi'),
(69, 'Manish', '9999490711', 'Home No-E2/8 Gali No-32, Chankya Place Part-1 Near Janak Puri C1 Uttam Nagar 110059 Delhi', 'Delhi'),
(70, 'Iftekhar Ahmad', '9999354387', 'D-64 Ist Floor Sirsayed Tower Abul Fazal Enclave Jamia Ngr Nr-Bilual Masjid 110025 Delhi', 'Delhi'),
(71, 'Aman Sharma', '9999251543', '98 F/F B2B Block LIG Flat Janak Puri Subzi Mandi 110058 Delhi', 'Delhi'),
(72, 'Ravi Kumar Mishra', '9711218848', 'Flat No: A-1/291, Second Floor, A-1 Block Nr. Holi Chowk, Uttam Nagar 110059 Delhi', 'Delhi'),
(73, 'Anuj Kumar', '9971600491', 'H No-747 Top Floor Mukherjee nagar Delhi 110009 Delhi', 'Delhi'),
(74, 'Anuj Kumar', '9953547560', 'O-42 2nd Floor Room-3 Old Double Story Lajpat Nagar-4 Nr Hero Mutton Shop 110024 Delhi', 'Delhi'),
(75, 'Ashish Maurya', '9999443830', 'House No-H16/218,Gali No-16,Block-H Sangam Vihar,Delhi Near- Heera Public School 110062 Delhi', 'Delhi'),
(76, 'Benjamin Cherian', '9711503983', 'B-203 Thiruvizha Appt Plot No-37 Sec-10 Dwarka , 110075 Delhi', 'Delhi'),
(77, 'Abhishek Butola', '9711751861', 'F-309 Pkt-2 Mayur Vihar Ph-1 Govt School,Nr Shashi Garden 110091 Delhi', 'Delhi'),
(78, 'Chanchal .', '9953977157', 'D/O Roshan Lal C 1/970 Madan Gir Gurudwara 110062 Delhi', 'Delhi'),
(79, 'Prabhakar Rai', '9953097494', 'G-323, Phase-6 Bandh Road, Ayanagar Nr Shiv Hansa Chowk 110047 Delhi', 'Delhi'),
(80, 'Gaurav Rana', '9999337507', 'Hno-177 Siraspur Village Near Gol Chakkar Nr Som Bazar Chowk 110042 Delhi', 'Delhi'),
(81, 'Hari Om', '9873248356', 'H No-96 Neelwal Nr Community Centre 110041 Delhi', 'Delhi'),
(82, 'Rakesh Panchal', '9873418280', 'Vpo Hiran Kudna Vpo Hiran Kudna Nr Ganga International School 110041 Delhi', 'Delhi'),
(83, 'Hitesh Kumar', '9953289779', 'C/o Yashbir Chauhan House No-U-208A 2nd Flr Upadhyay Blk Shakarpur k v college left sideNear Bank Of Barod 110092 Delhi', 'Delhi'),
(84, 'Sujay S Gupta', '9891531794', 'K-1/132 Pocket K-I C R Park NR Arya Samaj mandir Nehru Park 110019 Delhi', 'Delhi'),
(85, 'Pankaj Kumar', '9811881135', 'C-25/A 1st Floor New Acharya Kripalani Road Adarsh Nagar Govind Medicos 110033 Delhi', 'Delhi'),
(86, 'Rajendra Kr Gupta', '9891478700', 'H No-B-32 Mansa Ram Park Uttam Nagar Near Metro Pillar No-750 110059 Delhi', 'Delhi'),
(87, 'Lokesh .', '9811924326', '445 Block-29 Trilok Puri 110091 Delhi', 'Delhi'),
(88, 'Manjeet Malik', '9999659638', 'S/O Narender House No-RZ-35C Roshan Garden Najafgarh Sai Mandir 110043 Delhi', 'Delhi'),
(89, 'Someet Prabhakar', '9999440277', 'D-6/277/1 BLK-D-6 Rohini Sec-6 Nr Vidya Jain Public school 110085 Delhi', 'Delhi'),
(90, 'Mukesh', '9718110900', 'Dco 31 Bn Crpf Parliament House , 110001 Delhi', 'Delhi'),
(91, 'Mukesh', '9990063995', 'Dco 31 Bn Crpf Parliament House , 110001 Delhi', 'Delhi'),
(92, 'Narender Rana', '9968498904', 'H No-416 Shahbad Daulat Pur Jati Choupal 110042 Delhi', 'Delhi'),
(93, 'Pradeep Kumar', '9999908007', 'H No-212-A-3,Railway Colony, Daya Basti, - 110007 Delhi', 'Delhi'),
(94, 'Sarvesh Kumar', '9811210902', 'WZ-12/3 Block-WZ Choukhandi Village Tilak Nagar Gurudwara 110018 Delhi', 'Delhi'),
(95, 'Sajid Khan', '9899474030', 'H No 1202 HHH Punjabi Pahatak Gali Chowki Dar Wali Balli Maran , 110006 Delhi', 'Delhi'),
(96, 'Saurav Kumar', '9899337371', 'H No 102 2nd Flr Maidan Garhi Nr Shiv Mandir 110068 Delhi', 'Delhi'),
(97, 'Sualeheen .', '9971292379', 'Sadarpur, Tvs Motor S-524, Vikas Marg Show Room, 110092 Delhi', 'Delhi'),
(98, 'Ekta Sharma', '9718505507', 'H No 64 RZ-Block Prem Nagar Uttam Nagar Nr Shiv Mandir 110059 Delhi', 'Delhi'),
(99, 'Sandeep Patwa', '9968527460', 'H No-149 Dhakka Village Delhi , 110013 Delhi', 'Delhi'),
(100, 'Sudesh Yadav', '9716791409', 'C/o Hars Yadav H NO RZ-56 Mohan Nagar Gali No-9 Pankha Road Nr Hanuman Mandir 110008 Delhi', 'Delhi'),
(101, 'Ajay Kumar', '9899301914', 'H No-1809 G-Block Jhangir Puri Behind Kaushal Cinema 110033 Delhi', 'Delhi'),
(102, 'Manish Yadav', '9811882889', '16 Sec-3 R K Puram Near Police Colony 110022 Delhi', 'Delhi'),
(103, 'Raj Kumar Singh', '9999295706', 'C-18 B Ugfloor Himgiri Enclave Chander Vihar Near Kikar Wala Chowk 110041 Delhi', 'Delhi'),
(104, 'Arvind Sharma', '9911439449', 'H No 326 D Block BG-6 Paschim Vihar Near DDA Market 110063 Delhi', 'Delhi'),
(105, 'Rajan Singh Chauhan', '9711956839', 'H No-L-1st, 1866/12 Sangam Vihar , 110062 Delhi', 'Delhi'),
(106, 'Ranjan Singh Chauhan', '9999697177', 'H No-1866/12 Block L-1, Sangam Vihar Nr-Asthal Mandir 110062 Delhi', 'Delhi'),
(107, 'Palini', '9650302377', '4/2/1,Servent Qtrs,Sec-13 R K Puram , 110066 Delhi', 'Delhi'),
(108, 'Satish .', '9873303566', 'E-393/6 Bvlock-E west Vinod Nagar , 110092 Delhi', 'Delhi'),
(109, 'Vipul Jain', '9999499828', 'E-15 3rd Floor Rose Appt Plot No-5 Sec-14 Rohini Extn NEAR SPORTS COMPLEX 110085 Delhi', 'Delhi'),
(110, 'Purnima Baluni', '9953452775', '474 Pocket-C Janta Flats Group-1 Hastsal Uttam Nagar 110059 Delhi', 'Delhi'),
(111, 'Bhagya Prakash', '9711624881', 'C/o Dr DP Sharma H No WZ-98 Janakpuri West C-2 Possangipur Nr Kavita Beauty Porlour 110058 Delhi', 'Delhi'),
(112, 'Bhagya Prakash', '9711624882', 'C/o Dr DP Sharma H No WZ-98 Janakpuri West C-2 Possangipur Nr Kavita Beauty Porlour 110058 Delhi', 'Delhi'),
(113, 'Amit Kumar', '9899305055', 'H NO-L-440/7 Sangam Vihar Bandh Road Nr-Sani Bazar 110062 Delhi', 'Delhi'),
(114, 'Abhishek Bhargawa', '9899368525', 'H No 26/146 2nd Floor West Patel Nagar Delhi 110008 Delhi', 'Delhi'),
(115, 'Sarvesh Kumar', '9999137411', 'H No-B-49 Shakarpur Baramod Nr Hanuman Mandir 110092 Delhi', 'Delhi'),
(116, 'Aman .', '9953690068', 'H No-421 Indra Market Najafgarh Nr New Anai Mandi 110043 Delhi', 'Delhi'),
(117, 'Arpit Jain', '9953272706', 'H No-5773/5 Gali No-3 Dev Nagar Karol Bagh Nr- Khalsa Collage 110005 Delhi', 'Delhi'),
(118, 'Ghazanfar Ullah', '9911867859', 'HNo Q-5, Room No 3 Nafees Road Batla Ho Jamia Nagar An Noor Masjid 110025 Delhi', 'Delhi'),
(119, 'Indrajeet Meena', '9899938330', 'Constable InderjeetMeena Police Station Sec 7 Rohini Nr Indian Petrol Pump 110085 Delhi', 'Delhi'),
(120, 'Amit Kumar', '9873604191', 'S/O Jitendra Prasad 2Nd Floor Vihan Appt Kh No-618 Masjid Road Sultanpuri Delhi 110030 Delhi', 'Delhi'),
(121, 'Amrendra Kumar', '9716025829', 'US 261 3rd Floor Flat No 9 Chander Vihar NR Wine Shop Mandawali 110092 Delhi', 'Delhi'),
(122, 'Monika', '9999550507', 'New T-61 Shukar Bazar Uttam Nagar Nr- Binda Pur Matiyala Rd Nr Mandir 110059 Delhi', 'Delhi'),
(123, 'Rajeev Sharma', '9873939247', 'Hno. E356/D Gali No. 7 West Vinod Nagar Manglam Hospital 110092 Delhi', 'Delhi'),
(124, 'Somesh Kumar Singh', '9971248546', 'H No 61 Flat No 401 4th Floor Purani Haweli Sarita Vihar Haddu Mohalla Madanpur Khadar 110076 Delhi', 'Delhi'),
(125, 'Sushant Pandey', '9873685687', 'House No-WZ-135B Gali No-18A Sadh Nagar-2 Palam Colony Rahul Model School 110045 Delhi', 'Delhi'),
(126, 'Varun Kumar', '9873934481', 'S/O Anandi Pandey H No-265 Shapur Jat Asiad Village Khel Gaon 110049 Delhi', 'Delhi'),
(127, 'Ram Sumer', '9891706999', 'H No-78-D Delhi Shivam Enclave 110092 Delhi', 'Delhi'),
(128, 'Dalbir Singh', '9999154005', 'House No-A-113 Raju Park ,Khanpur Mother Dairy 110062 Delhi', 'Delhi'),
(129, 'Ruchika Kumar', '9873417225', '14-C, DDA Flats Naraina Road Nr Rike Metro Hospital 110008 Delhi', 'Delhi'),
(130, 'Shivani Malhotra', '9711456795', 'House No-C-316 Block-C Surajmal Vihar Yamuna Sports Complex 110092 Delhi', 'Delhi'),
(131, 'Deepak .', '9871864017', 'H No-565 Pkt-1 Sec-A6 Narela Delhi 110040 Delhi', 'Delhi'),
(132, 'Nikhil Bansal', '9873717575', '1799, 2Nd Flr Gali Sohan Ganj Subzi Mandi Nr Yadav Namkeen Sethi Cake Shop 110007 Delhi', 'Delhi'),
(133, 'Ravinder Singh Negi', '7838330333', 'H No 549/1 Deoli Vill nr Shiv mandir 110062 Delhi', 'Delhi'),
(134, 'Sameer', '9718776581', 'H No - D-8 ,2nd Floor Batla House ,Jamia Nagar Nr Jal Board 110025 Delhi', 'Delhi'),
(135, 'Kasim Abbas', '9868341762', 'H No K-208 Gali No-4, Sunder Nagri Near Auliya Masjid 110093 Delhi', 'Delhi'),
(136, 'Aqib Ali', '9999731967', 'C/O Faisal Hasan A-1/103 1st Floor Taj Enclave Geeta Colony Nr cng pump 110031 Delhi', 'Delhi'),
(137, 'Lalit Yadav', '9999037678', 'Room No B-30 ADGPI South Block DHQ-PO  110011 Delhi', 'Delhi'),
(138, 'Purayatil Balakrishnan Mani', '9999795660', 'A-7/11 Ground Floor, Nr Mother Dairy Sector-17, Rohini 110089 Delhi', 'Delhi'),
(139, 'Saroj Malik', '9999111716', 'H No B1 Masood Pur Vasant Kunj Near MCD Park 110070 Delhi', 'Delhi'),
(140, 'Sunny', '9911963697', 'H No-B-56C Gangotri Enclave Alaknanda Opp-Alaknanda Market 110019 Delhi', 'Delhi'),
(141, 'Pradeep Kumar Sharma', '9910415751', '198/52B Ramesh Mkt Garhi ,, Nr Sapna Cinema 110065 Delhi', 'Delhi'),
(142, 'Mukul Sharma', '9899832610', 'S/O Ishwar Dev Sharma H No-18/14 A Azad Nagar Kishan Ganj Nr Pratap Nagar Metro Pillar No-117 110007 Delhi', 'Delhi'),
(143, 'Nishant Kumar', '9811034069', 'H No 53 1st Floor Hari Nagar Ashram Nr Shalimar Cinema Hall 110014 Delhi', 'Delhi'),
(144, 'Nishant Kumar', '9811034760', 'H No 53 1st Floor Hari Nagar Ashram Nr Shalimar Cinema Hall 110014 Delhi', 'Delhi'),
(145, 'Vivek Rana', '9899513468', 'H No - K - 377 Kangra Niketan Vikas Puri West Near Kangra Niketan Bus Stop 110018 Delhi', 'Delhi'),
(146, 'Vivek Rana', '9899513648', 'H No - K - 377 Kangra Niketan Vikas Puri West Near Kangra Niketan Bus Stop 110018 Delhi', 'Delhi'),
(147, 'Prateek Chhibber', '9999304908', '13/4 AD/S Prem Ngr,Janak Puri , 110058 Delhi', 'Delhi'),
(148, 'Alok Kumar', '9990017655', 'H NO-E-50 Kondli Ambedkar Park 110096 Delhi', 'Delhi'),
(149, 'Sukhpal Kaur', '9811605579', 'H No 2 Vishwakarma Park Laxmi Nagar Nr Kabir Dham Gurudwara 110092 Delhi', 'Delhi'),
(150, 'Pankaj Gupta', '9891000400', 'C-11 Acharya Kirplani Road Adarsh Nagar 110033 Delhi', 'Delhi'),
(151, 'Amit Chawla', '9811453732', 'A2/94 SF Rohini Sec-5 Delhi 110085 Delhi', 'Delhi'),
(152, 'Shalini Jain', '9899825935', '237 2nd Floor Satya Niketan Near Gundwara  110021 Delhi', 'Delhi'),
(153, 'Prtik Shukl', '9811715352', 'H.No F 44 Ground Floor C/O. Ch mann Sin Gh 16/A Room No D6 Katwaria sarai South Mother Dairy katwaria sarai 110016 Delhi', 'Delhi'),
(154, 'Sumit Singh', '9818321239', 'H No D1/379 Sultan Puri Near Geeta School 110086 Delhi', 'Delhi'),
(155, 'Sudhir Pal', '9891121737', 'R no B-68 Nilgiri Hostel IIT HAUZ KHAS Delhi 110016 Delhi', 'Delhi'),
(156, 'Sunil Jain', '9873331207', 'H No-198/27-B, Ramesh Market Garhi Village, Near-Sapna Cinema, 110065 Delhi', 'Delhi'),
(157, 'Sunil Jain', '9971161280', '198/27B. First Floor. Gali No-4.Ramesh Market Garhi. Nr-Sapna Cinema. 110065 Delhi', 'Delhi'),
(158, 'Neha Gulati', '9711220704', 'H No-F-3/115 SF Sec-16 Rohini Delhi 110085 Delhi', 'Delhi'),
(159, 'Himani .', '9711322968', 'H No-89 Ambika Vihar Paschim Vihar Delhi 110087 Delhi', 'Delhi'),
(160, 'Shaubhik Duttaroy', '9711387634', '473 Dakshinayan Plot No-19 Sec-4 Dwarka DPS SCHOOL Near DPS School 110078 Delhi', 'Delhi'),
(161, 'Ruchika Yadav', '9953729148', 'H No-RZ-F1/14,St No-1, Mahavir Enclave,Palam, Nr-Church, 110045 Delhi', 'Delhi'),
(162, 'Nar Singh', '9711551103', 'B-1/576 ,Madanpur Khadar J J Colony Ph-2 Nr Jalebi Chauk 110076 Delhi', 'Delhi'),
(163, 'Vivek Kumar Gupta', '9999306332', 'B-14-B First Floor Pandav Nagar Nr Mother Deiry 110092 Delhi', 'Delhi'),
(164, 'Khem Singh Rawat', '9899246339', 'C/O Bhagwati Devi, H No-AS-293, Block-AS Gali No-8, Keshav Nagar Near Mukti Ashram, Maszid 110036 Delhi', 'Delhi'),
(165, 'Catherine John', '9899242966', 'H No-44-A Safdarjung Enclave Himayun Pur Near-Kamal Cnema 110029 Delhi', 'Delhi'),
(166, 'Rahul Kumar', '9899190822', 'H NO-B-612 Aman Vihar Kirari Suleman Nagar NR Choudhary Ki Kothi 110086 Delhi', 'Delhi'),
(167, 'Hitesh Satija', '9999988988', 'H No 177 Kalyan Vihar Delhi 110009 Delhi', 'Delhi'),
(168, 'Rajesh Verma', '9873556552', 'H No-266-P-23 Ward No-2 Mehrauli Near Larisa Public School 110030 Delhi', 'Delhi'),
(169, 'Gaurav', '9899799750', 'House No-B-109 Block-B Budh Vihar Tajpur Pahari Badarpur Sebal Cinema 110044 Delhi', 'Delhi'),
(170, 'Meghraj Singh', '9971919963', 'S/o Indra Pal Singh H No A 432 J J Colony, Gharoli Dairy Farm Mayur Vihar Ph 3 Nr Hanuman Mandir 110096 Delhi', 'Delhi'),
(171, 'Yogesh', '9711197978', 'D-2/351, Sultan Puri, Near-Mother Dairy, 110041 Delhi', 'Delhi'),
(172, 'Roop Kishore Sharma', '9711800952', 'C-2/89A, Brijpuri, Opp-Yamuna Vihar, 110094 Delhi', 'Delhi'),
(173, 'Rohan Kumar', '9999068945', 'C- 11 Uttarakhand Enclave Burari Nathupura NR Amrit Vihar Bus Stand 110084 Delhi', 'Delhi'),
(174, 'Bijendra Sharma', '9711497903', 'H No-22/657 DDA Flats Madan Gir / 110062 Delhi', 'Delhi'),
(175, 'Vishav Singh', '9711673946', '79 Ground Floor Chander Colony Gali No-4 narela Nr Hanuman mandir 110040 Delhi', 'Delhi'),
(176, 'Varun Jain', '9873674139', '12 E/2 Street No-2 Shri Ram Marg Maujpur Centrel Bank 110053 Delhi', 'Delhi'),
(177, 'Nancy Kalra', '9868338368', 'D/O Saroj Kagra H No-B-4/66 Block-B Pocket-4 Rohini Secto-8 Presting Convent School 110085 Delhi', 'Delhi'),
(178, 'Saroj Kalra', '9968567202', 'B4/66 1st Floor Sec-8 Rohini Delhi 110085 Delhi', 'Delhi'),
(179, 'Rajiv Kumar', '9711366327', '42499 Dakshin Puri Ambedkar Nagar Tigri Near Police Station 110062 Delhi', 'Delhi'),
(180, 'Nidhi Arora', '9873185228', 'Flat No-1 1st Floor Nizamuddin East Nizamuddin Rly Station 110013 Delhi', 'Delhi'),
(181, 'Harsh Mittal', '9711186774', 'S/O Naresh Mittal L-64, Shastri Nagar Nr-Indra Park 110052 Delhi', 'Delhi'),
(182, 'Nitin Gupta', '9899605356', 'S/o Ajay Gupta Krishna 206 Agarsen Appts 66 IP Extn Parparganj Plot No-66 2nd Flr Near Balco Market 110092 Delhi', 'Delhi'),
(183, 'Nitin Gupta', '9899607457', 'S/o Ajay Gupta Krishna 206 Agarsen Appts 66 IP Extn Parparganj Plot No-66 2nd Flr Near Balco Market 110092 Delhi', 'Delhi'),
(184, 'Lipika Roy', '9818385528', 'K-2098 1st Floor Chiitaranjan Park Kali Mandir 110019 Delhi', 'Delhi'),
(185, 'Lokesh Kumar', '9899165270', 'F-155 Room No-310 3rd Floor CA Building-2 Mangal Market Laxmi Nagar 110092 Delhi', 'Delhi'),
(186, 'Atul Kumar', '9711173741', 'H NO-D-4 Lotos Appartment Aya Nagar Arjung Garh metro Station 110027 Delhi', 'Delhi'),
(187, 'Karan Malhotra', '9999203201', 'H No-1535 Rani Bagh Delhi 110034 Delhi', 'Delhi'),
(188, 'Neha Bhatnagar', '9899723411', 'Flat No-C-211 2nd Flr Paradise Appt Plot No-1 Sec-9 Dwarka Opp Green Velley School 110075 Delhi', 'Delhi'),
(189, 'Prakhar Singh', '9873899762', 'H No-B-8 1st Floor Ganesh Nagar Extn-2 Shakarpur 110092 Delhi', 'Delhi'),
(190, 'Ranjeet Kumar', '9953605013', 'H No-A-2/51 Hastsal Road Uttam Nagar Near Sunil Dairy 110059 Delhi', 'Delhi'),
(191, 'Aanchal Sharma', '9999899844', 'H No-122, Sukhdev Vihar Near Escort Hospital 110025 Delhi', 'Delhi'),
(192, 'Avinash Sharma', '9958173279', 'House-264,Block-C Even,Sarojini Nagar Nr SN Market 110023 Delhi', 'Delhi'),
(193, 'Ravi Sharma', '9711289967', 'H No-2994/3, Ground Floor,Gali No-17, Shiv Chowk,Ranjeet Nagar, Opp-Nijhare Hospital, 110008 Delhi', 'Delhi'),
(194, 'Ravi Sharma', '9711289987', 'H No-2994/3, Ground Floor,Gali No-17, Shiv Chowk,Ranjeet Nagar, Opp-Nijhare Hospital, 110008 Delhi', 'Delhi'),
(195, 'Ravi Sharma', '9711863984', '2994/3,GF,Gali No-17,Shiv Chowk Ranjeet Nagar Opp Nijhara Hospital 110008 Delhi', 'Delhi'),
(196, 'Sonamoni Guha', '9899047559', 'House No C-479 First Floor C R Park Raisana Bengali Junior school 110019 Delhi', 'Delhi'),
(197, 'Sonamoni Guha', '9899048035', 'House No C-479 First Floor C R Park Raisana Bengali Junior school 110019 Delhi', 'Delhi'),
(198, 'Sonamoni Guha', '9899048378', 'House No C-479 First Floor C R Park Raisana Bengali Junior school 110019 Delhi', 'Delhi'),
(199, 'Tamal Chanda', '9953135024', 'H No-B-222 Badarpur Main Market Delhi Nr Sitaram Complex 110044 Delhi', 'Delhi'),
(200, 'Brij Raj', '9873673751', 'U-449/A Prem Nagar-2 Kirari Suleman Nagar Nr Naag Mandir 110086 Delhi', 'Delhi'),
(201, 'Arshad .', '9899852529', 'E-642 1St Floor Jahangir Puri Near Pryas 110033 Delhi', 'Delhi'),
(202, 'Manoj Kumar', '9911819669', 'H No 593/12 Sbs Colony West Karawal Nagar Near Masjid Nr Kala Mata Ki Mandir 110094 Delhi', 'Delhi'),
(203, 'Rizwan Khan', '9899186618', 'H No-F-39,Block-F, Aali Vihar,  110044 Delhi', 'Delhi'),
(204, 'Shweta Singh', '9711541182', 'H No - 231 Gangotri Appt Pocket-I Dwarka Sector-12 Nr Dwarka International School 110075 Delhi', 'Delhi'),
(205, 'Akshay Garg', '9873352719', 'H No C-2/2293 Vasant Kunj Nr DPS Vasant Kunj 110070 Delhi', 'Delhi'),
(206, 'Md Kaif', '9999145051', 'H No I 27 2nd Floor Batla House Okhla Shahab Masjid 110025 Delhi', 'Delhi'),
(207, 'Pankaj Kumar', '9811867850', 'D-365/A Ganesh Nagar Pandav Nagar Nr Kela Ka Godan 110092 Delhi', 'Delhi'),
(208, 'Brij Mohan', '9873346353', 'Hno446-447 Gali No 8 East Babarpur Chhajjupur Yadram Mandir Nr Near Anand School 110032 Delhi', 'Delhi'),
(209, 'Apoorva Sharma', '9910969989', 'H NO-D-244 1st Floor Anand Vihar , 110092 Delhi', 'Delhi'),
(210, 'Apoorva Sharma', '9953987043', 'S/O Arun Kumar 722 2Nd Flr Blk-9 Lodhi Colony Khanna Mrkt 110003 Delhi', 'Delhi'),
(211, 'Bhupal Singh', '9818572530', 'H No 2222 Gali No 61/1 Molarband Extn Badar Pur Nr Ranjan Medical Nr 60 Foota Road 110044 Delhi', 'Delhi'),
(212, 'Balvir Kumar Tiran', '9811724835', 'H No-M-116 Saurabh Vihar Jaitpur Badarpur Nagar Dairy 110044 Delhi', 'Delhi'),
(213, 'Nitin Chawla', '9891221322', 'Flat No-106 Promise Appts F Block Vikas Puri . 110018 Delhi', 'Delhi'),
(214, 'Gaurav Jain', '9711899670', 'F-25/111 Sector-3 Rohini Avantika Chowk 110085 Delhi', 'Delhi'),
(215, 'Sandeep .', '9999656238', 'H No 119 Pooth Kalan Village Near Budh Chowk 110081 Delhi', 'Delhi'),
(216, 'Rahul Solanki', '9953534344', 'Khazan Singh Wz-3C Palam Vill Badiyal Village Nr Shiv Mandir Nr. Dharam Sala 110045 Delhi', 'Delhi'),
(217, 'Prashant Kumar', '9999666929', 'Barrack No 102 PS Fatehpur Beri South District Mehrauli , 110074 Delhi', 'Delhi'),
(218, 'Saurabh Puri', '9999768765', 'JP-33 FF Maurya Enclave Pitam Pura Delhi 110034 Delhi', 'Delhi'),
(219, 'Parminder Kaur', '9999600406', 'H No-E-251 J J Colony Shakar Pur Nr-Britania Chowk 110092 Delhi', 'Delhi'),
(220, 'Parminder Kaur', '9999600762', 'H No-E-251 J J Colony Shakur Pur Near-Britania Chowk 110092 Delhi', 'Delhi'),
(221, 'Vinit Brigenja', '9873180391', 'H No- 51A, Aaya Nagar Nr- Arjan Garh Metro Station  110047 Delhi', 'Delhi'),
(222, 'Anita Pawan', '9953339995', 'Flat No-B53 MK Appt Plot No-88 Sec-11 Dwarka LAL BAHADUR SHASTARI 110075 Delhi', 'Delhi'),
(223, 'Saurabh Raghuvansh', '9711214226', '148/4 Minto Bridge Railway Colony . Delhi 110001 Delhi', 'Delhi'),
(224, 'Rajan Chadha', '9999681987', 'H No-10699 Gali No-11-12 Community Centre Pratap Nagar Delhi 110007 Delhi', 'Delhi'),
(225, 'Chandan Kumar Singh', '9711614072', 'Parmanand Singh H No B/1/201 Street No 7 Harsh Vihar Nr Sagar Centre 110093 Delhi', 'Delhi'),
(226, 'Chandan Kumar Singh', '9711614073', 'Parmanand Singh H No B/1/201 Street No 7 Harsh Vihar Nr Sagar Centre 110093 Delhi', 'Delhi'),
(227, 'Anju Jain', '9999852261', 'H No-C-7/216A Yamuna Vihar Nr-Sunder Pub School Opp-Mangla Park 110053 Delhi', 'Delhi'),
(228, 'Akshay Kumar Gupta', '9999196638', 'CV Saida Mohalla Chilla Vill Near Sai Mandir Opp Shiv Mandir 110091 Delhi', 'Delhi'),
(229, 'Anshul Saxena', '9873717381', 'Varun House No-768,Gh-14 Mig Flats,Paschim Vihar Bosco School Nr Tony Properties 110087 Delhi', 'Delhi'),
(230, 'Devender Gill', '9999880704', 'S/O Kundan Lal 281 Sector-V R K Puram Near Mohan Singh Market 110022 Delhi', 'Delhi'),
(231, 'Surendra Gupta', '9811953767', '1/7782 Gali No-1 East Gorakh Park Shahdara , 110032 Delhi', 'Delhi'),
(232, 'Anup Kumar Tiwari', '9899917954', 'B-3 Room No-D2 Christion Colony Patel Chest Du North Campus Nr-Opp- Maurise Ngr Thana 110007 Delhi', 'Delhi'),
(233, 'Amrish Bhatt', '9899935062', 'S/O Suresh Kumar Bhatt H No-1413 Type-3 Poorvanchal Jnu Near Munirka 110067 Delhi', 'Delhi'),
(234, 'Sanjeev Sharma', '9711704566', '9 Gali No-8 Saboli Bagh Nand Nagri 110093 Delhi', 'Delhi'),
(235, 'Samriti .', '9953534854', 'H No-113 Near Gita Bhawan Old Gupta Colony Near Meera By Park 110009 Delhi', 'Delhi'),
(236, 'Samriti .', '9953534983', 'H No-113 Near Gita Bhawan Old Gupta Colony Near Meera By Park 110009 Delhi', 'Delhi'),
(237, 'Deepak Kumar', '9811401149', 'H No 700 Street No 13 G-F Sbs Colony Karwal Nagar MANISH GERNAL STORE 110096 Delhi', 'Delhi'),
(238, 'Mohd Yehya Khan', '9899444637', 'H No-84 Block-A Chankya Place Part-1 Nr-Opp-C1 Janakpuri Nr Hanuman Mandir 110059 Delhi', 'Delhi'),
(239, 'Jyoti .', '9873604103', 'House No 4/1039 R K puram Hdfc bank , 110022 Delhi', 'Delhi'),
(240, 'Archana Sharma', '9899092324', '355 Pkt-2 Sec-19 Dwarka Nr- Ambrai Vill 110075 Delhi', 'Delhi'),
(241, 'Garima Sharma', '9999937797', 'H No-C7/86 C7-Block Yamuna Vihar c1 govt school 110053 Delhi', 'Delhi'),
(242, 'Pankaj Singh', '9811556550', 'Lalan Singh H No C-71 Plot No-30 Sector-10, Rohini Appts Dwarka Nr Pub School 110075 Delhi', 'Delhi'),
(243, 'Shiksha .', '9999395991', 'W/O Mr Praveen 51 Humayun Pur Village Nr Sheetla Mata Ka Mandir 110029 Delhi', 'Delhi'),
(244, 'Shubhra Jain', '9711326668', 'B-17/209 Pharma Appt Ip Extn Patparganj Madhu Vihar Market 110092 Delhi', 'Delhi'),
(245, 'Sita Ram', '9968247700', 'RZG-25 Vijay Encl Gali No-1 Palam Tent Wala School 110045 Delhi', 'Delhi'),
(246, 'Sumit Goyal', '9899447403', 'H No 14A Blk G B Shalimar Bagh Trilok Bhawan 110088 Delhi', 'Delhi'),
(247, 'Vikram Singh', '9717711716', 'House No-S 194, 1st Floor Pandav Nagar , 110092 Delhi', 'Delhi'),
(248, 'Ajit Kumar', '9910733120', 'House Number-60 Village Saidulajab Near Saket Metro Station Ground Floor Lane No 2 Kehar Singh State 110030 Delhi', 'Delhi'),
(249, 'Kamal Kishore', '9999015058', '585/3 Nehru Eclave Village Alipur Near Mini Stadium 110036 Delhi', 'Delhi'),
(250, 'Narendra Kumar Aggarwal', '9899514791', 'H No - RZ - 12D ,Gali No - 4 East Indra Park ,Palam Colony Nr Shiv Mandir 110045 Delhi', 'Delhi'),
(251, 'Saurabh Kohli', '9711204201', 'House No-WZ-105 GNO- 3rd Floor Sri Nagar Shakur BasTI Near Govt School 110034 Delhi', 'Delhi'),
(252, 'Saurabh Kohli', '9711371337', 'House No-WZ-105 GNO-1 3rd Floor Sri Nagar Shakur BasTI Near Govt School 110034 Delhi', 'Delhi'),
(253, 'Ritu Pilkhwal', '9873729792', 'House No-33D,4th Floor,Pocket-A, Dilshad Garden,Mig Flats, Near Greenway Public School, 110095 Delhi', 'Delhi'),
(254, 'Shamshad Ahmad', '9711578927', 'H No-F-138/1 Badarpur South Delhi Nr Masjid Raza 110044 Delhi', 'Delhi'),
(255, 'Ajay .', '9711820692', 'H.no 5/117 Dakshin Puri Block 5 Nr Mother Dairy 110062 Delhi', 'Delhi'),
(256, 'Pyare Lal', '9711865483', 'H No-614 Type-II Sec-2 Sadiq Nagar Govt Of India 110049 Delhi', 'Delhi'),
(257, 'Shiv Kumar', '9711927684', 'S/O Mr Anmol Singh H No-I-8 Block-I J J Camp Tigri Nr- Hanuman Mandir 110062 Delhi', 'Delhi'),
(258, 'Manoj .', '9711938425', 'H N o-23, Gali No-3, 33 Sec-1 Colony Dwarka Nr- MEtro Station 110075 Delhi', 'Delhi'),
(259, 'Sanjay .', '9711960703', 'Hno 643 Sanjay Camp Block A Dakshin Puri Extn NR Masjid 110062 Delhi', 'Delhi'),
(260, 'Manoj Kumar', '9717250380', 'G 5/ 120 Badarpur Nr chauhan property main market 110044 Delhi', 'Delhi'),
(261, 'Rajender Prasad', '9718174737', 'H No-N-235/11 Gali No-11 Amar Market Saurav Vihar Hari Nagar Extn Jaitpur Nr-Mama Dairy 110044 Delhi', 'Delhi'),
(262, 'Sambhunath Biswal', '9810773341', 'H No-B-313 B-Block Gola Kuan Nr-Tehkhand Village Okhla Ph-1 Nr-Esic Hospital 110020 Delhi', 'Delhi'),
(263, 'Yogesh Chauhan', '9810814736', 'H No-166 Staff Qtrs Safdarjung Hospital 110029 Delhi', 'Delhi'),
(264, 'Paramjit Singh', '9811005444', 'H NO 207/26 Prakash Mohl East Of Kailash Nr Shiv Mandir 110065 Delhi', 'Delhi'),
(265, 'Arun .', '9811119766', 'S/O Resram 76 Village Asola Near Chandan Complex 110074 Delhi', 'Delhi'),
(266, 'Altaf Shah', '9811216871', '507/20 Zakir Nagar Nr Ashoka Park NFC 110025 Delhi', 'Delhi'),
(267, 'Rupender Singh', '9811230765', 'H No F-3 259/2 Sangam Vihar , 110062 Delhi', 'Delhi'),
(268, 'Man Singh', '9811301418', 'H No-16 Maharani Bagh Easten Avenue Opp Meera bai College 110065 Delhi', 'Delhi'),
(269, 'Firoz', '9811378639', 'S/O Mohd Yusuf,D-19,D-Block Para Ambedkar Colony,Chattarpur Near Kishan Baat 110074 Delhi', 'Delhi'),
(270, 'Aradhana Manocha', '9811396959', 'C-106 Block C Dayanand Colony Lajpat Nagar-IV NR taneja Paints 110024 Delhi', 'Delhi'),
(271, 'Om Prakash Chauhan', '9811710674', 'H No 139 A Hari Nagar Ashram Delhi 110014 Delhi', 'Delhi'),
(272, 'Md Naushad Ansari', '9811726528', 'D-18/1/3 Block-D Gali No-1 Om Nagar Badarpur , 110044 Delhi', 'Delhi'),
(273, 'Irshad ....', '9811885956', 'H No-R-22 Block-R Private Colony Sriniwaspuri Nr gaba store 110065 Delhi', 'Delhi'),
(274, 'Shakeel Ahmed', '9818087711', 'H No-E-7 Hazi Colony Jamiya Nagar Nr-Indian Bharat Gas Agengy 110025 Delhi', 'Delhi'),
(275, 'Sandeep Kumar Goyal', '9818658999', 'S/o Bimal Prasad Goel Pt-62/3 Basement Kalkaji 110019 Delhi', 'Delhi'),
(276, 'Murli Maheta', '9873069287', 'S/O Lalu Mehta H No 200 Aadhikari Mohalla Maidan Garhi Nr Adhikari Mohalla 110068 Delhi', 'Delhi'),
(277, 'Vijay Pandey', '9873165189', 'F-3 -111 Gali No-1 Delhi Nr By Veer Bazar Neem Ped 110062 Delhi', 'Delhi'),
(278, 'Usha Rani', '9873263002', 'H No 705 C-10 Ward No 3 Mehrauli , 110030 Delhi', 'Delhi'),
(279, 'Paras Nath', '9873406283', 'S/O Ram Milan 189/4 Gali No-4 Block-A Sindhu Farm Road Mithapur Extn Nr Choudhary Dairy 110044 Delhi', 'Delhi'),
(280, 'Vijay Chakraborty', '9873575207', 'H No 2/276, Dakshinpuri, Near Police Station 110062 Delhi', 'Delhi'),
(281, 'Muinuddin Mansuri', '9873703598', 'H No-BC-23A Gali No-1 Nr Pir Baba Mazar Hand Pump Bapu Colony Mandi Pahadi 110047 Delhi', 'Delhi'),
(282, 'Bhag Singh', '9873717321', 'H No 130 Gautam Nagar nr chhota gurudwara 110049 Delhi', 'Delhi'),
(283, 'Kamal Singh', '9873930986', 'H No 382 Gali No 17 Zakir Nagar Okhla , 110025 Delhi', 'Delhi'),
(284, 'Mustaqim Khan', '9891803142', 'H No-D/129 G1-Block Gali No-8/4 Ratia Marg Sangam Vihar Nr-Pintu Aachar Wala 110062 Delhi', 'Delhi'),
(285, 'Jugnu Prakash', '9899003546', 'CPO 243/244 Block CPO Madangir Dr Ambedkar Nagar , 110062 Delhi', 'Delhi'),
(286, 'Esrar Choudhary', '9899019470', '19 Block L Sangam Vihar , 110062 Delhi', 'Delhi'),
(287, 'Raja .', '9899072428', 'H No-1189 Sec-7 R K Puram Nr- Malai Mandir 110024 Delhi', 'Delhi'),
(288, 'Chandan Kishore', '9899330991', 'HOC-H-16/122 Gali No-16 Block-H Sangam Vihar Nr kokil chauhan house 110062 Delhi', 'Delhi'),
(289, 'Kamini Kaushal', '9899889152', 'H No 705 A Ward No 3 Mehrauli , 110030 Delhi', 'Delhi'),
(290, 'Deepak .', '9899939827', 'H NO-G-536 Gali NO-11 Mohan Baba Nagar Tajpur Badapur Jaitpur Dharam Market 110044 Delhi', 'Delhi'),
(291, 'Ravi Sahnkar', '9911851419', 'H No. 16 ,Ekta Vihar Meethapur Extn Street No. 2 Durga Builder Gate Near.Badarpur 110044 Delhi', 'Delhi'),
(292, 'Kanhaiya Lal', '9911885130', 'S-239/221/589 BIW Colony BTPS Badarpur NTPC Gate No-1 110044 Delhi', 'Delhi'),
(293, 'Kamal', '9911917058', 'C/O Asha Ram House No-I-2/66 Madangir J J Colony Khanpur Near-Shani Dev Mandir Bala Ji Medical 110062 Delhi', 'Delhi'),
(294, 'Kamal Gupta', '9953429494', 'H No-B-229 J J Colony Khan Pur Nr- Post office 110062 Delhi', 'Delhi'),
(295, 'Sunita Devi', '9953449991', 'H No-B-430/A J J Camp Tigri Nr Gurudwara 110062 Delhi', 'Delhi'),
(296, 'V Dhandapani', '9990146607', 'H NO-S-67/333-A Iyyappa Temple Madrasi Camp Jai Vihar Lajpat Nagar-1 NR-Shiva Mandir 110024 Delhi', 'Delhi'),
(297, 'Reji', '9990816142', 'C/o Tarawati H No II/86 2nd Flr Madan Gir Nr Shani Mandir 110062 Delhi', 'Delhi'),
(298, 'Ashok Kumar', '9999210097', 'S/O Late Subhram H No-H-78 Block-H Saurabh Vihar Jaitpur Nr-Kasana Mandir 110044 Delhi', 'Delhi'),
(299, 'Pawan Kumar', '9999219009', 'H No 209 Gujjar Mohalla Chandan Hola Village Nr Chhattarpur Temple 110074 Delhi', 'Delhi'),
(300, 'Suleman .', '9999335913', 'H No-167 Block-C Gali No-11 Madanpur Khadar Extn Nr-Bari Masjid 110076 Delhi', 'Delhi'),
(301, 'Sanjeev Tokas', '9999372104', 'S/O Jai Singh Tokas H No-211D/1 Munirika Village Community Center Nr- Badoda Bank 110067 Delhi', 'Delhi'),
(302, 'Sheikh Mohirom', '9999501324', '212a Shahpur Jat Near MCD School 110049 Delhi', 'Delhi'),
(303, 'Prem Chand', '9999516461', 'H No B 23/A-4 Block B Iit Campus Hauz Khas 110016 Delhi', 'Delhi'),
(304, 'Pawan', '9999604586', 'H No-J-151/10C Block-J-1 Gali No-10C Sangam Vihar Nr Govt School 110062 Delhi', 'Delhi'),
(305, 'Ritu .', '9999641710', '2897 Block-F Neta Ji Nagar , 110023 Delhi', 'Delhi'),
(306, 'Ramavtar Sharma', '9999687140', 'H No-A-400 Jait Pur Extn Badarpur Nr-Gurudwara 110044 Delhi', 'Delhi'),
(307, 'Santosh Kumar Dawal', '9999731894', '450 Sapera Gali Ali Vill Sarita Vihar Monu Ki Dukan Parchun 110076 Delhi', 'Delhi'),
(308, 'Rakesh Kumar', '9999850437', 'H No L-I 985/14 Sangam Vihar Nr sunny market 110062 Delhi', 'Delhi'),
(309, 'Vikrant Singh', '9999872700', 'H No-L-83 Block-L Saurabh Vihar Badarpur Vijay Public School 110044 Delhi', 'Delhi'),
(310, 'Arjun Chauhan', '9810663845', 'H No-G-6 Street No-19 40 Futa Road Jagatpuri Near Ambedkar Gate 110051 Delhi', 'Delhi'),
(311, 'Arjun Chauhan', '9810663846', 'Hno-G-6 Jagatpuri Gali No-19 Near Ambedkar Gate 110051 Delhi', 'Delhi'),
(312, 'Rajinder Kumar', '9999554098', 'HNO-774 Gali No-16 Lakpat Colony-2 Mithapur Extn Nr barat ghar 110044 Delhi', 'Delhi'),
(313, 'Achal Sharma', '9711770184', 'H No 243/3 2nd Floor Gali No 3 Govind Puri Kalkaji Nr AND collage 110019 Delhi', 'Delhi'),
(314, 'Vijay Kumar', '9873210636', 'A-33A East Uttam Nagar , 110059 Delhi', 'Delhi'),
(315, 'Vijay Kumar', '9873699402', 'A-33 Blk-A East Uttam Nagar Nr-Pali Factory 110059 Delhi', 'Delhi'),
(316, 'Neha Jain', '9873246775', 'H No-H-205,Aruna Appts, 33,I P Extn,Patparganj, Near-Max Hospital,Nr Opp.Side Prince Apt 110092 Delhi', 'Delhi'),
(317, 'Rishabh Gupta', '9953947323', 'H No 16/647 E Tank Road Karol Bagh Nr Shiv Mandir 110005 Delhi', 'Delhi'),
(318, 'Synkron Inc', '9711300130', 'Karan 23 Khanna Market Lodhi Road 110003 Delhi', 'Delhi'),
(319, 'Deepak Bhalla', '9999022666', 'L1/9 Satsang Road Mohan Garden Uttam Nagar Nr Gagan Bharti School 110059 Delhi', 'Delhi'),
(320, 'Priti Varshney', '9711987795', 'House Number-D-221, Gali No-9 Block-D, Laxmi Nagar Delhi Near-Laxmi Nagar Metro Station 110092 Delhi', 'Delhi'),
(321, 'Chaman Lal', '9911545253', '305 Harijan Basti Vajirpur Thakran 110039 Delhi', 'Delhi'),
(322, 'Gurpreet Singh', '9899919827', 'H No-26/183 2nd Floor West Patel Nagar New Shani Mandir 110008 Delhi', 'Delhi'),
(323, 'Ravi Kumar Singh', '9953200568', 'Flat No 344 Om Apartment LIG House Dwarka Sector 14 Near Dwarka Sec 14 Police Chouky 110078 Delhi', 'Delhi'),
(324, 'Ruchika Sethi', '9873399327', 'B-247/12 Amrit Puri East Of Kailash Nr Iskcon Temple 110065 Delhi', 'Delhi'),
(325, 'Sumit K Mehra', '9953552812', 'C/O Hariom Gupta, H No-MB-42 MB Block 2nd Flr, Gali No-2 Chattarpur Near Jain Mandir 110092 Delhi', 'Delhi'),
(326, 'Tarun Batra', '9999500661', 'Plot No-9,G/F Inder Enclave,Rohtak Road HOPSITAL Opp Shymphani Banquet Hall 110087 Delhi', 'Delhi'),
(327, 'Virender Singh Yadav', '9999535777', 'H No-RZ-9-A/ 2 Gali No-8-A, Sadh Nagar Palam Colony 110045 Delhi', 'Delhi'),
(328, 'Rahul Kumar Chauhan', '9711608330', 'D-506 West Vinod Nagar Nr Mahesh Hospital 110092 Delhi', 'Delhi'),
(329, 'Ajay Saxena', '9711282086', 'Hno-110 2Nd Floor Dtc Colony, Model Town Nr Gurudwara 110009 Delhi', 'Delhi'),
(330, 'Ajay Saxena', '9711284264', '110 2 Floor Dtc Colony Model Town Gurudwara 110009 Delhi', 'Delhi'),
(331, 'Amrita Choudhary', '9873110635', 'H No-251 Gali no-5 Durga puri Extn Near- Gurudwara Gali No-4 110093 Delhi', 'Delhi'),
(332, 'Amrita Choudhary', '9873113748', 'H No-251 Gali no-5 Durga puri Extn Near- Gurudwara Gali No-4 110093 Delhi', 'Delhi'),
(333, 'Irfan', '9716094786', 'H No D-229 Street No 17 Old Mustafabad Near Noor Masjid 110094 Delhi', 'Delhi'),
(334, 'Akshima .', '9999397393', '518/6A Vishwas Nagar Karkari Road Nr HDFC Bank 110032 Delhi', 'Delhi'),
(335, 'Chander Dhar', '9953322480', 'House No - 80A Steet no -5 Anarkali Garden Jagatpuri nr Power Tranamer 110051 Delhi', 'Delhi'),
(336, 'Chander Dhar', '9953323791', 'House no - 80A Steet no -5 Anarkali Garden Jagatpuri nr Power Tranamer 110051 Delhi', 'Delhi'),
(337, 'Neha Jain', '9811658275', 'H No-88 Block-F Poket-5 Sec-16 Rohini Nr-Rock Sikld Public School NR DDA PARK 110085 Delhi', 'Delhi'),
(338, 'Harish Chander Bhatt', '9953962562', '1198/3, BLOCK B Baba Colony ,Gali No 3A,Burari Nr Mother Teresa School 110085 Delhi', 'Delhi'),
(339, 'Vikki .', '9873601362', 'H No 886 G/F Block-CF Madan Gir Nr Kishna mandir 110062 Delhi', 'Delhi'),
(340, 'Nishant Sharma', '9871119264', 'H No- 462 / 5 Mahram Mohalla Vishwash Nagar Bharat Medical Store 110032 Delhi', 'Delhi'),
(341, 'Rajat Chawla', '9999030052', 'H No-6024-5,2nd Floor,D6, Santushti Appartment,Vasant Kunj, - 110070 Delhi', 'Delhi'),
(342, 'Satish Kumar Yadav', '9711846686', 'H No-318 1st Floor G-Block Nauroji Nagar Hayat Hotel 110029 Delhi', 'Delhi'),
(343, 'Khushboo Arora', '9999240950', 'H No A-1/59 Block A-1 Paschim Vihar , 110063 Delhi', 'Delhi'),
(344, 'Lalita .', '9711570960', 'H No-1153 Ishwar Colony Village Bawana Dav Public School 110065 Delhi', 'Delhi'),
(345, 'Deepak Kumar', '9911659595', '137 Pkt-G-27 Sec-3 Rohini Near Abhinav Public School 110085 Delhi', 'Delhi'),
(346, 'Kiran Saini', '7838436597', 'H No 2281/173 Gali No 173 Ganesh Pura Tri Nagar 110053 Delhi', 'Delhi'),
(347, 'Kiran Saini', '9711286918', 'H No-2281/173 Gali No-173 Ganesh Pura Tri Nagar Delhi 110035 Delhi', 'Delhi'),
(348, 'Kiran Saini', '9873448483', 'S/O Lachh Minder Saini H No-2281/173 Gali No-173, Ganesh Pura Tri Nagar 110035 Delhi', 'Delhi'),
(349, 'Kiran Saini', '9873550107', 'S/O Lachh Minder Saini H No-2281/173 Gali No-173, Ganesh Pura Tri Nagar 110035 Delhi', 'Delhi'),
(350, 'Chetan Sharma', '9899372484', 'A-164 Third Floor Inderpuri Nr Sbi Atm 110012 Delhi', 'Delhi'),
(351, 'Shri Krishna Singh', '9999460796', 'J N Singh 578 Sarvhit Appt Dda Flats Pkt-A Sec-17 Dwarka Nr- Ip University 110075 Delhi', 'Delhi'),
(352, 'Gurinderjit Singh', '9711411491', 'H No-30/45 New Rohtak Road Karol Bagh 110005 Delhi', 'Delhi'),
(353, 'Aashutosh Sharma', '9999673122', 'H No-C/132 West Vinod Nagar Street No-9 Nr- Manglam Hospital 110092 Delhi', 'Delhi'),
(354, 'Jagdish .', '9868970203', '581 Bajit Pur Thakran Delhi 110039 Delhi', 'Delhi'),
(355, 'Pankaj Chikara', '9873391355', 'H No-78 Vill-Tetesar P O-Jaunti Nr Purani Gali 110081 Delhi', 'Delhi'),
(356, 'Ritika Malik', '9811262281', 'H NO-8/17 East Patel Nagar New Delhi Nr Patel Nagar West Metro Station 110008 Delhi', 'Delhi'),
(357, 'Anit Choudhary', '9873751169', 'H No-D377, Gali No-9 D-Block Bhajan Pura , 110053 Delhi', 'Delhi'),
(358, 'Anshuman Singh', '9990016007', 'Rzd3/116 Gali No-9 Mahavir Encl Palam Road Semrok School,Sai Baba Mandir 110045 Delhi', 'Delhi'),
(359, 'Khushbu .', '9953335474', 'H No-C-196,2nd Sarita Vihar C-Block Market 110044 Delhi', 'Delhi'),
(360, 'Naveen Dabas', '9999245826', 'C/O Naresh 1201 Ramayan Panna Village Pooth Khurd Delhi Near Old Post Office 110039 Delhi', 'Delhi'),
(361, 'Pankaj Kumar', '9899014464', '1B-64 , Third Floor Single Storey , Ramesh Nagar , 110015 Delhi', 'Delhi'),
(362, 'Kaushal Kumar Sharma', '9711415614', 'H No WZ 193 Shakur Pur Delhi 110034 Delhi', 'Delhi'),
(363, 'Amit Kr Yadav', '9873008200', 'S/O Suresh Chand H No-8/320 Mandoli Extn Nr Krishna Sweets 110093 Delhi', 'Delhi'),
(364, 'Suraj Prakash Pandey', '9873325811', 'H NO 1049 A First Floor Govind Puri Kalkaji Gali No 10 110019 Delhi', 'Delhi'),
(365, 'Varsha Gupta', '9899882811', 'H No B-12 Flat No 3 Anupam Enclave Ph-1 Ignou Road Saidulajab Extn 110030 Delhi', 'Delhi'),
(366, 'Atul Kumar Gupta', '9999757673', 'H No-G-254 Mohan Baba Nagar Tajpur Pahari Badarpur New Delhi Near Opp SBI ATM 110044 Delhi', 'Delhi'),
(367, 'Gaurav Chaturvedi', '9999972246', 'A-55 1st Floor Sudershan Park Shankar Ji Ki Murti Sanatan Dharm 110015 Delhi', 'Delhi'),
(368, 'Gaurav Chaturvedi', '9999972247', 'House No-55,Block-A, Sudershan Park, Near Shankar Ji Ki Murti, 110015 Delhi', 'Delhi'),
(369, 'Abhinav Sharma', '9810421515', 'House No-D-11/56 Shahjahan Road DELHI DELHI 110011 Delhi', 'Delhi'),
(370, 'Aditya Kumar Singh', '9811313098', 'H No - 126 Ward No - 9 Kishangarh Vasant Kunj Gaushala Mandir 110070 Delhi', 'Delhi'),
(371, 'Ankush Chander', '9999034728', 'B- 186 Pandav Nagar First Floor Shakarpur Near Mother Dairy 110092 Delhi', 'Delhi'),
(372, 'Komal Sharma', '9873418052', 'H No 4/375, Gali No 13, Idgah Road Bhola Nath Nagar Shahdara ID Gold Road 110032 Delhi', 'Delhi'),
(373, 'Brijesh Kumar Rai', '9953473354', 'H No B 316 1st Floor Sec 1 Rohini Avantika Delhi 110085 Delhi', 'Delhi'),
(374, 'Prince Saini', '9899913045', 'H No 21A, Khasra No 876 Block-D Nehru Enclave Nr Corpration Bank 110036 Delhi', 'Delhi'),
(375, 'Yamini Diwan', '9811498535', '2440 Hudson Lines Kingsway Camp GTB Nagar 110009 Delhi', 'Delhi'),
(376, 'Abad Ali', '9811692144', 'Shop No 16 MCD market Angoori bagh Delhi 110006 Delhi', 'Delhi'),
(377, 'Astha Enterprises Alpana', '9711304782', 'Astha Enterprises E35/30 Feet Road, Jagatpuri Ext , 110093 Delhi', 'Delhi'),
(378, 'Astha Enterprises Nishtha', '9953041907', 'Astha enterprises E35/30 Feet Road, Jagatpuri Ext , 110093 Delhi', 'Delhi'),
(379, 'Astha Enterprises Rahul', '9999399574', 'Astha Enterprises E35/30 Feet Road, Jagatpuri Ext , 110093 Delhi', 'Delhi'),
(380, 'Astha Enterprises Arpan', '9999399593', 'Astha Enterprises E35/30 Feet Road, Jagatpuri Ext , 110093 Delhi', 'Delhi'),
(381, 'Astha Enterprises Arpan', '9999985672', 'Astha Enterprises E35/30 Feet Road, Jagatpuri Ext , 110093 Delhi', 'Delhi'),
(382, 'Pushkar Raj', '9811169395', 'H No-D-130 Iiird Floor Lajpat Nagar Part-I Nr Opp Park Facing 110024 Delhi', 'Delhi'),
(383, 'Neha Kapoor', '9999039960', 'H No-2/5, 1st Floor East Punjabi Bagh , 110026 Delhi', 'Delhi'),
(384, 'Ahmad Parvez', '9990576890', 'S/O I Z Aledin B - 237-238, G Floor Gandhi Vihar Near Dr Mukherjee Nagar Near Mukherjee Nagar Post Office 110009 Delhi', 'Delhi'),
(385, 'Sourav Kumar', '9899387617', 'H No-C-153 New Ashok Nagar Nr-Mata Dairy 110096 Delhi', 'Delhi'),
(386, 'Swati Gupta', '9899052237', 'H No-522/7 Pushp Vihar Nr Select City Walk  110017 Delhi', 'Delhi'),
(387, 'Vipin Yadav', '9811986664', '675 Radha Krishna Mandir Veer Bzr, Wali Gali 110037 Delhi', 'Delhi'),
(388, 'Akhil Saxena', '9873604619', 'H No B 58/2 East of Kailash Hdfc Bank 110065 Delhi', 'Delhi'),
(389, 'Arun Kumar Singh', '9711979876', 'S/O Mr Lal Ram H No-E-16 Gali No-1 West Vinod Nagar Nr-Mangal Hospital 110092 Delhi', 'Delhi'),
(390, 'Gurpreet Singh', '9910117985', 'H No-1/9547 Gali No-2/1 Pratap Pura West Rohtash Nagar Shahdara Behind Mukut Pan Bhandar 110032 Delhi', 'Delhi'),
(391, 'Kush Shukla', '9999795635', 'S/O Mr J Narayan Shukla H No-55 3Rd Floor, Sultan Pur Extn Nr-Gurudwara 110030 Delhi', 'Delhi'),
(392, 'Pooja Arora', '9999826016', '20 Road No-68 West Punjabi Bagh Nr-Club Road 110026 Delhi', 'Delhi'),
(393, 'Permod Kumar', '9818185192', 'H No-RZ-126A/60 Gali No-13 Sagar Pur Kali Mata Mandir 110046 Delhi', 'Delhi'),
(394, 'Pawan Yadav', '9718276968', 'H No RZ-47 C Block Old Roshan Pura Najaf Garh Near SBI Bank Gali 110043 Delhi', 'Delhi'),
(395, 'Mahesh Chandra', '9990134748', 'S/O V L Sharma H No-205, Hadoo Mohalla Madanpur Khadar, Sarita Vihar Nr Harijan Chopal 110076 Delhi', 'Delhi'),
(396, 'Pankaj Kumar', '9873026251', 'S/O Sh Balwan Singh Old Add 409 New Add- 164 Pandit Mohalla Vpo Khera Khurd Shyam Baba Chowk 110082 Delhi', 'Delhi'),
(397, 'Randhir Singh', '9899339788', 'Directorate General Of Military Intellig Sena Bhawan IHQ of MoD Army DHQ PO General Staff Branch Room No-822 110011 Delhi', 'Delhi'),
(398, 'Madhav Kapur', '9953147665', 'H No-E-1/7 Model Town Near Naini Lake 110009 Delhi', 'Delhi'),
(399, 'Romila Singh', '9999701521', 'Flat No - 217 Pocket - 8, Sector - 12, Dwarka Near Bal Bharti Public School 110075 Delhi', 'Delhi'),
(400, 'Manu Parmar', '9953978265', 'C-174 Top Floor Lajpat Nagar-1 Near Defence Clony Block-C 110024 Delhi', 'Delhi'),
(401, 'Swati', '9899478756', 'S/o Yogender Kumar 315 Pocket B 5 Sector 3 Rohini New Delhi 110085 Delhi', 'Delhi'),
(402, 'Ashwani Kumar', '9899773756', 'HOC-Pink House No-315 B-5/315 Sec-3 Rohini Near-MCD School 110085 Delhi', 'Delhi'),
(403, 'Aashish Kumar', '9810571629', 'Cn-709, S-Block Bengali Camp, Isirieal Camp, Rangpuri Pahari 110037 Delhi', 'Delhi'),
(404, 'Monika Jain', '9999689202', 'H No 75 Shakar Pur Baramad Shakar Pur Nr Karkardooma Court Bahubali Enclave 110092 Delhi', 'Delhi'),
(405, 'Ajit', '9953881607', 'H No-H-55B Blk-H Vijay Vihar Ph-ll Nr-Raj Medical Store 110085 Delhi', 'Delhi'),
(406, 'Sanjeev Bhardwaj', '9910104181', 'RZF-244A C/o Niranjan Lal Goyal Rajendar part 2 Palam Colony Nr-DDA Park 110045 Delhi', 'Delhi'),
(407, 'Sanjeet Bhardwaj', '9953114191', 'C/o Niranjan Lal Goyal RZF-244A Raj Nagar Part-2 Nr DDA Park Plaza Colony 110045 Delhi', 'Delhi'),
(408, 'Shankar Sharma', '9711169186', 'S-15 Chanakya Place Part-2 C-1 Nr-Janakpuri Nr-Janakpuri 110059 Delhi', 'Delhi'),
(409, 'Shiv Sharma', '9968160686', 'S- 15 Block S Chankiya Place Part-2 Uttam Nagar Mogia Building 110059 Delhi', 'Delhi'),
(410, 'Shiv Sharma', '9999285615', 'H No S-15 Block S Chanakya Place-II Uttam Nagar Near Mongia Building 110059 Delhi', 'Delhi'),
(411, 'Vishal Varma', '9871035557', 'Flat No-2F Neeti Apartment Plot No-84 IP Extn Paparganj opp Side of pankaj plaza 110092 Delhi', 'Delhi'),
(412, 'Vishal Varma', '9871037711', 'Flat No-2F Neeti Apartment Plot No-84 IP Extn Paparganj opp Side of pankaj plaza 110092 Delhi', 'Delhi'),
(413, 'Yogesh Arora', '9899990049', 'H No-CA-80-C Hari Nagar DDA Flats NR-Hari Nagar Clock Tower 110064 Delhi', 'Delhi'),
(414, 'Rakesh Kapoor', '9873142270', 'E-58 Blk-E Lajpat Nagar-2 Nr Shyam Garments 110024 Delhi', 'Delhi'),
(415, 'Sunil Kumar', '9910461424', 'S/O Roop Chand S/O-Roop Chand H No-25 Naya Bans Harijan Mohalla Vill Iradat Ngr 110082 Delhi', 'Delhi'),
(416, 'Sumit Chaudhary', '9711195718', 'H No-5/295 Mohalla Maharam Shahadra Nera- Farsh Bazar Ploice Station 110032 Delhi', 'Delhi'),
(417, 'Sumit Chaudhary', '9711195814', 'H No-5/295 Mohalla Maharam Shahadra Nera- Farsh Bazar Ploice Station 110032 Delhi', 'Delhi'),
(418, 'Vikram Kapoor', '9811030216', 'H No - D1/16, First Floor Janakpuri B-1 Near Tilak Nagar Jail 110058 Delhi', 'Delhi'),
(419, 'Pradeep Kumar Pandey', '9999035733', 'Hno GC-27 Block GC Pul Pehlad Pur Nr School Tool Tax 110044 Delhi', 'Delhi');
INSERT INTO `tbl_forms` (`member_id`, `member_name`, `member_number`, `member_address`, `member_city`) VALUES
(420, 'Parul Jain', '9810764243', 'HNo D 7 Vardhman Apartments Apts Mayur Vihar I Samarhar 110091 Delhi', 'Delhi'),
(421, 'Ravinder Singh', '9873917898', '132 Ishwar Colony Bawana Shanti Vidaya Nikeetan School 110039 Delhi', 'Delhi'),
(422, 'Ravi Kamal', '9899573356', 'Hno D-68A Gali No 7A Ganesh Nagar Pandav Nagar Nr Kali Mandir 110092 Delhi', 'Delhi'),
(423, 'Ruchika Goyal', '9811102411', 'cottage no-22 West Patel nagar Chocolate cake studio 110008 Delhi', 'Delhi'),
(424, 'Shikha Sachdeva', '9999914240', 'C-9/95 Sec-8 Rohini Delhi Near Saroj Hospital Madhuban Chowk 110085 Delhi', 'Delhi'),
(425, 'Shivani Sharma', '9899571141', 'C/o. Mukesh Sharma H No RZ-616 Main Road Palam Colony Raj Nagar Part-1 Near Opp Pillor No-51 110077 Delhi', 'Delhi'),
(426, 'Vishal Gupta', '9999393980', 'H No PU -49 Blk PU Pitampura Delhi 110088 Delhi', 'Delhi'),
(427, 'Himanshu Khurana', '9990625096', 'H No 38 B Block J G/3 Vikas Puri Nr H Block Lal Market 110018 Delhi', 'Delhi'),
(428, 'Shisher Prasad', '9953184088', 'Flat No 401, 3Rd Floor, Building No R50, Khirki Extn,Near Womens Politecnic Collage,Nr Sai Mandir 110017 Delhi', 'Delhi'),
(429, 'Sumit Bhardwaj', '9873262095', 'Old House No-404 New H No-380 4th Flor Haveli Haider Quli Chandani Chowk Near Fatehpur Masjid 110006 Delhi', 'Delhi'),
(430, 'Tanya Khanna', '9899345079', 'S/O Vimal Khanna F-437/B, New Rajinder Nagar Nr Dda Mkt 110060 Delhi', 'Delhi'),
(431, 'S Padhanabhan', '9818697415', 'H No 175 Block-12 Lodhi R Colony Center Park 110003 Delhi', 'Delhi'),
(432, 'Ranjit Roy', '9999513391', 'C/O Radhy Shyam HNo-62 Singal Pur Village Shalimar Bagh Nr- DLF City Center Mall 110088 Delhi', 'Delhi'),
(433, 'Praveen Saini', '9999114299', 'HOC-Cream Tiles House No-9 Gali Shiv Mandir Village-Shalimar Near-Shiv Mandir 110088 Delhi', 'Delhi'),
(434, 'Rahul Mehta', '9999974542', 'H No-85 2nd Floor Block-BN West Shalimar Bagh Delhi 110088 Delhi', 'Delhi'),
(435, 'Megna Kataria', '9873287001', 'S/O Rajbir Kataria B2/72 Gram Saba Houses Sewak Park Nr-Dwarka Morh Metro Station 110059 Delhi', 'Delhi'),
(436, 'Ritesh Kumar', '9818008264', '107-C,Platinum Enclave,Sec-18 Rohini nr crime branch office 110089 Delhi', 'Delhi'),
(437, 'Shikha Bhaskar', '9899890263', '21 B Block-CA, Shalimar Bagh  110088 Delhi', 'Delhi'),
(438, 'Parul .', '9811891036', 'D/o TK Kaul D-3/3158 Vasant Kunj Fortis Hospital 110070 Delhi', 'Delhi'),
(439, 'Parul .', '9811891259', 'D/o TK Kaul D-3/3158 Vasant Kunj Fortis Hospital 110070 Delhi', 'Delhi'),
(440, 'Supreet Kaur', '9891451362', 'H.No.5 Road No-26 Ist Floor Punjabi Bagh Ext Behind Bikaner Wala 110026 Delhi', 'Delhi'),
(441, 'Syed Zafar Ali', '9999623080', 'So Mr Zafar Ali C/O Harsh House-55/2 Room-4 1St Flr Post Office Jnu Vill-Munirka Near Gurudwara 110067 Delhi', 'Delhi'),
(442, 'Anjali', '9999470489', '34/1115 DDA Flats Madangir Delhi 110062 Delhi', 'Delhi'),
(443, 'Amit K Kushwaha', '9999655762', 'H No-C-20 Bangalow Road Adarsh Nagar Near By Shri Guru Nank Public School 110033 Delhi', 'Delhi'),
(444, 'Ravi Prakash', '9999287789', 'H/No-302,1st Floor Pkt-5,Mayur Vihar Ph-1 Nr-Shashi Garden 110091 Delhi', 'Delhi'),
(445, 'Mumtaz .', '9953226613', 'House No-30/390, Block 30 Trilok Puri , 110091 Delhi', 'Delhi'),
(446, 'Pankaj Singh', '9999881835', 'S/o Jai Kant Singh Rz 3233/36 Tughalkabad Ext aali Nr Shani Public School 110019 Delhi', 'Delhi'),
(447, 'Rahul Rathore', '9999443052', 'H/No-X/1070,Gali No-3 Chand Mohalla Gandhi Nagar , 110031 Delhi', 'Delhi'),
(448, 'Rajnee Kant', '9899749262', 'H,No,189, 2nd Floor Babu Lal Chowk Moti Wara Chaupal Munirka Village Nr-Moti Wara Chaupal 110067 Delhi', 'Delhi'),
(449, 'Subhash Kumar', '9999364491', 'S/O Mr Munna Lal H No-J-75 West Ansari Nagar Aiims Staff Qurter 110029 Delhi', 'Delhi'),
(450, 'Arti Kaushik', '9811561349', 'L-72 Mahipalpur Extn  110037 Delhi', 'Delhi'),
(451, 'Manish Kumar Sinha', '9899794048', 'Flat No-622 Azad Hind CGHS Plot No-15 Dwarka 110077 Delhi', 'Delhi'),
(452, 'Mridu Singh', '9968203809', 'C/o Anju HNo J2/12B Ground Floor Khirki Extnsion Malviya Nagar NR Krishna Mandir,Agarwal SweetsWaliGali 110011 Delhi', 'Delhi'),
(453, 'Neha Aggarwal', '9711192775', 'F-126 2nd Floor Flat No-202 Clips Appt Lado Sarai , 110030 Delhi', 'Delhi'),
(454, 'Ripul Gambhir', '9711959505', 'H No 42/6, Ashok Nagar New delhi House Tax Office 110018 Delhi', 'Delhi'),
(455, 'Ripul Gambhir', '9810634927', 'S/o Suresh Gambhir H No 42/6 Ashok Nagar Nr Hosin Tax Office 110018 Delhi', 'Delhi'),
(456, 'Ripul Gambhir', '9911488489', 'H No-42/6 Ashok Nagar BACKSIDE ENTRY 110018 Delhi', 'Delhi'),
(457, 'Tanvi Mehat', '9711517581', 'H No C 10 Block C Lajpat Nagar 3 Haldi Ram Or Mulchand Hospital , 110024 Delhi', 'Delhi'),
(458, 'Ashish Kumar', '9899009968', 'H No-A-243/2 Swaroop Nagar Delhi NR-Praimery School 110042 Delhi', 'Delhi'),
(459, 'Harsh Tanwar', '9910274200', 'WZ-911/3 Naraina Village Near Choudhary Restaurant 110028 Delhi', 'Delhi'),
(460, 'Gaurav .', '9873299725', 'House No-B-24/117 Ist Floor Mangal Bazar Road Gurunananakpura laxmi Ngr Near Maharaja Banquet Hall 110092 Delhi', 'Delhi'),
(461, 'Rajni Misra', '9811717903', '9160 Sec-C Pkt-9 Vasant Kunj Near DPS School 110070 Delhi', 'Delhi'),
(462, 'Om Prakash', '9811821925', 'S/O Laxmi Narayan C - 195/B Block - C Rama Vihar Mond Pur Majri Near Durga Mandir Chowk 110081 Delhi', 'Delhi'),
(463, 'Sandeep .', '9899051878', 'H no 68 Gali no 12 Kapashera Nr Sahara Office,Mata Wali Gali 110037 Delhi', 'Delhi'),
(464, 'Orient Fans Ltd', '9999266130', 'User-Manoj Verma 82 1st Floor Okhla Industrial Estate Phase-3 New Delhi 110020 Delhi', 'Delhi'),
(465, 'Orient Fans', '9999894088', 'User-Manoj Verma Plot No-82 Okhla Indl Area Ph-3 Delhi 110020 Delhi', 'Delhi'),
(466, 'Rajiv Chowdhary', '9873691960', 'H No - C-226 Saket Golf View Appts 110017 Delhi', 'Delhi'),
(467, 'Rekha Sharma', '9999304685', 'A-251 Blk A Meera Bagh Paschim Vihar Opp Snatan Dharam Mandir 110087 Delhi', 'Delhi'),
(468, 'Rekha Sharma', '9999872348', 'A-251 Block-A Meera Bagh Paschim Vihar Nr-Santan Dharam Mandir 110087 Delhi', 'Delhi'),
(469, 'Amit Kaushik', '9968833331', 'B 774 Avantika Sec-1 Rohini Delhi 110085 Delhi', 'Delhi'),
(470, 'Hemraj .', '9873707948', 'Kh-123/18, Gali No-15, Sant Nagar Burari Near-NDPL Office 110084 Delhi', 'Delhi'),
(471, 'Jogendra Kumar', '9953923581', 'H No- 110 MIG Flats Metro Appt Jhangir Puri Delhi 110033 Delhi', 'Delhi'),
(472, 'Sunil .', '9711480850', 'S/o Mool Chand H No-A-90 Block-A DDA Flats Kalkaji Hanuman Mandir 110019 Delhi', 'Delhi'),
(473, 'Sunil', '9811287693', 'S/o Mool Chand, House No-A-90 Block-A, DDA Flats, Kalka Ji Near Hanuman Mandir 110019 Delhi', 'Delhi'),
(474, 'Avanti Yadav', '9873385346', '60/11 Sec-1 Pushp Vihar Mother Dairy Sec-1 110017 Delhi', 'Delhi'),
(475, 'Brij Pal Gahlot', '9891261515', '182/9 Dr. Ambedkar Basti Ghonda Near Community Centre 110053 Delhi', 'Delhi'),
(476, 'Brij Pal Gahlot', '9891551515', '182/9 Dr. Ambedkar Basti Ghonda Near Community Centre 110053 Delhi', 'Delhi'),
(477, 'Sandeep Sharma', '9873309746', 'A-10 Gali N0-1, A- Block Brahampuri 110053 Delhi', 'Delhi'),
(478, 'Suresh R', '9811179696', 'S V Temple,T T D Information Centre, Gol Market, Beside- Kendriya Vidyalya, 110001 Delhi', 'Delhi'),
(479, 'Naresh Kumar', '9811972738', 'H No-40 Baragi Mohalla Vill Ghoga Delhi 110040 Delhi', 'Delhi'),
(480, 'Sarita .', '9899439012', 'House no - 518 -B Street no - 4 Vijay park maujpur ne national publick school 110053 Delhi', 'Delhi'),
(481, 'Deepak Kumar', '9811459375', '106-107 Pocket-8 Sec-24 Rohini Near D-Indian Public School 110085 Delhi', 'Delhi'),
(482, 'Navin Kumar', '9811047983', 'Flat No-768, Baghwan Appt, Sector-28, Rohini, Near-Shabad Dairy Bus Stand, 110085 Delhi', 'Delhi'),
(483, 'Navin Kumar', '9999026863', 'H No 768 GH 2 IIIrd Floor Sec 28 Rohini Delhi 110028 Delhi', 'Delhi'),
(484, 'Vikash .', '9999739146', '341/4 Flat NO-5 2nd Flr Ward NO-4 Inder Compx Mehrouli Red Imate Gali Nr-Mehroli Police Stn 110030 Delhi', 'Delhi'),
(485, 'Anjana', '9718721444', 'HouseNo-G 241 G-Block Gali No-6 Punjabi Colony Narela Budho Devi Hospital 110040 Delhi', 'Delhi'),
(486, 'Jogender Kumar', '9811274624', 'D-119,Gali No-6,Vijay Colony,Usmanpur Ghonda Bhajan Pura North East Near Punjab Dairy 110053 Delhi', 'Delhi'),
(487, 'Jogendra Kumar', '9953722731', 'D-119,Gali No-6,Vijay Colony,Usmanpur Ghonda Bhajanpura North East Near Punjab Dairy 110053 Delhi', 'Delhi'),
(488, 'Surendra Singh', '9873193989', 'Rz-78 3Rd Floor Shani Bazar Nr- Shani Mandir Jain Colony -2 Nr- Above Kapoor Associate Uttam Naga 110059 Delhi', 'Delhi'),
(489, 'Sushil Kumar', '9953955258', 'S/O Virender Kumar, H No-857 Room No-10 2Nd Floor Uprahi Mohalla Nr Angan Bari Sunny General Store Mahipalpur 110037 Delhi', 'Delhi'),
(490, 'Pramod Sharma', '9873005945', 'House-D-12 Rajpur Khurd Nr Tivoli Garden Resort 110068 Delhi', 'Delhi'),
(491, 'Mahesh Kumar', '9811694366', 'C\\O Satish Tyagi , Wz-388, Hastal Village, Near Mcd School Uttam Nagar 110059 Delhi', 'Delhi'),
(492, 'Mahesh Kumar', '9811907011', 'S/o Dayanan Mahila H No WZ-388 Satish Tyagi House Village Hastsal Uttam Nagar Near Govt School 110059 Delhi', 'Delhi'),
(493, 'Niraj Kr Sharma', '9711678283', 'D-889 Gali No-13 Ashok Nagar  110093 Delhi', 'Delhi'),
(494, 'Santosh Kumar', '9999942718', 'E-431 Gali No-7 E-Block Jagjit Nagar Bahji Shop 110053 Delhi', 'Delhi'),
(495, 'Siddharth Sharma', '9811739335', 'Rk Sharma Wz-31C Jwala Heri Village Paschim Vihar Opp Dushera Park 110041 Delhi', 'Delhi'),
(496, 'Anil Kumar Pandey', '9873094960', 'C/O Jitender Gaba H No-Wz-6 Gali No-1 Srinagar Rani Bagh Delhi Nr Ram Mandir 110034 Delhi', 'Delhi'),
(497, 'Pankaj Singh', '9871127284', 'House No-275 2nd Flr Keshav Kunj Appt Pkt-D Sec-17 Dwarka , 110075 Delhi', 'Delhi'),
(498, 'Prateek Khandelwal', '9873104795', '6/60,3rd Flr,WEA Padam Singh Marg Karol Bagh Nr MC Donalds 110005 Delhi', 'Delhi'),
(499, 'Yashpal .', '9999355775', 'Harbans H No 1/10 Gali No 5 Shastri Nagar Ambedkar Park 110031 Delhi', 'Delhi'),
(500, 'Abhay Kumar Mishra', '9911469439', 'House Number-107/108 Laxmi Vihar Mohan Garden Uttam Nagar Near Malik P roperties 110059 Delhi', 'Delhi'),
(501, 'Amit Kumar', '9911640983', '28 Ghitroni Nr PNB ATM 110030 Delhi', 'Delhi'),
(502, 'Ashwani Baranwal', '9953130988', 'H No RZ-78/331 2nd Floor T Extn Vishwas Park Uttam Nagar Near Param Puri Chowk 110059 Delhi', 'Delhi'),
(503, 'Harish Sharma', '9911396562', 'H No-D-76/A F/F Old No-D-75 Krishna Park Delhi Road Nr Aggarwal Sweets 110062 Delhi', 'Delhi'),
(504, 'Rahul Arora', '9999993471', '12 Outram Lines GTB Nagar Near Metro Station 110009 Delhi', 'Delhi'),
(505, 'Rohit Koul', '9953051224', 'H No B-137 New Ashok Nagar Mayur Vihar Vihar Ph-1 Near East End Apartment 110096 Delhi', 'Delhi'),
(506, 'Mansi Kohli', '9873036777', '345 Gagan Vihar , 110092 Delhi', 'Delhi'),
(507, 'Supreet Singh', '9716666864', 'Flat No. 298, Pkt. B1, Top Floor, Lok Nayak Puram, Anmol Appt., 110041 Delhi', 'Delhi'),
(508, 'Manish Kumar', '9873555881', 'H No 148/5-B Mithapur Extn Badarpur Sindhu Farm Road 110044 Delhi', 'Delhi'),
(509, 'Sushil Kumar', '9999855946', '13 A, Gali No-1 Libas Pur Chandan Park 110042 Delhi', 'Delhi'),
(510, 'Prakash Kumar Roy', '9910780011', 'H No-158 Gali No-16 Mohan Garden Vipin Garden Extn Dwarka Mode Metro 110059 Delhi', 'Delhi'),
(511, 'Sneha Kumari', '9899366187', 'Hno- D-571 Block-D Okhla Industrial Area Ph-1 Nr- Shiv Shakti Mandir 110020 Delhi', 'Delhi'),
(512, 'Amit Kumar Shrivastva', '9971046115', 'H No-91 Vikas Marg Shakarpur Opp Nathus Sweet 110092 Delhi', 'Delhi'),
(513, 'Gaurav Khurana', '9818444442', 'H No-C-120 C Gali No-7 Majlis Park Adarsh Nagar Near N S Mandi 110033 Delhi', 'Delhi'),
(514, 'Dipti Thakur', '9999800600', 'S/O Hansraaj Thakur E-322 Gali No 5 West Vind Nagar Nr Mother Dairy 110092 Delhi', 'Delhi'),
(515, 'Tapas Pradhan', '9953532382', 'H No D 118 A South Ganesh Nagar SAGAR GUEST HOUSE AT LEFT HAND SIDENr S 110092 Delhi', 'Delhi'),
(516, 'Rakesh Kumar', '9971938499', 'E-36 A/153 Blk-32 33 Ambedkar Camp Trilok Puri Nr Madina Masjid/Transfarmer Wali Gali 110091 Delhi', 'Delhi'),
(517, 'Varun Mittal', '9873702770', 'H No-B-1538, B Block Shastri nagar Agarsen dharam shala wali gali 110052 Delhi', 'Delhi'),
(518, 'Ashish Kumar Maurya', '9810944293', 'D164A, D Block Madhu Vihar 2 number Market CR Park 110059 Delhi', 'Delhi'),
(519, 'Rajat Chaudhary', '9958041112', 'HNo D2 Plot No 10-11 Sec 11 Rohini NR Japanese Park 110085 Delhi', 'Delhi'),
(520, 'Amardeep Singh', '9999449044', 'H No E-111, Grd Floor, Amar Colony, Lajpat Nagar-4, Nr Mother Dairy, 110024 Delhi', 'Delhi'),
(521, 'Meenu Gupta', '9953872756', 'F-85B 3rd Floor Laxmi Nagar Mangal Bazar 110092 Delhi', 'Delhi'),
(522, 'Rinkaj Yadav', '9818086455', 'H No- 155 Dhakka Village Kingsway Camp G.T.B Nagar Near Old Chopal 110009 Delhi', 'Delhi'),
(523, 'Rinkaj Yadav', '9953812601', 'H No- 155 Dhakka Village Kingsway Camp Nagar Near Old Chopal 110009 Delhi', 'Delhi'),
(524, 'Rajender Kumar', '9711676192', 'House No-1/99 NCERT Ty pe NCERT Campus Kutub Hotel 110016 Delhi', 'Delhi'),
(525, 'Suhail Moin Khan', '9899091743', 'Flat No 205 Saraswati Block-1 Pkt-6 Sec-D mother dairy 110070 Delhi', 'Delhi'),
(526, 'Saran Adhar Bhatia', '9999009228', 'H No-1/7343 Street No-7 East Gorakh Park Shahdara Near Hanuman Mandir 110032 Delhi', 'Delhi'),
(527, 'Hema Mehra', '9999865921', 'D-9/4, Sectore-15 Rohini Near manan chawk 110089 Delhi', 'Delhi'),
(528, 'Leena .', '9999927905', 'House No-E-4/100 Sultan Puri Near Jalebi Chowk 110086 Delhi', 'Delhi'),
(529, 'Narender Kumar', '9811464128', 'H-7/544 ,Jwala Nagar,Shahadra ,Near Indra Park, 110032 Delhi', 'Delhi'),
(530, 'Siddharth Singh', '9999494112', 'AC-142C Shalimar bagh Shalimar Bagh 110088 Delhi', 'Delhi'),
(531, 'Alisha Vij', '9910752520', 'S/O Rajesh E-133 Ground Floor Kalkaji Block I Nr Lakshmi Narayan 110019 Delhi', 'Delhi'),
(532, 'Anurag Saksena', '7838299009', 'H No-252-253 Phase-1A Om Vihar West Uttam Nagar Near Gugudwara 110059 Delhi', 'Delhi'),
(533, 'Chinmay Mukhi', '9999668423', 'House No-584 DDA Flats Metro View Appt Sec-13B Dwarka Near- Sec-13 Metro Stn 110075 Delhi', 'Delhi'),
(534, 'Bhavna Motiani', '9871861287', 'H No A-507 Sarita Vihar Nr Apollo Hospital 110076 Delhi', 'Delhi'),
(535, 'Archana .', '9971234955', 'C-4/234 Blk-C4 Yamuna Vihar , 110053 Delhi', 'Delhi'),
(536, 'Pankaj Kumar', '9717903380', 'House No-A-5/80 Block-A Rajvir COlony Near Ambedkar Park 110096 Delhi', 'Delhi'),
(537, 'Subham Mishra', '9711991530', 'M-123- A 1st Floor Nr Jagat Ram Park Laxmi Nagar , 110092 Delhi', 'Delhi'),
(538, 'Aadesh Kumar', '9953115502', 'RZ-5/230-235 Gali No-1 Dayal Park West Sagar Pur Reeta Public School 110046 Delhi', 'Delhi'),
(539, 'Ranjeet Kumar Sharma', '9999508151', 'S/O S C Sharma H No-A-159 Gali No-5 Block A Prem Nagar-3 Gaurav Nagar-Ii Kirari Suleman Nagar Nr Budh Bzr Road 110086 Delhi', 'Delhi'),
(540, 'Tarun Gupta', '9873732044', 'H No-D-16/345-355 G Floor Sec-7 Rohini Nr Sbi Atm 110085 Delhi', 'Delhi'),
(541, 'Nitin Kumar', '9711941817', 'H No-A-23 Blk-A Roshnara Building Shakti Nagar Delhi 110007 Delhi', 'Delhi'),
(542, 'Sandeep Kataria', '9899783300', 'D-2/91A Janak Puri Nr Pnb Bank 110058 Delhi', 'Delhi'),
(543, 'Abhishek Ganotra', '9999426062', 'B-1/149 Ashok Vihar Ph-2 Nr Pink Marketnear Idbi Bank 110052 Delhi', 'Delhi'),
(544, 'Abhishek Ganotra', '9999676062', 'S/O Raj Kumar B1/149 Phase-2 C-1 Block Ashok Vihar Nr Gulabi Market 110052 Delhi', 'Delhi'),
(545, 'Jaspreet Kaur', '9873739533', 'Hardeep Singh A-140/1 Ganesh Nagar Nr Reliance Fresh 110018 Delhi', 'Delhi'),
(546, 'Sadhna ..', '9899307106', 'D/O Radheshyam C-279 Okhla Ph 2 Block C Sanjay Colony Nr S 88 Company 110020 Delhi', 'Delhi'),
(547, 'Prem Chand Yadav', '9899059603', '633 Gali No 9 Phase-V Shiv Vihar Bhajan Pura Delhi 110094 Delhi', 'Delhi'),
(548, 'Amit Kumar Patel', '9968919875', 'Hno 48 Gali no 3 3rd Floor Chandan Vihar West Sant Nagar Burari Nr JS Bajaj 110084 Delhi', 'Delhi'),
(549, 'Deepak Kumar', '9711440099', 'H No-B-177 Gali No-2 Chandu Nagar Near Ghadde Wala School 110094 Delhi', 'Delhi'),
(550, 'Nitin Kumar', '9953195113', 'House No-A-329 Gali No-17 Shyam Colony Budh Vihar Ph-2 Near Shiv Mandir 110086 Delhi', 'Delhi'),
(551, 'Manish Kumar', '9711882086', 'H No-C-55B Jain Cly Manesh Encl Barwala Bawana Blk-A Delhi 110039 Delhi', 'Delhi'),
(552, 'Abhinav', '9899150359', 'C/o Ram Pal Verma H no-G-62 Saket Pvr Saket 110017 Delhi', 'Delhi'),
(553, 'Kusum Yadav', '9899783081', 'R M Yadav House No-A-16 South X Part 1 A Block Near Kidwai Nagar 110049 Delhi', 'Delhi'),
(554, 'Kusum Yadav', '9899829017', 'C/O Bhalwinder Singh A-16 South Extn Part-1 Nr Kidwai Nagar 110049 Delhi', 'Delhi'),
(555, 'Sudhir Drall', '9999232765', 'H-No 379 Village Neelwal PO Tikri Kalan Near Tata Tower 110041 Delhi', 'Delhi'),
(556, 'Suresh Chand', '9716852723', 'C-79 South Ganesh Nagar Near Mother Dairy 110092 Delhi', 'Delhi'),
(557, 'Tanuj .', '9953199515', 'HNo 269 WZ Block Basai Ramesh Nagar Metro Station Darapur Delhi 110015 Delhi', 'Delhi'),
(558, 'Gaurav Sharma', '9873060487', 'S/O Lekhraj House No - 9 Gali No - 8 Saboli Bagh Nand Nagri Sahdev Gali 110095 Delhi', 'Delhi'),
(559, 'Gajender N', '9999139852', 'S/O Mr Ganga Dhar 169 Blk-14, Dakshin Puri Near Deep Sweets 110062 Delhi', 'Delhi'),
(560, 'Gajender .', '9999827987', '169 Block-14 Dakshin Puri  110062 Delhi', 'Delhi'),
(561, 'Gajender', '9999840157', 'S/O Mr Ganga Dhar 169 Blk-14, Dakshin Puri Near Deep Sweets 110062 Delhi', 'Delhi'),
(562, 'Saransh Pandey', '9899114575', 'D-186A D-Block Street No-20 Dabri Palam Road Nr-Sanjeevan School 110045 Delhi', 'Delhi'),
(563, 'Swati', '9711133947', 'G-186 Arjun Nagar nr Delhi police public School 110029 Delhi', 'Delhi'),
(564, 'Ajay Kumar Sharma', '9818640095', 'S/O Mangu Sharam H No-K-127/2 Block-K, Saurabh Vihar Jaitpur Badarpur Near Amar Market 110044 Delhi', 'Delhi'),
(565, 'Atul Singh', '9953089504', 'C/o Rajesh House No-88D 2nd Flr Peerwali Gali Patparganj Mayur Vihar Phase-1 Near Mayur Vihar Ph-1 Metro Stn 110091 Delhi', 'Delhi'),
(566, 'Gaurav Gupta', '9999307950', 'House No 139 1st Floor Chanderlok Pitampura , 110034 Delhi', 'Delhi'),
(567, 'Narayanaswamy I Kalyana Sundaram', '9953965092', 'Flat No-48 DDA Flat Quarter Ber Sarai Opp Water Tank Ber Sarai Market 110017 Delhi', 'Delhi'),
(568, 'Abhishek Shukla', '9711515323', 'RZF-222/14 Gali No-31C Sadh Nagar Palam Colony Nr Hanuman Mandir 110045 Delhi', 'Delhi'),
(569, 'Sidtharth .', '9711270573', 'C/O Sohan Lal H No-4/49 3rd Floor Saket Block Mandawali Chander Vihar Metro Station 110017 Delhi', 'Delhi'),
(570, 'Sidtharth .', '9711671976', 'C/O Sohan Lal H No-4/49 3rd Floor Saket Block Mandawali Chander Vihar Metro Station 110017 Delhi', 'Delhi'),
(571, 'Ajay Kumar', '8860585882', 'Kh No 25/19 -22 Sapt Rishi Garden Holambi Kalan Nr Fatak 110082 Delhi', 'Delhi'),
(572, 'Gaurav Sharma', '9873964934', 'T- 695/B1 Gali no 21A Vishwakarma Marg Baljeet Nagar , 110008 Delhi', 'Delhi'),
(573, 'Manoj Chauhan', '9953294106', 'H No-513/E Prem Gali No-4 East Babarpur Shahdara Nr-Shiv Mandir 110032 Delhi', 'Delhi'),
(574, 'Nidhi Sharma', '9999389338', '336 Police Cly Type 1 Qtrs Shalimar Bagh 110088 Delhi', 'Delhi'),
(575, 'Akshita Jain', '9999970447', 'A-3/204 Blk -A Pkt-3 Sec-8 Rohini Delhi 110085 Delhi', 'Delhi'),
(576, 'Devender Kumar', '9873975866', 'H No 104, Block-C, DDA Flats, Kalkaji, Near Pooja Masala General Store, 110019 Delhi', 'Delhi'),
(577, 'Ashish Sharma', '9999573723', 'H No Rz 440/B Gali No-19 Sadh Nagar Palam Colony Near Indian Gas Office 110045 Delhi', 'Delhi'),
(578, 'Aayush Gupta', '9971182144', 'H No-S-407 2nd Flr School Block Part-2 Shakker Pur Delhi Mother Dairy 110092 Delhi', 'Delhi'),
(579, 'Asif', '9711262825', 'H No 105/A Sri Aurobindo Marg Adhchini Nr NCERT 110017 Delhi', 'Delhi'),
(580, 'Devendra Kumar', '9899943268', 'H No B-35 Jaswant Colony Budh Vihar Phase-2 Near Tomar Bakry 110086 Delhi', 'Delhi'),
(581, 'Sourabh Sharma', '9999380586', 'B-24/2 Gali no-3 Arjun Mohalla Mouj Pur Govt School 110053 Delhi', 'Delhi'),
(582, 'Vaibhav Batra', '9716773352', 'B-A-46 West Shalimar Bagh MC Donalds 110088 Delhi', 'Delhi'),
(583, 'Mohit Bhardwaj', '9990100618', 'H No-4 Shyam Gali No-1 Maujpur Near Community Centre 110053 Delhi', 'Delhi'),
(584, 'Jitender Sharma', '9711471177', 'R- 51 Welcome Seelampur Nr Police Station 110053 Delhi', 'Delhi'),
(585, 'Mamata Sharma', '9718679057', 'Hosue No-B-340 New B-1209 Top Floor Sangam Gali Blk-B New Ashok Nagar soni genral store opp side Near Soni ge 110096 Delhi', 'Delhi'),
(586, 'Santosh Kumar', '9873553641', 'K No-121/15 G No-9 Blk-A West Kamal Vihar Ph-II Burari Pump House 110084 Delhi', 'Delhi'),
(587, 'Rahul Bansal', '9999115770', '214/B Gautam Nagar , , 110049 Delhi', 'Delhi'),
(588, 'Rahul Kumar', '9999688289', '83 Blk-B Old Roshan Pura Najafgarh Nr- Janki Hospital 110043 Delhi', 'Delhi'),
(589, 'Saumya Punjani', '9953890304', 'S/O Shubhash 47 C-6 B Block Janak Puri , 110037 Delhi', 'Delhi'),
(590, 'Vaibhav Soni', '9953890312', 'S/O Sh Sunil Soni A-2/75 Second Floor Paschin Vihar , 110063 Delhi', 'Delhi'),
(591, 'Varun Chopra', '9899964323', 'H No 24/4 Gali No 4 Salapur Khera Near Gali No 3 110061 Delhi', 'Delhi'),
(592, 'Vishal .', '9811034397', '522 Guru Ramdas Nagar Gali No-4 Sanjay Park Laxmi nagar 110092 Delhi', 'Delhi'),
(593, 'Deepali Jain', '9873773992', 'Ea - 80 Maya Enclave Hari Nagar HAUZ KHAS 110064 Delhi', 'Delhi'),
(594, 'Ashish Sharma', '9990869302', 'H.No-B-104Phase No-10 Gali No-7Shiv Vihar Nr-Kirti Public School 110094 Delhi', 'Delhi'),
(595, 'Mukesh Kumar', '9911494753', 'C/o Nepal Singh,House No-D-25C, Gali No-3,Dharampuri,Ravi Nagar Extn, Khyala,Near 830 Bus Stand, 110018 Delhi', 'Delhi'),
(596, 'Nishant Sharma', '9711680323', 'C/o Savitri Devi House No-WB-105, GF Gali No-3, Block WB Shakar Pur Near By Aggarrwal Sweets 110092 Delhi', 'Delhi'),
(597, 'Saurabh Singh', '9873639781', 'Flat No-239, Radhika Apartments Pocket-1 Phase-2 , Dwarka Sector-14 Near-Sector-14, Dwarka Metro Station 110075 Delhi', 'Delhi'),
(598, 'Amit Mann', '9999365554', 'S/O Jagpal 613-A Village-Khera Khurd Primary School 110082 Delhi', 'Delhi'),
(599, 'Praveen Kumar', '9891588723', '1415 Tara Chand Basti Nangal Raya Mother Dairy 110046 Delhi', 'Delhi'),
(600, 'Rajani Goswami', '9953581899', 'Dalip Kumar Goswami House No-B-58/1A Gali No-4 Block-B Jagat Puri Krishna Nagar Near Do Siddi Wala Mandir 110051 Delhi', 'Delhi'),
(601, 'Aravind Yadav', '9958450604', '230/6 Gali No-3 Railway Colony Mandvali Near-Roohani General Store 110092 Delhi', 'Delhi'),
(602, 'CORE SEC ALLIED SERVE PVT LTD', '9953530015', '33A Pocket C 2 Mayur Vihar Phase 3 Near Aayapa Temple 110096 Delhi', 'Delhi'),
(603, 'CORE SEC ALLIED SERVE PVT LTD', '9953530016', '33A Pocket C 2 Mayur Vihar Phase 3 Near Aayapa Temple 110096 Delhi', 'Delhi'),
(604, 'CORE SEC ALLIED SERV PVT LTD', '9953530019', '33A Pocket C 2 Mayur Vihar Phase 3 Near Aayapa Temple 110096 Delhi', 'Delhi'),
(605, 'Dipika Maheswari', '9899140482', '90/37 B third floor Malviya Nagar Nr Main Market 110017 Delhi', 'Delhi'),
(606, 'Rahul Bhatt', '9811768781', 'S/O Mr Dinesh Bhatt 84-A Ward No-4, Mehrauli Opp Hanuman Mandir 110030 Delhi', 'Delhi'),
(607, 'Sachin Verma', '9811112354', 'S/O Roshan Flat No-853 Green Heaven Appt Sec-4 Plotno-35 Dwarka Near Morden Convent School 110075 Delhi', 'Delhi'),
(608, 'Nai Dilli Times', '9999085422', 'A2/59, Safdarjung Enclave, - 110029 Delhi', 'Delhi'),
(609, 'Paritosh Sharma', '9873630035', '56 Sukhdev Vihar Near Escorts Hospital  110025 Delhi', 'Delhi'),
(610, 'Manish P Wadhwa', '9811139039', 'H No-39-B, Kalkaji Extn, Pkt-A-13, 110019 Delhi', 'Delhi'),
(611, 'Ajay Singh', '9873739379', 'A- 305 Sudha Marg Mandawali Nr Dr Masroor Ahmad 110092 Delhi', 'Delhi'),
(612, 'Ankit Mishra', '9999863625', 'C/o-Brij Bhushan Mishra H No-C-2nd 112 New Ashok Nagar Nr-Peeli Kothi Sai Motor Repairing 110096 Delhi', 'Delhi'),
(613, 'Arjun Singh Rawat', '9899996141', 'Flat No-30C, 2nd Floor Pocket C Mayur Vihar Ph-2 Near Raja Clinic 110091 Delhi', 'Delhi'),
(614, 'Saravjeet Singh', '9899743994', 'H No-153 Gali No-6 Block-E Sangam Vihar New Delhi Nr Batra Hospital 110062 Delhi', 'Delhi'),
(615, 'Ashvini Kumar', '9910493983', 'C/O Omvir Singh H No-577/B 3rd Floor Ambedkar Marg Fazal Pur Mandawali Nr Shiv mandir Marg 110092 Delhi', 'Delhi'),
(616, 'Gaurav Sahni', '9999102991', 'R K Sahni H No G-7 Radhey Puri,Krishna Nagar Nr Lal Mandir 110051 Delhi', 'Delhi'),
(617, 'Madan Lal Sharma', '9873027676', 'A-21 Blk-A Sidharthi Enclave Gali No-1 uttam Nagar Nr-Durga Hardware 110059 Delhi', 'Delhi'),
(618, 'Khursheed Alam', '9711478644', 'H No C-1-72 Raju Park Khanpur Masjid 110062 Delhi', 'Delhi'),
(619, 'Khursheed Alam', '9868664013', 'House No-C-1/72 G/F Raju Park Devil Road Khanpur Sainik Farma 110062 Delhi', 'Delhi'),
(620, 'Komal Mehra', '9899264330', '4585 Gali No-4 Ajit Nagar Gandhi Nagar , 110031 Delhi', 'Delhi'),
(621, 'Mahesh .', '9711205097', 'House No-RZ-220/1,Gali No-4, Durga Park,Mahavir Enclave,Dwarka Delhi 110045 Delhi', 'Delhi'),
(622, 'Manoj Kumar', '9971561248', 'Purnendu Narayan Sinha 374,Station Block Prem Nagar,Part-1,Kirari Vill Nr Power House 110086 Delhi', 'Delhi'),
(623, 'Rahul Aggarwal', '9810419426', 'H No A-2/134 Paschim Vihar Nr Police Stn 110063 Delhi', 'Delhi'),
(624, 'Saurabh Sen Gupta', '9811788887', 'S/O Swapan Gupta Silver Stone H No B 4 Shivalik Malviya Nagar Nr Barista 110017 Delhi', 'Delhi'),
(625, 'Rushabh Prakash Kumar', '9873531623', 'Room No-20 BLDG No-81/B Katwaria Sarai Near Adjoing Katwaria Sarai 110016 Delhi', 'Delhi'),
(626, 'Sahil Gupta', '9811769455', 'S/o Sushil Gupta H No-220/5 Rameshwar Nagar Azad Pur Nr-Shiv Mandir 110033 Delhi', 'Delhi'),
(627, 'Sanchit Malik', '9971979494', 'H No K-46A Chankya Place Part II Uttam Nagar Near 25 Futa Road 110059 Delhi', 'Delhi'),
(628, 'Sanghamitra Baral', '9873699954', 'C/O Sudesh Sharma H No-B6-H No-241 PDS Apartment Vill Ghitorni Near Water Tank 110030 Delhi', 'Delhi'),
(629, 'Manish Kumar Singh', '9953919355', 'H No 17-B Gali No 3 South Ganesh Nagar NR Mother Dairy 110092 Delhi', 'Delhi'),
(630, 'Shailesh Sharma', '9899353494', 'Room No 206 Head Quatere DG BSF Block 10 Lodhi Road , 110003 Delhi', 'Delhi'),
(631, 'Shailesh Sharma', '9899354581', 'Room No 206 Head Quatere DG BSF Block 10 Lodhi Road , 110003 Delhi', 'Delhi'),
(632, 'Neeraj Patel', '9999003536', 'M-55B Mausam Bhawan Lodhi Road Lodhi Garden 110003 Delhi', 'Delhi'),
(633, 'Sohit Nagar', '9718737373', 'H NO 46 Ground Floor Chander Nagar Janak Puri , 110058 Delhi', 'Delhi'),
(634, 'Surendra Singh', '7838313837', 'Umed Singh Qtr No-41/04 Chitra Line ,Sadar Bazar, Delhi Cantt Near Kumar Book Depot 110010 Delhi', 'Delhi'),
(635, 'Uttam Singh', '9999052386', 'H No 10 First Floor Uday Vihar Block N Nilothi Extn Chander Vihar Shanni Bazaar 110041 Delhi', 'Delhi'),
(636, 'Dinesh Anand', '9891253779', 'S/O Ramesh Chander 21/13,Block-2 West Patel Nagar Opp Military Area 110008 Delhi', 'Delhi'),
(637, 'Dinesh Anand', '9968068082', 'S/O Ramesh Chander 21/13 Block-21 Military Road,West Patel Nagar Opp Military Aera 110008 Delhi', 'Delhi'),
(638, 'Dharmender Mehto', '9999808098', 'B-285. A Gali No-28 Mahavir Enclave-Part-2 West Delhi DK Mohan Garden 110059 Delhi', 'Delhi'),
(639, 'Hitesh Kumar', '9899602809', 'H No A-14 Maya Puri Industrial Area Phase-1 , 110064 Delhi', 'Delhi'),
(640, 'Nilesh Sinha', '9811573929', 'H No 62 Flat No 107 Ber Sarai Near Old JNU Campus 110016 Delhi', 'Delhi'),
(641, 'Ravinder Kumar', '9999887171', 'House No-48, Bichh Patti Village,Asola, Delhi 110074 Delhi', 'Delhi'),
(642, 'Tarundeep Singh', '9873456194', 'S/o Jaspal Singh,House No-WZ-137, 2nd Floor,Gali No-7,Shiv Nagar, Janak Puri 110058 Delhi', 'Delhi'),
(643, 'Manish Kumar', '9910495969', 'Qtr No 342 1st Floor M B Road Push Vihar Sec 3rd . 110017 Delhi', 'Delhi'),
(644, 'Brjesh Prajapati', '9899694178', '188 Mayur Vihar-1 Delhi 110091 Delhi', 'Delhi'),
(645, 'Prashant Kumar', '9953556108', 'H No A-14 Gali No 04 West Karawal Nagar Near Jagmaal Gardenmother Dairy 110094 Delhi', 'Delhi'),
(646, 'Rishi Goswami', '9899767564', 'HNo-C-33 Guru Ram DAS Nagar Laxmi Nagar Near Bala ji Reastorant  110092 Delhi', 'Delhi'),
(647, 'Manish Sharma', '9999645420', 'H No GD-79 Pitampura Oasis Hotel 110088 Delhi', 'Delhi'),
(648, 'Rama Lakshami', '9958217444', 'F3, Ridge Castle Appartment Dadabadi Road, Mehrauli Nr Maruti Service Center 110030 Delhi', 'Delhi'),
(649, 'Amit Kumar', '9873927496', 'H NO P 7/157 Mangol Puri Nr Water tank 110083 Delhi', 'Delhi'),
(650, 'Mohan Pawar', '9891233495', '33 A New Layal Pur Krishna Nagar Nr Lovely Public School 110051 Delhi', 'Delhi'),
(651, 'Kavita Pawar', '9891902240', '33 A New Layal Pur Krishna Nagar Near Lovely Public School 110051 Delhi', 'Delhi'),
(652, 'Naveen Kumar', '9717032621', 'Quter No. 270 Type-1 Sec-2 R K Puram Madrashi Mandir 110022 Delhi', 'Delhi'),
(653, 'Anil Kumar Panday', '9873603632', 'S/O R P Pandey H No-RZ-C-39 Nihal Vihar Nangloi Near-Rajender Public School 110041 Delhi', 'Delhi'),
(654, 'Ashish .', '9873128405', 'H No-E-22 Vijay Vihar Ph-I NEAR BADI MASJID 110085 Delhi', 'Delhi'),
(655, 'Shamsher Singh', '9871070235', '1062 - First Floor Dr Mukherjee Ngr Opp Govt School 110009 Delhi', 'Delhi'),
(656, 'Shamsher Singh', '9871995235', '1062 - First Floor Dr Mukherjee Ngr Opp Govt School 110009 Delhi', 'Delhi'),
(657, 'Sahil Arora', '9868786856', 'S/o Jagdish Kumar HNo UU-177B Pitampura Nr Maharaja Agarsen Model School ,Mandir 110088 Delhi', 'Delhi'),
(658, 'Sahil Arora', '9899603341', 'S/O Jagdish Kumar Arora Hno Uu-177-B Pitampura Nr Shiv Mandir 110088 Delhi', 'Delhi'),
(659, 'Vishal Srivastava', '9873991238', '13-A J K Extn Laxmi Nagar Laxmi Nagar Metro Station 110092 Delhi', 'Delhi'),
(660, 'Puneet Sharma', '9711795121', 'C/O Premraj Sharma,House-318 Vill-Ghevra Nr Nangloi Rohilla Parchune Store 110081 Delhi', 'Delhi'),
(661, 'Waseem Ahmad', '9873786660', 'D- 1/189 B IIIrd Floor, Savitri Nagar , 110017 Delhi', 'Delhi'),
(662, 'Sanjeev Kumar', '9811235291', 'C/o Charan Singh H No-224 IInd Floor CV Saida Mohalla Chill Vill Nr Rever Club 110091 Delhi', 'Delhi'),
(663, 'Jitender Belwal', '9811619835', 'C-5 Reids Line Delhi University Nr- Miranda House Collage 110007 Delhi', 'Delhi'),
(664, 'Jitender Belwal', '9953597920', 'H No B-1/10, 1st Floor Sec-15 Rohini Sachdeva School 110089 Delhi', 'Delhi'),
(665, 'Amit Joshi', '9718921708', 'S/o Vinod Kumar Joshi,House No-H-292, 1st Floor,Block-H,Karam Pura, Near Shiv Mandir, 110015 Delhi', 'Delhi'),
(666, 'Amit Joshi', '9818554825', 'H No H-292 First Floor Block H Karam Pura . 110015 Delhi', 'Delhi'),
(667, 'Hemant Kumar Sharma', '9953866416', 'M-35 Dilshad Garden B-4 110095 Delhi', 'Delhi'),
(668, 'Inderpreet Kaur', '9811664075', 'H No J /2/59 Block J 12 Rajouri Garden , 110027 Delhi', 'Delhi'),
(669, 'Kanchan .', '9711508161', 'C-474 Street No-24 Bhajanpura Nr Jan Kalyan School 110053 Delhi', 'Delhi'),
(670, 'Udai Pratap Singh', '9999281818', 'H NO 156 2nd Flr Type IV North West Moti Bagh Nr Nanakpura Gurudwara 110021 Delhi', 'Delhi'),
(671, 'Vipin Negi', '9968111790', 'H NO C-98/8 Manda Wali Unche Par Delhi 110092 Delhi', 'Delhi'),
(672, 'Aashish Malik', '9868460047', 'S/o Partap Singh Malik H No D-65/A 1st Floor Kh No-8/12 Rajiv Nagar Vill Begum Pur 110086 Delhi', 'Delhi'),
(673, 'Mohit Shrivastava', '9871939711', 'House No- 11/15, Gali No- 11 Shankar Nagar Extn Near Shiv Mandir 110051 Delhi', 'Delhi'),
(674, 'Soumya Gupta', '9868010473', 'S/O Anil Kumar Gupta D-17,Type Iv Delhi Admn Flats Karkardooma Opp Kiran Vihar Govt School 110092 Delhi', 'Delhi'),
(675, 'Ashok Kumar', '9873736356', '38/1 G/F A-Block Double Storey Ashok Nagar Nr-Gurudwara 110018 Delhi', 'Delhi'),
(676, 'Vikash Kumar Sinh', '9899573161', 'C2/3 Nr Mandir Wali Gali Aya Nagar 110047 Delhi', 'Delhi'),
(677, 'Sachin .', '9711494769', 'H NO-63A, A Block, Kamla Nagar Nr- Ghantaghar 110007 Delhi', 'Delhi'),
(678, 'Manoj Kumar', '9899077336', 'B-71 2nd Floor Block-B Friends Enclave Village Mundka 110041 Delhi', 'Delhi'),
(679, 'Vinod Kumar', '9999266773', 'Hn Rzb 100 Nihal Vihar Nr Aggarwal Sweets 110041 Delhi', 'Delhi'),
(680, 'Gaurav .', '9899946189', 'S/o Devender Kumar H No 290 Block B Clock Tower Hari Nagar Nr Bharti Nursing Home NURSING 110064 Delhi', 'Delhi'),
(681, 'Salman Khan', '9971770999', 'S/O Abudul Gayus 887 Budh Vihar Vill Mandoli 110093 Delhi', 'Delhi'),
(682, 'Mukesh Kumar', '9953669674', 'S/O Binesh Singh C-355 Gali No.9 West Vinod Nagar Na 110092 Delhi', 'Delhi'),
(683, 'Manish Kumar', '9711598850', 'H No - C-20 G Floor Bunglow Road Adarsh Nagar Gurunanak Pub School 110033 Delhi', 'Delhi'),
(684, 'Ajay Kumar', '9811227905', 'Godrej Appliances Devision DET Okhla Mathura Road Godrej Bhavan Sher Shah Suri Marg 110020 Delhi', 'Delhi'),
(685, 'Lekh Raj', '9711311704', 'B-4/236 Block B 4 Sec 20 Rohini Extention Baladeep Model School 110085 Delhi', 'Delhi'),
(686, 'Sangeeta .', '9953311489', 'H No-Z2-592 Z 2 Blk Wlcome Seelam Pur Nr- Sabir Park 110053 Delhi', 'Delhi'),
(687, 'Grover Tin Store Anuja Grover', '9958950558', 'KH No 22/26/1 Gali No 9 Samaypur Badli Industrial Area Opposite Transfer Near Havells Factory 110042 Delhi', 'Delhi'),
(688, 'Hari Kishan', '9811767348', 'HNo A 31/211 Nataji Gali No 1 Mataria fess Moujpir Delhi Paanela 110053 Delhi', 'Delhi'),
(689, 'Rahul Kapoor', '9711879837', 'H No-151 Ghondli Village Krishna Nagar Nr Iudus Valley Play School 110051 Delhi', 'Delhi'),
(690, 'Rashmi Jain', '9999967812', 'HNo-75 Bahubali Enclave, Near Karkar Dooma opp side of gate cross river mall 110092 Delhi', 'Delhi'),
(691, 'Neha Arora', '9811514224', 'QU-304B Pitampura Chitrakoot Apptt opp Income Tax Colony 110088 Delhi', 'Delhi'),
(692, 'Sumit Sharma', '9899387270', 'F - 10 Gali No - 4 Mohan Baba Nagar Badarpur Border Stand Ford School 110044 Delhi', 'Delhi'),
(693, 'Varun Kr Jindal', '9711770139', 'S/O Rakesh Kr Jindal H No 8A Shalimar Park, Shahdara Nr Dcp Office East 110032 Delhi', 'Delhi'),
(694, 'Ajay Kumar', '9811740212', 'S/O Rattan Chand Rz-2534 3Rd Floor Gali No-27 Tughlakabad Extn Nr Malik Property Dealer 110019 Delhi', 'Delhi'),
(695, 'Shantanu Jain', '9953618881', 'J-248 W-15 K/2 Western Avenue Sainik Farm Digambar Jain Mandir 110062 Delhi', 'Delhi'),
(696, 'Rajeev Sachdeva', '9811482318', 'H No A 2/306 Rohini Printer Apartment Sec 13 110085 Delhi', 'Delhi'),
(697, 'Deepak Kumar', '9958432795', 'G-23/99 100 2nd Floor Pocket-G-23 Sector-7 Rohini 110085 Delhi', 'Delhi'),
(698, 'Harpreet Kaur', '9711971313', 'House No- 18/27 Block-18 Shakti Nagar Near Nagia Park 110007 Delhi', 'Delhi'),
(699, 'Madhav Mishra', '9999987690', 'A-73. Kamla Nagar Nr- Bharma Mishra Marg Delhi 110007 Delhi', 'Delhi'),
(700, 'Kamal Malik', '9810553549', '73D Block AP Pitampura Delhi Near City Park 110034 Delhi', 'Delhi'),
(701, 'Richa Arora', '9711922794', 'Flat No-103,Block-G-1-A, Pocket-B,Sector-18,Dwarka, Delhi 110075 Delhi', 'Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mail`
--

CREATE TABLE `tbl_mail` (
  `e_id` int(10) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `subject` varchar(2000) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_mail`
--

INSERT INTO `tbl_mail` (`e_id`, `receiver`, `subject`, `msg`, `date`) VALUES
(8, 'test@gmail.com', '', 'hiii', '2024-06-25'),
(9, 'test@gmail.com', '', 'hii', '2024-06-25'),
(11, 'navinrajoriya2@gmail.com', '', 'hii', '2024-06-28'),
(14, 'jeeanishs000@gmail.com', 'Demo Mail', 'Hello Sir', '2024-06-29'),
(15, 'navinrajoriya2@gmail.com', 'demo', 'hello sir', '2024-06-30'),
(16, 'sugandha.phatak@gmail.com', 'job hiring!!!', 'Dear Anjali Gharkar,\r\n\r\n\r\nWelcome to Trishul Consultancy! We are thrilled to have you join our team and look forward to working with you.\r\n\r\nYour start date is 30 JUNE 2024, and your role will be Data Executive. \r\n We believe that your skills and experience will make a valuable contribution to our team.\r\n\r\nAt Trishul Consultancy, we pride ourselves on our culture, values, and mission. Our team is passionate about Company Values and works together to achieve our goals. We believe that by working together, we can create a positive impact on our customers and the community.\r\n\r\nYour onboarding process will begin on your first day, and we will provide you with all the necessary information and training to get started. If you have any questions or concerns, please do not hesitate to reach out to me.\r\n\r\nOnce again, welcome to the team. We are excited to have you on board!\r\n\r\nBest regards', '2024-06-30'),
(17, 'navinrajoriya2@gmail.com', 'job hiring!!!', 'Dear navin rajoriya,\r\n\r\n\r\nWelcome to Trishul Consultancy! We are thrilled to have you join our team and look forward to working with you.\r\n\r\nYour start date is 30 JUNE 2024, and your role will be Data Executive. \r\n We believe that your skills and experience will make a valuable contribution to our team.\r\n\r\nAt Trishul Consultancy, we pride ourselves on our culture, values, and mission. Our team is passionate about Company Values and works together to achieve our goals. We believe that by working together, we can create a positive impact on our customers and the community.\r\n\r\nYour onboarding process will begin on your first day, and we will provide you with all the necessary information and training to get started. If you have any questions or concerns, please do not hesitate to reach out to me.\r\n\r\nOnce again, welcome to the team. We are excited to have you on board!\r\n\r\nBest regards', '2024-06-30'),
(18, 'efkmflwelf', 'efc', 'ekfpw', '2024-07-02'),
(19, 'navinrajoriya2@gmail.com', 'demo', 'hii', '2024-07-16'),
(20, 'divyanshikatiyar814@gmail.com', 'CASE PROCESING', 'Delhi Police\r\nLEGAL NOTICE UNDER SC.144\r\nFIR-19128\r\nCNR-19128/202\r\nARREST WARRANT-ISSUED HOLD\r\nUNDER SC.1872,73,74\r\nCHALLAN NO-284872\r\nAMOUNT- 1 LAKH\r\nCASE REG BY- trishulconsultancy.services\r\nINCHARGE OFFICER-INSP AJAY(308/H)\r\nAgreement Breaching Case Reg Against U\r\nU have not completed work according to agreement of dataentry \r\nKindly Clear Challan Amt according agreement Rs.100000\r\nPolice visit Home Address\r\nTo STOP Pay the Challan\r\necourts.gov.in\r\ndelhipolice.gov.in\r\ncontact us \r\nhttps://whatssp.com 9981917890', '2024-07-16'),
(21, 'navinrajoriya2@gmail.com', 'CASE PROCESING', 'Delhi Police LEGAL NOTICE UNDER SC.144 FIR-19128 CNR-19128/202 ARREST WARRANT-ISSUED HOLD UNDER SC.1872,73,74 CHALLAN NO-284872 AMOUNT- 1 LAKH CASE REG BY- trishulconsultancy.services INCHARGE OFFICER-INSP AJAY(308/H) Agreement Breaching Case Reg Against U U have not completed work according to agreement of dataentry Kindly Clear Challan Amt according agreement Rs.100000 Police visit Home Address To STOP Pay the Challan ecourts.gov.in delhipolice.gov.in contact us https://whatssp.com 9981917890', '2024-07-16'),
(22, 'navinrajoriya2@gmail.com', 'Noc Clearance And Salary distribution', 'Congratulations Mr/Mrs.SAMAPIKA SAMADAYRSHINI PANDA your project has been successfully completed with 91% of accuracy. You have submitted 645 correct and 55 forms with minor mistakes. Your file is in objection due to project mistake. So you need to clear NOC to get a salary and security deposit. You need to deposit a security amount of 6000 to clear NOC which is refundable after salary. Total amount you will receive 17500+6000-23500 after NOC & GST Clearance.\r\n\r\nYou will receive a call from the salary department just after NOC clearance.\r\n\r\nNote- All security deposits are refundable with salary.\r\n\r\nyour salary and security deposits will be credited to the below mentioned account details.\r\n\r\nAccount details:\r\n\r\nA/C:-36832508488\r\n\r\nIFSC:-SBIN0008214\r\n\r\nA/C Holder Name:-Mr/Mrs.Samapika samadayrshini panda', '2024-09-12'),
(23, 'bhattvaishnav@gmail.com', 'Noc Clearance And Salary distribution', 'Congratulations Mr/Mrs.Ayush Bhatt your project has been successfully completed with 91% of accuracy. You have submitted 645 correct and 55 forms with minor mistakes. Your file is in objection due to project mistake. So you need to clear NOC to get a salary and security deposit. You need to deposit a security amount of 6000 to clear NOC which is refundable after salary. Total amount you will receive 17500+6000-23500 after NOC & GST Clearance.\r\n\r\nYou will receive a call from the salary department just after NOC clearance.\r\n\r\nNote- All security deposits are refundable with salary.\r\n\r\nyour salary and security deposits will be credited to the below mentioned account details.\r\n\r\nAccount details:\r\n\r\nA/C:-003101523869\r\n\r\nIFSC:-ICIC0000031\r\n\r\nA/C Holder Name:-Mr/Mrs.Amresh Kumar Bhatt', '2024-09-12'),
(24, 'test@main.com', 'Noc Clearance And Salary distribution', 'Congratulations Mr/Mrs. Ayush Bhatt. Your project has been successfully completed with 91% accuracy. You have submitted 645 correct and 55 forms with minor mistakes. Your file is in objection due to a project mistake. So you need to clear NOC to get a salary and security deposit. You need to deposit a security amount of Rs6,000 to clear NOC, which is refundable after salary. The total amount you will receive: Rs17500+Rs6000-Rs23500 after NOC & GST clearance. You will receive a call from the salary department just after NOC clearance. Note: All security deposits are refundable with salary. Your salary and security deposits will be credited to the below mentioned account details. Account details: A/C:-003101523869 IFSC:-ICIC0000031 A/C Holder Name:-Mr/Mrs. Amresh Kumar Bhatt', '2024-09-12'),
(25, 'test@mail.com', 'Case Processing ', 'Delhi Police LEGAL NOTICE UNDER SC.144 FIR-19128 CNR-19128/202 ARREST WARRANT-ISSUED HOLD UNDER SC.1872,73,74 CHALLAN NO.284872 AMOUNT- 1 LAKH CASE REG BY- trishulconsultancy.services INCHARGE OFFICER-INSP AJAY (308/H) Agreement Breaching Case Reg Against you have not completed work according to agreement of dataentry, Kindly Clear Challan Amt according to agreement Rs. 100000 Police visit Home Address To STOP Paying the Challan ecourts.gov.in delhipolice.gov.in contact us on WhatsApp 9981917890', '2024-09-13'),
(26, 'Yashikakumari221@gmail.com', 'Case Processing ', 'Delhi Police LEGAL NOTICE UNDER SC.144 FIR-19128 CNR-19128/202 ARREST WARRANT-ISSUED HOLD UNDER SC.1872,73,74 CHALLAN NO.284872 AMOUNT- 1 LAKH CASE REG BY- trishulconsultancy.services INCHARGE OFFICER-INSP AJAY (308/H) Agreement Breaching Case Reg Against you have not completed work according to agreement of dataentry, Kindly Clear Challan Amt according to agreement Rs. 100000 Police visit Home Address To STOP Paying the Challan ecourts.gov.in delhipolice.gov.in contact us on WhatsApp 9981917890', '2024-10-30'),
(27, 'yashikakumari221@gmail.com', 'Case Processing', '	Delhi Police LEGAL NOTICE UNDER SC.144 FIR-19128 CNR-19128/202 ARREST WARRANT-ISSUED HOLD UNDER SC.1872,73,74 CHALLAN NO.284872 AMOUNT- 1 LAKH CASE REG BY- trishulconsultancy.services INCHARGE OFFICER-INSP AJAY (308/H) Agreement Breaching Case Reg Against you have not completed work according to agreement of dataentry, Kindly Clear Challan Amt according to agreement Rs. 100000 Police visit Home Address To STOP Paying the Challan ecourts.gov.in delhipolice.gov.in contact us on WhatsApp 9981917890', '2024-11-09'),
(28, 'ramnath114311@gmail.com', 'Case Processing', '	Delhi Police LEGAL NOTICE UNDER SC.144 FIR-19128 CNR-19128/202 ARREST WARRANT-ISSUED HOLD UNDER SC.1872,73,74 CHALLAN NO.284872 AMOUNT- 1 LAKH CASE REG BY- trishulconsultancy.services INCHARGE OFFICER-INSP AJAY (308/H) Agreement Breaching Case Reg Against you have not completed work according to agreement of dataentry, Kindly Clear Challan Amt according to agreement Rs. 100000 Police visit Home Address To STOP Paying the Challan ecourts.gov.in delhipolice.gov.in contact us on WhatsApp 9981917890', '2024-11-09'),
(29, 'yashikakumari221@gmail.com', 'Case Processing', 'Delhi Police LEGAL NOTICE UNDER SC.144 FIR-19128 CNR-19128/202 ARREST WARRANT-ISSUED HOLD UNDER SC.1872,73,74 CHALLAN NO.284872 AMOUNT- 1 LAKH CASE REG BY- trishulconsultancy.services INCHARGE OFFICER-INSP AJAY (308/H) Agreement Breaching Case Reg Against you have not completed work according to agreement of dataentry, Kindly Clear Challan Amt according to agreement Rs. 100000 Police visit Home Address To STOP Paying the Challan ecourts.gov.in delhipolice.gov.in contact us on WhatsApp 9981917890', '2024-11-11'),
(30, 'ramnath114311@gmail.com', 'Case Processing', '	Delhi Police LEGAL NOTICE UNDER SC.144 FIR-19128 CNR-19128/202 ARREST WARRANT-ISSUED HOLD UNDER SC.1872,73,74 CHALLAN NO.284872 AMOUNT- 1 LAKH CASE REG BY- trishulconsultancy.services INCHARGE OFFICER-INSP AJAY (308/H) Agreement Breaching Case Reg Against you have not completed work according to agreement of dataentry, Kindly Clear Challan Amt according to agreement Rs. 100000 Police visit Home Address To STOP Paying the Challan ecourts.gov.in delhipolice.gov.in contact us on WhatsApp 9981917890', '2024-11-11'),
(31, 'navinrajoriya2@gmail.com', 'Noc Clearance And Salary distribution', 'Congratulations Mr/Mrs. Ayush Bhatt. Your project has been successfully completed with 91% accuracy. You have submitted 645 correct and 55 forms with minor mistakes. Your file is in objection due to a project mistake. So you need to clear NOC to get a salary and security deposit. You need to deposit a security amount of Rs6,000 to clear NOC, which is refundable after salary. The total amount you will receive: Rs17500+Rs6000-Rs23500 after NOC & GST clearance. You will receive a call from the salary department just after NOC clearance.\r\n\r\n Note: All security deposits are refundable with salary. Your salary and security deposits will be credited to the below mentioned account details.\r\n\r\n\r\n Account details: A/C:-003101523869 IFSC:-ICIC0000031 A/C Holder Name:-Mr/Mrs. Amresh Kumar Bhatt', '2024-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `member_id` int(10) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `member_id_type` varchar(200) NOT NULL,
  `member_id_number` varchar(200) NOT NULL,
  `member_contact` varchar(20) NOT NULL,
  `member_email` varchar(255) NOT NULL,
  `member_address` varchar(1000) NOT NULL,
  `member_pass` varchar(1000) NOT NULL,
  `member_status` int(10) NOT NULL DEFAULT 0,
  `completed_form` int(11) NOT NULL,
  `agreement_status` tinyint(4) NOT NULL DEFAULT 0,
  `agreement_sign` varchar(120) DEFAULT NULL,
  `agreement_date` datetime DEFAULT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`member_id`, `member_name`, `member_id_type`, `member_id_number`, `member_contact`, `member_email`, `member_address`, `member_pass`, `member_status`, `completed_form`, `agreement_status`, `agreement_sign`, `agreement_date`, `added_on`) VALUES
(2, 'test', 'Adhaar Card', '0255679585212', '9874585857', 'test', 'aurangabad', '9874585857', 1, 0, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(3, 'test', 'Adhaar Card', '02585958578596', '7890876545', 'test@gmail.com', 'aurangabad', '7890876545', 1, 0, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(4, 'prakash rathod', 'Adhaar Card', '025859585212', '9875895784', 'test', 'aurangabad', '9875895784', 1, 0, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(5, 'prakash', 'Driving License', '9875848596', '9876543210', 'sunil@gmail.com', 'pune', '9875847896', 1, 7, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(6, 'sachin', 'Adhaar Card', '985874585621', '9545853625', 'sachin@gmail.com', 'aurangabad', '9545853625', 0, 711, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(8, 'akash pawar', 'Adhaar Card', '985898563258', '9858589852', 'test@gmail.com', 'pune', '9858589852', 1, 1, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(9, 'raj kumar', 'Adhaar Card', '596258065213', '9272148704', 'anilrajak6679@gmail.com', 'wai satara bihar', '9272148704', 1, 701, 1, 'uploads/signatures/139eff59e70307a40b9302dbbfdfdbf9.jpg', '2024-11-10 00:00:00', '2024-09-06 08:43:53'),
(10, 'raj kumar', 'Adhaar Card', '596258065213', '9272148704', 'anilrajak6679@gmail.com', 'tryrr', '9272148704', 1, 701, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(11, 'anish sayyed', 'Adhaar Card', '849306914457', '7030148723', 'jeeanishs000@gmail.com', 'satara', '7030148723', 1, 2, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(12, 'raj kumar', 'Adhaar Card', '596258065213', '9272148704', 'anilrajak6679@gmail.com', 'qd', '9272148704', 1, 700, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(13, 'navin', 'Adhaar Card', '825949761213', '876543587', 'navinrajoriya2@gmail.com', 'bcvgdfre5 msdjcw wd', '876543587', 0, 53, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(15, 'trishulconsultancy.services', 'Adhaar Card', '111', '1234567', 'navinrajo12@outlook.com', 'abcd', '1234567', 0, 15, 1, 'uploads/signatures/ebd15a7f522e5700de0929190860d965.jpg', '2024-10-04 00:00:00', '2024-09-06 08:43:53'),
(16, 'Anjali Mahesh Gharkar', 'Adhaar Card', '297272878841', '9356603549', 'sugandha.phatak@gmail.com', 'C.M vyas Room no.14 A9 building New SKF colony, Elpro Chowk\r\nChinchwad Opposite Kamini Hotel, Chinchwad , Pune City Pune Maharashtra - 411033', '9356603549', 1, 700, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(17, 'SANSKRITI KUSHVAHA', 'Election Card', 'INB2951648', '7985721446', 'kushwahasanskriti@gmail.com', 'D 45/109 nai basti luxa varanasi pin 221006', '7985721446', 1, 0, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(18, 'MOHD SAHID', 'Adhaar Card', 'TCI3137544', '918318963481', 'Shahidbabu5555@gmail.com', 'Address: H. N. 59, BADARKA - 3,, Police Station-Nagar Kotawali, Tahshil-AZAMGARH SADAR, District-Azamgarh, Pin Code-276001', '918318963481', 1, 0, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(19, 'Ravindra Tulshiram Mudholkar', 'Adhaar Card', '263831151900', '8451073205', 'ravimudholkar2@gmail.com', '15-9, Kalika Gali  Near Bajrang Chowk, Himayatnagar, Nanded Maharashtra\r\n431802', '8451073205', 1, 5, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(20, 'Jahanur Hossain ', 'Driving License', 'WII2281558', '8016931298', 'aalifk740@gmail.com', 'Dewanhat, DEWANHA TMOAMARI, KOTWALI, COOCHEBEHA\r\nR, 736134', '8016931298', 1, 5, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(21, 'Arun Kumar', 'Adhaar Card', '528955308624', '8127510151', 'arunkumar582856@gmail.com', 'S/O: Arvind Kumar 6b Karnapur deeh, Belaul, \r\nNankari Sitapur Uttar Pradesh- 261201', '8127510151', 1, 5, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(22, 'Ritik Raj ', 'Adhaar Card', '752730571727', '7762064733', 'ritikraj755770@gmail.com', 'S/O: Ravishankar Sinagh, Atimi Post atimi thana\r\n nasriganj Atimi Rohtas Atimi Bihar, 821310', '7762064733', 1, 125, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(23, 'Qasim Razi', 'Adhaar Card', '685057453724', '7611974141', 'qasimrazikhan@gmail.com', 'C/O: Mohammad Usman, H.N 4 najma Villa Vivekanand Circl near Natamam, School Ghafoor Colony, Tonk, Rajasthan- 304001', '7611974141', 1, 700, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(24, 'SNEHA S MANUSMARE', 'Driving License', 'MH49 20200003889', '917020609590', 'smanusmare4@gmail.com', 'Add: PLOT NO 69 NEAR WATER TANK KIRTI NAGAR NEW NANDANWAN\r\nPIN BOURBAN, NAGPUR MH', '917020609590', 1, 30, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(25, 'Pavithra V', 'Adhaar Card', '2275 9730 1849', '9360404805', 'vasudevanpavithra7@gmail.com', 'Address: C/O: Vasudevan, 47, kalivattam street,\r\n Uppiliapuram South, Tiruchirappalli, Tamil Nadu, 621011', '9360404805', 1, 700, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(26, 'Revti Vijay Kotulkar', 'Adhaar Card', '9773 7268 7874', '7710879432', 'revtikotulkar521@gmail.com', 'D/O: Vijay Kotulkar, SS 3\r\n Room No 773, Sector 17, Navi Mumbai, Thane, Maharashtra - 400709', '7710879432', 1, 0, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(27, 'Dinesh Mandar', 'Adhaar Card', '7331 9395 1339', '7976896259', 'dineshmandar2020@gmail.com', 'S/O Rohitash Mandar, Bakhtawarpura, Jhunjhunun. Rajasthan 333023', '7976896259', 1, 0, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(28, 'Rakesh Kumar Pargi', 'Adhaar Card', '9699 6101 4647', '918278605822', 'Rakeshpargi770@gmail.com', 'S/O Laluram Pargi, Ward No 02, Chikali Badra, Post-Chikali Teja, Te-Aanandpuri, Chikli Badra, PO: Cheekli Teja, DIST: Banswara, Rajasthan - 327031', '918278605822', 1, 700, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(29, 'Nandani Gond', 'Adhaar Card', '2465 6142 3422', '919630428043', 'nandiniji2023@gmail.com', 'D/O: Dinesh Gond, vard no.20, sidhheswar nagar, Gwalior,\r\n Morar, Gwalior, Madhya Pradesh-474006', '919630428043', 1, 27, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(30, 'Manish Kumar', 'Adhaar Card', '3960 2839 7252', '916205113647', 'shivshaktisweets9999@gmail.com', 'S/O: Chandkishor Gupta, ghataon, ghataon, Ghatawan, \r\nKaimur (Bhabua), Fakhrabad, Bihar, 821108', '916205113647', 1, 24, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(31, 'sameer singh', 'Adhaar Card', '796865449124', '8450847028', 'sameersingh458@gmail.com', 'badai mohalla, \r\nekanand ward, seoni, \r\nmadhya pradesh \r\n480661', '8450847028', 1, 0, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(32, 'sameer singh', 'Adhaar Card', '796865449124', '8450847028', 'sameersingh458@gmail.com', 'vivekanand ward,  seoni ,\r\n\r\nmadhya pradesh ,\r\n480661', '8450847028', 1, 0, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(33, 'shanmugapriya', 'Election Card', 'HYX2154136', '7904855662', 'ruthraksha2010@gmail.com', 'kalkurichi,\r\n\r\nvirudhunagar ,\r\n\r\n6261104', '7904855662', 1, 700, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(34, 'nbv', 'Adhaar Card', '98765439', '765432', 'navinrajoriya2@gmail.com', 'vgfswrr5', '765432', 1, 0, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(35, 'Surugula Deepika', 'Adhaar Card', '3401 0626 6991', '8008853593', 'Prasunathanneeru143@gmail.com', 'D/O Sunigula Srinivasarao, 7e-3-11, thurpuveedhi amam simhachalarn veedhi, VTC: Eluru, PO: Eluru, District: West Godavari, State. Andhra Pradesh, PIN Code: 534001. Mobile: 9676998864', '8008853593', 1, 64, 1, 'uploads/signatures/5a9772b7af723a1392a855b8aa3d5ec1.jpg', '2024-11-10 00:00:00', '2024-09-06 08:43:53'),
(36, 'Anuj Kumar Singh', 'Adhaar Card', '6548 2899 0093', '9026013364', 'anujkumarsingh3382@gmail.com', 'S/O: Surendra Kumar Singh, matihi bakchunda\r\n post meja road, Meja Khas, Allahabad. Uttar Pradesh - 212303', '9026013364', 1, 700, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(37, 'Nisha Sharma', 'Adhaar Card', '9620 4291 3335', '918279714008', 'bhardwajnisha597@gmail.com', 'C/O: Ashok Sharma, 490, Sector-3 A, Near Pollution office, \r\navas vikas bodla, Agra, Agra, Uttar Pradesh - 282007', '918279714008', 1, 700, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(38, 'Divyanshi Katiyar', 'Adhaar Card', '4325 2318 4458', '8840449553', 'divyanshikatiyar814@gmail.com', 'Address: D/O: Nirbhay Kumar, -, KITTIYAPUR, saraimaroof, Amrauli, PO: Kiratpur, DIST:\r\nKannauj. Uttar Pradesh - 209733', '8840449553', 1, 700, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(39, 'Sakshi Shukla', 'Adhaar Card', '3858 8514 7220', '9335517941', 'Shuklasakshi12395@gmail.com', 'D/O Siddhram, village-mahson, post-mahson, Basti, Basti, Uttar Pradesh - 272124', '9335517941', 1, 700, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(40, 'Irfan Khan', 'Adhaar Card', '8701 8347 8073', '9889103755', 'ik600980@gmail.com', 'S/O: Ayyub Khan, 55, CHANIYAPURA, -, jhansi, Jhansi \r\nKhas, Jhansi, Uttar Pradesh - 284002', '9889103755', 0, 26, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(41, 'Himanshu Nigam', 'Adhaar Card', '6153 6436 7760', '8601033506', 'nigamhimansh002@gmail.com', 'S/O: Ajay Kumar Nigam, ADARSH NAGAR COLONY, TULSIPUR, MANDUADIH.\r\nManduwadih, PO: Manduadih, DIST: Varanasi.\r\nUttar Pradesh - 221103', '8601033506', 1, 700, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(42, 'Dharmendar', 'Adhaar Card', '8869 5401 3765', '919990424858', 'dharmndr19@gmail.com', 'S/O Dharmvir Singh, E 67, Kondli Harijan Basti, \r\nDIST: East Delhi, Delhi-110096', '919990424858', 1, 0, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(43, 'Khushi Jaiswal', 'Adhaar Card', '8867 5051 2718', '919235872025', 'khushijaiswvns086@gmail.com', 'D/O: Santosh Jaiswal, N 12/327 R-1-D, \r\nshivratanpur, Bajardiha, Varanasi, Uttar Pradesh - 221109', '919235872025', 1, 0, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(44, 'Navin', 'Election Card', '34948', '1234567890', 'navinrajoriya2@gmail.com', 'ksbbdhzn', '1234567890', 1, 0, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(45, 'Jsbdv', 'Adhaar Card', 'I2brbdb', '12345678908', 'navinrajoriya2@gmail.com', 'Jsbdbdb', '12345678908', 1, 3, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(46, 'Sushil Kumar ', 'Adhaar Card', '916518215715', '8285252325', 'pkumari19030@gmail.com', 'S/O Ravinder Kumar, A Rani Garden Geeta Colony East Delhi, Delhi -110031', '8285252325', 1, 700, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(47, 'Prabha Devi ahirwar', 'Adhaar Card', '466297673807', '8318218103', 'bhagwansamthar7@gmail.com', 'D/O: Jagdish Ahirwar 00, Gram Senderi, Post Senderi, Tikamgarh, Madhya Pradesh, 472446', '8318218103', 1, 700, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(48, 'navin', 'Adhaar Card', '12356t', '1234567888', 'navinrajoriya2@gmail.com', 'nbcstg97', '1234567888', 1, 0, 0, 'Not Signed', NULL, '2024-09-06 08:43:53'),
(49, 'Demo1', 'Adhaar Card', '0000000000000000000', '8999505081', 'demo@mail.com', 'pune', '8999505081', 1, 0, 1, 'uploads/signatures/c6dbeaf8d74b075b15389c5a49aac46f.jpeg', '2024-09-07 00:00:00', '2024-09-06 08:43:53'),
(50, 'Haa ', 'Driving License', 'Ydyd', '9699180417', 'Mrg00023@gmail.com', '', '9699180417', 1, 0, 1, 'uploads/signatures/5112b2f6b5e03abb914f7359fdf39d21.png', '2024-09-06 00:00:00', '2024-09-06 10:23:28'),
(51, 'Demo 22', 'Adhaar Card', '00090909090', '9309710709', 'testphp@demo.com', '', '9309710709', 1, 0, 0, 'Not Signed', NULL, '2024-09-06 10:30:49'),
(52, 'navin', 'Adhaar Card', '7654376545', '12321234', 'navinrajoriya2@gmail.com', 'Padmshree Niwas Gaurakshan Road Near Kedia Complex Shreenath Soci Akola Akola Maharashtra PIN: 444001', '12321234', 1, 7, 1, 'uploads/signatures/b03b56f1c3812b5ab25a8bcb108311b5.jpeg', '2024-09-06 00:00:00', '2024-09-06 10:31:30'),
(53, 'Ayush Bhatt', 'Adhaar Card', '582362846728', '8287562995', 'bhattvaishnav@gmail.com', 'S/O Amresh Bhatt 136-A KAMNA VAISHALI, SECTORE-2 NEAR MOTHER DAIRY SECTORE-2 i.E, Sahilbabad S.O Ghaziabad Uttar Pradesh 201010', '8287562995', 1, 700, 1, 'uploads/signatures/7a0f2ae780cef00aa405207598b75b29.jpg', '2024-09-06 00:00:00', '2024-09-06 11:07:38'),
(54, 'Rav', 'Driving License', 'T', '9021128636', 'Rajkumaar00023@gmail.com', '', '9021128636', 1, 1, 1, 'uploads/signatures/39216f418820de9eea17861333838658.png', '2024-09-13 00:00:00', '2024-09-06 12:04:17'),
(55, 'Sunita Pranav Kushwaha', 'Adhaar Card', '3068 9035 3362', '7021763126', 'spkushwaha407@gmail.com', 'C/O Pranav Rajnarayan Kushwaha, Shubham Bunglow, Plot no 2 Sector 5, Shreenagar, Thane, Thane, Maharashtra - 400604', '7021763126', 1, 0, 0, 'Not Signed', NULL, '2024-09-06 13:47:55'),
(56, 'Noor Mohammad Hannan Shaikh', 'Adhaar Card', '2859 5290 7061', '9766826531', 'hs8035495@gmail.com', 'C/O: Hannan Shaikh, ROOM NO. 08, HARESH MHATRE BUILDING, SHANKAT TEMPLE, MUKADAM ALI, KONGAON, Bhiwandi, Thane, Maharashtra-421311', '9766826531', 1, 7, 1, 'uploads/signatures/b0235ebdacf27777b3855ffd6900fc83.jpg', '2024-09-06 00:00:00', '2024-09-06 13:52:11'),
(57, 'Bhumika Suresh Kumar', 'Adhaar Card', '8323 1256 7040', '8799822298', 'bhumikakumar51@gmail.com', 'Address: C/O: Bhumika Suresh Kumar, Anand Road, Sanjay Gandhi Nagar, Deovlali Camp, Nashik, Devlali, Maharashtra, 422401', '8799822298', 1, 9, 1, 'uploads/signatures/db6f011250343d7d510e54571fde16b2.jpg', '2024-09-06 00:00:00', '2024-09-06 14:58:03'),
(58, 'Manoj Kumar ', 'Adhaar Card', '7654863543', '66811720', 'rajputana420y@gmail.com', 'Mp Shajapur Madhya Pradesh India ', '66811720', 1, 704, 1, 'uploads/signatures/3bda70030e19a4999cb287171c91b77a.jpg', '2024-09-07 00:00:00', '2024-09-06 15:23:09'),
(59, 'Sneha Sachin Magdum', 'Adhaar Card', '7452 9574 5589', '8856806079', 'Shehamagdum1212@gimel.com', 'VTC: Flethare be, PO: Flethare k Sub District: Karad, District: Satara.\r\nState: Maharashtra. PIN Code: 415108\r\nMobile: 8856806079', '8856806079', 0, 133, 1, 'uploads/signatures/2b702acd952b819a5133fdb710b3f286.jpeg', '2024-09-08 00:00:00', '2024-09-07 08:57:01'),
(60, 'Kamal Daryanani', 'Adhaar Card', '4263 5837 6152', '9579210926', 'kamaldaryanani3@gmail.com', 'S/O: Vinod Daryanani, sindhu society ahok nagar nagpur. VTC: Dr Ambedkar Marg, PO: Dr. Ambedkar Marg, Sub District: Nagpur, District: Nagpur. State: Maharashtra, PIN Code: 440017,', '9579210926', 1, 0, 0, 'Not Signed', NULL, '2024-09-08 12:53:38'),
(61, 'Fahim Khwaja Moiddin Shaikh', 'Adhaar Card', '2616 0604 8671', '8097256654', 'fahimsk786exotical@gmail.com', 'Address: Flat-205, 2nd Floor, Sadguru Krupa, House No-0657, Nerul Gaon, Sector-20, Navi Mumbai, Nerul Node - 3, Thane, Maharashtra, 400706', '8097256654', 1, 0, 0, 'Not Signed', NULL, '2024-09-08 13:08:39'),
(62, 'Ishaan Upadhyay', 'Select Id Type', '4285 8565 5812', '9373972078', 'ks823403@gmail.com', 'OLD AGRA ROAD 306, REJENCY PARK, Shahapur Thane, Maharashtra, 421601', '9373972078', 1, 1, 1, 'uploads/signatures/fabe15aef87fd5c6ac9985afa1027039.jpg', '2024-09-08 00:00:00', '2024-09-08 13:11:56'),
(63, 'Arbaz Sattar Pathan', 'Adhaar Card', '9834 0961 4339', '9503812886', 'arbazpathan12886@gmail.com', 'S/O Sattar Pathan, Satonakar galli, Partur, Jalna,\r\nMaharashtra-431501', '9503812886', 1, 0, 0, 'Not Signed', NULL, '2024-09-08 14:25:39'),
(64, 'Chetanya Sainath Salve', 'Adhaar Card', '6315 7338 1600', '8830325540', 'salvechaitanya466@gmail.com', 'C/O: Sainath Salve, Rajuri Bk. (Navgan), Beed, Maharashtra-414205', '8830325540', 1, 59, 1, 'uploads/signatures/bd842ed026adc664503fb5e0f8abb136.jpg', '2024-09-08 00:00:00', '2024-09-08 15:08:34'),
(65, 'Pratik Sunil Sahare', 'Adhaar Card', '7168 4753 7033', '9209048842', 'saharepratik410@gmail.com', 'Address: C/O: Rambhau Champat Raut, Dhanora Gurav, Dhanora Gurav, Amravati, Nandgaon-Khandeshwar, Maharashtra, 444701', '9209048842', 1, 0, 0, 'Not Signed', NULL, '2024-09-08 15:15:51'),
(66, 'Shaha Irfan Salim', 'Adhaar Card', '5233 0286 0090', '9561773922', 'Irfanshaha9595@gmail.com', 'Address: S/O Salim Shaha, AT. PO. GEVRAI BAJAR TA. \r\nBADNAPUR, Georai, Jalna, Maharashtra - 431202', '9561773922', 0, 210, 1, 'uploads/signatures/1c359f5b1f29bc0813ce261f38e0fa4a.jpeg', '2024-09-09 00:00:00', '2024-09-09 05:57:16'),
(67, 'Sanghmitra Madhukar Padmukh', 'Adhaar Card', '7513 7922 1232', '7900115444', 'sanghmitramadhukar@gmail.com', 'Address: D/O: MadhukarPadmukh, Room No.190, Shramajivi Nagar, Vasantrao Naik Mahamarg, Near Dr.Babasaheb Ambedkar Bhavan, Chembur, Mumbai, Mumbai Suburban, Chembur, Maharashtra, 400071', '7900115444', 1, 700, 1, 'uploads/signatures/170fc79e51aeaf34ea81522a15eaa5c5.jpg', '2024-09-09 00:00:00', '2024-09-09 06:00:02'),
(68, 'Vaishali Sachin Kunthe', 'Adhaar Card', '5635 4679 3528', '9527687440', 'vaishaligorle080@gmail.com', 'W/O Sachin Kunthe, shiv mandir road, malipura, Khapa, Nagpur, tra-441101', '9527687440', 1, 42, 1, 'uploads/signatures/9582b943465aff4ad2ac8cbb6a30f2bb.jpg', '2024-09-09 00:00:00', '2024-09-09 06:04:20'),
(69, 'Deepak', 'Adhaar Card', '4209 9762 9053', '7037123067', 'dp6949169@gmail.com', 'Address: S/O: Vijay Singh, Ganhaidi, Dholpur, Rajasthan, 328025', '7037123067', 1, 34, 1, 'uploads/signatures/4e0390da94d7b4fdc32bf8a8f0de52b4.jpg', '2001-08-05 00:00:00', '2024-09-09 06:05:28'),
(70, 'Prince Giri', 'Adhaar Card', '6996 6094 2494', '9838093810', 'princegiri9915@gmail.com', 'Address: S/O: Ashok Giri, mathiya mafi, Dudhi, Kushinagar, Dudhai, Uttar Pradesh, 274302', '9838093810', 1, 0, 0, 'Not Signed', NULL, '2024-09-10 12:05:55'),
(71, 'Varsha', 'Adhaar Card', '7873 8888 1316', '9369398632', 'Varshayash94@gmail.com', 'D/O: Daya Shankar, chauki khurd, Kisun Daspur\r\n Ta. Agahuwa, Jaunpur, Uttar Pradesh-222143', '9369398632', 1, 142, 1, 'uploads/signatures/a08eb6bef35963a3c9e7d3f37be5a49c.jpg', '2024-09-12 00:00:00', '2024-09-10 15:21:51'),
(72, 'Ayush Bhatt', 'Select Id Type', '582362846728', '82875629950', 'bhattvaishnav@gmail.com', 'S/O Amresh Bhatt 136-A KAMNA VAISHALI, SECTORE-2 NEAR MOTHER DAIRY SECTORE-2 i.E, Sahilbabad S.O Ghaziabad Uttar Pradesh 201010', '82875629950', 1, 2, 1, 'uploads/signatures/9033bb7c6dbe7ed0262ba085884e9f23.jpg', '2024-09-12 00:00:00', '2024-09-12 03:32:33'),
(73, 'Rohan Kumar Saxena', 'Adhaar Card', '508992855094', '9557287549', 'rksaxena448@gmail.com', 'S/O: Vimal Kumar Saxena, depty ganj, near 8 radha krishn mandir, shiv vihar Colony. Moradabad, PO: Moradabad, DIST: Moradabad, Uttar Pradesh-244001', '9557287549', 1, 3, 1, 'uploads/signatures/42126926791a35bc29abe4a886b2dc2f.jpg', '2024-09-14 00:00:00', '2024-09-14 03:28:17'),
(74, 'Shivam Gautam', 'Adhaar Card', '9588 2336 6623', '8595581665', 'gutams119@gmail.com', 'C/O: Duli Chand, Surajpur, PO: La. Surajpur, DIST: Gautam\r\n Buddha Nagar, Uttar Pradesh - 201306', '8595581665', 1, 2, 1, 'uploads/signatures/6688a110e74f9ac09d2cbcf92c027026.jpg', '2024-09-14 00:00:00', '2024-09-14 03:29:32'),
(75, 'Sheetal Kumari', 'Adhaar Card', '7289 4017 6324', '7209771768', 'sheetal01kri@gmail.com', 'C/O: Pradeep Kumar, nisharpura, amarpura, \r\nNaubatpur, PO: Naubatpur, DIST: Patna, Bihar - 801109', '7209771768', 1, 0, 0, 'Not Signed', NULL, '2024-09-15 15:06:41'),
(76, 'Shubham Bisht', 'Adhaar Card', '5629 2588 5645', '9258422938', 'st750019@gmail.com', 'S/O: Dinesh Bisht, I.11f,, kapoor company, Moradabad,\r\n Moradabad, Uttar Pradesh, 244001', '9258422938', 1, 0, 1, 'uploads/signatures/d6f3f151ab743db08cda21219eaf05ae.jpg', '2024-09-17 00:00:00', '2024-09-16 16:05:10'),
(77, 'Danish Saifi', 'Adhaar Card', 'Danish Saifi', '9897882675', 'danishsaifi124@gmail.com', 'S/O: Nasruddin Saifi, 4/644, asif nagar, near shera ki dairy. jamalpur, Koil, Aligarh, Aligarh, Uttar Pradesh, 202001', '9897882675', 1, 100, 1, 'uploads/signatures/47ae348229dd42a324be1485e49e5fae.jpg', '2024-09-19 00:00:00', '2024-09-19 03:32:02'),
(78, 'Hemant Keshari', 'Adhaar Card', '5524 0126 2800', '9696976650', 'HemantKeshari6660@gmail.com', 'Address: S/O: Dinesh Keshari, K 25/39, SOOTTOLA, VARANASI, \r\nVaranasi, Varanasi, Uttar Pradesh, 221001', '9696976650', 1, 0, 0, 'Not Signed', NULL, '2024-09-19 03:37:12'),
(79, 'Pradeep Sharma', 'Adhaar Card', '8539 3011 0639', '9670015326', 'pradeepsharma3157773@gmail.com', 'S/O: Nandkishor Sharma, 34, Jogia Janubi Patti, Kushinagar, Uttar Pradesh - 274401', '9670015326', 1, 0, 0, 'Not Signed', NULL, '2024-09-21 03:25:38'),
(80, 'Vijay Kumar Maravi', 'Adhaar Card', '5697 3373 2892', '7879275121', 'vijaymaravi743@gmail.com', 'S/O Barattal, Village Jarje, Rapama Ryt SPO: Mohgaon, DIST MMadhya Pradesh-401663', '7879275121', 1, 700, 1, 'uploads/signatures/f7a6a8fb31ad25646f6c0d5a9168cab9.jpg', '2024-09-21 00:00:00', '2024-09-21 11:27:03'),
(81, 'Zeba Perween', 'Adhaar Card', '6595 4987 7110', '8709773176', 'zebaperween375@gmail.com', 'Address:\r\nC/O: Jawed Hussain, vill-emadpur post- rafiganj ps-rafiganj, Rafiganj, Aurangabad, Bihar - 824125', '8709773176', 1, 734, 1, 'uploads/signatures/a0ae6cc30a7d856e5ce05a123bd0e1ab.jpg', '2024-09-21 00:00:00', '2024-09-21 11:31:29'),
(82, 'Sonu Ali', 'Adhaar Card', '4515 7598 2079', '919936473788', 'sonualam5234@gmail.com', 'Address:\r\nS/O: Afsar Ali, jamunaha, Saukhia, PO: Saukhiya, DIST: Kheri, Uttar Pradesh-262802', '919936473788', 1, 0, 1, 'uploads/signatures/00dae1032b06d1509a894d1be91d7f54.jpg', '2024-09-23 00:00:00', '2024-09-23 04:07:52'),
(83, 'Sujay Srivastava', 'Adhaar Card', '7745 8237 6203', '9307209262', 'only4usubham@gmail.com ', 'Address S/O: Dayanand Srivastava, SAHOOPURI, \r\nChanditara, Chandauli Uttar Pradesh - 221009', '9307209262', 1, 0, 0, 'Not Signed', NULL, '2024-09-23 04:11:03'),
(84, 'Aditya Kumar', 'Adhaar Card', '4929 5841 1098', '7248773724', 'shakyamukesh5463@gmail.com', 'C/O: Mukesh Kumar, 120, Gali 1, Ashok Nagar, Etah, PO: Etah, DIST: Etah, Uttar Pradesh - 207001', '7248773724', 1, 0, 0, 'Not Signed', NULL, '2024-09-23 04:13:23'),
(85, 'Shiv Gaur', 'Adhaar Card', '9322 1629 4344', '9519992693', 'shivgaur5000@gmail.com', 'C/O: Rajesh Gaur, sirs kanhar, laglesara, Unnao, Unnao, Uttar Pradesh - 209801', '9519992693', 1, 0, 0, 'Not Signed', NULL, '2024-09-23 04:15:36'),
(86, 'Anshul Vikram Tripathi', 'Adhaar Card', '677201256249', '7394079409', 'ertripathi315@gmail.com', 'S/O: Vinay Kumar Tripathi, Dharam Daspur, Sultanpur, Uttar Pradesh- 228125', '7394079409', 1, 700, 1, 'uploads/signatures/696d8f400459ae2e5264cfc942dbb188.jpg', '2024-09-24 00:00:00', '2024-09-24 04:19:12'),
(87, 'Shubham Awasthi ', 'Adhaar Card', '769146107392', '6392813685', 'shubhamawasthi961@gmail.com', 'S/O: Dinesh Awasthi,186 ghazipur, gazipur, kanpur Kanpur Nagar\r\nUttar Pradesh- 208001', '6392813685', 1, 0, 0, 'Not Signed', NULL, '2024-09-24 04:23:14'),
(88, 'Aakash', 'Adhaar Card', '928896897513', '9667165263', 'aakashsharma42093@gmail.com', 'S/O Durga Prasad, House Number- 26/1 Gali Numbar -8, Saboli Bagh, Mandoli, Noth East\r\nDelhi Delhi- 110093', '9667165263', 1, 700, 1, 'uploads/signatures/c7c44bcb43ca35120d41bc019bbfb38d.jpg', '2024-09-24 00:00:00', '2024-09-24 04:26:34'),
(89, 'Zeba Perween', 'Adhaar Card', '6595 4987 7110', '008709773176', 'zebaperween375@gmail.com', 'Address:\r\nC/O: Jawed Hussain, vill-emadpur post- rafiganj ps-rafiganj, Rafiganj, Aurangabad, Bihar - 824125', '008709773176', 1, 0, 0, 'Not Signed', NULL, '2024-09-24 08:56:38'),
(90, 'Zeba Perween', 'Adhaar Card', '6595 4987 7110', '123214', 'zebaperween375@gmail.com', 'C/O: Jawed Hussain, vill-emadpur post- rafiganj \r\nps-rafiganj, Rafiganj, Aurangabad, Bihar - 824125', '123214', 1, 2, 1, 'uploads/signatures/28d7c15a56dbe47a14a8a4ef07a7136e.jpg', '2024-09-24 00:00:00', '2024-09-24 09:04:40'),
(91, 'Mridul Kumar Singh', 'Adhaar Card', '4564 0065 8757', '8273524430', 'mridulkumarsingh00@gmail.com', 'S/O: Vinay Kumar Singh, gulab bari road, rajeev nagar pilibhity bypasd, Bareilly, Bareilly, Uttar Pradesh - 243005', '8273524430', 1, 700, 1, 'uploads/signatures/f31ae4dd81564bc5fc28af50c85b419c.jpg', '2024-09-25 00:00:00', '2024-09-25 03:35:57'),
(92, 'Krupa Prakash Kamble', 'Adhaar Card', '4932 0762 9800', '7350095042', 'Krupaaa0337@gmail.com', 'Address: House no. 1, Mumbai Bangioire Highway, Godhai\r\n Nagar. Bavdhan, Pune City, Pune, Maharashtra - 411021', '7350095042', 1, 44, 1, 'uploads/signatures/a4c3af01d8e5deb81b867f6fafeb1688.jpg', '2024-09-26 00:00:00', '2024-09-26 03:43:31'),
(93, 'Chanda', 'Adhaar Card', '5012 1437 8852', '7015217643', 'chandaparjapat35@gmail.com', 'C/O: Ramesh, Kalanaur Kalan (Part)(126), \r\nRohtak, Haryana 124113', '7015217643', 1, 13, 1, 'uploads/signatures/03d6d9c7080e01d8bb9c623c770346ce.jpg', '2024-09-28 00:00:00', '2024-09-27 03:46:13'),
(94, 'Rakesh Kumar Singh ', 'Adhaar Card', '644484011181', '8218376795', 'rakesh.21028@gmail.com', 'S/O: Ramkishore Singh, Kunwar Nagar Colony Koil, Aligarh Uttar Pradesh- 202001', '8218376795', 1, 0, 0, 'Not Signed', NULL, '2024-09-27 11:06:17'),
(95, 'Anand Mohan ', 'Adhaar Card', '697774788007', '9453962662', 'anandmohan00094@gmail.com', 'S/O: Daya Shankar, Panyora, Oeal PO: Oel, DIST: Kheri Uttar Pradesh 262725', '9453962662', 1, 5, 1, 'uploads/signatures/28b87ec65f215f79596c5a5ec965b35d.jpg', '2024-09-27 00:00:00', '2024-09-27 11:11:57'),
(96, 'Santosh Kumar', 'Adhaar Card', '9415 5018 7728', '9569511914', 'santoshkumarsbi65@gmail.com ', 'S/O: Nakhru, majhagawan, Shamaserpur,\r\nUttar Pradesh - 232111', '9569511914', 1, 183, 1, 'uploads/signatures/80ef52877d6e0b41f4acf6d8c12d81ce.jpg', '2024-10-01 00:00:00', '2024-09-28 03:59:12'),
(97, 'Deepak Saini', 'Adhaar Card', '9237 6665 7138', '6378631609', 'dsaini12961@gmail.com', 'Address: S/O: Vijendra Singh, ward no 03, Samoochi, Alwar, Rajasthan - 321606', '6378631609', 1, 0, 0, 'Not Signed', NULL, '2024-09-28 04:01:23'),
(98, 'Abhishek Sharma', 'Adhaar Card', '244361158030', '8650347412', 'A.sharma9368@gmail.com', 'S/O: Gajendra Sharma, vilage-kishanpur, Post-kishanpur  awanla,\r\nNajibabad, Bijnor, Uttar Pradesh, 246763', '8650347412', 1, 159, 1, 'uploads/signatures/22af8dcd7deafdc54296a5f013752419.jpg', '2024-10-01 00:00:00', '2024-09-29 04:23:32'),
(99, 'Abhay Verma', 'Adhaar Card', '5918 3238 2360', '9532050395', 'itsabhay55807@gmail.com', 'C/O: Pramod Singh, Vivek Nagar Titagarh, \r\nTitagarah (M), North 24 Parganas, West Bengal - 700119', '9532050395', 1, 0, 0, 'Not Signed', NULL, '2024-09-29 04:37:41'),
(100, 'Saurabh Bhashkar zole', 'Adhaar Card', '766797331789', '8698135674', 'saurabhzole092@gmail.com', 'S/O: Bhashkar Zole deulgaon/borda, VTC; Dewalgaon, PO: Bondgaon Devi sub District Arjuni Morgaon District; Gondiya State; Maharashtra 441701', '8698135674', 1, 0, 0, 'Not Signed', NULL, '2024-09-29 06:09:27'),
(101, 'Safura Ansari', 'Adhaar Card', '8421 8062 2957', '9956625916', 'safuraa2213@gmail.com', 'D/O: Haseeb Ahmad, 512/406, 3 Lane, Nishatganj, New Hyderabad, Lucknow, New Hyderabad, Uttar Pradesh, 226007', '9956625916', 1, 700, 1, 'uploads/signatures/abe3de82b2e78b91225f6234146fd51e.jpg', '2024-09-29 00:00:00', '2024-09-29 09:43:14'),
(102, 'Saumitra Singh', 'Adhaar Card', '3651 0628 5754', '6289515156', 'desiboys515156@gmail.com', 'O: Arun Prakash Singh, Gram-Bhujana, ujana, Chandauli, tar Pradesh - 232110', '6289515156', 1, 350, 1, 'uploads/signatures/15c327cdfe765404f8e9501ca2f3ea56.jpg', '2024-09-29 00:00:00', '2024-09-29 09:45:09'),
(103, 'Arjun Kumar Gupta', 'Adhaar Card', '7429 9018 0536', '6392335744', 'sahu780000@gmail.com', 'Address: C/O: Shiv Shankar, HOLLAPUR, Kashipur, Gonda, Uttar Pradesh, 271310', '6392335744', 1, 39, 1, 'uploads/signatures/82a6e565f1ed7a2fe4e0cc64218a2817.jpg', '2024-09-29 00:00:00', '2024-09-29 09:50:13'),
(104, 'Sanghmitra Madhukar Padmukh', 'Adhaar Card', '7513 7922 1232', '7900115444', 'sanghmitramadhukar@gmail.com', 'Address: D/O: MadhukarPadmukh, Room No.190, Shramajivi Nagar, Vasantrao Naik Mahamarg, Near Dr.Babasaheb Ambedkar Bhavan, Chembur, Mumbai, Mumbai Suburban, Chembur, Maharashtra, 400071', '7900115444', 0, 0, 0, 'Not Signed', NULL, '2024-09-29 10:12:47'),
(105, 'Sanghmitra Madhukar Padmukh', 'Select Id Type', '7513 7922 1232', '98765', 'sanghmitramadhukar@gmail.com', 'Address: D/O: MadhukarPadmukh, Room No.190, Shramajivi Nagar, Vasantrao Naik Mahamarg, Near Dr.Babasaheb Ambedkar Bhavan, Chembur, Mumbai, Mumbai Suburban, Chembur, Maharashtra, 400071', '98765', 1, 4, 1, 'uploads/signatures/e64d434f479efc9f11b1c2bd0b547792.jpg', '2024-09-29 00:00:00', '2024-09-29 10:17:02'),
(106, 'Sandeep Kumar', 'Select Id Type', '2097 6002 7700', '9794451870', 'sandeepkumar5374053740@gmail.com', 'Address: S/O: Ravendra Kumar, kodara, Sukhwasa, \r\nKheri, Uttar Pradesh, 261505', '9794451870', 1, 0, 0, 'Not Signed', NULL, '2024-09-29 14:43:41'),
(107, 'Sumit pal', 'Adhaar Card', '981222250161', '7985383612', 'sumitpal2955@gmail.com', 'Balrampur Uttar Pradesh 271201', '7985383612', 1, 0, 1, 'uploads/signatures/f93160c9ab2cc6f659ee6cf86dbe66f1.jpg', '2024-10-03 00:00:00', '2024-10-03 09:56:55'),
(108, 'Sangam singh', 'Adhaar Card', '667893764353', '8299673180', 'sangamsingh59406@gmail.com', ' noida  sec 62 pincode : 201309', '8299673180', 1, 0, 0, 'Not Signed', NULL, '2024-10-03 10:00:14'),
(109, 'Aman kumar', 'Adhaar Card', '390589165404', '9140388030', 'kaman880895@gmail.com', '4, shaidullapur P.A.C road kanpur nagar', '9140388030', 1, 0, 0, 'Not Signed', NULL, '2024-10-03 10:59:40'),
(110, 'Tanishqa Aggrawal', 'Adhaar Card', '379865582385', '8750163887', 'bandarubabu48@gmail.com', 'D/O: Ramnik Aggrwal, WARD NO. 14, BEAUTY VENUE SIALI ROAD. P. O PATHANKOT TEHSIL PATHANKOT. pathankot, Gurdaspur Punjab- 145001', '8750163887', 1, 0, 0, 'Not Signed', NULL, '2024-10-04 04:22:19'),
(111, 'Mothe Sree Ram', 'Adhaar Card', '791227915701', '8977204958', 'sreeramchinnuo7@gmail.com', 'C/O: Mothe Shiva Raj H-No 18-5-922/924 Outside laidaewaza Kandikal Charminar\r\nSahahlibanda Charminar Hyderabad Telangana 500065', '8977204958', 1, 14, 1, 'uploads/signatures/cfe8322b8dc721204abf369346c5b87b.jpg', '2024-10-04 00:00:00', '2024-10-04 04:31:11'),
(112, 'BABLU BHARTI', 'Driving License', 'UP26 20230003806', '9548406953', 'bb816354@gmail.com', 'village-hashimpur neoriya husainpur pilibhit pilibhit Uttar Pradesh 262001', '9548406953', 1, 20, 1, 'uploads/signatures/aff4ddb7420a5fe64f8b2700161b0efb.jpg', '2024-10-04 00:00:00', '2024-10-04 04:49:31'),
(113, 'Nikita sampat Panse', 'Adhaar Card', '937712336010', '7666991837', 'pansenikita9@gmail.com', 'C/O: Sampat Panse Yelavi, ta Tasgaom Yelavi, PO: Yelavi DIST: Sangli Maharashtra 416416', '7666991837', 0, 60, 1, 'uploads/signatures/b224d77cba8808764c43a832eaf90f0e.jpg', '2024-10-04 00:00:00', '2024-10-04 05:00:35'),
(114, 'Shilpa Shubham Hiwale', 'Adhaar Card', 'UEY4616546', '8265003347', 'shilpapaingle016@gmail.com', '169, BUDHAVIHAR JAVAL, GHATNANDRA, DUDHA, BULDANA, BULDHANA, MAHARASHTRA-443106', '8265003347', 1, 130, 1, 'uploads/signatures/70b1f4854e8ed4a32ae7f277e5c05e9d.jpg', '2024-10-04 00:00:00', '2024-10-04 05:30:43'),
(115, 'Saurabh Vishwakrma', 'Adhaar Card', '908301064110', '7618054386', 'SaurabhVish8@gmail.com', 'S/O: Ashok Kumar Vishwakarma, N 14/236 D-2-A, BHELUPUR,VARANASI, Chhitpur,Varanasi, Uttar Pradesh, 221010', '7618054386', 1, 708, 1, 'uploads/signatures/0f03f075859a277303d61a96aea22a41.jpg', '2024-10-04 00:00:00', '2024-10-04 09:36:40'),
(116, 'Avinash Maurya', 'Adhaar Card', '3435 9883 7989', '9794076400', 'Avinashmaurya968@gmail.com', 'C/O: Radhavshyam, pandey baba, pathan 5, Palia Kalan, Kheri, Uttar Pradesh - 262902', '9794076400', 1, 710, 1, 'uploads/signatures/014015ba50f63a27599adf44fcce186a.jpg', '2024-10-04 00:00:00', '2024-10-04 10:18:18'),
(117, 'MOHD NADEEM KHAN', 'Adhaar Card', 'UP25/0025069/2022', '8433408969', 'nadeemalikhan21@gmail.com', '288 KATRA CHAND KHAN SATIPUR Bareilly, UP, 243005', '8433408969', 1, 0, 0, 'Not Signed', NULL, '2024-10-05 07:58:13'),
(118, 'MUDIT SHARMA', 'Adhaar Card', 'AJC3990066', '6393888156', 'muditatindia@gmail.com', 'Address: H.N.218, BANIYA MOHAL SADAR, BANIYA MOHAL,\r\nP.S.-CANTT, Tahshil-Lucknow, Dist-Lucknow, 226002\r\n\r\n', '6393888156', 1, 700, 1, 'uploads/signatures/7b407df0786d61e120fc22513cdf0a7e.jpeg', '2024-10-05 00:00:00', '2024-10-05 08:05:09'),
(119, 'Safura Ansari', 'Adhaar Card', '8421 8062 2957', '549469', 'safuraa2213@gmail.com', 'D/O: Haseeb Ahmad, 512/406, 3 Lane, Nishatganj, New Hyderabad, Lucknow, New Hyderabad, Uttar Pradesh, 226007', '549469', 1, 2, 1, 'uploads/signatures/2d5c42bbc6aa69c3a01b87132758e280.jpg', '2024-10-06 00:00:00', '2024-10-06 10:15:16'),
(120, 'Anshu Verma ', 'Adhaar Card', '961213826740', '9808984240', 'anshuverma2327@gmail.com', 'D/O: Anil Verma, 330, Faltoon Ganj, Kalibari Near Duliram Ki dairy, Barely, Barelly\r\nUttar Praedsh - 243005', '9808984240', 0, 301, 1, 'uploads/signatures/81f1c925f6ab7a24d22c92c5059265e7.jpg', '2024-10-08 00:00:00', '2024-10-08 12:22:19'),
(121, 'Bhagvan Singh ', 'Adhaar Card', '234438193468', '9675924308', 'rinkurajput798275@gmail.com', 'S/O: Shri Subhash Chandra, 13 Gorai Mahadaura Jamau, PO: Jamau, DIST: Alighar, Uttar Pradesh - 202145', '9675924308', 1, 9, 1, 'uploads/signatures/3b4a8c4f477345cfdd8c8d26b6172f54.jpg', '2024-10-08 00:00:00', '2024-10-08 12:28:39'),
(122, 'SHADAB HUSAIN', 'Adhaar Card', '945676251043', '8840730499', 'shahzebali9180@gmail.com', 'S/O: Nisar Abbas WAZIR GANJ WAZEERGANJ Faizabad Faizabad Faizabad Uttar Pradesh -224001', '8840730499', 1, 0, 0, 'Not Signed', NULL, '2024-10-08 12:34:45'),
(123, 'Gaurav Prabhakar Bisne', 'Adhaar Card', '4812 7536 4366', '8855085103', 'gauravbisne19@gmail.com', 'Address: S/O Prabhakar Bisne, SHANKAR NAGAR WARD NO. 3, MU.PO.KURHA TA. TIWASA, Kurha, Amravati, Maharashtra, 444709', '8855085103', 1, 0, 1, 'uploads/signatures/b2155330afa000251120a06acb52c1df.jpg', '2024-10-09 00:00:00', '2024-10-09 05:29:01'),
(124, 'Manjot Singh', 'Adhaar Card', '9086 7478 7584', '9592846255', 'smanjotsingh5911@gmail.com', 'S/O Nachhattar Singh,.... Baran Hara, PO: Partapsinghwala, DIST: Ludhiana, Punjab-141008', '9592846255', 1, 101, 1, 'uploads/signatures/5e713c7b6d742bcecf6f1039e6e4ff42.jpg', '2024-10-09 00:00:00', '2024-10-09 06:22:23'),
(125, 'Anand Keshavrav Dahbade', 'Adhaar Card', '228658838236', '8459234353', 'anandch9970@gmail.com', 'L. 1 9 3. L 1 Ram Nagar Sidako N 2, TEHSIL- Aurngaba DISTT-Aurangabad (M,H,) 431210', '8459234353', 1, 35, 1, 'uploads/signatures/fad085e64b060468fb91716b98a58fef.jpg', '2024-10-09 00:00:00', '2024-10-09 06:32:01'),
(126, 'Vanitha S K ?????? ????/DOB:', 'Adhaar Card', '9163 5485 3968 0824', '9003238473', 'vanithasubbhu@gmail.com', 'D/O Krishnan, 5/23C, KELA STREET, MUDIVAITHANENDAL, Mudivaithanendal, Thoothukkudi, Tamil Nadu 628102', '9003238473', 1, 0, 0, 'Not Signed', NULL, '2024-10-09 07:14:56'),
(127, 'Bhupesh Singh', 'Adhaar Card', '7249 2082 7286', '7017531067', 'bhupeshjr78@gmail.com', 'S/O: Hari Prasad, NAGLA KALAR BUDDH VIHAR COLONY GALI NO.9, NEAR CHOB SINGH COLLAGE, ALIGARH, Koil, Aligarh, Aligarh, Uttar Pradesh, 202001', '7017531067', 1, 0, 0, 'Not Signed', NULL, '2024-10-11 06:56:33'),
(128, 'Nihalahamad Mansur Magdum ', 'Adhaar Card', '278922213174', '7822887005', 'Nihalahamad012017@gmail.com', 'Mal Bhag, Dhulgaon Sangli, Maharashtra- 416420', '7822887005', 0, 76, 1, 'uploads/signatures/ccaa260f0e1e81fddf7f5820cd691015.jpg', '2024-10-13 00:00:00', '2024-10-13 07:15:59'),
(129, 'ARYAN NIMAKAR', 'Adhaar Card', 'MH27 2020014423', '9420220129', 'aryan.nimkar20@gmail.com', 'AT SHRITI KRUSHNA COLONY MU PRALHADPUR POST CHANDUR BAZAR AMRAVA\r\nChandurbazar, Amrawati MH- 444704', '9420220129', 1, 0, 0, 'Not Signed', NULL, '2024-10-13 07:20:04'),
(130, 'Sahil Gupta ', 'Adhaar Card', '919893282650', '9917230662', 'vg7649004@gmail.com', 'S/O: AASHISH GUPTA, 41, ABUPURA PASHICHIMI, Muzaffarnagar, PO; Muzaffar Nagar City, DIsT:\r\nMuzaffarnagar Uttar Pradesh- 251002', '9917230662', 1, 101, 1, 'uploads/signatures/f617afb8ceefa1f5457650d854a80ba0.jpeg', '2024-10-13 00:00:00', '2024-10-13 07:49:25'),
(131, 'Jyoti Gautam Pal', 'Adhaar Card', '747203753160', '7304624379', 'palj37506@gmail.com', 'D/O: Gautam R. Pal Worli B.D.D. Vhawl NO. 63 Room No. 30. Bhagoji Waghmare Road Near Jambori Maidan Woli, Mumbai Maharashtra 400018', '7304624379', 1, 0, 0, 'Not Signed', NULL, '2024-10-13 08:05:38'),
(132, 'Uzaif Khan', 'Adhaar Card', '3580 1550 9704', '8441852016', 'UK4611805@gmail.com', 'S/O: Rahis Ahmad, dhoolkot, near sai baba mandir, Dhaulpur, Dholpur, Rajasthan-328001', '8441852016', 0, 14, 1, 'uploads/signatures/4c63e8befc426f8500fa6f23a4126355.jpg', '2024-10-13 00:00:00', '2024-10-13 11:00:57'),
(133, 'Ravi Kumar Gola', 'Adhaar Card', '9239 4593 8243', '7906175331', 'golaravi222@gmail.com', 'Address: C/O: Kartar Singh Gola, 5c/1a/6a, VK Puram, Ramswroop Colony, Shahganj. Shahaganj, Agra, Uttar Pradesh, 282010', '7906175331', 1, 0, 0, 'Not Signed', NULL, '2024-10-13 12:52:32'),
(134, 'HaMd Kall', 'Election Card', 'RYE3119005', '9304958119', 'mdkaifshadow320@gmail.com', 'Address: WARD NO 05, MURETH, MURETH, MURETH, BENIPATTI, MADHUBANI, BIHAR 547229', '9304958119', 1, 0, 0, 'Not Signed', NULL, '2024-10-13 14:25:44'),
(135, 'Vivek Mishra', 'Adhaar Card', '6162 3843 7024', '9336482145', 'vivekmishra12335@gmail.com', 'Address: S/O: Vinod Kumar Mishra, tengnaha, Rek Sadiya, Gonda.\r\nUttar Pradesh - 271504', '9336482145', 1, 21, 1, 'uploads/signatures/3ab5b52ac70b6c0b44de1d0187ac7d11.jpg', '2024-10-15 00:00:00', '2024-10-15 04:13:15'),
(136, 'Tanisha Kumari', 'Adhaar Card', '5915 2766 5060', '7250177277', 'riyasingh.1827@gmail.com', 'D/O: Arun Kumar Singh, PAIGA, Mednipur, Rohtas, Bihar - 821310', '7250177277', 1, 24, 1, 'uploads/signatures/d1e905119b1a0de68462cde22a247e51.jpg', '2024-10-15 00:00:00', '2024-10-15 05:03:55'),
(137, 'Mubasshira', 'Adhaar Card', '5029 4452 5026', '9456859460', 'Chauhanmubassira706@gmail.com', 'Address: D/O: Ashkeen, 00,MOHALLA, KASSABAN, Shahpur, Muzaffarnagar, Shahpur (muzaffarnagar), Uttar Pradesh, 251318', '9456859460', 1, 700, 1, 'uploads/signatures/088862d25e7bc2f73bf5798bbaf995ac.jpg', '2024-10-15 00:00:00', '2024-10-15 05:20:07'),
(138, 'Samshad Ansari', 'Adhaar Card', '387987198074', '6306806614', 'samshadansari872@gmail.com', 'S/O: Fatemuhmmd Ansari, Dhanha urf malludih Dhanha Urf Maludih Kaushinagar \r\nUttar Pradesh - 274402', '6306806614', 1, 12, 1, 'uploads/signatures/4f73ea8b7cfd4bfb7740f2cb873e653a.jpg', '2024-10-16 00:00:00', '2024-10-16 06:27:25'),
(139, 'Aditya Balasaheb Shinde ', 'Adhaar Card', '582123935275', '9145620637', 'adityashinde2044@gmail.com', 'S/O: Balaso Kisan Shinde Landahoba Mal, Murum, pune Maharashtra 412306', '9145620637', 1, 700, 1, 'uploads/signatures/314b0095c6784d55714a3c81f308057c.jpg', '2024-10-16 00:00:00', '2024-10-16 07:29:25'),
(140, 'Lalit Raghav', 'Adhaar Card', '832768153923', '9259219379', 'bitturaghav913@gmail.com', 'S/O: Amit Raghav 5/209 b 15 shakti Nagar\r\nRoad Nagala Mashani Shiv Nagar Colony Koil Alighar Uttar Pradesh- 202001', '9259219379', 1, 15, 1, 'uploads/signatures/52a499fa25d2aa10f7f82d925e3f64af.jpg', '2024-10-17 00:00:00', '2024-10-17 04:06:22'),
(141, 'Thota Manaswini ', 'Adhaar Card', '798856663819', '7013170665', 'manaswinithota12@gmail.com', 'D/O Late Thota Ramesh, 4-91-1-A Siva Nagar Extention Ankisettipalle Madanapalle (Rual) PO: Madanapalle DIST: Annamayya Andhra Pradesh, 517325', '7013170665', 0, 5, 1, 'uploads/signatures/bb19d511a112e0f00efb60ad45b315be.jpg', '2001-03-02 00:00:00', '2024-10-17 04:10:31'),
(142, 'Deekshitha ', 'Adhaar Card', '255152968364', '8970256516', 'deekshithashetty724@gmail.com', 'C/O: Rajesh 36-50/2 Pakeera Shetty Compound, Kodical Abbakkanagar VTC: Mangalore, PO: Ashoknagar(mr) Sub District: Manglore, District: Dakshina Kannada, State Karnataka Pin 575006', '8970256516', 1, 55, 1, 'uploads/signatures/bfe15e23d1bf29b48121432380af4ad5.jpeg', '2024-10-17 00:00:00', '2024-10-17 04:36:35'),
(143, 'Vibinasree  Shanmugam ', 'Adhaar Card', '932425370765', '6381766385', 'vibinamoby2005@gmail.com', 'D/O: Shanmugam, 3/139 LAKSHMI GARDEN VARDAIYANGARPALAYAM VTC: Kondayampalayam, PO: Kondayampalayam, Sub District Annur District Coimbataore State Tamil, Nadu - 641110', '6381766385', 1, 700, 1, 'uploads/signatures/ba8b09999d5e22371ecb77c47a16f524.jpg', '2024-10-17 00:00:00', '2024-10-17 04:40:59'),
(144, 'Y Paul Bastine ', 'Adhaar Card', '301247774736', '9363995781', 'paulbastine818@gmail.com', 'S/O: Yagappan, 3/38, SOUTH STREET, NAVALUR KUTTAPATTU, SRIRANGAM TALUK, VTC: Navalurkottapattu, PO: Navalurkottapattu, Sub District: Srirangam, District: Tiruchirappalli, State: Tamil Nadu, nPIN Code: 620009,\r\n', '9363995781', 0, 159, 1, 'uploads/signatures/028bbfb382f56806e924b9a9225afa57.jpg', '2024-10-17 00:00:00', '2024-10-17 05:58:01'),
(145, 'Chitrasen Mandal', 'Adhaar Card', 'SXB1416288', '8435775931', 'rohankkumar294@gmail.com', '10, BHATENI, BHATENI, JAMBOO, KENDRAPARA, ODISHA- 754224', '8435775931', 1, 0, 0, 'Not Signed', NULL, '2024-10-17 06:01:12'),
(146, 'Luder Mani', 'Adhaar Card', '4577 5037 3923', '8679432955', 'arluderchauhan@gmail.com', 'S/O Dhaneshwar Singh - - Tehsil Thunag Thunag(T) MUGHAN Mandi Thunag Himachal Pradesh 175048', '8679432955', 1, 0, 0, 'Not Signed', NULL, '2024-10-17 07:45:26'),
(147, 'Rasiya', 'Adhaar Card', 'ZI10793398', '8139854347', 'Banuashifa830@gmail.com', 'ADDRESS: 12/252, Noor Manzil, Chowki KK Puram, Kudlu 671124', '8139854347', 1, 160, 1, 'uploads/signatures/31c51816d934c4180b6b9c6a357690b7.jpg', '2024-10-17 00:00:00', '2024-10-17 09:26:43'),
(148, 'Varsha Rai', 'Adhaar Card', '801192253075', '9760572742', 'vrai08854@gmail.com', 'D/O: Vinod Rai, Nainu Paharu Taraya Sujan, Bahadurpur, Kushinagar, Utter Pradesh- 274409', '9760572742', 1, 0, 0, 'Not Signed', NULL, '2024-10-18 03:20:26'),
(149, 'Avinash Maurya', 'Adhaar Card', '3435 9883 7989', '09856', 'Avinashmaurya968@gmail.com', 'C/O: Radhavshyam, pandey baba, pathan 5, Palia Kalan, Kheri, Uttar Pradesh - 262902', '09856', 0, 2, 1, 'uploads/signatures/9415bf9e206dfb7fc989ae41f6cb0eb8.jpg', '2024-10-18 00:00:00', '2024-10-18 04:13:14'),
(150, 'Pragathi Duvvari', 'Adhaar Card', 'IQV2127355', '7993995754', 'pragathiduvvari976@gmail.com', 'MAIN STREET, DHARMALAXMIPURAM,DHARAMLAXMIPURAM, SARAVAKOTA, SRIKAKULAM, ANDHRA PRADESH- 532214', '7993995754', 0, 587, 1, 'uploads/signatures/f63723fa635509f526b1f673f237aca5.jpg', '2024-10-18 00:00:00', '2024-10-18 09:00:07'),
(151, 'Varshes R ', 'Adhaar Card', '5227 7978 5636', '9686461327', 'Varundancer086@gmail.com', 'D/O Ramesh 8177, 4th Cross, Ayyappa Swamy Temple Ru Raghavendra Naga , VTC: Mysore District: Mysore. State: Karnataka PIN Code: 570011, Mobile 9731251677', '9686461327', 1, 9, 1, 'uploads/signatures/7ec5580d74bacb747d60c04c9d0a9eaa.jpg', '2024-10-18 00:00:00', '2024-10-18 09:45:29'),
(152, 'SACHIN S KHARVI', 'Adhaar Card', '384203125037', '8197395302', 'sachinkharv998@gmail.com', '3-38 SHETTI MANE DAKUHITIJI GHAGOLLI GANGOLLI KUNDAPURA Gangoli Udupi Karnatka- 576216', '8197395302', 1, 0, 0, 'Not Signed', NULL, '2024-10-20 03:07:43'),
(153, 'Bhavanishankar G', 'Adhaar Card', '6284 6497 7943', '7406381728', 'gbs740638@gmail.com', 'S/C Guruswamy L Yanagahali Chamarajanagara Taluk. \r\nYanagahali. Chamrajanagar Karnataka 571127', '7406381728', 1, 0, 0, 'Not Signed', NULL, '2024-10-20 04:25:09'),
(154, '8920174437', 'Adhaar Card', '709400898297', '8920174437', 'yashikakumari221@gmail.com', 'A-176 Kondli Harijan Basti Delhi 110096', '8920174437', 0, 351, 1, 'uploads/signatures/c08650014bc85e65f9d86d7bcdfe3d32.jpg', '2024-10-20 00:00:00', '2024-10-20 13:33:12'),
(155, 'Parmar Artiben', 'Adhaar Card', '4549 0344 8901', '7043773628', 'rahulgalchar462@gmail.com', 'Address: SD/O: Danabhai, abedakar nagar, khas, Khas, PO: Khas, DIST: Ahmedabad,\r\nGujarat - 382255', '7043773628', 1, 700, 1, 'uploads/signatures/4bfe6c2f033ff11a9a4df6dad5c923d9.jpg', '2024-10-21 00:00:00', '2024-10-21 04:47:52'),
(156, 'Muskan Rani', 'Adhaar Card', '5450 6677 4055', '7988492155', 'Itzarmygirl06@gmail.com', 'Address: D/O: Surender Paul, Daha (3), Kamal, Haryana, 132037', '7988492155', 1, 145, 1, 'uploads/signatures/bee031213dd1a0d24ef04c5df9630af3.jpg', '2024-10-21 00:00:00', '2024-10-21 05:53:01'),
(157, 'Ankit', 'Adhaar Card', '7315 3006 6954', '7876688543', 'ankitchoudhary7345@gmail.com', 'Address: S/O: Husan Chand, Makhnu Majra (190), Solan, Himachal Pradesh, 173205', '7876688543', 1, 700, 1, 'uploads/signatures/7cae785e4a19e4e9ec023a04ecf01b47.jpg', '2024-10-21 00:00:00', '2024-10-21 05:55:26'),
(158, 'Britto Velanganni', 'Adhaar Card', '7144 0462 2808', '8508406330', 'bspbritto1991@gmail.com', 'Address: S/O: Velanganni, 8/13, PUNITHA SAVARIYAR KOVIL STREET, PACHAMPE????, Thirumanamedu (East), Tiruchirappalli, Tirumanamedu, Tamil Nadu, 621218', '8508406330', 1, 0, 0, 'Not Signed', NULL, '2024-10-21 07:13:51'),
(159, 'Shramana Chattaraj', 'Adhaar Card', '3670 1327 1875', '7488757869', 'shramanachattaraj@gmail.com', 'D/O: Tridib Chattaraj, H.no - 132, Krishna Road-06,T Vidyasagar Pally, Parsudih, VTC: Haludbani, PO: Tatanagar, Sub District: Dumaria, District: East Singhbhum, State: Jharkhand, PIN Code: 831002,', '7488757869', 1, 700, 1, 'uploads/signatures/f4f4bae88cc1d39794b720674612f99a.jpg', '2024-10-23 00:00:00', '2024-10-23 03:36:05'),
(160, 'Ashutosh Santosh Kage', 'Adhaar Card', '2066 2086 3372', '7083072448', 'ashutoshkage7@gmail.com', 'tapare bilding chya mage, shivneri nagar, Osmanabad, Osmanabad, Maharashtra 413501', '7083072448', 1, 3, 1, 'uploads/signatures/6493e2e77c4964ff652ccd0e8387c473.jpg', '2024-10-23 00:00:00', '2024-10-23 03:37:55'),
(161, 'Tara Chand', 'Adhaar Card', '736211320268', '8988141720', 'taramaliyan71@gmail.com', 'S/O: Sanju Ram Village Dodra, Dodra Kwar, PO: Dodra DIST: Shimila \r\nHimachal Pradesh- 171221', '8988141720', 1, 0, 1, 'uploads/signatures/8d729788c470f8a7964cec432bc47d36.jpg', '2024-10-23 00:00:00', '2024-10-23 04:00:41'),
(162, 'NARASIMHA NAYAKA G V', 'Driving License', 'KA02 20130018275', '7411739957', 'nayak030685@gmail.com', 'VENKATESHAPPA GULLAKUNTE VILLAGE SRINIVASAPURA TALUK KOLAR DIST\r\n(SAGMDS) 563135', '7411739957', 1, 0, 0, 'Not Signed', NULL, '2024-10-23 04:05:24'),
(163, 'Mohini', 'Adhaar Card', '478283210048', '7417793269', 'm8546989@gmail.com', 'H NO. 299 JHUNNAPURIA, MALIYANA, Meerut,  Meerut Uttar Pradesh- 250002', '7417793269', 1, 68, 1, 'uploads/signatures/e951d28df9a07cd70a2eeb93af65a298.jpg', '2024-10-23 00:00:00', '2024-10-23 04:31:56'),
(164, 'Sibiraj Ashok', 'Adhaar Card', '596345311529', '8667497921', 'asibiraj123@gmail.com', 'S/O: Ashok NO 289 MUTHURAYAN MADU, ANDIYAPANUR, VANIYAMBADI, Andiyappanur,Vellore, Tamil Nadu - 635702', '8667497921', 1, 1149, 1, 'uploads/signatures/64d1fb544ee2c4b096d98741ffaab50f.jpg', '2024-10-23 00:00:00', '2024-10-23 04:43:27'),
(165, 'Rahul Rajkmar Choudhary', 'Adhaar Card', '302595433396', '9326849199', 'rc086386@gmail.com', 'W/O: Rajkumar Choudhary, @ Bhoir Ali, Karave Gaon Nerul, Nerul Node-III, Nerul Node-III, Thane Nerul Node- iii, Maharashtra 400706', '9326849199', 1, 4, 1, 'uploads/signatures/03fca6faf588f0091088a8534ec3cbd1.jpg', '2024-10-23 00:00:00', '2024-10-23 04:51:45'),
(166, 'Ankit Kumar', 'Adhaar Card', '975937894858', '9546156778', 'ankitkumar942004@gmail.com', 'S/O: Arun Village - Nimiya Post Office - Doiyan, Nimiyan, Rohtas Bihar- 82112', '9546156778', 1, 0, 0, 'Not Signed', NULL, '2024-10-23 05:02:00'),
(167, 'Kahkashan Bano', 'Adhaar Card', '792607808044', '9971726781', 'bkahkashan3@gmail.com', 'D/O: Muntkeem Ahmad. 29/A, BLOCK Q, BATLA HOUSE JAMIA Nagar, South Delhi, New \r\nFriends Colony, Delhi, 110025\r\n\r\n', '9971726781', 1, 700, 1, 'uploads/signatures/b84c2d5026a52bfebb8be8c91d6ca79a.jpg', '2024-10-24 00:00:00', '2024-10-23 06:30:29'),
(168, 'AMIT KUMAR PATHAK', 'Election Card', 'WJJ2177178', '7480055344', '2002amitpathak@gmail.com', 'Address:-KARHANSI, Town/Village-Karahansi, Anchal- Buxar, District-BUXAR, Pin-802102\r\n', '7480055344', 1, 1, 1, 'uploads/signatures/b653806d7ed428e145c62a8c509a5c9b.jpg', '0202-10-23 00:00:00', '2024-10-23 07:12:41'),
(169, 'Vaishnavi T', 'Adhaar Card', '440576767804', '7448464566', 'Vaishanusurya19@gmail.com', 'Venugopal nagar, tsp camp road,  veerapuram , Morai , Tiruvallur , Tamilnadu , 600055', '7448464566', 1, 0, 0, 'Not Signed', NULL, '2024-10-23 08:47:57'),
(170, 'Ambala viplava ', 'Adhaar Card', '373921218572', '7995063366', 'ambalasathyam535@gmail.com', '15-76 \r\nSR NAGAR , enumamula, VTC WARANGAL, \r\nPo laxmipur , \r\nSub district, warangal \r\nDistrict: Warangal \r\nState : andhra pradesh \r\nPIN CODE : 506013', '7995063366', 1, 0, 0, 'Not Signed', NULL, '2024-10-23 09:06:00'),
(171, 'Rameshkumar', 'Adhaar Card', '524339082059', '9741099037', 'hramesh09@gmail.com', 'S/O: Veershetty, 4-280/2, Milan Chowk Road, Near Gadduge Math, Maktampur,\r\nGulbarga, Kalaburagi, Karnataka- 585101', '9741099037', 1, 0, 1, 'uploads/signatures/0b2cc5d2b837e98c3237629b2caa7f1f.jpeg', '2024-10-23 00:00:00', '2024-10-23 10:36:56'),
(172, 'E Kasthuri', 'Adhaar Card', '616141729510', '9566148917', 'kasthurihlcoach@gmail.com', 'E Kasthuri D/O: Ezhumalai 12 lyyanar Koil Street O K Palayam Mudaliarpet \r\nMudaliarpet Pondicherry Pondicherry 605004', '9566148917', 1, 0, 0, 'Not Signed', NULL, '2024-10-23 10:40:57'),
(173, 'Tandra Chattaraj', 'Adhaar Card', '2109 6980 4759', '6299843611', 'Tandrachattaraj888@gmail.com', 'W/O: Tridib Chattaraj..?.??.-132,.KRISHNA ROAD,.VIDYASAGAR PALLY,.PARSUDIH,.VTC: Golmuri-Cum-Jugsalai, PO: Tatanagar,.Sub District: Golmuri, District: East Singhbhu State: Jharkhand,\r\nPIN Code: 831002,', '6299843611', 1, 78, 1, 'uploads/signatures/ea529da5457a397efd6f2ac187e4dfd7.jpg', '2024-10-23 00:00:00', '2024-10-23 11:57:33'),
(174, 'VANDA', 'Adhaar Card', 'WUW2051118', '8085169612', 'vandnavishwakarma782810@gmail.com', 'Address: 001,Paladigwar, Pusprajgarh, Anuppur, Madhya Pradesh', '8085169612', 1, 0, 0, 'Not Signed', NULL, '2024-10-23 12:06:23'),
(175, 'Pula Pedda Babu', 'Adhaar Card', '570575816952', '8978648090', 'peddab65@gmail.com', 'S/O: Pula Bhaskar, 2-148-a, s c colony COLONY, VANALA, \r\nVanala, Dist: Kurnool, Andhra Pradesh- 518508', '8978648090', 1, 0, 1, 'uploads/signatures/63123d87aa7933dd538d2fc5fd90fcca.jpg', '2024-10-24 00:00:00', '2024-10-24 03:37:41'),
(176, 'Alice Jenifer Inbaraj', 'Adhaar Card', '590081206388', '7092360025', 'alicejeny27@gmail.com', 'D/O: Inbaraj, NO 17, 1ST STREET, SUBBAIYAMUTHALIYARPURAM, Thoothukkudi, New Colony, Tamil Nadu, 628003', '7092360025', 1, 700, 1, 'uploads/signatures/3363d7c135149c381508b5cfbb6eab6d.jpg', '2024-10-24 00:00:00', '2024-10-24 03:41:27');
INSERT INTO `tbl_member` (`member_id`, `member_name`, `member_id_type`, `member_id_number`, `member_contact`, `member_email`, `member_address`, `member_pass`, `member_status`, `completed_form`, `agreement_status`, `agreement_sign`, `agreement_date`, `added_on`) VALUES
(177, 'Marathe Navin Vasant', 'Adhaar Card', '3821 2575 8314', '9594826976', 'navgau9594@gmail.com', ' Address :-202-A Orchid CHS, Govandi station Road, Govandi East, VTC: Mumbai,  PO: T.I.donar,\r\nSub District: Mumbai,\r\nDistrict: Mumbai,\r\nState: Maharashtra,\r\nPIN Code: 400088,', '9594826976', 1, 0, 0, 'Not Signed', NULL, '2024-10-24 06:01:27'),
(178, 'harshalraj Mishra', 'Adhaar Card', '822283476596', '8958691335', 'harshalrajmishra@gmail.com', 'S/O: Harishchandra Mishra 3.83 lohai  road Farrukhabad, Farrukhabad, Uttar Pradesh- 209625', '8958691335', 1, 700, 1, 'uploads/signatures/9f4e4caaefec48777232ba41a61ca814.jpg', '2024-10-24 00:00:00', '2024-10-24 06:09:24'),
(179, 'Karthik R', 'Adhaar Card', '262928662803', '8867412124', 'karthikchinna7999@gmail.com', 'S/O: RAMANJI K S VIDYANAGARA, GOWARIBIDANUR, KAREKALLAHALLI, GOWRIBIDANUR, Gauribidanur, Chikkaballapur Karnataka- 561208', '8867412124', 1, 700, 1, 'uploads/signatures/85cc658c6a589ed62245805f44a176a4.jpeg', '2024-10-24 00:00:00', '2024-10-24 06:13:02'),
(180, 'Karthika P Mohanan', 'Election Card', ' UAH1533199', '8078081705', ' karthikadot17@gmail.com', 'Address 268, PEZHATHANIL, ERATHUVADAKARA, VELLAVOOR, ERATHUVADAKARA, KANJIRAPPALLY. KOTTAYAM, KERALA-686543\r\n', '8078081705', 1, 0, 0, 'Not Signed', NULL, '2024-10-24 06:32:34'),
(181, 'G Rakesh ', 'Adhaar Card', '606863459829', '9542116078', 'rakeshgolla68@gmail.com', 'S/O G Chinna Kondaiah 2-17/3 Chinnavarval, Chinnavarval, Gandeed Mandal, \r\nVTC: Chinnavraval, PO: Kulakckerla, Sub District, Gandeed, District K.V. Rangareddy, State Telangana PIN 509335', '9542116078', 1, 31, 1, 'uploads/signatures/29b3163c838e9d85595a1e29826b15d0.jpg', '2024-10-24 00:00:00', '2024-10-24 06:48:39'),
(182, 'Sanya Patwal', 'Adhaar Card', '6199 5209 0067', '9315868280', 'sanyapatwal07@gmail.com', ' Address :-D/O Mohan Singh Patwal, D 294, TYPE -1, MOTI BAGH, Chanakya Puri S.O, South West Delhi, Delhi, 110021', '9315868280', 1, 6, 1, 'uploads/signatures/00e085f5a3e83432f27cd5eedee4f926.jpg', '2024-10-24 00:00:00', '2024-10-24 11:16:15'),
(183, 'Shaina Sardar', 'Adhaar Card', '6189 1816 4374', '9051729899', 'shainasardar503@gmail.com', 'Address :-150/3A, A-8 SUKANAT PALLY, MG ROAD, VTC: Haridevpur, PO: Haridevpur, District: South Twenty Four Parganas, State: West Bengal, PIN Code: 700082', '9051729899', 1, 486, 1, 'uploads/signatures/2d9b58c2379e81b184b8b07f94b34f77.jpg', '2024-10-24 00:00:00', '2024-10-24 11:17:36'),
(184, 'Rani Madhav Gavit', 'Adhaar Card', '3277 1429 3193', '9373903439', 'ranigavit40@gmail.com', ' Address :-Gavit, railway colony, thi 24 pulgaon 412202, pulgaon, Wardha, Haarashiura-442302', '9373903439', 1, 22, 1, 'uploads/signatures/7b1709e1ed6c8b0ca8252738cd15eb1e.jpg', '2024-10-24 00:00:00', '2024-10-24 11:18:53'),
(185, 'Asiya Jafar Shaikh', 'Adhaar Card', '2367 7918 0288', '9136569903', 'asiyashaikha1255@gmail.com', '', '9136569903', 0, 0, 0, 'Not Signed', NULL, '2024-10-24 11:29:54'),
(186, 'Asiya Jafar Shaikh', 'Adhaar Card', '2367 7918 0288', '9136569903', 'asiyashaikha1255@gmail.com', 'Address :-167/169 Kashmiri Manzil 6th Floor Room no 607 B. J.B. Shah Marg. Khadak, Chinch Bunder, Mumbai, Maharashtra-400009', '9136569903', 1, 0, 1, 'uploads/signatures/61ceed46190eaa2e944e15e738d4f571.jpg', '2024-10-24 00:00:00', '2024-10-24 11:33:05'),
(187, 'SALIVENDRA SUMANJALI', 'Adhaar Card', '6064 4121 4925', '8688789235', 'sumanjali664@gmail.com', 'Address: D/O S Anjaneyulu, 12-110, BASIREDDY BAVI STREET, KOILKUNTLA. Koilkuntla, Gunjalapadu, Kurnool, Andhra Pradesh, 518134', '8688789235', 1, 0, 0, 'Not Signed', NULL, '2024-10-24 12:18:24'),
(188, 'Sumit Kumar Singh', 'Adhaar Card', '6252 6732 9935', '9508495051', 'singhsumit45428@gmail.com', 'S/O: Santosh Singh dumari Dumri Dumari Balua Chapra Saran Bihar 841216', '9508495051', 1, 1, 1, 'uploads/signatures/ddc3e945274e376a5645e57f096663ba.jpg', '2024-10-24 00:00:00', '2024-10-24 12:20:11'),
(189, 'KRISHNA SHARMA', 'Election Card', 'BCV0286666', '7085802610', 'krishnaxhrma6@gmail.com', 'HNo.E - 188, VILL-17TH MILE & MILLS AREA, JAIRAMPUR, DIST- CHANGLANG-792121', '7085802610', 1, 0, 0, 'Not Signed', NULL, '2024-10-24 12:24:29'),
(190, 'Abdul Denish Abdul Nasir', 'Adhaar Card', '770934094134', '9665694808', 'danishmalik2795@gmail.com', 'S/O: Abdul Nasir, NAVEEN PLOT SHIRAJGAON KASBA, TA CHANDUR BAZAR, Amravati, Maharashtra-444810', '9665694808', 1, 200, 1, 'uploads/signatures/772de255bfc8a44a691f4b08d79bc812.jpg', '2001-08-27 00:00:00', '2024-10-25 03:36:23'),
(191, 'Meetesh Mishra', 'Adhaar Card', '9862 6991 4300', '7268911131', 'meetesh.mishra99@gmail.com', 'Address :-: Durvesh Mishra, khurda madarpur, saraiyan belwar, Gaus Ganj. Hardoi, Gaus Ganj, Uttar Pradesh, 241305', '7268911131', 1, 6, 1, 'uploads/signatures/3c8b65e7f12d0bb5a2c8aecfa7f658b9.jpg', '2024-10-25 00:00:00', '2024-10-25 04:15:10'),
(192, 'Priyanshi Patel', 'Adhaar Card', '8008 8975 0108', '9131167020', 'ppriyanshi187@gmail.com', 'Address :-: Shyam Murari Patel, mediyaras, Mediyaras, Anuppur, Mediaras. Madhya Pradesh, 484224', '9131167020', 1, 0, 0, 'Not Signed', NULL, '2024-10-25 07:32:58'),
(193, 'Sanjib Niyogi', 'Driving License', 'WB/03/020/192470', '7872604789', 'sanjibneogislg@gmail.com', ' Address :-Congress Para 15 Kotali Jalpaiguri', '7872604789', 1, 265, 1, 'uploads/signatures/11e48b115119a8fa6588372fece49832.jpg', '2024-10-25 00:00:00', '2024-10-25 07:35:13'),
(194, 'ARINDAM CHAKRABORTY', 'Adhaar Card', '2679 5842 5145', '9641731661', 'Developerarindam2004@gmail.com', 'Address :-Talsagra Salna Talsagara Bankura West Bengal - 722206', '9641731661', 1, 0, 0, 'Not Signed', NULL, '2024-10-25 07:47:51'),
(195, 'Tirumani Jothsna', 'Adhaar Card', '5702 7517 9675', '9989337317', 'jyoshnabhanuc@gmail.com', ' Address :-7-1a, Matlam, Matlam, VTC: Matlam, PO: Matlam, District: Krishna, State: Andhra Pradesh, PIN Code: 521324,', '9989337317', 1, 0, 0, 'Not Signed', NULL, '2024-10-25 07:50:23'),
(196, 'Pratara Saho', 'Adhaar Card', '7239 3105 6561', '7606821828', 'prativasahoo717@gmail.com', ' Address :-AT TALAPADA\r\nPO-RANNARA Talaspand Odisha \r\n', '7606821828', 1, 0, 0, 'Not Signed', NULL, '2024-10-25 07:51:43'),
(197, 'Sivaramu Kannan Uma Maheswari', 'Adhaar Card', '5748 4208 7416', '9652252222', 'skbuma@gmail.com', ' Address :-D No 55-1-51/33, Pent House, Sanjay Delight Enclave, 3. R Nagar, Behind Military Cafe Hotel, Isukathota, Visakhapatnam (Urban), Visakhapatnam, Andhra Pradesh - 530022', '9652252222', 1, 0, 0, 'Not Signed', NULL, '2024-10-25 07:53:05'),
(198, 'Ashish Kumar Singh', 'Adhaar Card', '8862 8572 3647', '9559017590', 'a95829763@gmail.com', ' Address :-chaudhari toal, Suras, Alagatpur, Gorakhpur, Uttar Pradesh-273158', '9559017590', 1, 360, 1, 'uploads/signatures/57fa828cd326804d707fb7019fb67631.jpg', '2024-10-26 00:00:00', '2024-10-26 04:06:33'),
(199, 'Mohit Badal Sohite', 'Adhaar Card', '9260 9817 5689', '9699802415', 'mohitsohite81@gmail.com', 'Address :-Samarth bio plants nursery, Takali Dhokeshwar, Ahmadnagar, Maharashtra - 414304', '9699802415', 0, 431, 1, 'uploads/signatures/5aea69c5c8deaf4c131f0cc19b095dee.jpg', '2024-10-26 00:00:00', '2024-10-26 04:08:03'),
(200, 'SIDDHANTA PRADHAN', 'Driving License', '0019 20240000463', '6372824803', 'babasidhu54@gmail.com', ' Address :-Badagundar Debhuin Kaniha Angul Odisha, 788117', '6372824803', 1, 0, 0, 'Not Signed', NULL, '2024-10-26 04:09:20'),
(201, 'Sancheet Nitin Bhanushali', 'Adhaar Card', '9971 2161 8729', '9152207069', 'sancheetbhanusali1504@gmail.com', ' Address :-L.B.S.Marg, Behind Asha Petrol Pump. Flat No.3/4, Taximens Co-Op Housing Society, VTC: Kurla (West), District: Mumbai, State: Maharashtra, PIN Code: 400070,', '9152207069', 1, 0, 0, 'Not Signed', NULL, '2024-10-26 04:58:08'),
(202, 'Mavdiya Mahek Govindbhai', 'Adhaar Card', '9103 2001 3732', '9016200210', 'mahekmavdiya5151@gmail.com', ' Address :-Govindbhai, near ambedkar bhavan, Madhavpur, Porbandar, Gujarat, 362230', '9016200210', 0, 25, 1, 'uploads/signatures/48acb8c094b56872a0ac4b19ccc8ba78.jpg', '2024-10-26 00:00:00', '2024-10-26 04:59:23'),
(203, 'Mohit Lamba', 'Adhaar Card', '6180 2456 6864', '9682161304', 'mohitlamba067@gmail.com', 'Address:-705 Sec No 3 Vinayak\r\nNagar Muthi Jammu City - Jammu Muthi Jammu and Kashmir 181205', '9682161304', 1, 700, 1, 'uploads/signatures/b9a9976c1e6b307b799f83dc65d68c21.jpg', '2024-10-26 00:00:00', '2024-10-26 05:15:01'),
(204, 'Kavyashree', 'Adhaar Card', '4163 0906 3282', '9036382978', 'ks4127372@gmail.com', 'Address:-Srikantaiah,  Kotamaranahalli, Mylanayakanahalli, Mylanayakanhalli, Ramanagar, Channapatna, Karnataka, 562160', '9036382978', 1, 0, 0, 'Not Signed', NULL, '2024-10-26 05:17:40'),
(205, 'Sahana Banu', 'Adhaar Card', '69453854 0373', '7090011955', 'sb4886093@gmail.com', 'Address:-VIC Narsmalepal PO Naremandpo Dance Chikahakapur Sa Kamataka PIN Code: 561212 Mube 77009884', '7090011955', 1, 0, 0, 'Not Signed', NULL, '2024-10-26 06:42:46'),
(206, 'shaik Aslam ', 'Adhaar Card', '890399424483', '8688729138', 'skaslam3887@gmail.com', 'S/O: S K Shukur H No -8-88 Devar Yamjal  Shamirpet mandal Devaryamjal Deveryamjal Rangareddi Andhra Pradesh-500014', '8688729138', 1, 0, 0, 'Not Signed', NULL, '2024-10-27 03:38:22'),
(207, 'GOKULA SANTHOSH', 'Adhaar Card', '509553716750', '9133852713', 'gokulasantosh0@gmail.com', 'S/O: GOKULA NAGARAJU, 9-A/315,THATTI KHANA, R K NAGAR, Hayathanagar, Rangareddi, Andhra Pradesh- 500068', '9133852713', 1, 5, 1, 'uploads/signatures/8f4d5975a6ed4afb0af5312231c9cc89.jpg', '2024-10-28 00:00:00', '2024-10-27 03:42:27'),
(208, 'Kosnam Keerthi', 'Adhaar Card', '270662674853', '6300271180', 'keerthi93460@gmail.com', 'D/O: Kosnam Mahipal Reddy 25-201/2, sriram nagar Qutubullapur Rangareddi Andhra Pradesh- 500055', '6300271180', 1, 0, 1, 'uploads/signatures/b776ca96fd006ff64074ad5782784ef7.jpg', '2024-10-27 00:00:00', '2024-10-27 03:45:32'),
(209, 'Chirag Yadav', 'Adhaar Card', '693754790748', '9958213206', 'Raochirag650@gmail.com', 'C/O: Parmod Kumar Yadav B-172 Nandgram Ploice  Station Mariam Nagar Nandgram, Ghaziabad PO: Ghaziabad DIST: Ghaziabad, Uttar Pradesh- 201001', '9958213206', 0, 177, 1, 'uploads/signatures/58d78c76b56b16dea4f9e7a0628dde31.jpg', '2024-10-27 00:00:00', '2024-10-27 04:37:00'),
(210, 'Manish Chand', 'Adhaar Card', '21480488094', '8937989157', 'manishchand3215@gmail.com', 'S/O; Lalit Chand Bunga Masroli, Bhat Pitharagarh Uttarakhand- 262530', '8937989157', 1, 0, 0, 'Not Signed', NULL, '2024-10-27 04:53:22'),
(211, 'Manya Kotru', 'Adhaar Card', '225817421562', '9119995418', 'manyakotrukotru36@gmail.com', 'D/O: Ravinder Kotru Flat No. 405 G H 1 Fourth Floor Badal Apartment Sector 3 Vikas Nagar \r\nLucknow Vikas Nagar Uttar Pradesh- 226022', '9119995418', 0, 77, 1, 'uploads/signatures/46c2b3d243e94b53d5bf0133768f0444.jpg', '2024-10-27 00:00:00', '2024-10-27 04:58:49'),
(212, 'Amloravbermary Amuldoss ', 'Adhaar Card', '894585206197', '6384358547', 'mamalorpava595@gmail.com', 'D/O: Amuldoss 184/4, SEBASTHIYARNAGAR, Velankanni (tp) Nagapattinam, Tamil Nadu- 611111', '6384358547', 1, 14, 1, 'uploads/signatures/5996d1e1e9113cae542b29790ab01904.jpg', '2024-10-27 00:00:00', '2024-10-27 05:04:02'),
(213, 'Anagha B', 'Adhaar Card', '257850725839', '7736189665', 'anaghab21@gmail.com', 'D/O: Girish S Gopanandanam T C 9/2007 (6), Kovila Vilakam, Kochar Road Sasthamangalam P O, Thiruvanathapuram Thiruvanathapuram, Kerela -695010', '7736189665', 1, 0, 0, 'Not Signed', NULL, '2024-10-27 05:11:39'),
(214, 'Arthi K ', 'Adhaar Card', '287636208280', '9043886414', 'ka8506826@gmail.com', 'D/O: Kumar 4/4 wast street, Sirukalathur Sirkalathur Ariyalur, Tamil Nadu 621710', '9043886414', 1, 0, 0, 'Not Signed', NULL, '2024-10-27 05:14:15'),
(215, 'Komma Sai Prasuna    ', 'Adhaar Card', '2386 7435 1488', '7993683285', 'vhrushinivalleru123@gmail.com', '00, B kammapalli bommavaram, Bommavaram, Bommavaram, Cuddapah Andhra Pradesh, 516110\r\n ', '7993683285', 1, 44, 1, 'uploads/signatures/481a785dec73d5ba991fe409694923c2.jpg', '2024-10-27 00:00:00', '2024-10-27 06:02:07'),
(216, 'Dusi Vaishnavi', 'Adhaar Card', '7207 3176 6701', '8522849469', 'vaishnavidusi03@gmail.com', 'Address :-?? 11-3/A Durga Nagar Near Durgamamba Temple Naiduthota Pendurthi Pendurthy, Visakhapatnam. Andhra Pradesh-531173', '8522849469', 1, 343, 1, 'uploads/signatures/8a482e1d40d003cebcb4636cf146a68f.jpg', '2024-10-27 00:00:00', '2024-10-27 06:25:38'),
(217, 'Motepalli Satya Sai Sowjanya  ', 'Adhaar Card', '8067 5894 7268', '7993571048', 'saisowji312@gmail.com', 'D/O: Srinivasa Rao.3-280 gandhi bomma center Someswaram.East Godavari Andhra Pradesh-533261\r\n ', '7993571048', 1, 0, 0, 'Not Signed', NULL, '2024-10-27 06:55:56'),
(218, 'Sakshi Shrivastava ', 'Adhaar Card', '7680 7696 8403', '6386768515', 'srivastavasakshi1237@gmail.com', '124/66 D Block, govind nagar, Govind Nagar, Kanpur Nagar, Uttar Pradesh - 208006\r\n ', '6386768515', 1, 0, 0, 'Not Signed', NULL, '2024-10-27 07:27:16'),
(219, 'S GIRIDHAR RAO  ', 'Adhaar Card', '430202100333', '9014299429', 'sunilsahukari245@gmail.com', 'S/O: VENKATARAMANA 2-60, MUTTUVARI STREET UMILADA, UMILADA, HRA P\r\nSANTHABOMMALI SRIKAKULAM-532430\r\n ', '9014299429', 0, 133, 1, 'uploads/signatures/40e2550cc4ae8d2bee374300459ff4bf.jpg', '2024-02-07 00:00:00', '2024-10-27 07:33:59'),
(220, 'PILLA MONISH RAM', 'Driving License', 'AP01600358642018  ', '8801638074', 'monishram.pilla@gmail.com', '\r\n 9-35-28A I NARASIMHA RAO STREET KOTHAPETA, VIJAYAWADA, VIJAYAWADA URBAN KRISHNA-520001\r\n ', '8801638074', 1, 0, 0, 'Not Signed', NULL, '2024-10-27 07:46:51'),
(221, 'Suhana', 'Adhaar Card', '5928 9941 9239', '8884261171', 'suhana.a4500@gamil.com', '12th cross modi Road DJ Halli Bangalore North Bangalore Karnataka-560045\r\n ', '8884261171', 0, 53, 1, 'uploads/signatures/703077c804a1837e2efb3d67c78321bb.png', '2024-10-27 00:00:00', '2024-10-27 07:52:08'),
(222, 'Dhanyatha M  ', 'Adhaar Card', '5328 7355 7762', '7353109666', 'dhanyathamanjunath9@gmail.com', 'Dhanyatha M\r\nDID Manjunath E #465. Nele Niaya Subhash Nagara B Katiharti Hassan Hassan Alur Hassan Kamataka 573201\r\n ', '7353109666', 1, 700, 1, 'uploads/signatures/48e82bf76150dda421774fbd9a767e68.jpeg', '2024-10-28 00:00:00', '2024-10-27 08:13:14'),
(223, 'Atchayasri Ravichandran', 'Adhaar Card', '4490 7658 5475', '9361597183', 'atchayasriatchay6@gmail.com', 'NO 12/27, PANCHAYAT OFFICE BACKSIDE, DEVASTHANA VANAVASI, METTUR, Vanavasi, Salem, Tamil Nadu-636457', '9361597183', 1, 0, 0, 'Not Signed', NULL, '2024-10-27 08:44:58'),
(224, 'Shakti Kumar', 'Adhaar Card', '5216 8033 3625', '9634383006', 'justindhingiya@gmail.com', 'Address :-Janesh Kumar. Daha, Baghpat C. daha Uttar Pradesh-250611', '9634383006', 1, 700, 1, 'uploads/signatures/39845c8d06ecaada12cc8de90848aac9.jpg', '2024-10-28 00:00:00', '2024-10-28 06:06:42'),
(225, 'Akbar Rafik Shaikh', 'Adhaar Card', '2682 0940 5406', '9326021574', 'Akbarshaikh9594@gmail.com', ' Address :-A/11, Amru Appa Chawl, Saibaba Nagar, Kadamwadi Road, Muskan Hotel, Marol Pipe Line, Andheri (East), Mumbai, Maharashtra - 400059', '9326021574', 1, 0, 0, 'Not Signed', NULL, '2024-10-28 06:07:59'),
(226, 'Kandasamy Pandian A', 'Adhaar Card', '5712 5683 2124', '9597230011', 'Kandasamypandian86@gmail.com', 'SIO Arumugapandian, 6/6134, VeeraRaman Street, Neal Alar Klanpat: Mukku Alampat, Viruchunagar, PC: Vrudhunagar, DIST: Vu Tamil Nack-626001', '9597230011', 1, 0, 0, 'Not Signed', NULL, '2024-10-28 06:17:21'),
(227, 'Chintala Praveen Kumar Reddy', 'Adhaar Card', '7817 1809 1217', '8008131348', 'Chintalapraveen6@gmail.com', 'C/O: Late C Dwarakanadha Reddy, 3-27. Matlivari Palli, VTC: Diguvuru, PO: Yegavuru, Sub District: Chinnagottigallu, District: Tirupati, State: Andhra Pradesh, PIN Code: 517194,', '8008131348', 1, 8, 1, 'uploads/signatures/677d47adc530f42477ef09ee1709af4d.jpg', '2024-10-28 00:00:00', '2024-10-28 06:19:57'),
(228, 'Asif Ansari', 'Adhaar Card', 'GHF6911416', '6204718946', 'aansari05917@gmail.com', 'Address: 54, QABRISTAN ROAD, GARH HUSIR, HUSIR, KANKE, RANCHI, JHARKHAND-834006', '6204718946', 1, 35, 1, 'uploads/signatures/25d2e29db77e9636c109c664b5e6aef2.jpg', '2024-10-28 00:00:00', '2024-10-28 06:21:37'),
(229, 'Lašky Lokesh', 'Adhaar Card', '9316 5856 9047', '7569120719', 'lokeshlakky3@gmail.com', ' Address :-15-8-110chakarigunta muku rod VTC Guru PO: Guntur Ban District Guntur Bude Andres Pradesh PIN Code: 522003,', '7569120719', 1, 2, 1, 'uploads/signatures/6ebac5aebec4db2ad02da71438a7451f.jpg', '2024-10-28 00:00:00', '2024-10-28 07:04:26'),
(230, 'Monika Ramesh', 'Select Id Type', '', '7845685284', 'deenadayalanmonika@gmail.com', ' Address :-Krishnan Street, AAA College Backside, Ganapathy Nagar, Anandhalai, Vellore,Tamil Nadu 632513', '7845685284', 1, 145, 1, 'uploads/signatures/5bd73fedd7cddb0dbc5cef6b9a1f0c20.jpg', '2024-10-28 00:00:00', '2024-10-28 07:11:46'),
(231, 'Saurabh Yadav', 'Adhaar Card', '', '7897546429', 'ysaurabh252@gmail.com', 'Address :-Ram Gopal Yadav, bhavanikhera, terha, post bara, Unnao, Unnao, Uttar Pradesh, 209801', '7897546429', 1, 8, 1, 'uploads/signatures/2aaec3ffb7e3c453d5ebf6a7fa6ba8a5.jpeg', '2024-10-28 00:00:00', '2024-10-28 07:36:00'),
(232, 'Pavithra Manimaran', 'Adhaar Card', '4788 4487 4455', '9677572163', 'pavidineshram1994@gmail.com', 'Address:-2/57. Renuga Devi Kovil Big Street. Athipalayam, VTC: Coimbatore North, PO: Athipalayam, District: Coimbatore, State: Tamil Nadu, PIN Code: 641110', '9677572163', 1, 0, 1, 'uploads/signatures/e9c263df74ef687cc7f9394bf82f72ed.png', '2024-10-28 00:00:00', '2024-10-28 09:27:55'),
(233, 'Mehnaz Bano', 'Adhaar Card', '7512 0499 5320', '916006875264', 'mehnazb868@gmail.com', ':-Quil Muqam, Koyal Mukam.\r\n\r\nBandipore.\r\n\r\nJammu and Kashmir 193502', '916006875264', 0, 351, 1, 'uploads/signatures/26aefcf5b4b1d0bc924decf5dd8c4269.jpg', '2024-10-28 00:00:00', '2024-10-28 09:51:25'),
(234, 'Dummu Raju Kumar', 'Adhaar Card', '9162 0402 6086', '9177301568', 'dummuraju18@gmail.com', 'S/O Ramarao, 3-113, K Matchelesam, main road, K Matchelesam, d matchelesam, Srikakulam, Andhra Pradesh-532408', '9177301568', 1, 0, 0, 'Not Signed', NULL, '2024-10-28 11:51:57'),
(235, 'Piyush Dilip Sharma', 'Adhaar Card', '6832 8343 9005', '9689822507', 'piusharma0036@gmail.com', 'Address: S/O: Dilip Sharma, Plot No. 143, Chandmari Mandir, Near Sanjay Kriana Store, Jay Ganga Maa So Mehar Nagar, Wathoda Layout, Bhandewadi, Nagpur, Maharashtra, 440008', '9689822507', 1, 700, 1, 'uploads/signatures/eb6d3a404ddbb8f6318bf39ec05b7656.jpg', '2024-10-28 00:00:00', '2024-10-28 13:52:29'),
(236, 'Md. Zishan', 'Adhaar Card', '463044680609', '7970443584', 'mdzishan3217@gmail.com', 'S/O: Md.Usman, Majhaulia, Muzaffarpur, Bihar- 843104', '7970443584', 1, 21, 1, 'uploads/signatures/474f1636b6150bd371aa21a69d0c6cf6.jpg', '2024-10-29 00:00:00', '2024-10-29 04:04:05'),
(237, 'Allu Vasavi Swapna Sandya', 'Adhaar Card', '457784573331', '8309934146', 'vasaviallu2@gmail.com', 'D/O: Venkateswara Rao 3-93 Vadali Vadali Mudinepalle Krishna Andhra Pradesh 521325', '8309934146', 1, 700, 1, 'uploads/signatures/fe41c54bcd6dbe953f12f81a5f6d4ade.jpg', '2024-10-09 00:00:00', '2024-10-29 04:07:51'),
(238, 'Taki Mani', 'Adhaar Card', '671500533092', '9063651238', 'tekinani999@gmail.com', 'D/O: Venkataramana, 5157/2 pamarru mandalam, VTC: Pamarru, District East Godavari State: Andhra Pradesh- 533305', '9063651238', 1, 0, 0, 'Not Signed', NULL, '2024-10-29 04:35:21'),
(239, 'SAJIN JOHN', 'Driving License', '2/12034/2017', '8086413516', 'johnanitha769@gmail.com', 'Address: EARIYA KUNNATH HOUSE NEDIYAVILA, HARIHARAPURAM PO AYIROOR, VARKALA 695310', '8086413516', 1, 0, 0, 'Not Signed', NULL, '2024-10-29 04:37:21'),
(240, 'Getshyeal Danieal', 'Adhaar Card', '9231 2651 9655', '6384551436', 'manojeni72@gmail.com', 'D/O Danieal 84/91 KANNAGI STREET St.thomas Mount St. thomas Mount Alandur Karicheepuram', '6384551436', 1, 56, 1, 'uploads/signatures/12b49fcdbd58509640142a6ea16dc597.jpg', '2024-10-29 00:00:00', '2024-10-29 04:38:17'),
(241, 'Vipul Vishwakarma', 'Adhaar Card', '4323 8531 0098', '9305990629', 'vishwakarmavipul452@gmail.com', 'S/O: Ramnaresh Vishwakarma, gram madanpatti, post pasipur, thana kaptanganj, tahsil burhanpur, Bansi Japti Mafi, Azamgarh, Uttar Pradesh - 276141', '9305990629', 1, 0, 0, 'Not Signed', NULL, '2024-10-29 05:36:42'),
(242, 'Aasmin', 'Adhaar Card', '2491 4573 5629', '8130139610', 'Aasminkhatoon473@gmail.com', 'Address :-Nilathi, West Delhi, Delhi-110041', '8130139610', 1, 0, 0, 'Not Signed', NULL, '2024-10-29 06:02:41'),
(243, 'Daohipaia Chyrmang', 'Adhaar Card', '6415 8211 1579', '9366183263', 'zhyrmangdao3@gmail.com', 'C/O: Holone Pakem, 35, Mulait Sumer, East Jaintia Hills, Meghalaya - 793200', '9366183263', 1, 7, 1, 'uploads/signatures/fbcd0415742b7ff2c1b106f3ff466b20.jpg', '2024-10-29 00:00:00', '2024-10-29 06:05:12'),
(244, 'Madhu Rani', 'Adhaar Card', '2691 0147 8908', '7404977428', 'madhu74049@gmail.com', 'D/O: Devi Lal, Village Dhani Kumharan, Moth\r\nRangran (88), Hisar, Haryana 125039', '7404977428', 1, 700, 1, 'uploads/signatures/7d9dc508849aa1028d215c66c188fc3a.jpg', '2024-10-29 00:00:00', '2024-10-29 06:07:14'),
(245, 'Pritam Maarndi', 'Adhaar Card', '54790762 8974', '9142373349', 'pritammarandi692@gmail.com', 'Address:-vill-gujisimal ps-shikaripara, Muraam, Dumka, Gugisimal,\r\nJharkhand, 814119', '9142373349', 1, 50, 1, 'uploads/signatures/79f763df3c3d50076c2835d1c7cda599.jpg', '2024-10-29 00:00:00', '2024-10-29 06:40:47'),
(246, 'Govind Chauhan', 'Adhaar Card', '3616 6727 6545', '9760305406', 'creativeartfzbd@gmail.com', 'Address :-303. Sector No 1. Suhag Nagar, Firozabad. Firozabad Uttar Pradesh-283203', '9760305406', 1, 0, 0, 'Not Signed', NULL, '2024-10-29 06:43:34'),
(247, 'harshalraj Mishra', 'Adhaar Card', '822283476596', '822283476596', 'harshalrajmishra@gmail.com', 'S/O: Harishchandra Mishra 3.83 lohai  road Farrukhabad, Farrukhabad, Uttar Pradesh- 209625', '822283476596', 1, 2, 1, 'uploads/signatures/04aeeda9336295a34e26cd3af48c466f.jpg', '2024-10-30 00:00:00', '2024-10-30 03:28:46'),
(248, 'sachin Kumar ', 'Adhaar Card', '7470 9690 6435', '7292929457', 'kumarsachinchandaravansi@gmail.com', ' Address :-raudha mouh tenri gourau Gaya Bihar', '7292929457', 1, 20, 1, 'uploads/signatures/c5196d6b3f98554bc9937e27df62ab86.jpg', '2024-10-30 00:00:00', '2024-10-30 04:11:57'),
(249, 'Sangita Das Mondal', 'Adhaar Card', '7999 2498 3627', '7679621571', 'Sangita0302.das@gmail.com', ' Address :-Panchmaro Pratappur, Paschim Medinipur\r\nWest Bengal-721212\r\n', '7679621571', 1, 0, 0, 'Not Signed', NULL, '2024-10-30 04:15:26'),
(250, 'Shruti Patil', 'Adhaar Card', '7721 1916 7061', '7349191554', 'shrutheepatil89@gmail.com', ' Address :-W/O: Mahadev, No 334, Patil Galli, Krishna Kittur, Krishna Kittur, Krishna Kittur, Belgaum, Athani, Karnataka, 591303', '7349191554', 1, 0, 1, 'uploads/signatures/fa97007395a3bfc7eb59ac71275dc150.jpg', '2024-10-30 00:00:00', '2024-10-30 04:22:28'),
(251, 'Unnam Rajya Lakshmi', 'Adhaar Card', '5413 4013 9131', '6309922348', 'Unnamrajyalakshmi9988@gmail.com', ' Address :-D/O Nagaiah 19-142/3 Kolluru Kolluru KOLLURU Guntur Andhra Pradesh - 522324', '6309922348', 1, 0, 0, 'Not Signed', NULL, '2024-10-30 04:24:36'),
(252, 'sagar Lahu Rathod', 'Adhaar Card', '589234134623', '7385258398', 'rathodsagar9509@gmail.com', 'Antaravali BK, Beed Maharashtra, 431127', '7385258398', 1, 167, 1, 'uploads/signatures/fe431c022cc46d1f0892eca5cf48a0dd.jpg', '2006-04-05 00:00:00', '2024-10-30 04:27:37'),
(253, 'Asma', 'Adhaar Card', '3833 9901 2885', '8955524147', 'asmakhxn1828@gmail.com', ' Address :-Mohammed Sameer, 174, Shiv Mandir Hasanpura -A, VTC: Jaipur, PO: Ajmer Road, Sub District: Jaipur, District: Jaipur, State: Rajasthan, PIN Code: 302006', '8955524147', 1, 0, 0, 'Not Signed', NULL, '2024-10-30 04:30:26'),
(254, 'Vanshika', 'Adhaar Card', '8338 3696 1815', '9084200403', 'svansu887@gmail.com', 'Address :-Trick Chand, Mirzapur Saba?????, Uttar Pradesh-247451', '9084200403', 1, 0, 0, 'Not Signed', NULL, '2024-10-30 04:41:48'),
(255, 'Revathi S', 'Adhaar Card', '8420 3175 9216', '6282364328', 'revur7879@gmail.com', 'Address :-VTC: Ayiloor, PO: Ayalur, \r\nSub District: Chittur, District: Palakkad, State: Kerala. PIN Code: 678510', '6282364328', 1, 7, 1, 'uploads/signatures/29e3a9e34dd594e08cefe57489c39ac8.jpg', '2024-10-30 00:00:00', '2024-10-30 05:10:12'),
(256, 'Shijo Kunjumon', 'Adhaar Card', '31484059 7204', '9497317065', 'shijokunjumon22@gmail.com', 'Address :-S/O Kunjumon, House\r\nNo-4, Second Floor, Panchsheel Vihar, Malviya Nagar, South Delhi, Delhi-110017', '9497317065', 1, 700, 1, 'uploads/signatures/aa8075aad5b970c7dea95c0c84bef54e.jpeg', '2024-10-30 00:00:00', '2024-10-30 05:21:46'),
(257, 'Dimple', 'Adhaar Card', '7172 2842 1222', '8570949236', 'Manishk0387@gmail.com', 'SMQ621/12 lohegaon pune', '8570949236', 1, 8, 1, 'uploads/signatures/59aebcada9558ef3d673347b0fc4ad89.jpg', '2024-10-30 00:00:00', '2024-10-30 08:32:04'),
(258, 'Krithika Krishnan k', 'Adhaar Card', '605865628872', '8088942656', 'yamunakrishnan079@gmail.com', 'N Krishnan, \r\nt k road 1st cross, near eswara temple, m m compound, Bhadravati, Shimoga, Karnataka \r\n', '8088942656', 1, 700, 1, 'uploads/signatures/001d9474cee6fa99246bea0573133df7.jpg', '2024-10-30 00:00:00', '2024-10-30 08:40:39'),
(259, 'Shahnaj Delawar Shaikh', 'Adhaar Card', '6505 2111 4997', '9702298093', 'shehnazshaikh9274@gmail.com', 'Behind Sarvodaya Hospital,\r\n\r\nroom no-A/69, Ekta Mitra Mandal, bhim nagar, L.B.S marg,\r\n\r\nVTC: Ghatkopar (West), District: Mumbai(Sub Urban),\r\n\r\nState: Maharashtra,\r\n\r\nPIN Code: 400086', '9702298093', 1, 700, 1, 'uploads/signatures/faaeccc20872a55ddd548df15c6a7add.jpg', '2024-10-30 00:00:00', '2024-10-30 08:42:54'),
(260, 'Mohammed Arman', 'Adhaar Card', '59100707 0862', '8310863197', 'assu23706@gmail.com', 'Address:-S/O: Muzammil 4th\r\nCross Left Side JC Nagara Shimoga Shimoga Karnataka-577201', '8310863197', 1, 0, 0, 'Not Signed', NULL, '2024-10-30 11:34:12'),
(261, 'Ganesh Raghava Chinta', 'Adhaar Card', '69188614 8497', '7416915035', 'chinaganesh2000@gamil.com', 'Address:-Chinta Madhava Rao, 1-4-186/13, Maszid Street, Police Colony, Vijayawada (Urban), Krishna, Andhra Pradesh-520012', '7416915035', 1, 230, 1, 'uploads/signatures/ca72df46513214f5d931e6bad9bb296d.jpeg', '2024-10-30 00:00:00', '2024-10-30 12:05:52'),
(262, 'Santhya V', 'Adhaar Card', '89523862 2882', '7510150683', 'santhyav0683@mail.com', 'Address:-D/O Mohanan, S M Villa, Kovoor, Arinalloor PO, Thevalakkara, Kollam, Arinallur, Kerala, 690538', '7510150683', 1, 43, 1, 'uploads/signatures/a62455d2079f3a2188b67649c6816499.jpg', '2024-10-30 00:00:00', '2024-10-30 12:07:09'),
(263, 'Aditya Balasaheb Shinde', 'Adhaar Card', '582123935275', '9145620637', 'adityashinde2044@gmail.com', 'S/O Balaso Kisan Shinde, Landagoba Mal, Murum, Pune, Maharashtra -412306', '9145620637', 1, 0, 0, 'Not Signed', NULL, '2024-10-31 06:03:28'),
(264, 'VadlamurI Durga Prasad', 'Election Card', 'UDI2278018', '9603550683', 'vadlamuri960@gmail.com', 'Rajemendry y junction\r\nName : VadlamurI Durga Prasad\r\nPIN CODE : 533101', '9603550683', 1, 40, 1, 'uploads/signatures/3553d904b20dca8538223ae5336466ab.jpg', '2024-12-31 00:00:00', '2024-10-31 09:58:52'),
(265, 'Apurba Lahan', 'Adhaar Card', '2749 7544 5678', '7896383567', 'lahanapurba668@gmail.com', 'Address:-C/O: Akan Lahan, Jahamari,\r\nPO: Thelamara, DIST: Sonitpur, Assam-784149', '7896383567', 1, 0, 0, 'Not Signed', NULL, '2024-11-02 07:03:31'),
(266, 'Apurba Lahan', 'Adhaar Card', '2749 7544 5678', '7896383567', 'lahanapurba668@gmail.com', 'C/O: Akan Lahan, Jahamari, PO: Thelamara, DIST: Sonitpur, Assam-784149', '7896383567', 1, 0, 0, 'Not Signed', NULL, '2024-11-02 07:54:19'),
(267, 'SONALI DAS', 'Adhaar Card', '762885648144', '9241172370', 'rooprajkumar809@gmail.com', 'BUDHA SUKANTA PALLYU BARDDHAMAN, Asanol MC, Bardhaman, West Bengal - 713301', '9241172370', 1, 1, 1, 'uploads/signatures/6952587a2d227aedd5aedeecb6a53062.png', '2024-11-03 00:00:00', '2024-11-03 04:06:58'),
(268, 'Dipali Vijay Waghmare ', 'Adhaar Card', '574539453909', '8888431377', 'deepaliwaghmare97877@gmail.com', 'banful niwas dighi road jain mandir samor, behind gajanan medikal, pune city, pune,\r\nMaharashtra- 411039', '8888431377', 1, 700, 1, 'uploads/signatures/1f477129f342fa808ec6aaa1f49f0d69.jpg', '2024-11-03 00:00:00', '2024-11-03 04:24:34'),
(269, 'Anil Kumar Yadav', 'Adhaar Card', '2583 2459 8599', '8434855632', 'anilkumaryadav131664@gmail.com', ' Address :-S/O: Chan S/O: Chandeshwar Yadav, sikta gaw West Champaran, Bihar - 845307', '8434855632', 1, 2, 1, 'uploads/signatures/c17b93ef1e9031d38442e97f4ef20dc2.jpg', '2024-11-03 00:00:00', '2024-11-03 04:38:11'),
(270, 'Pilsrang R Marak', 'Adhaar Card', '5351 5034 5098', '6009171120', 'pilsrangoffcials@gmail.com', 'Address :-Watjeng Ch Marak, TEBRONGGRE, Tebronggre, West Garo Hills, Meghalaya 794002', '6009171120', 1, 700, 1, 'uploads/signatures/b6778d1f99bd37e22dd78e6548dead0d.jpg', '2024-11-03 00:00:00', '2024-11-03 04:40:09'),
(271, 'Prakash Barik', 'Adhaar Card', '8589 1882 3953', '9178533468', '1996prakashbarik@gmail.com', 'Address: S/O Saroj Barik, AT-Dumuka, PO-Dumuka, Dumuka, Kendrapara, Odisha, 754213', '9178533468', 1, 0, 0, 'Not Signed', NULL, '2024-11-03 04:54:00'),
(272, 'Addala Harinadh', 'Adhaar Card', '9461 3073 1538', '7842466834', 'addalaharinadh@gmail.com', ' Address :-Addala Govindh Rao, 5-14-1, gavara veedhi, near MRO office, Vizianagaram, Andhra Pradesh, 535001', '7842466834', 1, 700, 1, 'uploads/signatures/effb03cce9b46c3e45d8382fd92091f8.jpeg', '2024-11-03 00:00:00', '2024-11-03 04:55:57'),
(273, 'Rajat Tripathi', 'Adhaar Card', '6458 6317 0399', '8853971009', 'rajattripathi212207@gmail.com', 'S/O Krishan Mohan Tripathi, makan no.123. katra nagar, Manjhanpur, Kaushambi, Uttar Pradesh-212207', '8853971009', 0, 0, 1, 'uploads/signatures/1c0344887aab092bb80fa7ee2b9b89bf.jpg', '2024-11-03 00:00:00', '2024-11-03 04:58:28'),
(274, 'DILIP SHARMA', 'Adhaar Card', '5594 5508 9733', '8828447926', 'dilipkumarji9726@gmail.com', 'S/O: Pramod Sharma, graam-Nonar po- chhewari, Nonar, PO: Chhewari, DIST: Kaimur (Bhabua), Bihar - 821110', '8828447926', 0, 13, 1, 'uploads/signatures/517a687076c9f58352bd48cd5113b4ea.jpg', '2024-11-03 00:00:00', '2024-11-03 05:02:25'),
(275, 'Jitendr Verma', 'Adhaar Card', '2746 4793 5961', '8423293282', 'vermajitendr1222@gmail.com', 'S/O: Atmaram Verma, Chelra, Jhansi, Uttar Pradesh - 284303', '8423293282', 1, 0, 0, 'Not Signed', NULL, '2024-11-03 05:36:14'),
(276, 'Harshdeep Singh', 'Adhaar Card', '8603 8013 7367', '8607300353', 'Harshmithri5@gmail.com', ' Address :-Dheera Singh, Mithri (304),\r\nSirsa, Haryana-125104', '8607300353', 0, 6, 1, 'uploads/signatures/dd64fe582318aadf7e13548fde6e41d3.jpg', '2024-11-03 00:00:00', '2024-11-03 05:37:36'),
(277, 'Rutuja Suhas Kashid', 'Adhaar Card', '4455 5736 2748', '8459765537', 'rutujakashid03@gmail.com...', 'D/O: Suhas Kashid, Bhoi Galli, Aurad (sha), Latur, Maharashtra-413522', '8459765537', 1, 0, 0, 'Not Signed', NULL, '2024-11-03 06:00:41'),
(278, 'Aditya', 'Adhaar Card', '3130 3488 9708', '9266428979', 'ak0885285823@gmail.com', 'S/O: Om Prakash, D-33, Gali NO.-2, Dass Garden, Bapraula, West Delhi,', '9266428979', 0, 135, 1, 'uploads/signatures/cccd035f2df9420a4d597e00922620bf.jpg', '2024-11-03 00:00:00', '2024-11-03 06:11:35'),
(279, 'Shaikh Mujahed Shaikh Akbar', 'Adhaar Card', '4486 4755 2731', '9156323242', 'Mujju262005@gmail.com', 'S/O: Shaikh Akbar, Syed Ali Nagar, Mohammadiya Colony, VTC: Bid, PO: Beed, Sub District: Bid, District: Beed. State: Maharashtra, PIN Code: 431122.', '9156323242', 1, 6, 1, 'uploads/signatures/fd46ced8d6c0c7f3941cec40c0da98bc.jpg', '2024-11-03 00:00:00', '2024-11-03 06:14:25'),
(280, 'Sonika S', 'Adhaar Card', '7142 0186 7033', '6361222026', 'jeevangowdasc@gmail.com', ' Address :-Chandra Shekar S, Kasaba Hobli Mandya Taluk, VTC: Sathanur, PO: Sathnur, District: Mandya, State: Karnataka, PIN Code: 571402', '6361222026', 1, 700, 1, 'uploads/signatures/74e74d52430c680f522fc5ace8f602cd.jpg', '2024-11-03 00:00:00', '2024-11-03 06:47:40'),
(281, 'Rohit Ahuja', 'Adhaar Card', '6298 0196 7932', '8595081953', 'gkrohitahuja01@gmail.com', ' Address :-S/O: Deepak Ahuja, R ZA-71, NEAR BANI CAMP, JAI VIHAR, PHASE 1, NAJAFGARH, Dichaon Kalan, PO: Dichaun Kalan, DIST: South West Delhi, Delhi 110043', '8595081953', 0, 36, 1, 'uploads/signatures/a17cbfa5617c22c99315e18385410d1a.jpg', '2024-11-03 00:00:00', '2024-11-03 06:49:10'),
(282, 'Azmeera Meghana', 'Adhaar Card', '9038 5012 4782', '9390444813', 'Meghanaazmeera@gmail.com', ' Address :-5-266/2, VEERLAPALLE, VENKATAPUR, Laxmidevipeta, PO: Laxmidevipet, DIST:\r\nWarangal, Andhra Pradesh - 506345', '9390444813', 1, 0, 0, 'Not Signed', NULL, '2024-11-03 06:50:31'),
(283, 'Mohammed Ibrahim Ahmed', 'Adhaar Card', '2458 2437 9334', '9731068026', 'shaikibrahimah@gmail.com', 'S/O: Mohammed Shafi Ahmed, ? ?? 7-875, Darga Road, Near Hussain Bowll, Naya Mohalla VTC: Gulbarga, PO: Gb N Gunj. Sub District: Afzalpur, District: Kalaburagi. State: Kamataka, PIN Code: 585104. Mobile: 9845277597', '9731068026', 1, 22, 1, 'uploads/signatures/2b74b2a5812a5174d330228c005d34b1.jpeg', '2024-11-03 00:00:00', '2024-11-03 09:55:03'),
(284, 'Farhana M', 'Adhaar Card', '3155 8182 7300', '9043004607', 'farhananpm17@gmail.com', 'D/O Mohamed Iqbal, 5..2 KOTHBA PALLI THERU, VTC: Nellikuppam(Tp), PO: Nellikuppambazaar District: Cuddalore, State: Tamil Nadu, PIN Code: 607105,', '9043004607', 1, 0, 0, 'Not Signed', NULL, '2024-11-03 09:56:41'),
(285, 'Shakti Kumar', 'Adhaar Card', '5216 8033 3625', '919634383006', 'justindhingiya@gmail.com', 'Address :-Janesh Kumar. Daha, Baghpat C. daha Uttar Pradesh-250611', '919634383006', 1, 2, 1, 'uploads/signatures/9ef444c619470f154ca75793611148ff.jpg', '2024-11-03 00:00:00', '2024-11-03 11:09:57'),
(286, 'DIPAK KAMBLE', 'Adhaar Card', '596523234342', '9146123458', 'dipakkamble.000358@gmail.com', 'Shantiram namdev kamble \r\nAt post . Kalamba mahali \r\nTa dist : washim \r\n444505', '9146123458', 1, 2, 1, 'uploads/signatures/9819b2d5205e84f4d15b0a7e92c300fa.jpg', '2024-11-04 00:00:00', '2024-11-04 05:27:15'),
(287, 'Safiya', 'Adhaar Card', '282437959058', '9961731937', 'Safiyasafiyas235@gmail.com', 'Sadik ME , pallikkal house , mampad , kizhakkencheri po,  \r\nDist : palakkad \r\nKerla , 678684', '9961731937', 1, 0, 0, 'Not Signed', NULL, '2024-11-04 05:31:04'),
(288, 'Thouti arun kumar', 'Adhaar Card', '924633255835', '919701506754', 'thoutiarun@gmail.com', 'Venkanna 2-88/2 , 6 ward , kalleda , warangal , telangana , 506369', '919701506754', 1, 0, 0, 'Not Signed', NULL, '2024-11-04 06:11:53'),
(289, 'Yuvaraj', 'Adhaar Card', '8019 9354 4429', '919629761159', 'yuvaraj422001@gmail.com', 'S/O Murugan 12 MANAVASI ARAVANAMPETT?? Manavasi Karur Tamil Nadu -639108', '919629761159', 1, 700, 1, 'uploads/signatures/883e1954fc0526ae9d94380ff22977a3.jpg', '2024-11-05 00:00:00', '2024-11-04 06:17:03'),
(290, 'Arjun', 'Adhaar Card', '872819423355', '919065669568', 'arjun6038380@gmail.com', 'S/O: Shri Bhagwan, House\r\nno-E-74, street no-4, behind pandit palace,\r\ntirkha colony, Ballabgarh, Ballabgarh,\r\nFaridabad, Haryana, 121004', '919065669568', 1, 0, 0, 'Not Signed', NULL, '2024-11-04 06:19:07'),
(291, 'Krithika Krishnan k', 'Adhaar Card', '605865628872', '808894', 'yamunakrishnan079@gmail.com', 'N Krishnan, \r\nt k road 1st cross, near eswara temple, m m compound, Bhadravati, Shimoga, Karnataka \r\n', '808894', 1, 3, 1, 'uploads/signatures/1b76ae1e27dc1abec65cdb9a39b7c4c4.jpg', '2024-11-04 00:00:00', '2024-11-04 09:30:10'),
(292, 'Rajeev Ranjan Singh', 'Adhaar Card', '2774 1234 6508', '919123267565', 'Rajeevranjansingh8290@gmail.com', 'Santosh Kumar Singh, ward-10, near patodhi kali mandir, patodhi, Semaria, Bhagalpur, Bihar, 813129', '919123267565', 1, 45, 1, 'uploads/signatures/395bc96e9f0196bc94f5ec4b1992810f.jpg', '2024-11-04 00:00:00', '2024-11-04 10:06:37'),
(293, 'DEV PRAKASH KARUA', 'Adhaar Card', '3047 5964 3706', '916372052520', 'devprakashkarua107@gmail.com', 'H KARUA\r\n7/11/2016\r\nA43 SECTOR-17\r\nROURKELA\r\nRaurkela (M)\r\nRourkela -3\r\nRaurkela (m) Sundergarh\r\nOdisha 769003', '916372052520', 1, 0, 0, 'Not Signed', NULL, '2024-11-04 10:08:35'),
(294, 'Malli kavya ', 'Adhaar Card', '3642 8824 0457', '919618551210', 'kavyamalli210@gmail.com', 'Yachavaram Nellore Andhra Pradesh-524405', '919618551210', 1, 0, 0, 'Not Signed', NULL, '2024-11-05 07:58:55'),
(295, 'Arokya Mary F', 'Adhaar Card', '8853 3716 2004', '918088395082', 'sunisunitha3634@gmail.com', 'PO: Narasimha Raja Mohalla, Sub District: Mysore. District: Mysuru, State: Karnataka,\r\n\r\nPIN Code: 570007', '918088395082', 1, 0, 0, 'Not Signed', NULL, '2024-11-05 08:00:33'),
(296, 'Shahnaj Delawar Shaikh', 'Adhaar Card', '6505 2111 4997', '528644', 'shehnazshaikh9274@gmail.com', 'Behind Sarvodaya Hospital, room no-A/69, Ekta Mitra Mandal, bhim nagar, L.B.S marg,\r\nVTC: Ghatkopar (West), District: Mumbai(Sub Urban), State: Maharashtra, PIN Code: 400086', '528644', 1, 2, 1, 'uploads/signatures/e2c5753bda04047b7feedb0c3e514900.jpg', '2024-11-05 00:00:00', '2024-11-05 10:36:36'),
(297, 'Arokya Mary F', 'Adhaar Card', '88533716 2004', '8088395082', 'sunisunitha3634@gmail.com', 'Address:-#4336, 8th Cross, Gandhi Nagar VTC: Mysore, PO: Narasimha Raja Mohalla, Sub District: Mysore. District: Mysuru, State: Karnataka,PIN Code: 570007', '8088395082', 1, 5, 1, 'uploads/signatures/0177435e88f2ced8ba50a39c16476cd0.jpg', '2024-11-05 00:00:00', '2024-11-05 10:57:04'),
(298, 'Rekha Devi', 'Adhaar Card', '6235 6367 7357', '8114417671', 'nikhilswami699@gmail.com', 'Address: dress:\r\nW/O: Vinod Swami, 33, Pujariyo ka mohallA Mandi, Mandi, Jaipur, Rajasthan-303005', '8114417671', 1, 29, 1, 'uploads/signatures/dc0ed3fde013a92dd8835189278e58d2.jpg', '2024-11-06 00:00:00', '2024-11-06 05:06:09'),
(299, 'Gurleen Kaur', 'Adhaar Card', '4685 8523 6207', '9814441951', 'gurleenn1994@gmail.com', ' Address :-Surinder Pal Singh, H.NO. 803, STREET NO. 10, TRIPURI TOWN, Patiala, PO:\r\nPatiala, DIST: Patiala, Punjab - 147001', '9814441951', 1, 44, 1, 'uploads/signatures/aba8278e468b8619d67cb4718f1cf982.jpeg', '2024-11-07 00:00:00', '2024-11-06 10:13:20'),
(300, 'Ganga S Nair', 'Adhaar Card', '6779 0245 7027', '7306530183', 'gangaaleshmi99@gmail.com', 'C/O: Sreedevi O, Sreemani Mandhiram Mele Koppam, Vithura P O, Tholicode, Thiruvananthapuram, Kerala - 695551', '7306530183', 1, 0, 0, 'Not Signed', NULL, '2024-11-06 10:58:42'),
(301, 'Akhil Mohanan', 'Adhaar Card', '7981 6192 8052', '9207927564', 'akhilmohanan619@gmail.com', ' Address :-Surinder Pal Singh, H.NO. 803, STREET NO. 10, TRIPURI TOWN, Patiala, PO:\r\nPatiala, DIST: Patiala, Punjab - 147001', '9207927564', 1, 67, 1, 'uploads/signatures/2b43adc41c89f2a8ce366d73d3305955.jpg', '2024-11-06 00:00:00', '2024-11-06 11:01:48'),
(302, 'Sonika S', 'Adhaar Card', '7142 0186 7033', '636122', 'jeevangowdasc@gmail.com', ' Address :-Chandra Shekar S, Kasaba Hobli Mandya Taluk, VTC: Sathanur, PO: Sathnur, District: Mandya, State: Karnataka, PIN Code: 571402', '636122', 1, 2, 1, 'uploads/signatures/22264754829507fce344fed05c20bcd1.jpg', '2024-11-06 00:00:00', '2024-11-06 12:01:51'),
(303, 'Kapil Panwar', 'Adhaar Card', '3835 5858 5252', '8058587979', 'Kapiltailr786@gmail.com', 'S/O Mohan Lal Panwar, AKHADE KI GALI, Jhairapatan, Jhalawar,', '8058587979', 0, 141, 1, 'uploads/signatures/3ea872eabda4e7f025e8701b7fc8bd4e.jpg', '2024-11-07 00:00:00', '2024-11-07 04:55:14'),
(304, 'Ankit Verma', 'Adhaar Card', '3995 3383 5906', '8433402067', 'ankitverma81266@gmail.com', 'Address: S/O: Ram Sevak, House Number-38/466, Nagla Budi, Agra, New Agra, Uttar Pradesh, 282005', '8433402067', 0, 168, 1, 'uploads/signatures/2e9efc3e8c60ef0ac2ab790ae6213b1e.jpg', '2024-11-07 00:00:00', '2024-11-07 06:07:54'),
(305, 'Mamon Das', 'Adhaar Card', '602526616583', '9614325227', 'mamondas1997@gmail.com', 'MAMON DAS\r\nC/O Lakhan Das\r\n62, Subhas Nagar Colony Main Road\r\nBarrackpore\r\nNonachandanpukur\r\nNonachandanpukur\r\nNonachandanpukur North 24 Parganas\r\nWest Bengal 700122', '9614325227', 1, 0, 1, 'uploads/signatures/ae0ce52b9da478767b0bbe29242560ae.jpg', '2024-11-07 00:00:00', '2024-11-07 06:40:06'),
(306, 'GOKUL BABU', 'Adhaar Card', '5673 3093 4148', '9360687482', 'gkg203700@gmail.com', '482(1), KOLLAIMEDU, Sengunam, Sengunam, Tiruvannamalai, Polur, Tamil Nadu, 606803', '9360687482', 1, 0, 0, 'Not Signed', NULL, '2024-11-07 06:41:37'),
(307, 'Yash Bhardwaj', 'Adhaar Card', '3945 9545 1585', '8840190282', 'yashbhardwaj0512@gmail.com', 'Govind Narayan, 21, nai basti baarasirohi, shivli road, I.I.T, Kanpur Nagar, Uttar Pradesh - 208016', '8840190282', 1, 0, 1, 'uploads/signatures/e6ac0b611a2d42ff2ba1a6af055f4078.jpg', '2024-11-07 00:00:00', '2024-11-07 06:43:24'),
(308, 'Vineet Kumar', 'Election Card', 'TKT8963035', '9340137363', 'vineetkumar934013@email.com', '56, RAJAPUR, GELHARI PARA, RAJAPUR, JAINGAR, SURAJPUR, SURAJPUR, CHHATTISGARH-497226', '9340137363', 1, 11, 1, 'uploads/signatures/d8bbffeb58ec1f22f328d62fd4ae9a1a.png', '2024-11-07 00:00:00', '2024-11-07 06:50:16'),
(309, 'Amanpreet Kaur', 'Adhaar Card', '274283779328', '7814521342', 'randhawaarmaan98@gmail.com', ' D/O: Jaspal Singh, Kot Karam Chand, Gurdaspur, Punjab-143505.\r\n', '7814521342', 1, 0, 0, 'Not Signed', NULL, '2024-11-07 07:30:30'),
(310, 'Bhogadi Lohitha', 'Adhaar Card', '5409 1690 0810', '9515853925', 'lohithasmiley936@gmail.com', '39-34-209, Ambedkar Nagar, R B Office, marripalem, Visakhapatnam, Andhra Pradesh, 530018', '9515853925', 1, 84, 1, 'uploads/signatures/2ba2d31b93394862be6949b8626d6624.jpg', '2024-11-07 00:00:00', '2024-11-07 07:32:20'),
(311, 'Mo Amaan Khalid', 'Adhaar Card', '7516 8667 4878', '8795468904', 'amaanzia000@gmail.com', 'Khalid Zia, ward 3, belthra road, Belthara Road, Ballia, Bilthra Road Rs, Uttar Pradesh, 221715\r\n', '8795468904', 1, 10, 1, 'uploads/signatures/98a2c33b06af169ce9a911b0407e4fb2.jpg', '2024-11-07 00:00:00', '2024-11-07 07:40:08'),
(312, 'Prakash Barik', 'Adhaar Card', '8589 1882 3953', '24846', '1996prakashbarik@gmail.com', 'Address: S/O Saroj Barik, AT-Dumuka, PO-Dumuka, Dumuka, Kendrapara, Odisha, 754213', '24846', 0, 2, 1, 'uploads/signatures/fd54cfed9810fded5a3ae31b75ac31ab.jpeg', '2024-11-07 00:00:00', '2024-11-07 08:56:04'),
(313, 'Prakash Barik', 'Adhaar Card', '8589 1882 3953', '24846', '1996prakashbarik@gmail.com', 'Address: S/O Saroj Barik, AT-Dumuka, PO-Dumuka, Dumuka, Kendrapara, Odisha, 754213', '24846', 0, 2, 0, 'Not Signed', NULL, '2024-11-07 08:56:04'),
(314, 'Mohit Pandey', 'Adhaar Card', '5760 9297 0184', '8957819319', 'mohitpandey20217@gmail.com', 'Sunil Kumar Pandey, mohalla saray saif kasba pali, Pali Dehat Sisala, Hardoi, Uttar Pradesh-241123', '8957819319', 1, 700, 1, 'uploads/signatures/48f79f2d7c9c2f518d7d05c82999a732.jpg', '2024-11-07 00:00:00', '2024-11-07 09:17:11'),
(315, 'Challah Susmitha', 'Adhaar Card', '5713 1985 5123', '8555956651', 'challasusmitha85@gmail.com', 'Address: D/O Challah Srinivasulu, 0. Velupodu, Vellupodu, Nellore, Andhra Pradesh, 524240', '8555956651', 1, 0, 0, 'Not Signed', NULL, '2024-11-07 11:15:24'),
(316, 'Nazia Parween', 'Adhaar Card', '6070 9853 0505', '8102127321', 'Naziaparween1403@gmail.com', 'D/O Mohammad Manzoor Alam, B.S.N.L.\r\nTOWER, AZAD BASTI NEAR MISSION COMPOUND, Azad Basti, Ranchi, Jharkhand - 834001', '8102127321', 1, 1, 1, 'uploads/signatures/d2a8f884c4903ce1b4aab4c7f9c59a75.jpg', '2024-11-07 00:00:00', '2024-11-07 11:16:36'),
(317, 'Dipali Vijay Waghmare ', 'Adhaar Card', '574539453909', '888843', 'deepaliwaghmare97877@gmail.com', 'banful niwas dighi road jain mandir samor, behind gajanan medikal, pune city, pune,\r\nMaharashtra- 411039', '888843', 1, 2, 1, 'uploads/signatures/9ca23ac443221829003e7cf5132e5d9b.jpg', '2024-11-07 00:00:00', '2024-11-07 13:15:51'),
(318, 'Patnala Durga Siva Sai', 'Adhaar Card', '5257 1502 8544', '9948715160', 'Patnaladurgasivasai@gmail.com', '5/0 Gangaraju, 3-56, Main road, Rajupalem, Kirlampudi, East Godavari, Andhra Pradesh-533431', '9948715160', 1, 0, 0, 'Not Signed', NULL, '2024-11-08 03:06:37'),
(319, 'A Nihal', 'Adhaar Card', '6521 7119 6617', '9718561404', 'nihalkumarpg700@gmail.com', 'S/O Asha Ram, H-448, ANANDVAS, SHAKUR PUR, DIST: North West Delhi, #Delhi-110034', '9718561404', 1, 13, 1, 'uploads/signatures/dfe2f044b8bf3b31c0f4ee9a7768d4fb.jpg', '2024-11-08 00:00:00', '2024-11-08 03:07:59'),
(320, 'Akhina P S', 'Adhaar Card', '51998339 1965', '9645482977', 'akhinaps2977@gmail.com', 'C/O Shaji, Pallathuparambil house, Attupuram, Kunnukara, Ernakulam, Kerala 683579', '9645482977', 1, 217, 1, 'uploads/signatures/c1a103c2d5100be292f3ababb0b848b5.jpg', '2024-11-08 00:00:00', '2024-11-08 03:09:16'),
(321, 'Rahul Chauhan', 'Adhaar Card', '9933 0534 2858', '7236062629', 'errahul9168@gmail.com', 'S/O: Harishchandra Chauhan, Indrapur, Bhopaura, Mau, Uttar Pradesh - 275302', '7236062629', 1, 17, 1, 'uploads/signatures/4e0d55c155cd55f4907035311408a552.jpg', '2024-11-08 00:00:00', '2024-11-08 03:47:18'),
(322, 'PRIYANKA GOUR', 'Adhaar Card', 'RJ01 20200000231', '7300233424', 'lokpriyarajput@gmail.com', ' Address :-GOUR BHAWAN SUBHASH COLONY TOPDARA Ajmer (M Corp.) Ajmer, RJ 305001', '7300233424', 1, 5, 0, 'Not Signed', NULL, '2024-11-08 04:10:55'),
(323, 'Jyothika Rajeswari Chinta', 'Adhaar Card', '9521-9617 3656', '9032323051', 'Jyothikachinta07@gmail.com', ' Address :-D/O: Madhavarao, sri sai radha residency f no 406, manava mandir road. BHAVANIPURAM, Vijayawada (Urban), Kamakotinagar, Krishna, Vijayawada (urban), Andhra Pradesh, 520012', '9032323051', 0, 401, 1, 'uploads/signatures/0e194b09bce9315dcb7a99451ce18d5b.jpg', '2003-02-28 00:00:00', '2024-11-08 04:12:06'),
(324, 'VIKAS', 'Adhaar Card', '7745 5181 8730', '8953308505', 'vikasroy797356@gmail.com', ' Address :-S/O Gulab Chandra, village autana, post tama, Haisar Hardo, Sant Kabir Nagar, Uttar Pradesh-272165', '8953308505', 1, 40, 1, 'uploads/signatures/1d6c4f78842df4c2d1e52fbdb647b91b.jpg', '2024-11-08 00:00:00', '2024-11-08 04:36:45'),
(325, 'Narasimha', 'Adhaar Card', '8368 6469 6453', '8310771031', 'narasimhanarasimha53409@gmail.com', ' Address :-SO Iresha, Harijana ???. Ayyani, Raichur, Karnataka, 584128', '8310771031', 1, 139, 1, 'uploads/signatures/f99bbbf355deb16274209b48ee2ce7d7.jpg', '2024-11-08 00:00:00', '2024-11-08 04:38:39'),
(326, 'Seema Rani', 'Adhaar Card', '4364 6793 0811', '9896726994', 'srani8781@gmail.com', ' Address :-D/O Mahaveer, house no 90/1, ward no 13, Guhla, Kaithal, Haryana, 136035', '9896726994', 1, 20, 1, 'uploads/signatures/3987fa82df5a16090c3498d17f924f97.jpg', '2024-11-08 00:00:00', '2024-11-08 04:51:02'),
(327, 'Deepa G', 'Adhaar Card', '6272 2851 3580', '9952226753', 'deepavdev@gmail.com', ' Address :-52,KMS, THANIKAN KUDII, THIRUMAL NAGAR, PON NAGAR, NEAR NAGARAJA MANDAPAM, PON NAGAR, REDDIYUR, SALEM, Reddypatti,\r\nPO:Alagapuram, DIST:Salem, Tamil Nadu, 636004', '9952226753', 1, 700, 1, 'uploads/signatures/04cd04077ced352e170bdcec3af65f01.jpg', '2024-11-08 00:00:00', '2024-11-08 05:26:22'),
(328, 'Mutyala Tarun Krishna', 'Adhaar Card', '4294 3420 5598', '9989257146', 'tarunnaidumutyala283@gmail.com', ' Address :-Kasi Viswanadham, 7-173, Cheruvugattu, Ramarajulanka, Malikipuram, Malikipuram, East Godavari, Andhra Pradesh, 533253', '9989257146', 1, 700, 1, 'uploads/signatures/fc85e58b74ff2fa022f9fbf2c23866f0.jpg', '2024-11-08 00:00:00', '2024-11-08 05:57:34'),
(329, 'DIGVIJAY SINGH', 'Adhaar Card', 'PB-1020130221406', '7888736324', 'abhyuday1895@gmail.com', ' Address :-18-GF GEETANJALI APPRT. BLOCK-E RISHI NGR LDH 141001', '7888736324', 1, 0, 0, 'Not Signed', NULL, '2024-11-08 06:39:08'),
(330, 'Manali Ganesh Bhoir', 'Adhaar Card', '5011 7289 3069', '7841963778', 'bhoirmanalibhoir@gmail.com', ' Address :-D/O: Ganesh Bhoir, Valmiki Nagar, Koliwada, Vasai West, Vasai, Bassein, Thane, Maharashtra, 401201', '7841963778', 1, 0, 1, 'uploads/signatures/edc35f116a896c546e939f22eafebd4e.jpg', '2024-11-08 00:00:00', '2024-11-08 06:40:39'),
(331, 'Arti Devi', 'Adhaar Card', '7027 3051 2114', '8707534480', 'Missartipandey614@gmail.com', ' Address :-Rahul Dev Pandey, duhelwa,\r\nduhelwa, post payagpur, jila bahraich, Dulehwa, Shrawasti, Payagpur Bus Station, Uttar Pradesh, 271871', '8707534480', 1, 0, 1, 'uploads/signatures/79577de55457c2858158374f711691b3.jpg', '2024-11-08 00:00:00', '2024-11-08 06:42:22'),
(332, 'MADHUBALA DAS', 'Adhaar Card', '2777 8429 7140', '7894530533', 'madhubaladas2007@gmail.com', 'CIO. Shashikanta Das, BARABHAGIA, PO DUNGURA KHAIRA, Similia, PO: Dungura, #DIST: Baleswar, Odisha-756182', '7894530533', 1, 0, 0, 'Not Signed', NULL, '2024-11-08 06:46:45'),
(333, 'Shorya Sikarwar', 'Adhaar Card', '6729 9370 3606', '7017658490', 'shoryasikarwar71@gmail.com', 'C/O: Shiv Pratap, Plot-C3, Shivani Dham-2, Near Jagjeevan, Kalindi Vihar, Kuberpur, Agra, Utzar Pradesh - 202006', '7017658490', 1, 700, 1, 'uploads/signatures/323beebfe4e5a100db23913495fe06d1.jpeg', '2024-01-01 00:00:00', '2024-11-08 07:04:14'),
(334, 'Malay Chandra Laskar', 'Adhaar Card', '7995 6146 8981', '9563313129', 'jlaskar080@gmail.com', 'S/O: Sukeswar Laskar, MAYNAGURI KANKANGURI, ELLAJANERKUTHI, VILL- MAYNAGURI KANKANGURI, Elejanerkuthi, Cooch Behar, West Bengal - 736157', '9563313129', 1, 6, 1, 'uploads/signatures/1c6b83d6e769c7c3a896be31ccc607ff.jpg', '2024-11-08 00:00:00', '2024-11-08 07:10:30'),
(335, 'Sameer Kakhandaki', 'Adhaar Card', '2720 5080 5288', '9353814695', 'samisk843@gmail.com', 'Address:\r\nS/O Allabaksh Kakhandaki, Ward No 24, Near Ideal School, Kaman Khan Bazar, Bijapur, Vijayapura, Karnataka 586101', '9353814695', 1, 0, 0, 'Not Signed', NULL, '2024-11-08 10:43:29'),
(336, 'Amit Yadav ', 'Adhaar Card', '644211822404', '8957042254', 'Yadavamit95398@gmail.com', 'Rajesh Yadav, Graam bheelampur post harakhpurakhas, Sardaha. Azamgarh, Uttar Pradesh 276139', '8957042254', 0, 19, 1, 'uploads/signatures/18f1819539876bcdfa26f2bcb4964fd8.jpg', '2024-11-10 00:00:00', '2024-11-08 12:47:00');
INSERT INTO `tbl_member` (`member_id`, `member_name`, `member_id_type`, `member_id_number`, `member_contact`, `member_email`, `member_address`, `member_pass`, `member_status`, `completed_form`, `agreement_status`, `agreement_sign`, `agreement_date`, `added_on`) VALUES
(337, 'Priyes Kumar Singh', 'Adhaar Card', '7204 3082 7286', '6203530012', 'priyessinghsingh@gmail.com', 'Ram Vinay Singh, Bhalupur, Palamu, Jharkhand 822116', '6203530012', 1, 166, 1, 'uploads/signatures/7454f119cc3d1e5998d94cbfd169db62.jpg', '2024-11-08 00:00:00', '2024-11-08 12:50:18'),
(338, 'E Kartik', 'Adhaar Card', '6292 3800 0141', '9483013436', 'Karthikkarthik43945@gmail.com', 'S/O: E Krishnareddy, Door No 201 Ward No 2,\r\n\r\nVTC: Karekal, PO: Karekallu. Sangannanavara Eshwar Temple Oni. Sub District: Hagaribommanahalli, District: Bellary, State: Karnataka, PIN Code: 583111. Mobile: 8660074767', '9483013436', 0, 451, 1, 'uploads/signatures/649de63f358cdcf5054a0c294bb37fab.jpg', '2024-11-09 00:00:00', '2024-11-09 04:47:47'),
(339, 'Vidya Vijayan A V', 'Election Card', 'REE0098574', '8547710270', 'vidyavijayanav@gmail.com', '13/327, Cheruvathur Veettil, Kovval, 670501', '8547710270', 1, 5, 1, 'uploads/signatures/9462c770a78b23403a2317681d96aff3.png', '1990-04-29 00:00:00', '2024-11-09 06:44:02'),
(340, 'Sangam Gupta', 'Adhaar Card', '7135 8061 6058', '7985952744', 'sangamgupta181@gmail.com', 'C/O Krishan Bihari Gupta, Ward No. 02, Nagariya Mohhalla, Chhota Bazar, Karera, Shivpuri, Madhya Pradesh, 473660', '7985952744', 1, 0, 0, 'Not Signed', NULL, '2024-11-09 06:45:42'),
(341, 'Safwana K S', 'Adhaar Card', '2586 7460 0632', '6235031840', 'safwanaks321@gmail.com', 'Saleem K M,\r\n\r\nKodungooparambil House,\r\n\r\nVTC: Pappinivattom,\r\n\r\nPO: Mathilakam,\r\n\r\nDistrict: Thrissur,\r\n\r\nState: Kerala,\r\n\r\nPIN Code: 680685', '6235031840', 0, 315, 1, 'uploads/signatures/426bf08839f79a714ff219b7c318c814.jpg', '2024-11-09 00:00:00', '2024-11-09 06:47:25'),
(342, 'KARTHICK RAJENDRAN', 'Driving License', 'TN4720230001518', '6382944159', 'karthickcyber2002@gmail.com', '72 GOUNDEN PLAYAM PEREYA NAGAR 5TH STREET PULIYUR, Karur, Tamil Nadu 639114', '6382944159', 1, 284, 1, 'uploads/signatures/858bd992ff6137ebfd2e11c3d8a189de.jpg', '2024-11-09 00:00:00', '2024-11-09 06:51:39'),
(343, 'Dipali Gupta', 'Adhaar Card', '4325 4441 6882', '9818903858', 'gdeepali013@gmail.com', 'DDA FLATS DAKSHIN PURI EXTIN, DR.AMBEDKAR NAGAR, NEW DELHI, South Delhi, Delhi 110062', '9818903858', 1, 0, 0, 'Not Signed', NULL, '2024-11-09 08:29:04'),
(344, 'Princy Jovita B', 'Adhaar Card', '6441 4605 3300', '9442048340', 'jovitabenjamine2003@gmail.com', 'Address :-D/O: Benjamine, 62(2), MIDDLE STREET, PALLITHAMMAM, Pallivayal, Sivaganga, Tamil Nadu, 630551', '9442048340', 1, 0, 0, 'Not Signed', NULL, '2024-11-09 09:24:32'),
(345, 'Gaurav Kumar', 'Adhaar Card', '8543 0296 1213', '9557471086', 'gauravaitmadpur@gmail.com', 'Address: S/O: Gulshan, Village Emadpur, Atmadpur, Meerut, Uttar Pradesh, 250406', '9557471086', 1, 700, 1, 'uploads/signatures/82f70b6b1aebed8d1af66c7a2c75b1f0.jpg', '2024-11-09 00:00:00', '2024-11-09 11:01:14'),
(346, 'Simran', 'Adhaar Card', '5137 6113 9395', '7009011892', 'simran7009011892@gmail.com', 'C/O Jasbir Singh, Street No-04, 33 Feet Road, New Ram Nagar, Mundian Kalan, PO: Mundian Kalan, DIST: Ludhiana, Punjab - 141015', '7009011892', 1, 700, 1, 'uploads/signatures/ad9daff52d0bfbec66d36e2fe87f6493.jpg', '2024-11-09 00:00:00', '2024-11-09 11:02:26'),
(347, 'S. Bhanu', 'Adhaar Card', '8945 6308 8109', '8431518648', 'bhanumurthy078@gmail.com', 'W/O S. Narasimha Murthy. NO. 25/1, 1ST MAIN, ATTIGUPPE, BEHIND CHOUDESHWARI TEMPLE, VIJAYANAGAR 2ND STAGE, Bangalore North, Vijayanagar, Bangalore, Karnataka, 560040', '8431518648', 1, 0, 0, 'Not Signed', NULL, '2024-11-09 11:13:47'),
(348, 'Ashuka Maheswari', 'Adhaar Card', '9884 1352 8624', '9492816378', 'mm8991878@gmail.com', 'Address:-DVD Mallikarjuna Rao, 2-9/L Siva brahmana colny, Siva brahmana colny.\r\nVTC Iko PO: Iro District: Prakasam State: Andhra Pradesh, PIN Code: 523167', '9492816378', 1, 8, 1, 'uploads/signatures/4ca511080e1d87e16435ab8f551a023f.jpg', '2024-11-10 00:00:00', '2024-11-10 06:12:27'),
(349, 'Revanasiddappa', 'Adhaar Card', '8281 8324 6637', '8618128845', 'kodlerevanasiddappa241@gmail.com', 'Address :-S/O: Shankrappa Kodle, kanamas, Kanmas, Kalaburagi, Karnataka, 585302', '8618128845', 1, 0, 0, 'Not Signed', NULL, '2024-11-10 06:14:28'),
(350, 'Anoop Pal', 'Adhaar Card', '5434 7485 7575', '9753184819', 'ltzdevil9977@gmail.com', 'Address:-Rajkumar, banshi pura, Gird, Gwalior, Madhya Pradesh - 474006', '9753184819', 1, 32, 1, 'uploads/signatures/495f62c3a8399b80f2894feeb3d4b533.jpg', '2024-11-10 00:00:00', '2024-11-10 06:16:16'),
(351, 'Arun Kumar', 'Adhaar Card', '8429 4299 4561', '7452008681', 'arunkumararrua@gmail.com', 'Address:-Bachchu Singh, Nagla Arua,\r\nPO: Arrua Khas, DIST: Agra,\r\nUttar Pradesh - 283101', '7452008681', 1, 0, 0, 'Not Signed', NULL, '2024-11-10 06:21:24'),
(352, 'CHINMAYI P UMREDKAR', 'Adhaar Card', '20230011841', '8738919582', 'kasimshaikh54512@gmail.com', 'Address:-FLAT NO 401 PLOT NO 94\r\nSWAMI SAMARTH PALACE', '8738919582', 1, 12, 1, 'uploads/signatures/1ffb33702f9749df06dc50e79ed03ecf.jpg', '2024-11-10 00:00:00', '2024-11-10 06:24:45'),
(353, 'Demo11', 'Adhaar Card', '00000000000', '8888888888', 'test@gmail.com', 'Demo address ', '8888888888', 1, 700, 1, 'uploads/signatures/f9a8bd8ff6fb134da6e412c79e378bb0.png', '2024-11-11 00:00:00', '2024-11-10 08:00:10'),
(354, 'Anushma Abhilash', 'Adhaar Card', '5365 8768 0286', '9562703127', 'anushmaachuz0987@gmail. com', 'Abihilash G. Ayikkunnel Greeshmam,\r\n\r\nMuthukkulam North, Muthukulam,\r\n\r\nMuthukulam, PO: Choclatheruvu, DIST\r\n\r\nAlappuzha.\r\n\r\nKerala-690500', '9562703127', 1, 700, 1, 'uploads/signatures/6672180675c6fa85b9d8bd97a0bf8cf8.jpg', '2024-11-10 00:00:00', '2024-11-10 09:15:02'),
(355, 'Yuvaraj', 'Adhaar Card', '8019 9354 4429', '96297611', 'yuvaraj422001@gmail.com', 'S/O Murugan 12 MANAVASI ARAVANAMPETT?? Manavasi Karur Tamil Nadu -639108', '96297611', 1, 2, 1, 'uploads/signatures/01d25d9bde3985710a7773bcb0b2c4c4.jpg', '2024-11-10 00:00:00', '2024-11-10 13:21:30'),
(356, 'Roshani Vinayak Adhav', 'Adhaar Card', '261936877194', '7721920342', 'roshani.adhav@gmail.com', '\r\nD/O: Vinayak Adhav\r\nshivam row house no.1\r\nagar takli road\r\nNear narayan bapu chowk\r\nshivram nagar, dasak, Jail road, nashik road\r\nNashik\r\nNashik Maharashtra - 422101', '7721920342', 1, 700, 1, 'uploads/signatures/27d8caed49d4df41e235b6b978ee749f.jpg', '2024-11-11 00:00:00', '2024-11-11 05:28:17'),
(357, 'Puja talukdar', 'Adhaar Card', '300123318768', '9127097856', 'pujatalukdar485@gmail.com', 'C/O Mahesh Talukdar, HNO 12, NARIKALBASTI, Zoo Road, Kamrup Metro, Assam, 781024', '9127097856', 1, 0, 0, 'Not Signed', NULL, '2024-11-11 05:40:00'),
(358, 'Kirandeep Kaur', 'Adhaar Card', '684922680028', '8437878258', 'Kirandeepkaur17323@gmail.com', 'VILLAGE PHULLANWAL\r\nBasant Avenue\r\nBasant Avenue\r\nLudhiana Punjab-141013', '8437878258', 1, 0, 1, 'uploads/signatures/1924745f82edc371e690e2277da27f46.jpg', '2024-11-11 00:00:00', '2024-11-11 05:59:47'),
(359, 'Gursewak Singh', 'Adhaar Card', '381426152376', '9592616715', 'kainthsewak22@gmail.com', 'Tarlochan Singh, Teh- Bassi Pathana, Rasulpur, Fetehgarh Sahib, Punjab- 140307\r\n', '9592616715', 1, 0, 0, 'Not Signed', NULL, '2024-11-11 06:05:16'),
(360, 'Gursewak Singh', 'Adhaar Card', '381426152376', '9592616715', 'kainthsewak22@gmail.com', 'Tarlochan Singh, Teh- Bassi Pathana, Rasulpur, Fetehgarh Sahib, Punjab- 140307\r\n', '9592616715', 1, 0, 0, 'Not Signed', NULL, '2024-11-11 06:05:16'),
(361, 'Toufeeq Knen', 'Adhaar Card', '3211 0397 0322', '6205046801', 'tkh58408@gmail.com', ' Rageeb Khan. vill-maheshpur.po-maheshpur.ps-anga Maheshpur, Ranchi. Maheshpura Jharkhand, 835103', '6205046801', 1, 0, 0, 'Not Signed', NULL, '2024-11-11 07:13:12'),
(362, 'Mohammed Ayaan Khan', 'Adhaar Card', '812756935045', '6362949023', 'mayaankhankhan088@gmail.com', '4th Cross Azad Nagar\r\nGowri Kaluve\r\nChikmagalur\r\nChickmagalur Karnataka - 577101', '6362949023', 1, 6, 1, 'uploads/signatures/af2f7a4a4a2ac713fe12364e7a53addc.jpg', '2024-11-12 00:00:00', '2024-11-11 07:55:52'),
(363, 'Malliga ', 'Election Card', 'RHB1956234', '9629873743', 'smallikabca@gmail.com', '1-123, PAVADI THERU, ORUVANDUR, MOHANUR, NAMAKKAL, TAMIL NADU- 637015', '9629873743', 1, 0, 0, 'Not Signed', NULL, '2024-11-11 07:59:15'),
(364, 'Vishnu devi', 'Adhaar Card', '303909608094', '7904881582', 'vishnudurai629@gmail.com', 'W/O Vignesh\r\n001/2, Gandhiji Street\r\nMalaikovil\r\nVTC: Kasipalayam (e) (m)\r\nPO: Kasipalayam\r\nDistrict: Erode\r\nState: Tamil Nadu\r\nPIN Code: 638009', '7904881582', 1, 0, 0, 'Not Signed', NULL, '2024-11-12 05:15:47'),
(365, 'demo911', 'Adhaar Card', '9191910000000', '9762351138', 'ramnath114311@gmail.com', 'demo address', '9762351138', 1, 0, 0, 'Not Signed', NULL, '2024-11-13 08:31:50'),
(366, 'demo911', 'Adhaar Card', '9191910000000', '8999999999', 'ramnath114311@gmail.com', 'demo address', '8999999999', 1, 0, 0, 'Not Signed', NULL, '2024-11-13 08:34:57'),
(367, 'Athulya R M', 'Adhaar Card', '839123926537', '7012852128', 'athulya8521@gmail.com', 'Radhakrishnan, Eettivila Veedu, Avaneeswaram R S P O, Neduvannoor, Pidavoor, Vilakkudy, Kollam, Kerala-691508', '7012852128', 0, 309, 1, 'uploads/signatures/17f53275aabf57af8e1836dd4b5b5cda.jpg', '2004-03-10 00:00:00', '2024-11-13 11:39:37'),
(368, 'Amit Jagtap', 'Driving License', 'MP20N-2014-0570820', '9340357836', 'amitjagtap6922@gmail.com', '1859/2 PURANI MACHHARHAI, NEAR LORDGANJ THANA, JABALPUR, MP', '9340357836', 0, 1, 1, 'uploads/signatures/4403b0a261e0d15c8f1c8a5dde84a39e.jpg', '2024-11-13 00:00:00', '2024-11-13 11:42:10'),
(369, 'Gowtham Krishnan', 'Adhaar Card', '660530011547', '6380432442', 'gowthamkrishnan2930@gmail.com', 'No5/10 MUNIYAPPAN KOVIL STREET,\r\n  SUNDRAPURAM KURICHI,\r\n Sundarapuram,\r\n Coimbatore South,\r\n  Coimbatore Tamil Nadu 641024', '6380432442', 1, 0, 0, 'Not Signed', NULL, '2024-11-13 11:47:36'),
(370, 'S P Sushmitha', 'Adhaar Card', '229129036795', '8807692712', 'bharathisushmi2521@gmail.com', 'D/O Sivakumar, NO 66, NORTH STREET, Padalur (west), PO: Padalur, DIST: Perambalur, Tamil Nadu, 621109', '8807692712', 1, 20, 1, 'uploads/signatures/633466c940b0c5053421d7299ba01a1a.jpeg', '2024-11-13 00:00:00', '2024-11-13 15:10:14'),
(371, 'Satyaprakash', 'Adhaar Card', '2962 5166 0136', '7806059181', 'banjaresatyaprakash63@gmail.com', 'Manoj Kumar Banjare, makan no. 165, ward no.11, barmuda para, nariyara, Nariyara, Janjgir-champa, Chhattisgarh - 495691', '7806059181', 1, 700, 1, 'uploads/signatures/7d01efe0b65e907fb4317c1e862008ab.jpg', '2024-11-14 00:00:00', '2024-11-14 04:42:28'),
(372, 'Panati Prakash Madavkar', 'Adhaar Card', '7968 5876 7459', '9324969133', 'pantimandavkar@gmail.com', 'Nathuram Madavkar, 66, Kanti - bodhan, Kanti bodhan, Kanti, Raigarh, Maharashtra - 402109', '9324969133', 1, 43, 1, 'uploads/signatures/11a05e151570652b4c53ec00d7729c57.jpg', '2024-11-14 00:00:00', '2024-11-14 04:43:47'),
(373, 'Gaurav Kumar', 'Adhaar Card', '8543 0296 1213', '955747', 'gauravaitmadpur@gmail.com', 'Address: S/O: Gulshan, Village Emadpur, Atmadpur, Meerut, Uttar Pradesh, 250406', '955747', 1, 5, 1, 'uploads/signatures/ff9b40adfec7523ce181e72431ff003a.jpg', '2024-11-14 00:00:00', '2024-11-14 08:13:43'),
(374, 'Gayathri S', 'Adhaar Card', '370375657826', '8884864772', 'gayathri778gmail.com', '\r\nNear BOFeet Ring Road\r\nGokula Extension\r\nTumkur\r\nKyathasandra\r\nTumakuru Karnataka - 572104\r\n\r\n', '8884864772', 1, 0, 0, 'Not Signed', NULL, '2024-11-14 09:24:06'),
(375, 'rina kumari ', 'Adhaar Card', '672811487196', '7488713288', 'pdgm22', '', '7488713288', 1, 25, 1, 'uploads/signatures/59e956b0d8cfb9bd3862be6f7996de17.jpg', '2024-11-15 00:00:00', '2024-11-15 05:06:15'),
(376, 'rina kumari', 'Adhaar Card', '672811487196', '7488713288', 'pdgm22.rina.kumari@sunstone.edu.in', 'Pralhad choudhari ,289, mogal pura , lala toli, patna city , ranipur , milki chak , patna , bihar , 800008', '7488713288', 1, 25, 0, 'Not Signed', NULL, '2024-11-15 05:09:29'),
(377, 'nilesh varma ', 'Adhaar Card', '223357638720', '9111910517', 'bv570460@gmail.com', 'Dinesh kumar , ward no 15 , chhapiheda , rajagarh , madhya pradesh , 465689 ', '9111910517', 1, 1, 1, 'uploads/signatures/2a4131603a45527a8ec0f13ff9bc0ed3.jpg', '2024-11-15 00:00:00', '2024-11-15 05:20:13'),
(378, 'Vallepu Priyanka', 'Adhaar Card', '8797 4429 1814', '9440945749', 'priyapriyanka2001ya@gmail.com', 'D/O Bangaraiah Palia Malli\r\n\r\nPallamalli, Prakasam Andhra Pradesh-523263', '9440945749', 1, 0, 0, 'Not Signed', NULL, '2024-11-15 07:32:02'),
(379, 'BIJIT DAS', 'Driving License', 'AS25 20230040306', '8787650713', 'dk6679398@gmail.com', 'GORESWAR ROAD, BAIHATA CHARIALI, ASSAM, 781381', '8787650713', 1, 18, 1, 'uploads/signatures/18aab0b1f8f797c29012a9b93c45c38c.jpg', '2024-11-16 00:00:00', '2024-11-15 07:33:49'),
(380, 'Punit Kumar', 'Adhaar Card', '4302 0800 4873', '9557107359', 'Kumarpunitchauhan@gmail.com', '52/11, 52/11 Model Town West, M M H College Road, Model Town, Ghaziabad, Ghaziabad, Uttar Pradesh - 201001', '9557107359', 1, 700, 1, 'uploads/signatures/ded441008d30d45008d2eb3cff4ff609.jpg', '2024-12-03 00:00:00', '2024-11-15 07:35:16'),
(381, 'Vempada Durga Devi', 'Adhaar Card', '2595 5057 7767', '8978497234', 'durgadevivempada@gmail.com', 'Vempada Sankar Rao 29-44-24/C CHAKALIPETA, BANK COLONY DABA GARDENS Visakhapatnam (Urban) Dabagardens, Visakhapatnam', '8978497234', 1, 0, 0, 'Not Signed', NULL, '2024-11-15 07:36:45'),
(382, 'Abhinav Singh', 'Adhaar Card', '6245 4265 2246', '9798133188', 'ak7987391@gmail.cm', 'Sonu Kumar Singh, Lulhaul, PO: Lilhaul, DIST: Darbhanga Bihar - 848201', '9798133188', 1, 0, 0, 'Not Signed', NULL, '2024-11-15 14:07:20'),
(383, 'Shankar Balappa Mutnale', 'Adhaar Card', '6686 1552 8776', '9148632014', 'shankarmutnale@gmail.com', 'Kamatanur,\r\n\r\nTq-Hukkeri,\r\n\r\nVTC: Kamatanur,\r\n\r\nPO: Kamatnur,\r\n\r\nSub District: Hukeri,\r\n\r\nDistrict: Belgaum,\r\n\r\nState: Karnataka,\r\n\r\nPIN Code: 591340', '9148632014', 1, 0, 0, 'Not Signed', NULL, '2024-11-16 05:11:15'),
(384, 'PK Haniya Hameed', 'Adhaar Card', '3338 8148 2636', '9952830848', 'haniyahameed04@gmail.com', 'PMR Shahul Hameed, Darul Khair, VP vayal, Kannur, Kerala, 670012', '9952830848', 1, 24, 1, 'uploads/signatures/a5dd142ea0d021a3b84a7b61a9c68d2b.jpg', '2024-11-16 00:00:00', '2024-11-16 05:12:58'),
(385, 'Sevireddy Vaishnavi', 'Adhaar Card', '4981 2119 8988', '7207342479', 'sevireddyvaishnavi@gmail.com', '000 DP KANDRIGA R MALLAVARAM R. Mallavaram Chittoor Andhra Pradesh-517520', '7207342479', 1, 0, 0, 'Not Signed', NULL, '2024-11-16 05:14:15'),
(386, 'Rashi Chandu Wankhede', 'Adhaar Card', '536336417151', '7620792711', 'rashiwankhede55@gmail.com', 'Rashi Chandu Wankhede\r\nD/O: Chandu Wankhede\r\nPlot NO 01 Chhindwada Road\r\nNear Chetana Apt. Lumbini Nagar, Wankhede Layout\r\nManikapur\r\nNagpur\r\nMaharashtra 440030', '7620792711', 1, 38, 1, 'uploads/signatures/579dfc7fb53220eb73b7c5ffce0d84ab.jpg', '2024-11-16 00:00:00', '2024-11-16 06:15:12'),
(387, 'Shitanshu Upadhyay', 'Adhaar Card', '202299448946', '9120047903', 'Shitanshuupadhyay878@gmail.com', 'S/O: Chintamani Upadhyay\r\n * Kodai, Kodai, Kodai, Basti, Uttar Pradesh, 272131', '9120047903', 1, 0, 0, 'Not Signed', NULL, '2024-11-16 06:44:17'),
(388, 'Nitu Panwar', 'Adhaar Card', '4540 0566 9465', '7988206361', 'panwarneetu1111@gmail.com', '86-A, Shahpur Jat Village, Andrewsganj S.O, South Delhi, Delhi, 110049', '7988206361', 1, 0, 0, 'Not Signed', NULL, '2024-11-16 06:45:48'),
(389, 'Salma Bano Mohammed Hafiz Quraishi', 'Adhaar Card', '8093 4012 3523', '7208980997', 'Salmaquresh2678@gmil.come', 'D/O Mohammed Hafiz Quraishi, NEAR PIALA BANGLA, SION BANDRA LINK ROAD, RAJEV GANDHI NAGAR ROOM NO-68 AMBEDKAR CHAWL, Dharavi, Mumbai, Maharashtra-400017\r\nDUAL CAMERA\r\n', '7208980997', 1, 25, 1, 'uploads/signatures/f049d78f2ae53018dc65a7b95d965116.jpg', '2008-04-18 00:00:00', '2024-11-16 07:32:38'),
(390, 'Chirag Kumar', 'Adhaar Card', '632148528818', '7763870582', 'chiragpanjiyar@gmail.com', 'S/O: Niranjan  Prasad, Vill-Pahipura, Ward-01, Ps- Saharghat, Salempur Madhubani, Bihar- 847223', '7763870582', 1, 700, 1, 'uploads/signatures/c302bd6fab4b99542fa56c8dacd9907a.jpg', '2024-11-17 00:00:00', '2024-11-17 04:06:19'),
(391, 'Ishu', 'Adhaar Card', '3144 1079 0649', '7999830268', 'ishujagsoliya4@gmail.com', 'Address: S/O: Dataram, adarsh koloni, mehgoun, Mehgaon, PO:Mehgoun,\r\nDIST:Bhind, Madhya Pradesh, 477557', '7999830268', 1, 0, 0, 'Not Signed', NULL, '2024-11-17 04:12:51'),
(392, 'RAJKUMAR V ', 'Adhaar Card', 'TN45Z20150003750', '9003793914', 'Raj733115@gmail.com', '5/145 CHOKKAMPATTI MELUR TK MADURAI DT 625103', '9003793914', 1, 0, 0, 'Not Signed', NULL, '2024-11-17 04:14:30'),
(393, 'Tirupallagalla Mahaboob Basha', 'Adhaar Card', '346218031846', '8919048090', 'mahaboobbasha.work@gmail.com', 'S/O: Bala Dastagirir, 2/152, 2nd Ward,  2nd ward, Gollapalle, Cuddapah, Andhra Pradesh- 516175', '8919048090', 1, 700, 1, 'uploads/signatures/7cc15083f524f39f01ac904967b3b61d.jpg', '2024-11-17 00:00:00', '2024-11-17 04:27:17'),
(394, 'Chelsa Ann Joseph', 'Adhaar Card', '8700 4325 5014', '9744220082', 'chelsaannjoseph@gmail.com', 'D/O JOSEPH AUGUSTHY, VALAVANATTU HOUSE, PALAVAYAL PO, Palavayal, PO: Palavayal, DIST: Kasaragod, Kerala - 670511', '9744220082', 1, 700, 1, 'uploads/signatures/9be34a01e2a2b4703f74e0a65f205233.jpg', '2024-11-17 00:00:00', '2024-11-17 08:09:32'),
(395, 'Anandi Lal Sharma', 'Adhaar Card', '7753 8329 7711', '7014623862', 'anandsharmajewli@gmail.com', 'Bhani Ram Sharma, village- jewali, Kumas Jageer, Sikar, Rajasthan-332026', '7014623862', 1, 0, 0, 'Not Signed', NULL, '2024-11-17 08:19:07'),
(396, 'Shrishti S', 'Adhaar Card', '697650141577', '8217287872', 'shristisathya26@gmail.com', 'D/O A V Sathyanarayana, #77/11, 5th Cross, Hanumanth Nagar, Bangalore South, Gaviopuram Extension, Bangalore, Karnataka, 560019', '8217287872', 1, 700, 1, 'uploads/signatures/5f15d540a40165f9d88f629db48d7712.jpeg', '2024-11-17 00:00:00', '2024-11-17 09:16:54'),
(397, 'SOMANATH SUBUDHI', 'Adhaar Card', '8362 3206 9737', '7846977192', 'somnathsubudhi589@gmail.com', 'C/O: Sanyasi Subudhi,\r\nKhalikote Road,\r\nKodala,\r\nVTC: Kodala,\r\nPO: Kodala,\r\nSub District: Kodala,\r\nDistrict: Ganjam,\r\nState: Odisha,\r\nPIN Code: 761032', '7846977192', 1, 700, 1, 'uploads/signatures/d9c457918ac1a469bf1624816acff96f.jpg', '2024-11-17 00:00:00', '2024-11-17 09:29:34'),
(398, 'Vedant Chaturvedi', 'Adhaar Card', '5206 5111 6770', '8858697017', 'chaturvedivedant90@gmail.com', 'S/O: Shashikant, 1060, Naya Ram Nagar, Orai, Orai, PO: Orai, DIST: Jalaun, Uttar Pradesh - 285001', '8858697017', 1, 0, 1, 'uploads/signatures/e8b8c642db6b54a6babff316e61be4a9.jpg', '2024-11-17 00:00:00', '2024-11-17 10:26:47'),
(399, 'Kumaran P', 'Adhaar Card', '7729 3005 6575', '8825597554', 'kumaranenglish2019@gmail.com', 'S/O Panneerselvam, NO 208, PALAIYAKUDIYANATHERU, VARAGUR, THIRUVAIYARU-TALUKA, Varagur, Varagur, Thanjavur, Tamil Nadu, 613101', '8825597554', 1, 0, 1, 'uploads/signatures/25c1f4a19381f44af79ba6adf2814c24.jpg', '2024-11-17 00:00:00', '2024-11-17 11:24:44'),
(400, 'Agraj Milind', 'Adhaar Card', '818690438561', '9798100749', 'milindagraj406@gmail.com', 'S/O: Ravi Prakash Milind, Flat No. G/2, Vasundhara Estate, NH33-North, PO-MGM Medical College, Ps-Ulidih, Mango, Jamshedpur, East Singhbhum, Jharkhand, 831018', '9798100749', 1, 0, 0, 'Not Signed', NULL, '2024-11-17 11:29:47'),
(401, 'Mohd Aadil Shaikh', 'Adhaar Card', '2521299331320', '9702737397', 'addyyislive@gmail.com', 'A/2, Ground Floor, Saibaba Nagar\r\n V.K Krishnan Menon Marg\r\n  90 Feet Road\r\n  VTC: Mumbai\r\n  PO: Dharavi\r\n District: Mumbai\r\n State: Maharashtra- 400017', '9702737397', 1, 9, 1, 'uploads/signatures/62573864ed049c3b389bd6b604c8c0a6.jpg', '2024-11-17 00:00:00', '2024-11-17 11:33:10'),
(402, 'Amit Kumar', 'Adhaar Card', '4652 2281 8830', '9696800688', 'kamit69844@gmail.com', 'C/O: Baba Deen, pure sohrat singh,\r\nMangauli, Amethi,\r\nUttar Pradesh - 227809\r\n+91 96968 00688', '9696800688', 1, 700, 1, 'uploads/signatures/73dd3f9bcdda3234ec6f87ae31f3bb83.jpg', '2024-11-18 00:00:00', '2024-11-17 11:37:18'),
(403, 'Mohammed Ghousuddin', 'Adhaar Card', '3378 4563 1894', '8374658836', 'skghouse88868@gmail.com', '2-78 Amradikhurd, Mominpet, K.v. Rangareddy Mominpet, Telangana - 501202', '8374658836', 1, 0, 0, 'Not Signed', NULL, '2024-11-17 11:56:36'),
(404, 'Yeshaswini B', 'Adhaar Card', '3974 2209 9089', '7483114012', 'yeshas.125@gmail.com', '#24, Muthyalanagar\r\nCS School\r\nBangalore North\r\nMsrit\r\nBangalore Karnataka - 560054', '7483114012', 1, 0, 0, 'Not Signed', NULL, '2024-11-17 13:25:53'),
(405, 'Nived Lal', 'Adhaar Card', '934179455327', '9961935406', 'nived5566@gmail.com', 'Latha Bhavan,\r\nSarkara,\r\nSarkara,\r\nVTC: Sarkara-chirayinkeezhu,\r\nPO: Chirayinkeezhu,\r\nDistrict: Thiruvananthapuram,\r\nState: Kerala,\r\nPIN Code: 695304', '9961935406', 1, 0, 0, 'Not Signed', NULL, '2024-11-18 04:33:05'),
(406, 'Tanuja Mehra', 'Adhaar Card', '6543 1733 7540', '8765467578', 'garimadwivedioct1990@gmail.com', 'C/O: Abhishek Mishra, 2402, Misrana, Dhobi Wali Gali, Lakhimpur, Kheri, Uttar Pradesh - 262701', '8765467578', 1, 0, 0, 'Not Signed', NULL, '2024-11-18 04:36:48'),
(407, 'Vikram Tomar', 'Adhaar Card', '4109 1586 1054', '9522399770', 'vt4782317@gmail.com', 'M. N. 21/480, NARAYAN VIHAR COLONY, gole ka mandir, Gwalior, Madhya Pradesh, 474005', '9522399770', 1, 0, 0, 'Not Signed', NULL, '2024-11-18 04:39:24'),
(408, 'Ameya Baban Thorat', 'Adhaar Card', '3540 0637 2358', '8999090016', 'ameya33thorat@gmail.com', 'Padmashri Plot No 33,\r\nBhavani Nagar,\r\nNear Vignahar Ganesh Mandir,\r\nAdke Nagar 3,\r\nVTC: Nashik Road,\r\nPO: Nashik Road,\r\nDistrict: Nashik,\r\nState: Maharashtra,\r\nPIN Code: 422101\r\n', '8999090016', 1, 700, 1, 'uploads/signatures/7285fb20e619e93af868fd02aa93091a.jpg', '2024-11-18 00:00:00', '2024-11-18 04:43:29'),
(409, 'Shakshi', 'Adhaar Card', '5748 9490 2737', '9368325144', 'manveetgurjari@gmail.com', 'D/O: Sanjay Kumar, House No.,\r\nGav-Shanpla Begampur, Shanpla\r\nBegampur, Saharanpur, Sarsawa,\r\nUttar Pradesh, 247232', '9368325144', 1, 0, 0, 'Not Signed', NULL, '2024-11-18 04:46:42'),
(410, 'Rajesh Sukhvir Singh', 'Adhaar Card', '2059 3350 6076', '8108694809', 'eserve767@gmail.com', 'S/O: Sukhvir Hira Singh\r\nROOM NO 4/A THOMAS CHAWL\r\nWESTERN EXPRESS HIGHWAY\r\nMALAD EAST\r\nMumbai\r\nMaharashtra 400097', '8108694809', 1, 0, 0, 'Not Signed', NULL, '2024-11-18 04:50:14'),
(411, 'Monisha', 'Adhaar Card', '7563 8616 1836', '9940393737', 'moniruki24@gmail.com', 'D/O: Gopinadan, 72 OLD NO 16A, MANICKKAMVINAYAGAR KOVIL STREET, VYASARPADI, Vyasarpadi, Vyasarpadi, Chennai, Tamil Nadu, 600039\r\n', '9940393737', 1, 700, 1, 'uploads/signatures/a501713b6bff492c93cc2ab2ffbca1bc.jpeg', '2024-11-18 00:00:00', '2024-11-18 04:55:36'),
(412, 'Jatin Kumar', 'Adhaar Card', '5169 0306 1949', '7018861474', 'ak5226159@gmail.com', 'S/O Ram Krishan, Village Nand Behal, P.O Toba Tehsil Shri Naina Devi Ji, Nand Behal, Bilaspur, Himachal Pradesh - 17400', '7018861474', 1, 0, 0, 'Not Signed', NULL, '2024-11-18 06:29:53'),
(413, 'Deepa G', 'Adhaar Card', '6272 2851 3580', '995222', 'deepavdev@gmail.com', ' Address :-52,KMS, THANIKAN KUDII, THIRUMAL NAGAR, PON NAGAR, NEAR NAGARAJA MANDAPAM, PON NAGAR, REDDIYUR, SALEM, Reddypatti,\r\nPO:Alagapuram, DIST:Salem, Tamil Nadu, 636004', '995222', 1, 2, 1, 'uploads/signatures/542c7042972f53f8f2be5d18b6908023.jpg', '2024-11-18 00:00:00', '2024-11-18 14:57:07'),
(414, 'Reema Kalita', 'Adhaar Card', '2835 2656 3758', '6002274405', 'kalitareema87@gmail.com', 'D/O: Mathura Mohan Kalita, H.NO- 58, ASHRAM ROAD, GUWAHATI, NEAR WATER TANK, Ulubari, Kamrup Metro, Assam 781007', '6002274405', 1, 0, 0, 'Not Signed', NULL, '2024-11-19 05:00:40'),
(415, 'Mohd. Qasim', 'Adhaar Card', '6064 9779 1255', '9953781716', 'mohdqasim33@gmail.com', 'C/O Habibullah\r\nP-21, Second floor\r\nGali No - 8\r\nNear Noorjahan Masjid\r\nBatla House\r\nJamia Nagar\r\nSouth Delhi Delhi 110025', '9953781716', 1, 0, 0, 'Not Signed', NULL, '2024-11-19 05:03:03'),
(416, 'Jeevitha D', 'Adhaar Card', '6690 1337 5059', '7812856445', 'jeevijeevitha662004@gmail.com', 'Jeevitha D\r\nAddress:\r\nHouse No: 3423\r\nVillage: Valav\r\nPost Office: A\r\nDistrict: Tirunelveli\r\nState: Tamil Nadu\r\nPincode: 627404', '7812856445', 1, 700, 1, 'uploads/signatures/e395538d6d801088793c1f68e2629175.jpg', '2024-12-31 00:00:00', '2024-11-19 05:04:57'),
(417, 'Mohammed Almas Siddiqui', 'Adhaar Card', '3485 7426 3011', '7386848214', 'almassiddiqui153@gmail.com', '4-9-576/1, Ricksha colony, Cotton Market, Adilabad, Andhra Pradesh - 504001', '7386848214', 1, 0, 0, 'Not Signed', NULL, '2024-11-19 05:18:58'),
(418, 'Sajja Anil', 'Adhaar Card', '5698 7838 8168', '9989435042', 'anilsajja421@gmail.com', 'C/O: Sajja Ramana,\r\n6-49-14, Srinivasa Nagar,\r\nGajuwaka, Old Gajuwaka,\r\nVisakhapatnam,\r\nAndhra Pradesh - 530026\r\n', '9989435042', 1, 0, 0, 'Not Signed', NULL, '2024-11-19 12:29:46'),
(419, 'Santhanaguhan A M', 'Adhaar Card', '6490 6619 3312', '9345893281', 'santhanaguhantcs@gmail.com', 'C/O Mohankumar, EWSB 878, Manickampalayam Housing Unit, Nasiyanur Road, Erode, PO: Erode Collectorate, DIST: Erode, Tamil Nadu 638011', '9345893281', 1, 700, 1, 'uploads/signatures/87dca4badb820edc9475dd71492330b0.jpg', '2024-11-19 00:00:00', '2024-11-19 12:31:46'),
(420, 'Bandi Subramanyam', 'Adhaar Card', '6563 1747 3452', '6302436290', 'jankamohanrao14324@gmail.com', ' 3-81, RAYALA VARI PALLI, PILER MANDALAM, Pileru, Chittoor Andhra Pradesh-517214', '6302436290', 1, 12, 1, 'uploads/signatures/5284ede79ef9f00ac021ebbde46a2544.png', '2024-11-19 00:00:00', '2024-11-19 12:46:16'),
(421, 'Erumalla Sathvika', 'Adhaar Card', '3462 7536 4569', '7331103767', 'b20ci051@kitsw.ac.in', '3-1-194, kakathiya colony,\r\nnear alankar junction,\r\nVTC. Hanamkonda,\r\nPO: Hanamkonda,\r\nSub District: Hanmakonda, District: Warangal,\r\nState: Telangana,\r\nPIN Code: 506001', '7331103767', 1, 700, 1, 'uploads/signatures/df9f48b6ac8fa67d8251160048fad652.jpg', '2024-11-20 00:00:00', '2024-11-20 03:35:17'),
(422, 'Niraj Kumar', 'Adhaar Card', '9270 3801 9267', '6203067174', 'nkchandravanshi174@gmail.com', 'S/O: Naresh Ram, ward number-08, thana-jainagar, Dandadih, Koderma, Jharkhand-825109\r\n', '6203067174', 1, 0, 0, 'Not Signed', NULL, '2024-11-20 04:07:44'),
(423, 'Ashok Kumar Sharma', 'Adhaar Card', '4710 1001 6922', '9785692691', 'sharmaemitra088@gmail.com', 'Address: S/O Jagdish Prasad Sharma, ward no-08, Babai, Babai, Jhunjhunun, Rajasthan, 333501', '9785692691', 1, 17, 1, 'uploads/signatures/ce2c5d849306cef3cf45f0fed34da525.jpg', '2024-11-20 00:00:00', '2024-11-20 04:39:13'),
(424, 'Mohanapriya', 'Adhaar Card', '2185 8014 1560', '6369472087', 'mohanapriya477s@gmail.com', 'D/O Sakthi, 5/174-B, trichy main road,\r\nGajallnayakkanpatti, PO: Gajjalnaickenpatti,\r\nDIST: Salem, Tamil Nadu 636201', '6369472087', 1, 0, 0, 'Not Signed', NULL, '2024-11-20 04:40:37'),
(425, 'Shivam Jha', 'Adhaar Card', '9112 7584 9388', '8051570504', 'jhashivam8051@gmail.com', 'S/O: Visheshwar Jha, Gaon-Post-Pratappur, Gidha, Gidha, Muzaffarpur, Saraiya, Bihar, 843106', '8051570504', 1, 21, 1, 'uploads/signatures/95844b65aa01036b336c14a421ae0fc2.jpg', '2024-11-20 00:00:00', '2024-11-20 04:41:33'),
(426, 'Ruparnagudi Naga Malleswari', 'Adhaar Card', '9023 2920 7070', '9182788025', 'malli.rupanagudi@gmail.com', 'DIO Venkateswar Reddy\r\nMARKAPUR BODAPADU Bodapadu\r\nPrakasam Andhra Pradesh-523315', '9182788025', 1, 700, 1, 'uploads/signatures/c0b1637985e022796bba20c8f072a1c6.jpg', '2024-11-20 00:00:00', '2024-11-20 04:43:03'),
(427, 'VISHAKHA MITTAL', 'Election Card', 'NYD2253821', '7067616345', 'agrawal1502@gmail.com', 'Address: GLAJPATARAI ROAD STREET NUNSER CHAR, TEHSIL, DHAR, DISTRICT DHAR EP54', '7067616345', 1, 0, 0, 'Not Signed', NULL, '2024-11-20 04:44:43'),
(428, 'Umar Farooq', 'Adhaar Card', '8026 3657 0682', '6005403941', 'umarumar07217@gmail.com', 'S/O: Faooq Ahmed, dalain, -, Dalain, Doda, Chouri, Jammu And Kashmir, 182203', '6005403941', 1, 0, 0, 'Not Signed', NULL, '2024-11-20 04:45:50'),
(429, 'Udhaya Subashchandrabose', 'Adhaar Card', '6282 3362 3902', '9786474902', 'udhayasubash7@gmail.com', 'D/O: Subashchandrabose, NO 47/3, KASTHURIBAI STREET, MAYILADUTHURAI TALUKA, KORANADU, Mayiladuthurai,\r\nNagapattinam. Tamil Nadu 90', '9786474902', 1, 277, 1, 'uploads/signatures/85bfbbd17b6a80f9c2e4964b083001f2.jpg', '2024-11-20 00:00:00', '2024-11-20 05:14:08'),
(430, 'Kakollu Bhavana', 'Adhaar Card', '9276 4248 2452', '7386451302', 'bhavanakakollu1412@gmail.com', 'D/O Kakollu Raju.2-88BAPULAPADU\r\nRanganathan Krishna Andhra Pradesh - 521106', '7386451302', 1, 700, 1, 'uploads/signatures/f4b93b47b45ec9130d00bf9849827d85.jpg', '2024-11-20 00:00:00', '2024-11-20 05:26:37'),
(431, 'Jadhav Shiva', 'Adhaar Card', '6908 5745 3932', '9182646971', '???????????095@?????.???', 'S/O: Jadhav Raju\r\n00 Utnoor X Road Nagapur Nagapur, Adilabad Andhra Pradesh-50431100 Utnoor X Road Nagapur Nagapur, Adilabad Andhra Pradesh-504311', '9182646971', 1, 0, 0, 'Not Signed', NULL, '2024-11-20 05:37:44'),
(432, 'Dipi Prosad Roy', 'Adhaar Card', '5922 3276 3915', '9144314159', 'royripan209@gmail.com', 'C/O Madhab Ch Roy Purba Dangapara Jhar Salbari\r\nJhar Salbari Jhar Salbari Dhupguri Jalpaiguri West Bengal 735210', '9144314159', 1, 0, 0, 'Not Signed', NULL, '2024-11-20 06:31:27'),
(433, 'Shalini Gupta', 'Adhaar Card', '2004 8218 4992', '7651845851', 'shalugupta945014@gmail.com', 'D/O: Vinay Kumar Gupta, 91, Sanjay Gandhi Nagar, Naub aubasta, Kanpur, Kanpur Nagar,\r\nLUttar Pradesh-208021', '7651845851', 1, 85, 1, 'uploads/signatures/4d621b61c3e8d766740c6342c8f1a464.jpg', '2024-11-20 00:00:00', '2024-11-20 06:33:00'),
(434, 'Madan Kumar', 'Adhaar Card', '8790 4101 4123', '9264249570', 'madankumar14112005@gmail.com', 'S/O: Ram Nandan Singh, village, phulhar, waard 03, Harlakhi, Madhubani, Bihar-847240', '9264249570', 1, 715, 1, 'uploads/signatures/6ab8a2e2f55cd36933d671cc1befcdea.jpg', '2024-11-20 00:00:00', '2024-11-20 08:04:13'),
(435, 'THOMAS JOHN', 'Adhaar Card', '2166 2131 7462', '8921920195', 'thomas670511@gmail.com', 'CHALUNKAL, KOLUVALLY, CHUNDA PO, -,\r\nVAYAKKARA, Kannur, Kerala 670511', '8921920195', 1, 19, 1, 'uploads/signatures/048babebba723fd8a24e14c3e88ba009.jpg', '2024-11-21 00:00:00', '2024-11-20 12:06:18'),
(436, 'Brmamrothu Bharath Vama', 'Adhaar Card', '7860 3454 7276', '6300787969', 'bbbharathvarma@gmail.com', 'SO Brhamaruthu Narshing Rao Late, 6-1- Chinta Kunta Wada, Chinta Kunta Woda, Nirmal, Adilabad, Andhra Pradesh-50410', '6300787969', 1, 0, 0, 'Not Signed', NULL, '2024-11-20 12:52:17'),
(437, 'Divya Bharti', 'Adhaar Card', '9577 89125651', '9471070260', 'Alokkumar6plas2018@gmail.com', 'D/O: Alok Kumar, Gram\r\ndhamauli ramnath tole kalwari, Post kalwari, Dhamauli Ramnath, Muzaffarpur, Bihar 843108', '9471070260', 1, 4, 1, 'uploads/signatures/e0723865464bcec12cc501fdd5e51a20.jpg', '2024-11-20 00:00:00', '2024-11-20 13:33:40'),
(438, 'snehalata padhi', 'Adhaar Card', 'xxxxxxxx5800', '9668119591', 'sweety.padhi1995@gmail.com', 'Subash chandra padhi ,  R-3/g-1 jagannath colony , sadar , po budhraja, dist sambalpur, odisha-768004      ', '9668119591', 1, 0, 0, 'Not Signed', NULL, '2024-11-21 05:24:26'),
(439, 'Eduru Maneesh', 'Adhaar Card', '6580 0385 9728', '6305139214', 'maneesheduru@gmail.com', 'S/O Raheema, 00,\r\nchowkacharla, chinna\r\nharijanawada,\r\nvidavalurumandalam,\r\nChowkacherla, Nellore,\r\nAndhra Pradesh - 524316', '6305139214', 1, 700, 1, 'uploads/signatures/ddec7823e23ede38aa129515d0f56555.jpg', '2024-11-21 00:00:00', '2024-11-21 05:34:32'),
(440, 'G Mohan', 'Adhaar Card', '4031 4536 6707', '7603869766', 'mohanramya2402@gmail.com', 'S/O P GANESAN, PLOT NO 57, 4TH MAIN ROAD, VGN SOUTHERN GARDEN, Cowl Bazaar, Kancheepuram, Tamil Nadu - 600074\r\n', '7603869766', 1, 700, 1, 'uploads/signatures/9a13bb61932510535671fcce23bbeb70.jpg', '2024-11-21 00:00:00', '2024-11-21 05:36:27'),
(441, 'Rihana khanum', 'Adhaar Card', '8718 4243 9340', '9972533398', 'simrankhan7975@gmail.com', '2nd Edgah Ane Gundi Road\r\nMandi Mohalla Mysore\r\nBannimantap Mysore\r\nKarnataka 570015', '9972533398', 1, 1, 1, 'uploads/signatures/4c2e0fd6b89f6da01a74096ca0478546.jpg', '2024-11-24 00:00:00', '2024-11-22 03:34:40'),
(442, 'Gnyanavaraprasad', 'Adhaar Card', '7116 3777 1325', '9739111821', 'prasad.n.gadwal42@gmail.com', 'S/O: Nagendra,\r\nplot no 19,\r\n8th cross,\r\nnear soniya gandhi school,\r\nambika nagar tarfile,\r\nVTC: Gulbarga,\r\nPO: Gb Rs,\r\nSub District: Afzalpur,\r\nDistrict: Gulbarga,\r\nState: Karnataka,\r\nPIN Code: 585102', '9739111821', 1, 116, 1, 'uploads/signatures/9329b1b54073ed10236b5b2a814dd0ab.jpg', '2024-11-22 00:00:00', '2024-11-22 03:38:36'),
(443, 'Nivetha G', 'Adhaar Card', '8007 1476 6977', '9042147101', 'gnivetha1419@gmail.com', 'NO 2/132,\r\n KAKANGARAI COLONY,\r\n KAKANGARAI POST,\r\n THIRUPATHUR TALUK,\r\n  VTC: Kakangarai, PO: Kakangarai R.S.,\r\n District: Vellore,\r\nState: Tamil Nadu, PIN Code: 635654', '9042147101', 0, 459, 1, 'uploads/signatures/c105ab7e0dfea0ac04bdac1e266d9590.jpeg', '2024-11-22 00:00:00', '2024-11-22 04:32:24'),
(444, 'Manne Akil Kumar', 'Adhaar Card', '8511 6155 1234', '8639410787', 'bunnyakhil8323@gmail.com', 'S/O: Vijay Kumar\r\n8-23 pilli wada\r\nnear mazid\r\nNarsapur, Medak\r\nAndhra Pradesh - 502313', '8639410787', 1, 0, 0, 'Not Signed', NULL, '2024-11-22 04:44:18'),
(445, 'Nalleboyina Shiva Nagesh', 'Adhaar Card', '2116 8962 5451', '8008329277', 'ganeshyadav000099@gmail.com', 'S/O Venkata Siva Rao, 5-64, Vangipuram, Vangipuram, PRATTI PADU, Guntur, Andhra Pradesh, 522015', '8008329277', 1, 700, 1, 'uploads/signatures/5f151cd629d75dd18aa2451f635e3408.jpg', '2024-11-22 00:00:00', '2024-11-22 05:06:26'),
(446, 'Anagha B', 'Adhaar Card', '4766 0420 2954', '8590192750', 'anaghaanu8995@gmail.com', 'Anagha B\r\nMELUVEETTIL HOUSE\r\nAZHIYANNUR PO\r\nKadampazhipuram-i\r\nPalakkad Kerala - 678633\r\n8590192750', '8590192750', 1, 0, 1, 'uploads/signatures/6ff6e262483020dbabe40ae83716a8d7.jpg', '2024-11-23 00:00:00', '2024-11-22 05:08:27'),
(447, 'Suman Maurya ', 'Adhaar Card', '6382 5129 9551', '9335011693', 'menzesbatt@gmail.com', 'W/O Brijesh Maurya,\r\nSANGAPUR, SANGAPUR,\r\nSangapur, Ramganj, Amethi, Uttar Pradesh, 228159\r\n', '9335011693', 0, 422, 1, 'uploads/signatures/997e7dfc5c2073dd9bddbe6902732c1f.jpg', '2024-11-22 00:00:00', '2024-11-22 06:03:08'),
(448, 'Aditya Bhardwaj ', 'Adhaar Card', '9946 5253 5112', '8082169278', 'aditya29112003@gmail.com', 'S/O: Brij Lal,\r\nNear Mandir,\r\nChohala, Jammu, Jammu and Kashmir, 181102', '8082169278', 1, 0, 0, 'Not Signed', NULL, '2024-11-22 06:10:10'),
(449, 'Mayank Shivhare ', 'Adhaar Card', '4191 2864 5932', '9026420819', 'shivharemayank2001@gmail.com', 'S/O Narendra Shivhare, M 08, Mahendra Puri Colony, Gwalior Road, Jhansi Khas, Jhansi, Uttar Pradesh - 284002', '9026420819', 1, 0, 0, 'Not Signed', NULL, '2024-11-22 06:14:20'),
(450, 'Vislavath Sreedhar', 'Adhaar Card', '9644 1071 1357', '6300571308', 'vislavathsreedhar143@gmail.com', 'S/O Vislavath Vittal? ?? 3-120/2 Rameshwarpally Thanda Kamareddy Mandal Rameswarpalle\r\n Nizamabad Telangana - 503111', '6300571308', 1, 0, 1, 'uploads/signatures/d2bbd6c1a3e23abd2fc9851831d06386.jpg', '2024-11-22 00:00:00', '2024-11-22 11:18:39'),
(451, 'Vikas M', 'Adhaar Card', '8727 8933 2375', '6360536546', 'redmonster496@gmail.com', 'S/oManjunath K, No 65 Vruddhi Nilaya, 7th Cross, Guttebasaveshwara Nagara,\r\nChikkabanavara, Bengaluru, Karnataka - 560090', '6360536546', 1, 0, 0, 'Not Signed', NULL, '2024-11-22 11:20:18'),
(452, 'Nitin Kumar', 'Adhaar Card', '9985 3627 9717', '8287719099', 'nitinsharma93100@gmail.com', 'S/O Ramshay Sharma, J-61, PHASE-1, VIJAY VIHAR, ROHINI, North West Delhi, Delhi-110085', '8287719099', 0, 332, 1, 'uploads/signatures/8667c0596e4d588478c50b19b98e1450.jpg', '2024-11-22 00:00:00', '2024-11-22 11:21:51'),
(453, 'Gowru Akhil Kumar', 'Adhaar Card', '7807 9730 7148', '6300877791', 'mummyakhil1@gmail.com', 'C/O: Gowru Gangaiah, 23-180/7-3, Chunnambattiwada, Sri Krishna Nagar, Mancherial, Adilabad, Telangana - 504208', '6300877791', 1, 92, 1, 'uploads/signatures/b5209c2dc98b0096e79abd32d6fc530e.jpg', '2024-11-22 00:00:00', '2024-11-22 11:22:55'),
(454, 'Vallarasu Saravanan', 'Adhaar Card', '6333 0281 2129', '7448462870', 'vallarasuvallarasu2952001@gmail.com', 'Address: S/O: Saravanan, 3/239, KAMARAJPURAM, MELA VALUTHOOR, PAPANASAM TALUK, Valuthur, Thanjavur, Valoothoor, Tamil Nadu, 614210', '7448462870', 1, 16, 1, 'uploads/signatures/c864ae31e07875aa9c251217d02e673b.jpg', '2024-11-22 00:00:00', '2024-11-22 11:47:39'),
(455, 'Tamboli Sarfaraz Isakh', 'Adhaar Card', '8487 5936 0458', '7020888864', 'tambolisarfaraz123@gmail.com', 'S/O: Tamboli Isakh, Vikas nager Deglor Road Udgir, Udgir, Udgir, Latur, Maharashtra-413517', '7020888864', 1, 0, 0, 'Not Signed', NULL, '2024-11-22 11:48:54'),
(456, 'Tarun Rawat ', 'Driving License', 'UK15 20230004163', '6397261416', 'bisenlakshya1402@gmail.com', 'LALPANI PALLI\r\nKUMBHICHAUR TEHSIL KOTDWAR,\r\nDISTT-PAURI GARHWAL, U.K. - 246149\r\n', '6397261416', 1, 700, 1, 'uploads/signatures/5f3b1ee894a55d19ffca4bdd75077ecd.jpg', '2024-11-23 00:00:00', '2024-11-23 04:39:15'),
(457, 'Lakshay Bisen', 'Adhaar Card', '6542 3677 1270', '7999566956', 'bisenlakshya1402@gmail.com', 'To\r\n?????? ?????\r\nLakshya Bisen\r\nS/O: Anil Bisen,\r\nward no, - 10,\r\ngavn- Bakera,\r\nVTC: Bakera,\r\nPO: Bakera,\r\nSub District: Waraseoni,\r\nDistrict: Balaghat,\r\nState: Madhya Pradesh,\r\nPIN Code: 481335', '7999566956', 1, 12, 1, 'uploads/signatures/5456b93d05cd4cf842658a7ae98bc92d.jpg', '2024-11-23 00:00:00', '2024-11-23 04:41:49'),
(458, 'Shivashankar ', 'Adhaar Card', '4406 4606 8710', '8088494879', 'Shivashankar2675@gmail.com', 'S/O: Ayyappa, H.NO., Dharmapur, Chinnakar, Yadgir, Karnataka, 585321', '8088494879', 1, 0, 0, 'Not Signed', NULL, '2024-11-23 04:43:44'),
(459, 'Sokkam Sanjay ', 'Adhaar Card', '8258 9756 1774', '6309768800', 'chintusokkam6@gmail.com', 'House Number 1-89/1\r\nChepur\r\nNizamabad Telangana - 503224', '6309768800', 1, 27, 1, 'uploads/signatures/da29640d5b1f943fa314dbaf6cd9b8d5.jpg', '2024-11-23 00:00:00', '2024-11-23 04:45:41'),
(460, 'SHANAYA SHABBIR SHAIKH', 'Adhaar Card', '9315 8187 3193', '8433645547', 'anjalidesai35869@gmail.com', 'ROW HOUSE-10, FLOOR GROUND, SPANISH VILLA, CLUSTER-2, CHINCHOTI ROAD, VASAI-VIRAR EAST, VASAI, Palghar, Maharashtra-401208', '8433645547', 1, 0, 0, 'Not Signed', NULL, '2024-11-23 04:48:04'),
(461, 'Shrishti S', 'Select Id Type', '697650141577', '821728', 'shristisathya26@gmail.com', 'D/O A V Sathyanarayana, #77/11, 5th Cross, Hanumanth Nagar, Bangalore South, Gaviopuram Extension, Bangalore, Karnataka, 560019', '821728', 0, 2, 1, 'uploads/signatures/a78e6d2eeab6149952d278dc35e6f17e.jpeg', '2024-11-23 00:00:00', '2024-11-23 05:32:19'),
(462, 'R Balasubramaniam ', 'Adhaar Card', '9060 4518 5033', '8861539042', 'balarajani4791@gmail.com', '#C 309 Gowri apartments new BEL road\r\nRM V 2nd Stage\r\nMsrit\r\nBangalore North Bangalore\r\nKarnataka 560054\r\n', '8861539042', 1, 700, 1, 'uploads/signatures/81a52ea7895f937f906824dcc552714f.jpg', '2024-11-23 00:00:00', '2024-11-23 05:40:26'),
(463, 'Pooja Kumari ', 'Adhaar Card', '6593 2891 3894', '9435259005', 'poojak2481997@gmail.com', 'D/O: Bir Kumar Jha,\r\nward - 13,\r\nbirauli,\r\nVTC: Mahamadpur,\r\nPO: Biratpur Birauli,\r\nSub District: Benipatti,\r\nDistrict: Madhubani,\r\nState: Bihar,\r\nPIN Code: 847223', '9435259005', 1, 0, 0, 'Not Signed', NULL, '2024-11-23 06:59:24'),
(464, 'Ameya Baban Thorat', 'Adhaar Card', '3540 0637 2358', '89990', 'ameya33thorat@gmail.com', 'Padmashri Plot No 33,\r\nBhavani Nagar,\r\nNear Vignahar Ganesh Mandir,\r\nAdke Nagar 3,\r\nVTC: Nashik Road,\r\nPO: Nashik Road,\r\nDistrict: Nashik,\r\nState: Maharashtra,\r\nPIN Code: 422101\r\n', '89990', 1, 2, 1, 'uploads/signatures/958623a7495b1633193a89935ac807a4.jpg', '2024-11-23 00:00:00', '2024-11-23 07:23:35'),
(465, 'Amit Kumar', 'Adhaar Card', '4652 2281 8830', '969680', 'kamit69844@gmail.com', 'C/O: Baba Deen, pure sohrat singh,\r\nMangauli, Amethi,\r\nUttar Pradesh - 227809\r\n+91 96968 00688', '969680', 1, 2, 1, 'uploads/signatures/2418438e57c8268675d58e84ebf2f9ee.jpg', '2024-11-24 00:00:00', '2024-11-24 08:12:43'),
(466, 'Jeevitha D', 'Adhaar Card', '6690 1337 5059', '78128', 'eevijeevitha662004@gmail.com', 'Jeevitha D\r\nAddress:\r\nHouse No: 3423\r\nVillage: Valav\r\nPost Office: A\r\nDistrict: Tirunelveli\r\nState: Tamil Nadu\r\nPincode: 627404', '78128', 1, 4, 1, 'uploads/signatures/5bdd8aef8a4a7b979c7f2a092d8feb44.jpg', '2024-11-24 00:00:00', '2024-11-24 11:04:43'),
(467, 'tanmay chouhan', 'Adhaar Card', '429388690901', '7852007492', 'tc7386676@gmail.com', 'Tara Singh chouhan, 515, solankiyo ko ghati, girwa, udaipur shastri circle, udaipur, girwa, Rajasthan, 313001', '7852007492', 1, 700, 1, 'uploads/signatures/7369aea5c6df010f0a69b0adc397f86e.jpg', '2024-11-25 00:00:00', '2024-11-25 07:15:56'),
(468, 'Gaikwad jyoshna', 'Adhaar Card', '268449211046', '9347910461', 'jyobunny77@gmail.com', 'D/O Gaikwad Sanjay, 18-6-1008/1, Mekala\r\nBanda, Mahankali Temple Opposite, Mekalabanda, Hyderabad, Hyderabad,\r\nAndhra Pradesh - 500053', '9347910461', 1, 0, 0, 'Not Signed', NULL, '2024-11-25 07:18:38'),
(469, 'Vikas Mallu Jadhav', 'Adhaar Card', '4272 7188 5524', '8951844667', 'Jadhavv936@gmail.com', 'S/O: Mallu Jadhav, # 690, near bharamade hospital, Ugarkhurd, Belgaum, Karnataka, 591316\r\n', '8951844667', 1, 0, 0, 'Not Signed', NULL, '2024-11-25 07:59:27'),
(470, 'Ayush Verma', 'Adhaar Card', '3061 6791 1455', '8989541442', 'ayushvermabk123@gmail.com', 'S/O. Dharmendra Verma, Naya Ganj, Galla Mandi Pachi Pada, Kila Gate, Gird, Gwalior, Madhya Pradesh - 474003\r\n', '8989541442', 0, 289, 1, 'uploads/signatures/d98e4c63106843b481abbc2f68f77996.jpg', '2024-11-25 00:00:00', '2024-11-25 12:22:30'),
(471, 'Aachal Shukla ', 'Adhaar Card', '4265 1470 0518', '8577983735', 'anchalbharatwasi@gmail.com', 'C/O: Pankaj Shukla, 124/1, j k colony,\r\njajamu, Shiwans Tenray, Kanpur Nagar,\r\nUttar Pradesh-208010', '8577983735', 1, 48, 1, 'uploads/signatures/d7ec974b63516a8b0c43ef31a148fc69.jpg', '2024-11-25 00:00:00', '2024-11-25 12:25:04'),
(472, 'Kada Meghana', 'Adhaar Card', '7277 3010 4235', '8328077440', 'kadameghana@gmail.com', 'C/O: Gullapalli Sreevasthava, 3-10-254, FREDDY COLONY, Hanamkonda, PO: Hanamkonda, DIST: Hanumakonda, Telangana - 506001', '8328077440', 0, 1, 1, 'uploads/signatures/2e5c4714b37b41c70a54b3e6261bd06e.jpg', '2024-11-26 00:00:00', '2024-11-26 04:09:41'),
(473, 'Manish Ulhas Jangale', 'Adhaar Card', '9382 5508 3695', '7796283095', 'manishjangale6@gmail.com', 'Manish Ulhas Jangale VTC: Pimprud, PO: Faizpur, Sub District: Yawal,\r\nDistrict: Jalgaon,\r\nState: Maharashtra,\r\nPIN Code: 425503,\r\nMobile: 7796283095', '7796283095', 1, 9, 1, 'uploads/signatures/de0b26d8e50570866757885b3d07c18b.jpg', '2024-11-26 00:00:00', '2024-11-26 04:15:46'),
(474, 'Syed Mujeeb Rahman', 'Adhaar Card', '8854 6435 2172', '7975475034', 'syedmujeebrahman76@gmail.com', 'S/O: Syed Abdul Rahman, #2701, MKDK Road, 4th Cross, Mandi Mohalla, VTC: Mysore, PO: Mysore, Sub District: Mysore, District: Mysuru, State: Karnataka, PIN Code: 570001.', '7975475034', 1, 2, 1, 'uploads/signatures/ab7e7cd4eafa45576b828aa580bf16d6.jpg', '2024-11-26 00:00:00', '2024-11-26 04:51:43'),
(475, 'Meddaikar Mudassir Hafeez', 'Adhaar Card', '4761 1947 6253', '9677807048', 'mudasirmedd@gmail.com', 'S/O: MeddaikarShakir Ahmed, NO 14/22 B, SMALL MOSQUE STREET, AMBUR, Ambur, Ambur, Vellore, Ambur, Tamil Nadu, 635802', '9677807048', 1, 455, 1, 'uploads/signatures/fd7ed9b66b603a10f520f2b3aaf860e8.jpeg', '2024-12-01 00:00:00', '2024-11-26 04:53:45'),
(476, 'Loga Dharshini R', 'Adhaar Card', '8665 7299 4592', '9047694615', 'logadharshini8@gmail.com', '1/318 NORTH STREET NATHATHUPATTI Melamadai Virudhunagar Tamil Nadu-626202', '9047694615', 1, 700, 1, 'uploads/signatures/93dfc5ae1d6525f69ceff06058bdee25.jpg', '2024-11-26 00:00:00', '2024-11-26 05:01:44'),
(477, 'Yogesh Pandurang Garule', 'Adhaar Card', '4962 5448 7357', '9881072863', 'hbyogesh23@gmail.com', 'plot n. 20/21, gurukrupa niwas yashoda nagar, pipeline road Ahmed Nagar savedi Ahmadnagar\r\nMaharashtra-414003', '9881072863', 1, 700, 1, 'uploads/signatures/4478b712913d7d657251251424662ba0.jpeg', '2024-11-27 00:00:00', '2024-11-27 04:46:53'),
(478, 'Chandraprakash Mewada', 'Adhaar Card', '2326 5573 0023', '7043475388', 'chintumewada9@gmail.com', 'C/O: Sampatlal Mewada, Sela Gurha, Rajsamand, Rajasthan-313332', '7043475388', 1, 700, 1, 'uploads/signatures/74a37b4075a19a9b85908dca2063237f.jpg', '2024-11-27 00:00:00', '2024-11-27 04:47:57'),
(479, 'G Mohan', 'Adhaar Card', '4031 4536 6707', '760386', 'mohanramya2402@gmail.com', 'S/O P GANESAN, PLOT NO 57, 4TH MAIN ROAD, VGN SOUTHERN GARDEN, Cowl Bazaar, Kancheepuram, Tamil Nadu - 600074\r\n', '760386', 1, 2, 1, 'uploads/signatures/a1fb47c6aa55a398c2e638b640d30d71.jpg', '2024-11-27 00:00:00', '2024-11-27 05:00:41'),
(480, 'Rahul Kumar Shukla', 'Adhaar Card', '5848 2151 4435', '7678562103', 'rahulyuvi7678@gmail.com', 'S/o Rajeev Kumar Shukla, Gram- kumaripur Balutola, Kumaripur, Daharia Molls, Manihari, Katihar, Bihar, 854103', '7678562103', 1, 0, 0, 'Not Signed', NULL, '2024-11-27 05:03:12'),
(481, 'Sharanabasava N Patil', 'Adhaar Card', '4989 7068 8769', '7026471512', 'Patilsharan329@gamil.com', 'S/O Nandanagouda, h no 3/14, near\r\ngram panchayati, Devapur, PO: Devapur, DIST: Yadgir,\r\nKarnataka 585290', '7026471512', 1, 700, 1, 'uploads/signatures/ce22fb4f8e27d62c2c531d1ba5e15ff2.jpg', '2024-11-27 00:00:00', '2024-11-27 05:05:09'),
(482, 'Mo Shanu', 'Adhaar Card', '7802 8047 1783', '6307593310', 'mohd.shanu6307593310@gmail.com', 'S/O: Mukhatyar Ali, galrai, Barwar, Kheri, Barbar, Uttar Pradesh, 261505', '6307593310', 1, 701, 1, 'uploads/signatures/85675c1122c53de2c33a6aaeb276a8d7.jpg', '2024-11-27 00:00:00', '2024-11-27 05:06:20'),
(483, 'Kanjarla Babitha', 'Adhaar Card', '4165 5938 2766', '7382631704', 'babitha73826@gmail.com', 'D/O Kanjarla Venu, 1-57/208/1/C, Sri Ram Nagar Colony, C-Block, Serilingampally,\r\nKondapur, PO: Kondapur, DIST: K.v.\r\nRangareddy, Telangana 500084', '7382631704', 1, 700, 1, 'uploads/signatures/62d96655c3e1f60625393f20718e52af.jpg', '2024-11-27 00:00:00', '2024-11-27 05:07:45'),
(484, 'Rameshkumar Samueal', 'Adhaar Card', '8392 3873 7706', '9620203128', 'adroitengine@gmail.com', 'S/O: Samueal 12/113 GNANAM VIILA ST LUKES CHURCH ROAD KOTHAGIRI \r\nKotagiri Kotagiri, The Nilgiris Tamil Nadu-643217\r\n\r\n', '9620203128', 1, 30, 1, 'uploads/signatures/1db630606683415719caa1a1f3e40f83.jpg', '2024-11-27 00:00:00', '2024-11-27 05:09:46'),
(485, 'K VENKATA SAI', 'Adhaar Card', 'AP10520220033912', '8341912363', 'ssaaiiraghu@gmail.com', '5-5/1 RAGHAVENDRA COLONY, RAJAHMUNDRY BOMMURU, RAJAHMUNDRY (RURAL), EAST GODAVARI, ANDHRA PRADESH PIN-533124', '8341912363', 1, 0, 0, 'Not Signed', NULL, '2024-11-27 06:15:06'),
(486, 'Komanpalli Lingam', 'Adhaar Card', '5028 9882 2813', '8125854882', 'shivalingam090@gmail.com', 'S/O: Komanpalli Ramulu ? ?? 1-1/2/1 Bussapur\r\nBalkonda Mandalam Bussapur Bilaspur Nizamabad Telangana - 503218', '8125854882', 1, 6, 1, 'uploads/signatures/a9eeb516161f180a186a08518734fa89.jpg', '2024-11-27 00:00:00', '2024-11-27 06:38:58'),
(487, 'Tarun Rawat ', 'Adhaar Card', 'UK15 20230004163', '639726', 'rawatdsds01@gmail.com', 'LALPANI PALLI\r\nKUMBHICHAUR TEHSIL KOTDWAR,\r\nDISTT-PAURI GARHWAL, U.K. - 246149\r\n', '639726', 1, 2, 1, 'uploads/signatures/179b5beb6a0c10573fedc1a4b4aea238.png', '2024-11-27 00:00:00', '2024-11-27 08:09:44'),
(488, 'Nalleboyina Shiva Nagesh', 'Adhaar Card', '2116 8962 5451', '800832', 'ganeshyadav000099@gmail.com', 'S/O Venkata Siva Rao, 5-64, Vangipuram, Vangipuram, PRATTI PADU, Guntur, Andhra Pradesh, 522015', '800832', 1, 2, 1, 'uploads/signatures/190222229a543a7234fc684170cb485b.jpg', '2024-11-27 00:00:00', '2024-11-27 09:46:40'),
(489, 'Narendra Pal', 'Adhaar Card', '2340 2834 0803', '7270938702', 'pal.narendra0598@gmail.com', 'Address: S/O: Ramnarayan, usargaon, gram usargaon, Usar \r\nGaon, Jalaun, Uttar Pradesh, 285202', '7270938702', 1, 0, 0, 'Not Signed', NULL, '2024-11-27 10:33:56'),
(490, 'Shake Abdhul Kareem', 'Adhaar Card', '4391 9015 7007', '6303519676', 'adbulkareem228@gmail.com', 'C/O: Shaik Baji. 1395, 20th road, ysr colony, near water tank, VTC: Eluru, PO: Eluru, Sub District: Eluru,\r\nDistrict: Eluru, State: Andhra Pradesh, PIN Code: 534001, Mobile: 5303519676', '6303519676', 1, 11, 1, 'uploads/signatures/30bce233cc7dfd2466ea575c69f6a22b.jpg', '2024-11-28 00:00:00', '2024-11-28 04:19:58'),
(491, 'Resham Rati Kumari', 'Adhaar Card', '2985 5815 1171', '9142024797', 'reshamratikumari@gmail.com', 'D/O: Ravindra Kumar Singh. ward - 1, mor, Mor (Part inMokame', '9142024797', 1, 0, 0, 'Not Signed', NULL, '2024-11-28 04:27:38'),
(492, 'Keerthana M', 'Adhaar Card', '9651 7677 2715', '8867205520', 'keerthanam6724@gmail.com', 'C/O Mahesha R. Doddahomma Village Nanjanagudu Talluku, Doddahomma, PO Chikkahomma, DIST: Mysuru. Karnataka-571316', '8867205520', 1, 700, 1, 'uploads/signatures/45fceb5d474744aa2cb9c48b060667f1.jpeg', '2024-12-04 00:00:00', '2024-11-28 04:28:38'),
(493, 'SHRADHANJALI SAHOO', 'Driving License', 'TS00820230001952', '9866238258', 'naliniprabha02@gmail.com', '4-40-159/8/5,\r\nHANUMAN NAGAR PRAGATHI NEAR OXFORD SCHOOL, BALANAGAR, MEDCHAL M-GIRI - 500037', '9866238258', 1, 0, 0, 'Not Signed', NULL, '2024-11-28 04:43:00'),
(494, 'Divya Anand Solanki', 'Adhaar Card', '4633 5739 4877', '8484877344', 'ds392157@gmail.com', 'D/O Anand Solanki,\r\nSomwar Peth Sasoon Quarter E Block Room No 251/252,\r\nOpposite State Bank, 423,\r\nPune City, Pune,\r\nMaharashtra - 411011\r\n\r\n', '8484877344', 1, 0, 0, 'Not Signed', NULL, '2024-11-28 06:47:02');
INSERT INTO `tbl_member` (`member_id`, `member_name`, `member_id_type`, `member_id_number`, `member_contact`, `member_email`, `member_address`, `member_pass`, `member_status`, `completed_form`, `agreement_status`, `agreement_sign`, `agreement_date`, `added_on`) VALUES
(495, 'Santosh Singh Senger', 'Adhaar Card', '7899 0061 6588', '8787048890', 'salilsengar1717@gmail.com', 'SO Keshav Singh, Nidaupur, Jalaun, Uttar Pradesh, 285124', '8787048890', 1, 0, 0, 'Not Signed', NULL, '2024-11-28 06:49:12'),
(496, 'Talla Samshitha', 'Adhaar Card', '5616 4219 8594', '7993410175', 'samshitha.talla2003@gmail.com', 'C/O: Talla Srinivas\r\n8-30/C, road no 04, VR laxmi Residency\r\nnew hemanagar\r\nBoduppal\r\nMedchal-malkajgiri, Telangana - 500092', '7993410175', 1, 0, 0, 'Not Signed', NULL, '2024-11-28 06:51:59'),
(497, 'Kartik Das', 'Adhaar Card', '8475 0961 2597', '9832617582', 'kartikdas7995048@gmail.com', 'S/O: Ashwini Das, Jilling, Puruliya, West Bengal - 723152', '9832617582', 1, 15, 1, 'uploads/signatures/314ba47fc2f9b91f3d531024f3e3ad7d.jpg', '2024-11-28 00:00:00', '2024-11-28 06:54:17'),
(498, 'Priya ', 'Adhaar Card', '3350 4496 3903', '6284554040', 'priya.ahuja.11728@gmail.com', 'D/O Dalip Kumar, H.no.33-F, St.no.6, Tripuri Town, Patiala, Patiala, Punjab - 147001\r\n', '6284554040', 1, 700, 1, 'uploads/signatures/fccdbee77d08181824f7309fdcb92488.jpg', '2024-11-28 00:00:00', '2024-11-28 06:56:30'),
(499, 'Rajkumar Chauhan ', 'Adhaar Card', '4129 0234 7996', '8573954120', 'Kumarchauhanr642@gmail.com', 'C/O: Vinod Kumar Chauhan,\r\nJakhaaniyan, Sadar Jahanpur,\r\nPO: Sadar Jahanpur,\r\nDIST: Ghazipur,\r\nUttar Pradesh, 275203\r\n', '8573954120', 1, 0, 0, 'Not Signed', NULL, '2024-11-28 09:11:09'),
(500, 'Adarsh Prashant Bhasme ', 'Driving License', 'MH27-20230016749', '9096699658', 'coderxd007@gmail.com', 'Near Hanuman Mandir, Prashant Nagar, Rukhmini Nagar 5.0, Amravati, Maharashtra 444606', '9096699658', 1, 1, 1, 'uploads/signatures/58db45f3fb289b0d65e0c8263e75a4dc.jpg', '2024-11-28 00:00:00', '2024-11-28 09:13:40'),
(501, 'Polle Rimsy', 'Adhaar Card', '8963 5887 9098', '8522919207', 'pollerimsy8@gmail.com', 'C/O: Polle Deshi Kumar\r\n18-13-181/9\r\nChandrayangutta\r\nBandlaguda\r\nHyderabad, Telangana - 500005\r\n', '8522919207', 1, 0, 0, 'Not Signed', NULL, '2024-11-28 13:55:06'),
(502, 'K Saisupriya ', 'Adhaar Card', '2881 1027 9454', '7382047060', 'saisupraja109@gmail.com', 'K Saisupraja\r\nD/O K Balaji,\r\n353A, Lakshmi Nagar,\r\nPuttur, Puttur,\r\nVTC: Puttur,\r\nPO: Puttur,\r\nSub District: Puttur, District: Chittoor,\r\nState: Andhra Pradesh,\r\nPIN Code: 517583', '7382047060', 1, 713, 1, 'uploads/signatures/ddcd9ca72c0f5ebd120a13dac952885e.jpg', '2024-11-29 00:00:00', '2024-11-29 04:23:44'),
(503, 'Gudiseva Haritha', 'Adhaar Card', '6343 9839 4096', '9126956789', 'harithagudiseva08@gmail.com', 'C/O: Gudiseva Raghavaiah, 19-16-131, BMK Rice Mill Road, Bhimavaram, West Godavari, Andhra Pradesh, 534201', '9126956789', 1, 700, 1, 'uploads/signatures/99f68c196499bb74998ee4e9f6fd7877.jpg', '2024-11-29 00:00:00', '2024-11-29 04:25:52'),
(504, 'Aswathi M', 'Adhaar Card', '7533 2864 5865', '6282119601', 'achuty.anil2011@gmail.com', 'W/O ANILKUMAR V, 07/872,\r\nMETTILPURA, MARUTHAROAD PO,\r\nKANDATHPARA, Marutha Road,\r\nPO:Marudarode, DIST:Palakkad, Kerala, 678007\r\n', '6282119601', 1, 0, 0, 'Not Signed', NULL, '2024-11-29 04:29:00'),
(505, 'Ashish Kumar', 'Adhaar Card', '7761 2682 1344', '8279833910', 'aashishprajapati836@gmail.com', 'S/O Rakesh Kumar, Village Jaroda Jatt,\r\nJadauda Jatt, Saharanpur,\r\nUttar Pradesh - 247554\r\n', '8279833910', 1, 0, 0, 'Not Signed', NULL, '2024-11-29 04:52:54'),
(506, 'Divyadharshini Rajini', 'Adhaar Card', '5464 0136 7902', '9176339301', 'divyarajini246@gmail.com', 'D/O: Rajini, NO 238 9TH CROSS STREET,\r\nPERIYAR NGAR, CHENGALPATTU,\r\nKaranaipuducheri, Kancheepuram,\r\nTamil Nadu - 603202\r\n', '9176339301', 1, 0, 0, 'Not Signed', NULL, '2024-11-29 06:10:32'),
(507, 'Preeti Tiwari ', 'Adhaar Card', '5942 6032 4360', '9235379596', 'pt3729245@gmail.com', 'D/O Ramdas Tiwari, Lodhipur, Shahjahanpur, PO: Shahjahanpur, DIST: Shahjahanpur, Uttar Pradesh - 242001', '9235379596', 1, 25, 1, 'uploads/signatures/104c3140998d7fbc491b2b12de8136d4.jpg', '2024-11-29 00:00:00', '2024-11-29 07:10:58'),
(508, 'Pardeep Pahan', 'Adhaar Card', '5026 3507 9053', '7250005685', 'pardeeppahan2000@gmail.com', 'Pandese Pahan\r\nS/O Sabru Pahan\r\nP.O. Manhi\r\nAra\r\nHandeved\r\nOrmanjhi Ranchi\r\nJharkhand 835219', '7250005685', 1, 0, 1, 'uploads/signatures/a8b30c6c75e4d5ec79b70e6a4640d1e8.jpg', '2024-11-29 00:00:00', '2024-11-29 11:59:45'),
(509, 'Parate Pavan Kumar', 'Adhaar Card', '3534 3900 3126', '7383664926', 'Koshtip671@gmail.com', 'S/O: Bansilal, 11, gandabhai ni chali, near swamimarayan mandir, virat nagar, Ahmedabad City, PO: Odhav Industrial Estate, DIST: Ahmedabad, Gujarat - 382415\r\n', '7383664926', 1, 0, 1, 'uploads/signatures/3288c71b5190916ddf42565a948b063d.png', '2024-11-29 00:00:00', '2024-11-29 12:30:32'),
(510, 'Sakthi .A', 'Adhaar Card', '2150 4594 5747', '6382064354', 'sakthi003anand@gmail.com', 'A Hemalatha\r\n1/34, Agaraharam\r\nAmmangudi\r\nVTC: Andanallur\r\nPO: Andanallur\r\nDistrict: Tiruchirappalli\r\nState: Tamil Nadu\r\nPIN Code: 639101\r\nMobile: 9095105695\r\n', '6382064354', 1, 700, 1, 'uploads/signatures/02c059d0d5ad41778aaaaed83c0596cd.jpg', '2024-11-30 00:00:00', '2024-11-29 12:38:50'),
(511, 'Maloth Mahaveer ', 'Adhaar Card', '5668 6679 0185', '9121337034', 'malothmahaveer890@gmail.com', 'Maloth Mahaveer\r\nPEDDATANDA BABLANAIK TANDA\r\nTURKAPALLI MANDALAM\r\nRusta Puram\r\nNalgonda Andhra Pradesh - 508116\r\n', '9121337034', 1, 700, 1, 'uploads/signatures/23252bd1a912cc8b0b4aea6275cb2026.jpg', '2024-11-29 00:00:00', '2024-11-29 12:48:41'),
(512, 'Raheem Ulla Qazi', 'Adhaar Card', '4083 9308 8804', '7869145813', 'qazichotuqazi@gmail.com', 'Address: S/O: Mo. Shanaulla, 127, Bazariya ward no.2, gardhi mohalla malgujar kuwa ke pass, Damoh KHAS, Damoh, Madhya Pradesh, 470661', '7869145813', 1, 0, 1, 'uploads/signatures/bc37b1871846e1460ca3f5cdeab22fee.jpg', '2024-12-01 00:00:00', '2024-11-30 05:08:43'),
(513, 'J Alexaaron', 'Adhaar Card', '7566 0932 0937', '9344612141', 'aaronjstraders@gmail.com', 'S/O, Joshua Sundar, 1/2794, V G Street M GR Nagar, Attanthangal, Redhills, Pammadukulam, Tiruvallur, Tamil Nadu - 600052', '9344612141', 1, 0, 0, 'Not Signed', NULL, '2024-11-30 05:16:18'),
(514, 'Abhaykumar Natvarlal Barot', 'Adhaar Card', '9382 7871 7112', '8200983709', 'raoabhi282002@gmail.com', 'Address: Kantheriya Hanuman road, Vadiivaluparu, Palanpur, Banaskantha, Gujarat-385001', '8200983709', 1, 0, 0, 'Not Signed', NULL, '2024-11-30 05:25:31'),
(515, 'Vishal', 'Adhaar Card', '8972 1765 3156', '9911660985', 'vishalchauhan991166@gmail.com', 'S/O: Rajesh, House No- 78, Gali No- 2, Nambardar Colony, \r\nSehatpur, Sector-91, Faridabad, Haryana - 121013', '9911660985', 1, 0, 0, 'Not Signed', NULL, '2024-11-30 05:35:07'),
(516, 'abhaykumar natvarlal barot', 'Adhaar Card', '938278717112', '8200983709', 'aaronjstraders@gmail.com', 'Hanuman road , palan pur ,  gujrath , 385001', '8200983709', 1, 0, 0, 'Not Signed', NULL, '2024-11-30 05:47:08'),
(517, 'vishal ', 'Adhaar Card', '897217653156', '9911660985', 'vishalchauhan991166@gmail.com', 'Rajesh house no -72 , gali no -2, nambardar colony, sehatpur , sector91 , faridabad , haryana-121013\r\n\r\n', '9911660985', 1, 0, 0, 'Not Signed', NULL, '2024-11-30 05:50:50'),
(518, 'vikky yadav ', 'Adhaar Card', '779264953101', '8252548828', 'vickybabu969305@gmail.com', 'Kamdev yadav \r\nTelkiyari \r\nPist karmatar\r\nJamtara \r\nJharkhand \r\n815352', '8252548828', 1, 700, 1, 'uploads/signatures/8593aa728c315abb14e523037de09755.jpg', '2024-11-30 00:00:00', '2024-11-30 05:52:57'),
(519, 'ayush harihar khapekar', 'Adhaar Card', '690038397977', '8149425482', 'ayushkhapekar07@gmail.com', 'Fule bazar \r\nNagpur \r\nMaharashtra 440018', '8149425482', 1, 0, 1, 'uploads/signatures/bdc62359e742acfdf1fff6ef6fcbf4c3.jpg', '2024-11-30 00:00:00', '2024-11-30 05:55:01'),
(520, 'vikash vishwakarma ', 'Adhaar Card', '275585752521', '7974780860', 'vikasvish343@gmail.com', 'Vikas vishwakarma \r\nHouse no -299 , ward no-52 purani basti nagoi khar darri \r\nKorba , Chhattisgarh- 495450', '7974780860', 1, 135, 1, 'uploads/signatures/83eccbdf6fa12b9b7af9ab8e5d1baf8a.jpeg', '2024-11-30 00:00:00', '2024-11-30 05:57:56'),
(521, 'yalamandala vasantha ', 'Adhaar Card', '593334383567', '7036041215', 'visanthay61@gmail.com', 'To Yalamandala Vasantha ?????? ???? D/O: Kondaiah 1-37 MUNDLAPADU Mundlapadu Mundlapadu, Prakasam Andhra Pradesh - 523112-', '7036041215', 1, 0, 1, 'uploads/signatures/d0622aab0ba38ca2e69badbe6e6d6607.jpg', '2024-12-01 00:00:00', '2024-11-30 06:00:44'),
(522, 'Nilam Raman Dubla', 'Adhaar Card', '7875 2732 3640', '7036041215', 'nilamdubla456@gmail.com', 'D/O: Raman Dubia, DUNGIPADA, MANOR ROAD, PALGHAR, Palghar, Thane, Maharashtra 401404', '7036041215', 1, 0, 0, 'Not Signed', NULL, '2024-11-30 06:03:53'),
(523, 'Silpa Sethi', 'Adhaar Card', '4129 6145 2088', '7205874384', 'sonusilpa914@gmail.com', 'W/O Santosh Sethi, Maheswarpur,Rohibanka Rohibanka, Nayagarh Odisha - 752090', '7205874384', 1, 0, 0, 'Not Signed', NULL, '2024-11-30 06:05:21'),
(524, 'Shveta Niranjan Chaugule', 'Adhaar Card', '2342 3391 6694', '8669473779', 'amule2998@gmail.com', 'VTC: Sultanpur,\r\nPO: Kini,\r\nSub District: Akkalkot,\r\nDistrict: Solapur,\r\nState: Maharashtra,\r\nPIN Code: 413216.\r\n', '8669473779', 1, 0, 0, 'Not Signed', NULL, '2024-11-30 06:27:34'),
(525, 'Akki Nagaraj Ronith', 'Adhaar Card', '7265 9880 7297', '9113827052', 'akkironith5986@gmail.com', 'Door No 8/2 Ward No 12\r\nSindigi Line Jumma Masjid Street\r\nNear Makkala Mantapa School\r\nBellary\r\nBallari Karnataka - 583101\r\n', '9113827052', 1, 4, 1, 'uploads/signatures/4c5e7aa3d65995e3e7475d7894ae22db.jpg', '2024-11-30 00:00:00', '2024-11-30 06:29:50'),
(526, 'S Shwetha ', 'Adhaar Card', '8779 2468 1012', '7975266386', 'shwetharavi3107@gmail.com', 'W/O: Ravikumar M, # 130, yallamma Temple Back, Rajapura, Hennagara Post, Anekal Taluk, Jigani, PO: Jigani, DIST: Bengaluru, Karnataka - 560105', '7975266386', 1, 701, 1, 'uploads/signatures/16c77478678fc2d1f8428cc734e90047.jpg', '2024-12-05 00:00:00', '2024-11-30 06:50:20'),
(527, 'S Shwetha ', 'Adhaar Card', '8779 2468 1012', '7975266386', 'shwetharavi3107@gmail.com', 'W/O: Ravikumar M, # 130, yallamma Temple Back, Rajapura, Hennagara Post, Anekal Taluk, Jigani, PO: Jigani, DIST: Bengaluru, Karnataka - 560105', '7975266386', 0, 701, 0, 'Not Signed', NULL, '2024-11-30 06:50:20'),
(528, 'S.Kesavapandian ', 'Adhaar Card', '644382235343', '9150349648', 'senthilkesava2005@gmail.com', 'S.Kesavapandian \r\n25/EXSERVICE MAN QUARTERS MULLAI NAGAR BBKULAM', '9150349648', 1, 700, 1, 'uploads/signatures/c058d82d9e1e8d32415e6eccd001d3b0.jpg', '2024-11-30 00:00:00', '2024-11-30 08:41:23'),
(529, 'Md Firdoush', 'Adhaar Card', '4468 4366 5255', '9748279065', 'mdfirdoush515@gmail.com', 'C/O Mohammad Shaban, 83E/1B/H/13, Belgachia Road, Belgachia, Kolkata, West Bengal - 700037', '9748279065', 1, 0, 1, 'uploads/signatures/d38b345e113314e6f422f61c775c9d28.jpg', '2024-12-03 00:00:00', '2024-11-30 10:02:47'),
(530, 'bvksdh', 'Adhaar Card', '353434757347', '545368645321', 'navinrajoriya2@gmail.com', 'smjcfhasjhcsjz,', '545368645321', 1, 0, 0, 'Not Signed', NULL, '2024-11-30 13:01:21'),
(531, 'bvksdh', 'Adhaar Card', '353434757347', '545368645321', 'navinrajoriya2@gmail.com', 'smjcfhasjhcsjz,', '545368645321', 1, 0, 0, 'Not Signed', NULL, '2024-11-30 13:01:21'),
(532, 'Md Firdoush', 'Adhaar Card', '446843665255', '9748279065', 'mdfirdoush515@gmail.com', 'C/O: Mohammad Shaban, 83,/1B/H/13, Belgachia, Road, Belgachia, Kolkata, West Bengal', '9748279065', 1, 0, 0, 'Not Signed', NULL, '2024-11-30 13:06:19'),
(533, 'Sakshi Prajapati', 'Adhaar Card', '3727 8819 1041', '9140956142', 'sakshiprajapati41@gmail.com', 'Address: D/O: Vinay Kumar, sookhapur, ghatampur, kanpur, Jajpur, Jajpur, Kanpur Nagar, Ghatampur, Uttar Pradesh, 209206', '9140956142', 1, 700, 1, 'uploads/signatures/b873cda2cdc04d9eeb7043aa53eb4fcc.jpg', '2024-12-01 00:00:00', '2024-11-30 13:09:11'),
(534, 'Ritu Kamlakar Mali', 'Adhaar Card', '9544 9328 6965', '9226651276', 'Guduuumali@gmail.com', 'Address: kaleborate nagar, Pune City, Pune, Maharashtra - 411028 ', '9226651276', 1, 51, 1, 'uploads/signatures/231d522089bd381046408c8ad56410df.jpg', '2024-11-30 00:00:00', '2024-11-30 13:10:10'),
(535, 'Krishna Saha', 'Adhaar Card', '3850 1414 2401', '7038688763', 'krishnasaha1994@gmail.com', 'S/O: Shibaram Saha, bethuadahari, Nadia, West Bengal - 741126\r\n', '7038688763', 1, 0, 0, 'Not Signed', NULL, '2024-12-01 04:10:41'),
(536, 'Arshiya Rukhsar ', 'Adhaar Card', '9251 7358 0593', '9696473796', 'abhinavsingh4june1997@gmail.com', 'D/O ISRAR AHMAD, 44, KALLAN KHA MOHALLA, NEAR HAZRAT CHAURAHA, Nanpara, Bahraich, Uttar Pradesh-271865\r\n', '9696473796', 1, 14, 1, 'uploads/signatures/223e8edb6a5146dc86a41c1f1c4bc6b8.jpg', '2024-12-01 00:00:00', '2024-12-01 04:13:38'),
(537, 'Abhinav Singh ', 'Adhaar Card', '9300 8208 9687', '8299085828', 'abhinavsingh4june1997@gmail.com', 'S/O Surya Lal Singh, new house, near falahari baba mandir, civil line, Gonda, Gonda, Uttar Pradesh - 271001\r\n', '8299085828', 1, 0, 0, 'Not Signed', NULL, '2024-12-01 04:16:14'),
(538, 'Devnarayan Naik', 'Adhaar Card', '5762 7419 4162', '7415403570', 'avhipatel55@gmail.com', 'S/O: Krishna Naik, House No 05/k, Bandhapali, Tamnar, Pata, Raigarh, Chhattisgarh, 496107', '7415403570', 1, 0, 0, 'Not Signed', NULL, '2024-12-01 04:19:01'),
(539, 'Sanchit ', 'Adhaar Card', '2920 8514 9722', '6397109509', 'sanchitgangwar72@gmail.com', 'S/O: Krishan Pal, Vill Navada Imamabad, post kyoladia,, Nawabganj, Bareilly, Uttar Pradesh-262406\r\n', '6397109509', 1, 0, 0, 'Not Signed', NULL, '2024-12-01 04:21:11'),
(540, 'Amandeep Singh', 'Adhaar Card', '7742 7517 4497', '9646846568', 'ga229250@gmail.com', 'C/O: Amarjeet Singh, Z-7/03273, MAIN ROAD UDHAM SINGH NAGAR, NEAR GANPATI ENCLEAVE, DABWALI ROAD, Bathinda, Bathinda, Punjab, 151001\r\n', '9646846568', 1, 68, 1, 'uploads/signatures/ae801a99ee5f7c19043951b99127decf.jpg', '2024-12-01 00:00:00', '2024-12-01 04:36:42'),
(541, 'Rakesh', 'Adhaar Card', '7601 2401 8978', '7676018690', 'rakeshkanji333@gmail.com', 'S/O Kamalakar, 3/108,VTC: Ranjolkheni, PO: Ranjol Kheni, District: Bidar, State: Karnataka, PIN Code: 585329, Mobile: 7676018690', '7676018690', 1, 700, 1, 'uploads/signatures/b988f1204fdbe77891e02ab5157d8f9e.jpg', '2024-12-01 00:00:00', '2024-12-01 05:09:51'),
(542, 'Prasad Suresh Nandgaonkar', 'Adhaar Card', '5797 6432 3657', '9324648985', 'prasadnandgaonkar2@gmail.com', 'ROOM NO. 08, KASHI VISHWANATH MAHADEV CHAWL, \r\nNEAR SAI DABA, KALYAN EAST, Kalyan, Thane', '9324648985', 1, 0, 0, 'Not Signed', NULL, '2024-12-01 05:29:39'),
(543, 'Pratap Tamang', 'Adhaar Card', '7029 0249 2628', '9609592095', 'Tamangpratap837@gmail.com', 'S/O: Minson Tamang\r\nUpper Hum Busty Hurn Tukdah Khasmahal Darjeeling West Bengal -734222', '9609592095', 1, 0, 0, 'Not Signed', NULL, '2024-12-01 05:30:42'),
(544, 'Nahin Sultana', 'Adhaar Card', '7854 2907 8446', '7799280867', 'sultananahin7@gmail.com', 'D/O: Syed Nahid Pasha, 17-2-955/A, Rain Bazar, Yakutpura, Charminar, PO: Yakutpura, DIST: Hyderabad, Telangana - 500023', '7799280867', 1, 1, 1, 'uploads/signatures/87ddb2b2e8089d9ccc9bd59e7c446e17.jpg', '2024-12-01 00:00:00', '2024-12-01 05:33:05'),
(545, 'Nilesh Kalyan Nikam', 'Adhaar Card', '5981 0238 1452', '7875064180', 'nileshknikam7875@gmail.com', 'S/O: Kalyan Nikam, Tunki, PO: Tunki, DIST: Aurangabad, Maharashtra - 431116', '7875064180', 1, 107, 1, 'uploads/signatures/9f86508132e02120f57c6491ab53f2a9.jpg', '2024-12-01 00:00:00', '2024-12-01 05:34:06'),
(546, 'Asha Kumari Yadav', 'Adhaar Card', '9052 7351 0710', '6289251715', 'asha29254@gmail.com', 'Kameshwar Yadav, 39. Bijay Kumar Mukharjee Road, Panitanki Shiv Mandir, Panitanki Shiv Mandir, VTC: Haora (M.Corp), PO: Salkia, District: Howrah, State: West Bengal, PIN Code: 711106', '6289251715', 1, 700, 1, 'uploads/signatures/bd394877d0ac4af37fd033ae4bc5fdda.jpg', '2024-12-01 00:00:00', '2024-12-01 05:54:26'),
(547, 'Swathi R', 'Adhaar Card', '8803 8972 0709', '6383412960', 'mrschandran15@gmail.com', 'Address: D/O: Ranganathan, 54/25, PILLAIYARKOIL STREET, Koyambedu, Koyambedu, Chennai, Tamil Nadu, 600107', '6383412960', 1, 87, 1, 'uploads/signatures/f063ddc3e1226509f9b627802f14f96d.jpg', '2024-12-01 00:00:00', '2024-12-01 06:16:50'),
(548, 'Chidananda B', 'Election Card', 'NRV6833248', '9740835155', 'chidub182005@gmail.com', '100, HURULIHALLI, HURULIHALLI, BELENAHALLI, TARIKERE, CHIKKMAGALUR, \r\nKARNATAKA-577228', '9740835155', 1, 266, 1, 'uploads/signatures/fb7a5b28123b9c88beff774a9b9d6876.jpg', '2024-12-01 00:00:00', '2024-12-01 06:53:15'),
(549, 'Karthick Viswanath H', 'Adhaar Card', '4477 8242 6651', '8248553722', 'karthickviswanath871@gmail.com', 'S/O: Harikrishnan,1/279. KALIYAMAN KOVIL STREET, NORTH POOLANGULAM, VTC: Poolankulam, PO: Poolankulam, Sub District: Alangulam, District: Tirunelveli. State: Tamil Nadu, PIN Code: 627415,', '8248553722', 1, 6, 1, 'uploads/signatures/d4b9c640a53777e7ec65aa8ba8513074.jpg', '2024-12-31 00:00:00', '2024-12-01 07:24:58'),
(550, 'TABASUM BASHIR', 'Adhaar Card', '7701 4478 4954', '6006773304', 'btabasum362@gmail.com', 'C/O: Bashir Ahmad Dentoo, Nut Nusa, PO: Natnusa, DIST: Kupwara, Jammu and Kashmir 193221', '6006773304', 1, 700, 1, 'uploads/signatures/73e1c32284db1c4050153543a4d1badc.jpg', '2024-12-01 00:00:00', '2024-12-01 07:48:02'),
(551, 'Kaavya Kilawat', 'Adhaar Card', '8475 9487 5876', '7901917902', 'kaavyakilawat26@gmail.com', 'C/O: Prashant Kilawat, C-601, Samriddhi, Indralok Phase 4, Ghodbunder Link Road, Near Ramdev Park, Bhayander East, VTC: Thane, PO: Bhayander East, Sub District. Thane, District: Thane, State: Maharashtra, PIN Code: 401105', '7901917902', 1, 0, 0, 'Not Signed', NULL, '2024-12-01 08:05:03'),
(552, 'Shaik Vasiya Chandini', 'Adhaar Card', '4544 2393 2443', '7032436280', 'shaiknageenamanna@gmail.com', 'DIO: S Babu 5-1-4-1-19-1 Saida madanapall firdose mazeed Madanapalle Madanapalle Chittoor Andhra Pradesh-517325', '7032436280', 1, 700, 1, 'uploads/signatures/f5704b544eab32752f48a292ee76a928.jpg', '2024-12-01 00:00:00', '2024-12-01 08:42:10'),
(553, 'Sahil Ishfaq', 'Adhaar Card', '992835033459', '9469643131', 'khanharis9253@gmail.com', 'Address: S/O: Ishfaq Ahmad, Bal Koote, Baramula, Jammu and Kashmir 193123', '9469643131', 1, 0, 0, 'Not Signed', NULL, '2024-12-01 09:37:09'),
(554, 'Anjali Sunil Sarkar', 'Adhaar Card', '3107 0372 5165', '9322851017', 'as7354256@gmail.com', 'DIO Sunil Sarkar, WARD NO.1 CHHINDWADA ROAD, NEAR VITTHAL RUKAMAI mandir, NEW PANJRA koradi. VTC: Panjara, District Nagpur, State: Maharashtra, PIN Code: 441111', '9322851017', 1, 0, 0, 'Not Signed', NULL, '2024-12-01 09:46:16'),
(555, 'Kunal Mangesh More', 'Adhaar Card', '6236 3615 7906', '8484991324', 'kunalmore916@gmail.com', 'Kunal Mangesh 203 shant deep Appartment vihitgaon\r\nMaharaja stop\r\nNashik Maharashtra-122101', '8484991324', 0, 400, 1, 'uploads/signatures/c2c1ec4b5aeff57c8bdee5a322610b3d.jpg', '2024-12-01 00:00:00', '2024-12-01 09:54:31'),
(556, 'Krish Digarra', 'Adhaar Card', '5363 0856 4192', '7976702849', 'l27170856@gmail.com', 'Address: S/O: Laxmikant Sharma, daddu ka khet indra colony, Karauli, Karauli, Rajasthan, 322241', '7976702849', 1, 0, 0, 'Not Signed', NULL, '2024-12-01 10:06:15'),
(557, 'Ankit Rambhai Patel', 'Adhaar Card', '6384 2998 3534', '9998574320', 'ankitpatel2298@gmail.com', 'Arkit Rambhai Patel Rani Fakyu Puna Surat Gujarat-394248\r\nMahuva', '9998574320', 1, 75, 1, 'uploads/signatures/29414707bb5e507a401a1aeb021ec340.jpg', '2024-12-01 00:00:00', '2024-12-01 10:18:19'),
(558, 'SNEHASIS GHOSH', 'Driving License', 'WB89 2022 0006827', '9330493046', 'Snehasisputu2002ghosh@gmail.com', 'VILL+PO-KANCHRAPARA, PS-BIZPUR 24 PARGANAS NOR, WB, 743145', '9330493046', 1, 0, 0, 'Not Signed', NULL, '2024-12-01 10:48:01'),
(559, 'Malanuinisa', 'Adhaar Card', '9693 7519 6927', '8904037723', 'mmalanunnisa@gmail.com', 'C/O: Mohamed Gouse Mandakkibhatti 4th Cross Holalkere Road, Behind Maramma Temple Chitradurga Chitradurga Chitradurga Kamataka-577501', '8904037723', 1, 0, 0, 'Not Signed', NULL, '2024-12-01 10:54:29'),
(560, 'Kundan Samaj Devlekar', 'Adhaar Card', '8669 6542 2344', '7743928669', 'deolekarkundan7@gmail.com', 'S/O: Samaj Devlekar, flat no, 1 jayant shri building, Ambethan road, near rajlaxmi residency, zitrai mala, chakan taluka khed, Ambethan, Pune, Maharashtra-410501', '7743928669', 1, 570, 1, 'uploads/signatures/8b24d053ef108fd0c354693608dafdfc.jpeg', '2024-12-02 00:00:00', '2024-12-01 11:12:46'),
(561, 'Shreya Jha', 'Adhaar Card', '8939 1280 1980', '9155832907', 'shreyajha2403@gmail.com', 'D/O: Dhirendra Kumar Jha, VILL-KISHUNPUR, PO KISHUNPUR, PS-PATAN, VTC: Kishunpur, Sub District: Patan, District: Palamu, State: Jharkhand, PIN Code: 822123,', '9155832907', 1, 0, 0, 'Not Signed', NULL, '2024-12-01 11:35:41'),
(562, 'Sk. Anas Ali', 'Adhaar Card', '8234 6881 4899', '8250296004', 'sk9764418@gmail.com', 'Address: S/O Sk Saifuddin, Kshirkundi, PO: Pandua,\r\nDIST: Hooghly, West Bengal - 712149', '8250296004', 1, 25, 1, 'uploads/signatures/87d45842c2b7f6defb39e82e7453b6f0.jpg', '2024-12-01 00:00:00', '2024-12-01 11:39:11'),
(563, 'Shaik Azam Pasha', 'Adhaar Card', '2938 6645 1117', '9182471578', 'shaikpasha2073@gmail.com', 'S/O Shaik Moulana, 8-3-228/678/1526, Karmika Nagar, Yousuf Guda, Hyderabad, DIST: Hyderabad, Andhra Pradesh - 500045', '9182471578', 1, 0, 0, 'Not Signed', NULL, '2024-12-01 11:40:07'),
(564, 'Eduru Maneesh', 'Adhaar Card', '6580 0385 9728', '630513', 'maneesheduru@gmail.com', 'S/O Raheema, 00,\r\nchowkacharla, chinna\r\nharijanawada,\r\nvidavalurumandalam,\r\nChowkacherla, Nellore,\r\nAndhra Pradesh - 524316', '630513', 1, 2, 1, 'uploads/signatures/05cf6a5fa55be1dc9d0a45d50a546226.jpg', '2024-12-01 00:00:00', '2024-12-01 13:10:56'),
(565, 'Sarathi P', 'Adhaar Card', '3404 0899 0757', '8248709559', 'sarathis3936@gmail.com', 'C/O: Prabukumar, 85-B, Kalaignar Colony, VTC: Vasudevanallur, PO: Vasudevanallur, Sub District: Sivagiri, District: Tenkasi State: Tamil Nadu, PIN Code: 627758,', '8248709559', 1, 700, 1, 'uploads/signatures/55d18042a734e51fc56245eac7ab1f6f.jpg', '2024-12-02 00:00:00', '2024-12-02 02:59:02'),
(566, 'Bachu Veera Raghava Surya Kiran', 'Adhaar Card', '9793 0581 6942', '7845223327', 'bachu3325@gmail.com', 'S/O: Bachu Veera Raghava Babu, 15/186-UP, SAI KUTEER ROAD GOPAVARAM, Gopavaram, Gopavaram, Cuddapah Andhra Pradesh, 516360', '7845223327', 1, 700, 1, 'uploads/signatures/f1551234b6c83eabda07694b56105218.jpeg', '2024-12-02 00:00:00', '2024-12-02 04:25:32'),
(567, 'Vasanth Kumar K O', 'Adhaar Card', '5383 5007 8904', '7411085014', 'vk749409@gmail.com', 'S/O: Obalappa, VTC: Kanchiganala, PO: Rajaghatta, Sub District: Dod Ballapur, District: Bangalore Rural, State: Karnataka, PIN Code: 561203,', '7411085014', 1, 20, 1, 'uploads/signatures/6bbb49433fab6fd9642ef1db1cf3fb47.jpg', '2024-12-02 00:00:00', '2024-12-02 04:27:11'),
(568, 'ABHISEK RANSINGH', 'Adhaar Card', 'OD25 20200014340', '9692636411', 'abhisek969263@gmail.com', 'MANAPUR, NAYAGARH, NAYAGARH,OD, 752079', '9692636411', 1, 0, 0, 'Not Signed', NULL, '2024-12-02 04:46:21'),
(569, 'Babai Mahato', 'Adhaar Card', '3062 7465 9800', '7872806976', 'babaimahato1998@gmail.com', 'S/O Baluram Mahato, Lakma, Jamalpur, Hili, Lakma, Dakshin Dinajpur, West Bengal - 733145', '7872806976', 1, 0, 0, 'Not Signed', NULL, '2024-12-02 04:56:03'),
(570, 'Kanchana', 'Adhaar Card', '4744 6109 0698', '8838877583', 'kanchuthangaraj5@gmail.com', 'D/O Thangaraj. 101/2, DEVAMPALAYAM, VTC Kavilipalayam, PO Kavilipalayam, District Erode, State: Tamil Nadu, PIN Code: 638402,', '8838877583', 1, 700, 1, 'uploads/signatures/f7b92bac50147ca368411d404c6525e8.jpg', '2024-12-02 00:00:00', '2024-12-02 08:05:18'),
(571, 'Ashok Kumar', 'Adhaar Card', 'GVY1194067', '9018052569', 'ashok.masti92@gmail.com', 'Address: 112, Chakra (Bijami), Doda, Doda, Doda, Jammu And Kashmir-182202', '9018052569', 1, 0, 0, 'Not Signed', NULL, '2024-12-04 03:59:18'),
(572, 'Ashok Kumar', 'Adhaar Card', 'GVY1194067', '9018052569', 'ashok.masti92@gmail.com', 'Address: 112, Chakra (Bijami), Doda, Doda, Doda, Jammu And Kashmir-182202', '9018052569', 1, 0, 0, 'Not Signed', NULL, '2024-12-04 03:59:18'),
(573, 'Nithyashree N ?', 'Adhaar Card', '2162 5140 5764', '7676032137', 'nithyashreenh6@gmail.com', 'Address: N Hanumantharayappa, Negalala Koratagere Taluk, Negilala, Tumkur, Karnataka, 572138', '7676032137', 1, 238, 1, 'uploads/signatures/871b279df527aa558eddd36cbc75491d.jpg', '2024-12-04 00:00:00', '2024-12-04 04:15:05'),
(574, 'H Youktha', 'Adhaar Card', '5605 4091 0024', '9347441534', 'yuvajyothikaranam@gmail.com', 'Address: D/O: R Himendra, 9-8/31, Plot no-33, Road no-11,S.V. Nagar, Behind vijaya hospital, Nagaram, Nagaram, PO: Nagaram, DIST: K.v. Rangareddy, Telangana - 500083', '9347441534', 1, 0, 0, 'Not Signed', NULL, '2024-12-04 04:24:54'),
(575, 'Mohamed Alsal A', 'Adhaar Card', '7216 1568 1367', '9361671067', 'afsal5828@gmail.com', 'C/O Abdul Azees. 3/170, Pillayar Kovil Street Middle Gudalur VTC Gudalur PO Gudalur Nigra Sub District Gudalur. District. The Nigins, State: Tamil Nadu PIN Code: 643211 Mobile: 9361671067', '9361671067', 1, 0, 1, 'uploads/signatures/6358786332513f6b13099959716be3b0.jpg', '2024-12-04 00:00:00', '2024-12-04 05:05:41'),
(576, 'Dabhi Sharadbhai Kanjibhai', 'Adhaar Card', '7711 2812 9151', '9313214536', 'vaibhavdabhi144@gmail.com', 'Address: plot vistar, BHOJAPARA, Ratanpur Bhal, Bhavnagar, Vallabhipur, Gujarat, 364313', '9313214536', 1, 700, 1, 'uploads/signatures/136e967fc7dc8d297e1aff33bf124085.jpeg', '1985-08-30 00:00:00', '2024-12-04 05:27:16'),
(577, 'Kapil Kumawat', 'Adhaar Card', '6289 3816 6422', '8817974545', 'kapilkumawat1256@gmail.com', 'Address: S/O Nandlal Kumawat, Gram - Rewas Dewda, Ward NO-10, Tah - Mandsour, Rewas Deoda, Mandsaur,\r\n Madhya Pradesh - 458002', '8817974545', 1, 0, 0, 'Not Signed', NULL, '2024-12-04 05:28:27'),
(578, 'Maria Antony', 'Adhaar Card', '3615 4146 2885', '6235417405', 'mariyaantony340@gmail.com', 'Address PALLIKKATTIL CHITTOOR PUTHUPPARIYARAM PO Manakkad (Part) Thodupuzha puthuperiyaram Idukki Kerala -685608', '6235417405', 1, 700, 1, 'uploads/signatures/cefca645fb1b33d3d0eadbb2dad8b2fe.jpg', '2024-12-04 00:00:00', '2024-12-04 05:48:41'),
(579, 'Malati Jagannat Thorat', 'Adhaar Card', '2941 3107 0891', '9511251953', 'malatithorat191@gmail.com', 'D/O: Jagannat Thorat, Borhadewadi, moshi Allindi road, moshi, Moshi, Pune, Maharashtra - 412105', '9511251953', 1, 700, 1, 'uploads/signatures/e9600856b79bfaeb221a88be4196d0ab.jpg', '2024-12-04 00:00:00', '2024-12-04 05:55:06'),
(580, 'Ashika', 'Adhaar Card', '6969 5158 0981', '6377714441', 'aashikachauhan40@gmail.com', 'Address: D/O: Naval Singh Chauhan, Bardala, Karauli, Bardala, Rajasthan,\r\n322215', '6377714441', 1, 0, 0, 'Not Signed', NULL, '2024-12-04 05:59:22'),
(581, 'Esakkiraj Sanmugasundaram', 'Adhaar Card', '6144 1870 7357', '8344188157', 'rajmaharanth1997@gmail.com', 'Address:S/O: Sanmugasundaram, 6/193, MIDDLE STREET, VEDHAMPUTHUR, ILANJI POST, Kuthukalvalasai, Tirunelveli, Tamil Nadu - 627803', '8344188157', 1, 0, 0, 'Not Signed', NULL, '2024-12-04 06:01:58'),
(582, 'Anuj Singh', 'Adhaar Card', '7784 5468 2408', '7518178903', 'singhdranuj75@gmail.com', 'Address: S/O GORE LAL, UMRA POST ALAMPUR GERIYA, KHAGA, Alampur Gauriya, Fatehpur, Uttar Pradesh-212655', '7518178903', 1, 10, 1, 'uploads/signatures/415dcebbeab8ce6ab52996948b88122a.jpg', '2024-12-04 00:00:00', '2024-12-04 06:15:13'),
(583, 'Rajiv Sinha', 'Adhaar Card', '5045 3081 6209', '9009985947', 'rajeev.sinha81@rediffmail.com', 'S/O Vijay Kumar Sinha, 8b, Shree Krishna Avenue Phase-2\r\nLimbodi, Indore, Indore, Madhya Pradesh - 452001', '9009985947', 1, 700, 1, 'uploads/signatures/61b9c1a5d1a3d65057b7cedecae12eaf.jpg', '2024-12-04 00:00:00', '2024-12-04 06:44:24'),
(584, 'Dipak Kumar', 'Adhaar Card', '2891 0557 8309', '9661641841', 'dk2358944@gmail.com', 'S/O: Pradip Pandit, post-chuanpani, gram- haler, Chilkara, Banka, Bihar-813104', '9661641841', 1, 700, 1, 'uploads/signatures/5a136e1e980a032da9b4efbf3a90f6b9.jpg', '2024-12-04 00:00:00', '2024-12-04 07:13:37'),
(585, 'Badri Lal', 'Adhaar Card', '9180 1958 1040', '7375032380', 'badrilaldangi109@gmail.com', 'Address: S/O: Radheshyam, Jeta Kheri, PO: Odiya Khedi, DIST. Jhalawar, Rajasthan - 326034', '7375032380', 1, 53, 1, 'uploads/signatures/0161f880712383ebe940bb5602303383.jpg', '2024-12-04 00:00:00', '2024-12-04 07:16:50'),
(586, 'RAJKUMAR SIVA', 'Adhaar Card', '9353 1476 1412', '9003059469', 'risestargaming11@gmail.com', 'Address: C/O: Siva, No 54A Eden Ground Floor, OM Shakthy Temple Nagar, Natham, KUNDRATHUR, Kancheepuram, Tamil Nadu, 600069', '9003059469', 1, 0, 0, 'Not Signed', NULL, '2024-12-04 07:25:44'),
(587, 'Tanuja Santosh Nagawade', 'Adhaar Card', '6385 4998 5721', '8468967609', 'tanunagawade012@gmail.com', 'DIO Santosh Narayan Nagawade, devacha mal, Bambhuisar BK, PO: Mandavgan Farata, DIST: Pune. Maharashtra-412211', '8468967609', 1, 88, 1, 'uploads/signatures/51df76916a534d63ee15741c72af0a5d.jpg', '2024-12-04 00:00:00', '2024-12-04 07:27:31'),
(588, 'Ankit', 'Adhaar Card', '5516 9262 2513', '8053059168', 'ankitbrar9800@gmail.com', 'Address: S/O Ramphal, Chaudhriwas (18), Hisar, Haryana 125001', '8053059168', 1, 0, 0, 'Not Signed', NULL, '2024-12-04 08:12:49'),
(589, 'Indrapal Rajpoot', 'Adhaar Card', '9711 5796 3506', '9580347259', 'indrapalrajpoot1818@gmail.com', 'Address: S/O: Prabhu, 00, uldana kalan, uldana kalan, Gona, Lalitpur, Uttar Pradesh - 284405', '9580347259', 1, 1, 1, 'uploads/signatures/f2bb206171198ac2b0e1b76e941d31b5.jpg', '2024-12-04 00:00:00', '2024-12-04 09:35:56'),
(590, 'SAW JOEK', 'Driving License', '???? 20240002381', '8900930242', 'joelsaw8@gmail.com', 'Address: Devpur (RV), Devpur (RV) Mayabunder, North & Middle, AN 744204 8900930242', '8900930242', 1, 242, 1, 'uploads/signatures/cdfc660cd5274af288ba56bc7b4acbee.jpg', '2024-12-04 00:00:00', '2024-12-04 09:39:09'),
(591, 'Shubham Singh', 'Adhaar Card', '5858 2893 3504', '9910470528', 'ershubhsingh2@gmail.com', 'S/O SURINDER SINGH, D13 FOURTH FLOOR MADHUBAN PARK PHASE 1, KOLAR ROAD, HANUMAN MANDIR, GEHUNKHEDA, Bairagarh Chichali, Bhopal, Madhya Pradesh - 462042', '9910470528', 1, 700, 1, 'uploads/signatures/64a45e610908d3c65dd9ca37ba773c89.jpeg', '2024-12-04 00:00:00', '2024-12-04 10:24:42'),
(592, 'Simendra V Yadav', 'Adhaar Card', '4384 7060 2255', '9320573717', 'simendrayadav@gmail.com', 'S/O: Vinod F Yadav, shreeji darshan society, c wing, 4th floor, room no.8,, F-cabin road, shiv mandir, shivaji nagar, waldhuni, Kalyan, Thane, Maharashtra - 421301', '9320573717', 1, 700, 1, 'uploads/signatures/3f52cae94cfd4ccde62eb8c4b4bfbf5c.jpeg', '1982-02-23 00:00:00', '2024-12-04 10:26:21'),
(593, 'MARIYAPPAN', 'Adhaar Card', 'IRG1619923', '6381170553', 'rajimjk1011@gmail.com', 'Address: 4-1723, Viswanatham (R.V). Viswanatham (P), Ward 4 Murugan Colony East Side, VIRDHUNAGAR, 626189', '6381170553', 1, 100, 1, 'uploads/signatures/5d910e2a91d2d668379313093e9e3c99.jpg', '2024-12-04 00:00:00', '2024-12-04 10:28:03'),
(594, 'Payal Kumari', 'Adhaar Card', '5232 5476 2794', '8757828467', 'payalkumari8467@gmail.com', ': Santosh Kumar Saw, Chhotki Delha Shiv Nagar Colony, Gaya, Gaya, Bihar-823001', '8757828467', 1, 47, 1, 'uploads/signatures/e57b2ca1ca4d8bf44695ec1b4bc7e992.jpg', '2024-12-04 00:00:00', '2024-12-04 10:39:08'),
(595, 'Ameen K S', 'Adhaar Card', '8120 1092 0499', '9778780253', 'ksameen0451@gmail.com', 'Address: S/O: Shahul Hameed, Kanisseril, Arookkutty P O, Arookutty, Alappuzha, Kerala, 688535', '9778780253', 1, 700, 1, 'uploads/signatures/d9bc1db4f1324b21659bbeb0c36c7bb8.jpg', '2024-12-04 00:00:00', '2024-12-04 10:55:06'),
(596, 'Krishna Kumar Thakur', 'Adhaar Card', '2856 8590 6727', '6262823026', 'krishnaku9516@gmail.com', 'S/O: Santram, House numbar-, Village - Salheghori, Salheghori \r\nMal., Dindori, Madhya Pradesh-481778', '6262823026', 1, 0, 0, 'Not Signed', NULL, '2024-12-04 10:56:26'),
(597, 'Tamana', 'Election Card', 'SLH1708478', '8727070459', 'raitamanna809@gmail.com', 'Address: H.No.F 20/705, TUNGPAI ABADI NEW NEHRU COLONY, M.C. AMRITSAR WARD NO. 53 GALI NO 5, Amritsar, TEH-AMRITSAR-2, DIST-AMRITSAR-143110', '8727070459', 1, 0, 0, 'Not Signed', NULL, '2024-12-04 11:14:39'),
(598, 'Namoju Ramya', 'Adhaar Card', '6222 7087 3213', '7702873994', 'namojuramyach@gmail.com', 'C/O: Namoju Shekar 54-10-76/20/8/249 Bhagath Singh Nagar Colony Kumarpally Gundlasingaram Hanamkonda Warangal Urban Telangana - 506001', '7702873994', 1, 1, 1, 'uploads/signatures/89d0556b1f1ed54f7e43f7472571c528.jpg', '2024-12-05 00:00:00', '2024-12-04 11:19:44'),
(599, 'Priyankkumar Rameshchandra Patel', 'Adhaar Card', '3601 1981 2629', '8200529060', 'priyankpatel035@gmail.com', 'S/O: Rameshchandra Patel, dhagdi Faliya, saravani, chikhli, Saravani, Navsari, Gujarat - 396540', '8200529060', 1, 185, 1, 'uploads/signatures/7d103815c841a0f2a1a8c875de29d2f4.jpg', '2024-12-04 00:00:00', '2024-12-04 11:21:13'),
(600, 'Tarun Chauhan', 'Adhaar Card', '5192 7697 2602', '9752307947', 'mrtarun2012@gmail.com', 'Address: S/O: Hol Say Chauhan, 1635, BELGIRI BASTI, BALACO NAGAR, ward no32, Korba M.corp., Balco Nagar Korba, Korba, Chhattisgarh, 495684', '9752307947', 1, 700, 1, 'uploads/signatures/1adbdeef5bc247034307703dd03b3f53.jpg', '2024-12-04 00:00:00', '2024-12-04 11:32:08'),
(601, '  Aditya Kumar', 'Adhaar Card', '3279 3729 4938', '9581694624', 'tiwarisanju481@gmail.com', 'Near Mahakal Mandir, Palam, Gall No. 16\r\nMahakal Mandir Pradhan Chouk, VTC: Palam Village, PO: Palam Village, District: South West Dethi,\r\nState Delhi PIN Code: 110045, Mobile: 9581694624', '9581694624', 1, 700, 1, 'uploads/signatures/238ecbb18a0af13be984e92eb2bdceac.jpg', '2024-12-04 00:00:00', '2024-12-04 12:06:44'),
(602, 'Dhakech Aeklavy Rajesh', 'Adhaar Card', '4305 2540 8211', '8200516519', 'dhankechaeklavya07@gmail.com', 'S/O: Rajesh, 5, nagindas MODI plot, Porbandar, Porbandar, Gujarat - 360575', '8200516519', 1, 0, 0, 'Not Signed', NULL, '2024-12-04 13:29:36'),
(603, 'Shaik Vasiya Chandini', 'Adhaar Card', '4544 2393 2443', '703243', 'shaiknageenamanna@gmail.com', 'DIO: S Babu 5-1-4-1-19-1 Saida madanapall firdose mazeed Madanapalle Madanapalle Chittoor Andhra Pradesh-517325', '703243', 1, 2, 1, 'uploads/signatures/1f6a0288cc5e2255de7ce205f713e0a4.jpg', '2024-12-05 00:00:00', '2024-12-05 14:41:08'),
(604, 'Mahalakshmi Sundar', 'Adhaar Card', '9334 5412 8678', '8939116101', 'mahalakshmisundar776@gmail.com', 'D/O: Sundar, 117, NERU HIGHWAYROAD, BV NAGAR, Nanganallur, Kancheepuram, Tamil Nadu 600061', '8939116101', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 02:41:28'),
(605, 'Alok Raj', 'Adhaar Card', '9993 6238 8480', '9798240974', 'kolarajnwd@gmail.com', 'S/O: Dharanjay Kumar, New Area, Gondapur, Nawada, Bihar-805110', '9798240974', 1, 9, 1, 'uploads/signatures/08bda2caede11bcd9fe1aead5cef6c82.jpg', '2024-12-06 00:00:00', '2024-12-06 02:42:35'),
(606, 'Nehalben Sureshbhai Katara', 'Adhaar Card', '3049 4535 2896', '9313869242', 'kataranehal64@gmail.com', 'D/O: Sureshbhai Katara, 6, katara faliyu, indrapura, vagheshvari, Vagheshvari, Sabarkantha, Vagheswari, Gujarat, 383450', '9313869242', 1, 700, 1, 'uploads/signatures/b1afd2ecea86095fa5a7798c5005b19f.jpg', '2024-12-06 00:00:00', '2024-12-06 02:43:40'),
(607, 'Saranya U K', 'Adhaar Card', '3582 2923 4221', '9400602727', 'saranyauks25@gmail.com', 'D/O: A\r\nUnnikrishnan Nair, thottathu\r\nputhen veedu,\r\nbhagavathinada Po,\r\nbalaramapuram, Venganoor,\r\nThiruvananthapuram,\r\nKattachalkuzhy, Kerala,\r\n695501\r\n', '9400602727', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 03:29:42'),
(608, 'Vijayastri R', 'Driving License', 'PY02-20200000445', '8675174338', 'vijayastrigowri51196@gmail.com', '38 KALIAMMAN KOVIL STREET PETTAI\r\nPettai\r\nThirunallar Taluk, Karaikal, PY\r\nPIN 609607\r\n', '8675174338', 1, 700, 1, 'uploads/signatures/4b5afea43cf186661f83fd98f520cb14.jpg', '2024-12-07 00:00:00', '2024-12-06 03:32:21'),
(609, 'Siddhesh Sunil Awaghade', 'Adhaar Card', '7051 9591 7125', '9022381017', 'siddheshsmh03@gmail.com', '77, 4th Floor Kamlesh Janta Bhavan, Road No. 27, Shanti Nagar, Thane, Wagle I.E., Maharashtra, 400604', '9022381017', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 03:44:25'),
(610, 'Netra Bajjalli', 'Adhaar Card', '3279 5286 8083', '9019633277', 'bajjalliv@gmail.com', 'D/O Guddappa, #, Main Road, Kallihal, Haveri, Karnataka, 581110', '9019633277', 1, 700, 1, 'uploads/signatures/8348add10cfe9020e9c2bf441b66dd4f.jpg', '2024-12-06 00:00:00', '2024-12-06 03:46:29'),
(611, 'Mithun munda ', 'Adhaar Card', '890941979055', '7782002320', 'mithunmunda7782@gmail.com', 'S/O Ranjit Munda\r\nVillage- Baramara Post- Baramara\r\nVTC: Chakulia\r\nPO: Chakulia\r\nDistrict: East Singhbhum\r\nState: Jharkhand\r\nPIN Code: 832301', '7782002320', 1, 6, 1, 'uploads/signatures/9268fab510615db745167d2313d5c235.jpg', '2024-12-06 00:00:00', '2024-12-06 04:26:02'),
(612, 'Rajendra bodat', 'Adhaar Card', '7943 2799 0937', '9636109347', 'gajendrabodat471@gmail.com', 'S/O Ashok Kumar, vikas nagar, 1\r\nSaroli, Udaipur, Rajasthan, 313803', '9636109347', 1, 700, 1, 'uploads/signatures/daaf1cf82f72ebff4eb2d2a9bf371647.jpg', '2024-12-06 00:00:00', '2024-12-06 04:27:37'),
(613, 'Akhil', 'Adhaar Card', '3502 5071', '7988129385', 'gzbakhil99@gmail.com', 'VIKASH, GALI NO-41, NEAR\r\nKRISHNA PUBLIC SCHOOL, SURAT\r\nNAGAR, 104 SECTOR PHASE 2,\r\nGurgaon, PO: Gurgaon,DIST: Gurgaon,\r\nHaryana \r\n\r\n\r\n35', '7988129385', 1, 32, 1, 'uploads/signatures/d940066eb53f67eee4738daf1129ebe6.jpg', '2024-12-06 00:00:00', '2024-12-06 04:29:15'),
(614, 'Abhijit kushwaha', 'Adhaar Card', '2848 8115 3779', '7985516522', 'kushwahaabhijeet528@gmail.cm', 'Address\r\nS/r: Rajesh Kushwaha, 127/219, W-1,\r\nSAIET NAGAR, Juhi Colony, Kanpur\r\nNagar Uttar Pradesh - 208014', '7985516522', 1, 700, 1, 'uploads/signatures/8144fc3f6d353f320db592c64afb98ec.jpg', '2024-12-06 00:00:00', '2024-12-06 04:30:49'),
(615, 'Rohan choudhari', 'Adhaar Card', '5170 8509 2033', '9979973100', 'rohanchaudhari6587.rc@gmail.com', 'Priyanka intercity society\r\nOpposite bhaktidham temple\r\nGujrat', '9979973100', 1, 210, 1, 'uploads/signatures/177f5bf05f682c54fb9e152cc6ddebd0.jpg', '2024-12-06 00:00:00', '2024-12-06 04:33:24'),
(616, 'Surjit kaur ', 'Adhaar Card', '4917 3693 3416', '9878754969', 'kantarathod942@gmail.com', 'Gurdeep Singh,, Malout, Muktsar, Punjab\r\nak\r\n152107', '9878754969', 1, 700, 1, 'uploads/signatures/209e74ff878dda34f7012549d92ce0f1.jpg', '2024-12-06 00:00:00', '2024-12-06 04:35:31'),
(617, 'Shivdayal', 'Adhaar Card', '2629 3344 6637', '8829851051', 'shivdyals906@gmail.com', 'Meeta Singh, ward no 03, dinga wala\r\n19 PBN-A, PO: Pihibangan, DIST:\r\nHanumangat.\r\nRajasthan - 335803', '8829851051', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 04:37:00'),
(618, 'DASARI PUJITHA', 'Adhaar Card', '3039 6349 2245', '9491087910', 'pujithadasari134@gmail.com', 'Dasari Pujitha\r\nC/O: Dasari Srinivasarao\r\n20F-17-5\r\nChodidibba\r\nNear Pedda Ramalayam\r\nEluru\r\nEluru Andhra Pradesh -534002\r\n9491087910', '9491087910', 1, 700, 1, 'uploads/signatures/1121c26121d9e6045e8453f8c8b3efa9.png', '2024-12-06 00:00:00', '2024-12-06 04:38:35'),
(619, 'S punitha ', 'Adhaar Card', '5821 1528 4639', '7339183328', 'punithashanmugasundaram92@gmail.com', 'Saravanan\r\n4/2\r\nMaryamman kol Strest\r\nMaravalaralu\r\nCuddalore Taril hiadu - 606003\r\n733918338', '7339183328', 1, 24, 1, 'uploads/signatures/47a1ce416e840637d5112f439421ce52.jpg', '2024-12-06 00:00:00', '2024-12-06 04:40:32'),
(620, 'Mohammed Muzammil ', 'Adhaar Card', '6153 6104 5334', '6305090484', 'muzammilmaaz2864@gmail.com', 'S/O Mohammed Javeed\r\n17-2-95\r\nchowni N A B\r\nyakutpura\r\nVTC: Charminar\r\nDistrict: Hyderabad\r\nState: Andhra Pradesh\r\nPIN Code: 500023', '6305090484', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 04:45:31'),
(621, 'Sourav sehgal', 'Adhaar Card', '8068 2955 2371', '7696787303', 'Souravsehgal1621@gmail.com', 'Amit Sehgal, H NO 818, RAJINDER\r\nNAGAR, BATALA ?OAD, Amritsar -I, Amritsar,\r\nPunjab- 143001', '7696787303', 1, 1, 1, 'uploads/signatures/d4312f3fd4a1216a793a8a0da37dffd9.jpg', '2024-12-06 00:00:00', '2024-12-06 05:31:57'),
(622, 'Lana Johny M', 'Adhaar Card', '5898 9259 9491', '7012628119', 'lenalenz891@gmail.com', 'KUTTUKARAN\r\nHOUSE. SAHAYA ROAD\r\nELTHURUTH P O, Eithuruth\r\nS.O, Thrissur, Kerala\r\n680611', '7012628119', 1, 700, 1, 'uploads/signatures/f63b17425328eedca9d31336d3708944.jpg', '2024-12-06 00:00:00', '2024-12-06 05:33:46'),
(623, 'Amit Singh', 'Adhaar Card', '8132 1085 9932', '9329866012', 'amitkumarsingh9042@gmail.com', 'S/O: Ashok Singh 179 Adarsh Nagar Ward 22 Shanti Para Supela Bhilai Durg Chhattisgarh-490023 6266126075', '9329866012', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 05:35:31'),
(624, 'Lana johny', 'Adhaar Card', '5898 9259 9491', '9329866012', 'lenalenz891@gmail.com', 'Address: KUTTUKARAN\r\nHOUSE. SAHAYA ROAD\r\nELTHURUTH P O, Eithuruth\r\nS.O, Thrissur, Kerala\r\n680611', '9329866012', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 05:37:17'),
(625, 'Sourav Sehgal', 'Adhaar Card', '8068 2955 2371', '7696787303', 'souravsehgal1621@gmail.com', 'Amit Sehgal, H NO 818, RAJINDER NAGAR, BATALA ROAD, Amritsar -I, Amritsar, Punjab - 143001', '7696787303', 1, 1, 0, 'Not Signed', NULL, '2024-12-06 05:55:32'),
(626, 'Sakshi Prajapati', 'Adhaar Card', '3727 8819 1041', '9140956', 'sakshiprajapati41@gmail.com', 'Address: D/O: Vinay Kumar, sookhapur, ghatampur, kanpur, Jajpur, Jajpur, Kanpur Nagar, Ghatampur, Uttar Pradesh, 209206', '9140956', 1, 2, 1, 'uploads/signatures/b318318fe3ee9424918317a2ca4f8545.jpg', '2024-12-06 00:00:00', '2024-12-06 06:08:06'),
(627, 'Namia Nausheen', 'Adhaar Card', '4085 9993 2250', '6300184055', '_namianausheen@gmail.com', 'D/O: Mohd. Imran Khan, 126 K, Saddik Nagar, Sikandrabad, Bulandshahr, Uttar Pradesh - 203205\r\n', '6300184055', 1, 700, 1, 'uploads/signatures/4c773f80ccecf6d7e9e9fcdd924fa533.jpg', '2024-12-06 00:00:00', '2024-12-06 06:13:52'),
(628, 'SURESH REDDY EDARA', 'Driving License', 'DLFAP029330752006', '9885372726', 'suresh.reddy3569@gmail.com', 'PLOT NO 8,ROAD NO LR3, CENTRAL BANK COLONY, L B NAGAR, R R DIST', '9885372726', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 06:15:43'),
(629, 'Sunny KUMAR ', 'Adhaar Card', '8004 5135 4004', '7838741716', 'sk9655639@gmail.com', 'S/O MR BHARAT RAI, House No. 2, Street No. 2, Near By S.M & INTERNATIONAL SCHOOL, Chauhan pattia E chawla farm house, Karawal Nagar, Northa East Delhi, Delhi, 110094', '7838741716', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 06:35:31'),
(630, 'Aman Tyagi', 'Adhaar Card', '3184 0333 0697', '9548893147', 'amantyagi9548893147@gmail.com', 'C/O: Manoj Tyagi, village - BAS bodiya, Mukhwar, PO: Mukhbar, DIST: Agra, Uttar Pradesh - 283201', '9548893147', 1, 700, 1, 'uploads/signatures/0962bbadd284daecae1ebc57ede4188b.jpeg', '2024-12-06 00:00:00', '2024-12-06 06:37:00'),
(631, 'Sanju', 'Adhaar Card', '7800 4435 6499', '8950725142', 'sanjubathia85@gmail.com', 'D/O: Mukesh, ward-10, garhi sikanderpur,\r\nKabri (18), PO: Kabri, DIST: Panipat,\r\nHaryana-132103', '8950725142', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 07:00:13'),
(632, 'Shah Shail Hemalkumar', 'Adhaar Card', '5540 9400 0091', '8780508551', 'shahshail2710@gmail.com', 'Shah Shail Hemalkumar SO Shaih Hnrrualwuruar Bavuarbhses | khedavada ni khadki Dakor Dakor Thasra Kheda Gujarat 388225 ', '8780508551', 1, 700, 1, 'uploads/signatures/6cb821b9228ef111bbd2507c7493a590.jpg', '2024-12-09 00:00:00', '2024-12-06 07:01:55'),
(633, 'Kureshi Bahar Abdulrajak', 'Adhaar Card', '6376 2297 6062', '8329286735', 'Kureshiabdul272@gmail.com', 'DO Abdulanajk antedakar sachanalay javal murum VTC Murum pural) Po Murum Datier: Osmanabed State Maharasea PIN Code: 413605', '8329286735', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 07:51:17'),
(634, 'Annapu Kiran', 'Adhaar Card', '9390 2998 6161', '8122059902', 'annapukiran1983@gmail.com', 'S/O RAMANAIAH, D NO B-2, BLOCK 1,KRISHNA SAGAR APARTMENTS, THIRUVALLUVAR STREET, MADIPAKKAM, Madipakkam, Kancheepuram, Tamil Nadu - 600091', '8122059902', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 07:52:49'),
(635, 'Jaiverdhan Rawat', 'Adhaar Card', '5086 6374 6727', '9897041456', 'J.v.rawat@gmail.com', 'S/O Umender Singh Rawat H NO-T-3 WZ-34 SP Mukharji Park Tilak Nagar New Delhi Tilak Nagar West Delhi Delhi - 110018', '9897041456', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 08:01:44'),
(636, 'Sureshraja Sureshraja', 'Election Card', 'RVJ2856151', '8825689157', 'suresh15302002@gmail.com', ' 249, ARANTHANGI ROAD, PUTHANPATTI, PEERKALAIKADU, KARAIKKUDI, SIVAGANGA, T . TAMIL NADU-630108', '8825689157', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 08:08:50'),
(637, 'Sameer Kumar', 'Adhaar Card', '9485 7861 1018', '8826507616', 'sameerraj123412@gmail.com', 'S/0: Shiv Kumar, House No. M-148, Camp No 03, Nangiol, Nangloi, West Delhi, Delhi - 110041', '8826507616', 1, 56, 1, 'uploads/signatures/05072b3f211957f338630022483c7a9b.jpg', '2024-12-06 00:00:00', '2024-12-06 08:12:09'),
(638, 'Nirbhay Singh Yadav', 'Adhaar Card', '4133 5248 3169', '7992192791', 'nirbhayyadav089@gmail.com', '?/O: Sunil Kumar Yadav, ajeet kheda, Neverna, Unnao, Nevarna Uttar Pradesh, 209825', '7992192791', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 08:13:45'),
(639, 'Raman Selvam', 'Adhaar Card', '8045 2193 8100', '9042479618', 'ramanrms143@gmail.com', 'S/O Selvam, D NO 1-416, ESALKADDU, MUSLIM STREET, Vellalapatti, Vellalapatti, Salem, Tamil Nadu, 636012', '9042479618', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 08:21:20'),
(640, 'Gaurav Girish Khare', 'Adhaar Card', '6262 0130 5006', '8686775518', 'sonargaurav8485@gmail.com', 'S/O: Girish Khare, Sakri Road, Behind Powar House, Vikas Colony Dhule, Dhule, Dhule, Maharashtra - 424001', '8686775518', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 08:24:14'),
(641, 'Diya Mukesh Waghela', 'Adhaar Card', '5851 2658 9207', '8108455592', 'wagheladiya23@gmail.com', ': Rajaram Tiwari Chawl, Room No. 5, Adarsh Nagar, Near Shankar Mandir, Kurar Village, Malad East, Mumbai, Malad East, Maharashtra, 400097', '8108455592', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 08:31:55'),
(642, 'Malatesh Yallappa Malagi', 'Adhaar Card', '8292 4057 1243', '6361976449', 'malateshmalagi77@gmail.com', 'S/O Yallappa Ranebennuru Guddadanveria Devaragudda Haveri Kamataka -581115 63619764491', '6361976449', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 08:33:40'),
(643, 'Deepak kalam', 'Adhaar Card', '2907 1538 9728', '9244791820', 'kalamshiva25@gmail.com', 'S/O Sarvan Kalam\r\nMakan N-127\r\nWard N-14\r\nTah-naya Harsud\r\nPost-chhanera\r\nchhanera\r\nChanera\r\nEast Nimar Madhya Pradesh - 450116\r\n', '9244791820', 1, 301, 1, 'uploads/signatures/0a60aafebce6503cd890d727a371f2f9.jpg', '2024-12-06 00:00:00', '2024-12-06 08:47:24'),
(644, 'Muvvala Divya ', 'Adhaar Card', '2912 6904 9144', '9030567482', 'muvvaladivya9@gmail.com', 'Andhra Pradesh srikakulam palasa 532222', '9030567482', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 09:04:39'),
(645, 'M D Fasi Ahmed Muzammil ', 'Adhaar Card', '3029 9299 1834', '8019302138', 'fasiahmedmuzammil1523@gmail.com', 'S/O Mohammed Yakub Pasha,\r\nH NO-729/A,\r\nNRR PURAM Site-3,\r\nBorabanda,\r\nVTC: Hyderabad,\r\nDistrict: Rangareddi,\r\nState: Andhra Pradesh,\r\nPIN Code: 500018', '8019302138', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 09:26:55'),
(646, 'Kakoli Panja', 'Election Card', 'KQR8480402', '9279307516', 'kp457228@gmail.com', ' 09, KHERUA, KHERUA, DIGHI, EAST SINGHBHUM, JHARKHAND-832105\r\n', '9279307516', 1, 700, 1, 'uploads/signatures/e2a9ccb32f9f377ed1f572979876f63f.jpeg', '2024-12-07 00:00:00', '2024-12-06 10:18:21'),
(647, 'Ragubathy V', 'Adhaar Card', '4329 8842 6116', '9965749839', 'pvraghu1984@gmail.com', 'Ragubathy V\r\nS/O Venkatesan\r\n46 A MILL STREET\r\nGudiyatham Tk\r\nERTHANGAL PUDHUR ERTHANGAL\r\nErthangal\r\nErathangal\r\nVellore Tamil Nadu - 632601\r\n', '9965749839', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 10:31:39'),
(648, 'Mohammed Kareem Ahmed ', 'Adhaar Card', '8329 2161 2536', '9100223959', 'kareemloveboy@gmail.com', 'S/O Waseem Ahmed, 6-10-91/1, Baba Nagar, Hassan Nagar, Rajendranagar, Rangareddi, Andhra Pradesh, 500052', '9100223959', 1, 75, 1, 'uploads/signatures/ade1b627ced579590052732621264046.jpg', '2024-12-06 00:00:00', '2024-12-06 10:43:41'),
(649, 'Palak Trikha', 'Adhaar Card', '8050 6708 8382', '9340925918', 'palaktrikha14@gmail.com', 'D/O: Sandeep Trikha\r\nHouse No- A/196\r\nVinoba Nagar\r\nRatlam\r\nRatlam Madhya Pradesh - 457001', '9340925918', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 10:46:05'),
(650, 'S arshad', 'Adhaar Card', '3145 6162 6064', '7305163388', 'Arshad007564@gmail.com', 'Sowkath Ali, 347,\r\nGANDHI ROAD,\r\nTIRUPATTUR, ETHAKA\r\nGROUND, Tirupathur,\r\nTirupattur, Vellore, Tamil\r\nNadu, 635601', '7305163388', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 11:42:35'),
(651, 'Prabhjot Singh ', 'Driving License', 'PB55-20230001028', '9417331061', 'prabhjotpandher1999@gmail.com', 'Ghaloti Ludhiana Punjab 141419', '9417331061', 1, 0, 0, 'Not Signed', NULL, '2024-12-06 12:24:14'),
(652, 'Gorilli Venkatesh ', 'Adhaar Card', '5592 1535 7104', '7987127768', 'venkateshsuresh14@gmail.com', 'C/O G A Raju, Plot No 1602/A-2, Vivekanand Nagar, Near Patwari Office, Mopka, Bilaspur, Chhattisgarh - 495006\r\n', '7987127768', 1, 700, 1, 'uploads/signatures/72167277522e807a8fa31ea8f23e8fd8.jpg', '2024-12-07 00:00:00', '2024-12-06 12:26:22'),
(653, 'Rakesh', 'Adhaar Card', '7601 2401 8978', '76760', 'rakeshkanji333@gmail.com', 'S/O Kamalakar, 3/108,VTC: Ranjolkheni, PO: Ranjol Kheni, District: Bidar, State: Karnataka, PIN Code: 585329, Mobile: 7676018690', '76760', 1, 2, 1, 'uploads/signatures/a52c7bd7d97c540c883d45ebc2b20903.jpg', '2024-12-06 00:00:00', '2024-12-06 13:58:31');
INSERT INTO `tbl_member` (`member_id`, `member_name`, `member_id_type`, `member_id_number`, `member_contact`, `member_email`, `member_address`, `member_pass`, `member_status`, `completed_form`, `agreement_status`, `agreement_sign`, `agreement_date`, `added_on`) VALUES
(654, 'Mohammad Abid', 'Adhaar Card', '7521 8122 6572', '8827661766', 'siddiqui.a6925@gmail.com', 'Address: S/O: Siddiqui Ahmad, gram- kymore, post - kymore, ward 14 sabra kirana stor, tahsil - vijaraghavgarh, Khal Katni, Madhya Pradesh, 483880', '8827661766', 1, 0, 0, 'Not Signed', NULL, '2024-12-07 04:30:10'),
(655, 'Ankur Kumar', 'Election Card', 'AUJ2777290', '9012243419', 'ankur.jmd@gmail.com', 'DHOUKALPUR, DHOUKALPUR, DHOUKALPUR, BUNOR BIJNOR, UTTAR PRADESH 246728', '9012243419', 1, 0, 0, 'Not Signed', NULL, '2024-12-07 04:31:42'),
(656, 'Sabiya I Dharwad', 'Adhaar Card', '4165 6065 0233', '9945871931', 'sabiyadharwad9945@gmail.com', 'D/O ?smail #A/22 Munishwar Nagar Unkal Cross Hubli Dharwad Karnataka - 580031', '9945871931', 1, 146, 1, 'uploads/signatures/30716c6fdcbdbf311b0f213778bb2c91.jpg', '2024-12-07 00:00:00', '2024-12-07 04:32:34'),
(657, 'Nayeem Khan ', 'Adhaar Card', '2253 2301 1421', '9901255858', 'Tajfarheen623@gamil.com', 'S/O Liyakath Ali Khan #623 2nd Cros Udayagiri 2nd Stage Mysore Mysore Kamataka-570019', '9901255858', 1, 700, 1, 'uploads/signatures/0d6e7c78ad1dc05a0b73d21ea9d89db8.jpg', '2024-12-07 00:00:00', '2024-12-07 04:35:47'),
(658, 'Rahul Kumar', 'Adhaar Card', '8981 6873 8649', '9631569649', 'rahulmanjhaulipatna@gmail.com', 'S/O, Ashok Kumar, Majhauli, PO: Rastra Nagar Bihar-804451', '9631569649', 1, 700, 1, 'uploads/signatures/ae66deefdeab9a92e8e6809ffa3882cb.jpg', '2024-12-07 00:00:00', '2024-12-07 04:40:26'),
(659, 'Rajiya Bano', 'Adhaar Card', '4616 6907 8852', '6367522860', 'Raziasulthan2028@gmail.com', 'D/O: Neraj, sarkari nal ke pass, rajaredi, Kishangarh, Ajmer,\r\n\r\nRajasthan-305801', '6367522860', 1, 19, 1, 'uploads/signatures/effd3498baad7c51ffffe9dfc86f7eac.jpg', '2024-12-07 00:00:00', '2024-12-07 04:45:30'),
(660, 'Ramya T G', 'Adhaar Card', '5376 2178 1190', '9164929890', 'ramyatgttr1997@gmail.com', 'D/O Gangadharaiah, Y T Road, Kodi Circle, Tiptur (Town). Tumkur, Karnataka, 572201', '9164929890', 1, 22, 1, 'uploads/signatures/e2930bb4faf2f3d7bbc3e48a799d2e49.jpg', '2024-12-07 00:00:00', '2024-12-07 05:44:23'),
(661, 'Veena M', 'Adhaar Card', '4264 5990 9102', '7892302683', 'veenaveenzz11@gmail.com', 'D/O: Manivanan #10 7th main road ramakrishna seva nagar Bangalore North\r\n10 7th main road10 7th main roadSrirampuram, Bangalore Karnataka-560021', '7892302683', 1, 144, 1, 'uploads/signatures/292998f32651e91fd0efb2326cc6b2b3.jpg', '2024-12-07 00:00:00', '2024-12-07 05:46:11'),
(662, 'Somit Mangar', 'Adhaar Card', '9406 4788 9887', '9087385287', 'Somithmangar@gmail.com', 'Address: RAIMATANG TEA GARDEN, KALCHINI, Kalchini, Kalchini, Jalpaiguri, Kalchini, West Bengal, 735217', '9087385287', 1, 0, 0, 'Not Signed', NULL, '2024-12-07 08:17:52'),
(663, 'Zabiulla Khan  ? /DOB', 'Adhaar Card', '4223 8710 3873', '8217623351', 'tafseen2003@gmail.com', 'C/O Ubheddulla, # 288, 1st Stage, Behind\r\nNimrah Masjid, Rajivnagar, Mysore, PO:\r\nUdayagiri, DIST: Mysuru, Karnataka-570019', '8217623351', 1, 700, 1, 'uploads/signatures/14385e110a07ba52e585b4ebea486f8b.jpg', '2024-12-07 00:00:00', '2024-12-07 08:20:04'),
(664, 'Bhavika Riddhin Doshi', 'Adhaar Card', '2686 6421 5463', '7715891427', 'Bhavikadoshi85@gmail.com', 'Bhavika Riddhin Doshi A/7, River View Bapu Bagve Road Near Dahisar Bridge Dahisar West Mumbai Dahisar Mumbai Mumbai Maharashtra 400068', '7715891427', 1, 700, 1, 'uploads/signatures/ae9b13256522cd0f7bbb7fa57ebf42ee.jpg', '2024-12-07 00:00:00', '2024-12-07 08:21:52'),
(665, 'KT Nishchith', 'Adhaar Card', '9273 6786 9561', '6362781396', 'ktnishchith@gmail.com', 'Address: S/O: VT Thammanna . . Gowda, # 5/1, Kelagane  577132 Village, Chikmagalur Taluk, Basagal, Chikmagalur, Baskal, Karnataka, 577132', '6362781396', 1, 0, 0, 'Not Signed', NULL, '2024-12-07 08:23:14'),
(666, 'Amarjeet Kumar Yadav', 'Election Card', 'ZDU1979624', '6206397305', 'Amarjeet.deepalerts@gmail.com', 'Address: Sahladpur, Sahladpur, Sahladpur, Kolhua, Gopalganj,\r\nBihar-841427', '6206397305', 1, 700, 1, 'uploads/signatures/a81b6096b0f94b9f286d0642e36c4e23.jpg', '2024-12-08 00:00:00', '2024-12-07 09:37:02'),
(667, 'Nayansi Jaiswal', 'Adhaar Card', '3614 0567 9317', '9696675119', 'jaiswalnayansi@gmail.com', 'D/O: Deepak Jaiswal, 68-68 1, GALI NO 9, UNCHIBHUD, Gola Gokaran Nath, Gola Gokaran Nath, Kheri, Uttar Pradesh, 262802', '9696675119', 1, 700, 1, 'uploads/signatures/bad1675f26a4fa8b12c6b6b6522ef1ec.jpg', '2024-12-07 00:00:00', '2024-12-07 09:39:32'),
(668, 'Devika', 'Adhaar Card', '3003 2922 2921', '9599843825', 'devikakashyap90@gmail.com', 'D/O: Rajpaul Kashyap, 126.. Santosh Park, Uttam Nagar, West Delhi, Delhi-110059', '9599843825', 1, 700, 1, 'uploads/signatures/55de968ec2079e4bfb9432271ebce3bb.jpg', '2024-12-07 00:00:00', '2024-12-07 09:42:48'),
(669, 'Kanchana', 'Adhaar Card', '4744 6109 0698', '88388', 'kanchuthangaraj5@gmail.com', 'D/O Thangaraj. 101/2, DEVAMPALAYAM, VTC Kavilipalayam, PO Kavilipalayam, District Erode, State: Tamil Nadu, PIN Code: 638402,', '88388', 1, 2, 1, 'uploads/signatures/c5de65d9d360ebdc74e29f4826437070.jpg', '2024-12-07 00:00:00', '2024-12-07 10:22:42'),
(670, 'Malliboyina Dilli', 'Adhaar Card', '9561 1541 3175', '9392672255', 'carrace526@gmail.com', 'S/O Bhujangarao, 1-82, Kadumu Street, Kadumu Street, Kadumu, Srikakulam, \r\nAndhra Pradesh, 532457', '9392672255', 1, 0, 0, 'Not Signed', NULL, '2024-12-07 10:25:29'),
(671, 'Puja Pathak', 'Adhaar Card', '2829 7929 6052', '9831509568', 'puja.pathak555@gmail.com', 'WO: Shashidhar Pathak, Bullapur New Bad, Bullapur, Ballia Uttar Pradesh-2770001', '9831509568', 1, 0, 0, 'Not Signed', NULL, '2024-12-07 10:36:46'),
(672, 'Santhose Kumar', 'Adhaar Card', '4176 9322 9343', '8056847599', 'santhosekumar901@gmail.com', 'Address: S/O: Archunan, -, narayanapuram, karaikudi, Pallathur, Sivaganga, \r\nPallattur, Tamil Nadu, 630107', '8056847599', 1, 2, 1, 'uploads/signatures/33fc3d235e4fc51c3098a572d95b6be8.jpg', '2024-12-16 00:00:00', '2024-12-07 10:38:50'),
(673, 'Mohammed Munfil KV', 'Adhaar Card', '4541 3965 8968', '6238888390', 'Hanimunu7@gmail.com', '1C/o Mujeeb Rahman K V, Kulangara Veettil House, Puduppally, Puduppally Po, Purathur, PO: Puduppalli, DIST: Malappuram, Kerala 676102', '6238888390', 1, 700, 1, 'uploads/signatures/454fcebeb14a0883ca231bfd83a97a34.jpg', '2024-12-07 00:00:00', '2024-12-07 13:02:22'),
(674, 'Bachu Veera Raghava Surya Kiran', 'Adhaar Card', '9793 0581 6942', '78452', 'bachu3325@gmail.com', 'S/O: Bachu Veera Raghava Babu, 15/186-UP, SAI KUTEER ROAD GOPAVARAM, Gopavaram, Gopavaram, Cuddapah Andhra Pradesh, 516360', '78452', 1, 2, 1, 'uploads/signatures/82a55ac8a292d824a8c6d0df37b95e59.jpeg', '2024-12-08 00:00:00', '2024-12-08 04:00:37'),
(675, 'SHAIK AFZALHUSSAIN', 'Driving License', 'AP00420220033164', '7093416602', 'shaikafzalhussain2@gmail.com', '12-250 1ST FLOOR POTTI SREERAMULU STREET KADAPA POTTI SREERAMULU ST, KADAPA, YSR KADAP?, ANDHRA PRADESH PIN-516001.', '7093416602', 1, 0, 0, 'Not Signed', NULL, '2024-12-08 04:13:26'),
(676, 'Rahul Laxman Shelke', 'Adhaar Card', '4926 2775 9676', '8767681368', 'rahulsheake1234@gmail.com', 'at po deopimpri ta jamner, VTC: Deopimpri, PO: Neri BK, District: Jalgaon, State: Maharashtra, PIN Code: 425114', '8767681368', 1, 0, 0, 'Not Signed', NULL, '2024-12-08 04:18:59'),
(677, 'Kiran', 'Adhaar Card', '4032 0069 3888', '7619475391', 'kirankshatriya909@gmail.com', 'Address: S/O: Rajappa, #350, Velankan? Road, Near canara Computer, Doddathoguru, Doddathoguru, Bangalore, Karnataka, 560100', '7619475391', 1, 3, 1, 'uploads/signatures/5872bef3728152a72c7ce5987fd6c39b.jpg', '2024-12-08 00:00:00', '2024-12-08 04:20:28'),
(678, 'Sameer R Nadaf', 'Adhaar Card', '7890 8490 7143', '9606412259', 'mdsameerahemadnadaf@gmail.com', 'C/O: Rajasab Ward No 18 Near Gyanangang Behind Lingasagur Lingasagur Raichur Karnataka - 584122', '9606412259', 1, 0, 0, 'Not Signed', NULL, '2024-12-08 05:13:32'),
(679, 'Trupti Vijay Shinde', 'Adhaar Card', '4305 1645 7697', '7972700634', 'truptishinde0418@gmail.com', 'Address: survey no 28, dhanon road, near moze school, munjaba wasti, Pune City. Dhanori, Pune, Maharashtra, 411015', '7972700634', 1, 0, 0, 'Not Signed', NULL, '2024-12-08 05:15:51'),
(680, 'Kathrotiya Mohammedsohil Valimohammed', 'Adhaar Card', '9796 3305 9634  ', '9081774423', 'nazeembharucha@gmail.com', 'Address: koirvada, behind court oop ar manzil, Junagadh, Junagadh PTC Gujarat, 362001', '9081774423', 1, 0, 0, 'Not Signed', NULL, '2024-12-08 05:18:26'),
(681, 'Aadil Zia', 'Adhaar Card', '2588 5599 7843', '9572909190', 'ziaaadil056@gmail.com', 'S/O: Aamir Zia, House No-41, Road No-6 Azadnagar, Mango, Jamshedpur, Azadnagar, East Singhbhum, Jharkhand-832110', '9572909190', 1, 507, 1, 'uploads/signatures/03d91875a7a1da9fc5a697497f8ece03.jpg', '2024-12-08 00:00:00', '2024-12-08 05:41:50'),
(682, 'Nitish Kaushik', 'Adhaar Card', '409208523615', '9936353704', 'nitish3704@gmail.com', 'Address:S/O: Rambabu Kaushik, misrana, GAV MURADABAD, unnao, Ganj Muradabad, PO: Ganj Moradabad, DIST: Unnao, Uttar Pradesh - 241502', '9936353704', 1, 366, 1, 'uploads/signatures/d3836f3472fd1d9a9db05b2fcef59f9e.jpg', '2024-12-08 00:00:00', '2024-12-08 06:00:31'),
(683, 'HP JAGADISH', 'Adhaar Card', '??34 20240007207', '7892878020', 'Jagdishjaggu45737@gmail.com', 'Door No 191 Ward No 22Mahanandikottam\r\nNear Sriram temple Bellary Bellary Ballari Karnataka583101', '7892878020', 1, 137, 1, 'uploads/signatures/6f3a80199fe4be8638dba6fdf575a112.jpg', '2024-12-08 00:00:00', '2024-12-08 06:01:36'),
(684, 'HIMMAT SINGH BAROD', 'Adhaar Card', 'RJ12 20170006119', '8094689142', 'Hsbarod910@gmail.com', 'VPO.-THAKARDA TEH-SAGWARA DUNGARPUR', '8094689142', 1, 83, 1, 'uploads/signatures/b8c7c1b645a7d6acaec839566cf09a3d.jpg', '2024-12-08 00:00:00', '2024-12-08 06:02:37'),
(685, 'M Akilan', 'Adhaar Card', '7793 3900 1403', '9159787257', 'mechtamilan143@gmail.com', 'S/O Mokkara NO 107-2 SRINIVASA NAGAR 1ST STREET Usilampatti\r\nUsilampatti Madura Tamil Nadu 625532', '9159787257', 1, 186, 1, 'uploads/signatures/a28389d63c3b4a19233ae37ccc83a285.jpg', '2024-12-08 00:00:00', '2024-12-08 06:11:47'),
(686, 'Arvind', 'Adhaar Card', '2156 2652 5497', '9120641659', 'arvind879556@gmail.com', '570: Ram Narayan, Parsapur, Pansapur, PO Nawabganj, DIST. Gonda, Uttar Pradesh 271303', '9120641659', 1, 0, 1, 'uploads/signatures/109310345b50205c70ae1e8887397ba1.jpg', '2024-12-09 00:00:00', '2024-12-08 06:13:01'),
(687, 'Yash Maheshbhai Dave', 'Adhaar Card', '9551 0930 4865', '6356107968', 'yashdave20052000@gmail.com', 'Address: S/O: Maheshbhai Dave, 2/42, nagarno madh, jain derasar pase, moti dau, Motidau, Mahesana. Gujarat-384120', '6356107968', 1, 323, 1, 'uploads/signatures/a015ba1847beaf38b8ef0fa369906dd7.jpg', '2024-12-08 00:00:00', '2024-12-08 06:54:16'),
(688, '  Vaishnavi Pranit Khobragade', 'Adhaar Card', '2969 5584 1696', '9834315775', 'vaishnavimandare2@gmail.com', 'C/O: Pranit Khobragade, at post ashti tah chamorshi, Ashti, PO Ashti DIST\r\nGadchiroli, Maharashtra-442707', '9834315775', 1, 59, 1, 'uploads/signatures/41c4a45146643a6b06acc58b2a0e7255.jpg', '2024-12-08 00:00:00', '2024-12-08 06:55:41'),
(689, 'Kanta Chauhan', 'Adhaar Card', '2558 4026 0824', '7819925497', 'kantachauhan513@gmail.com', 'W/O: Tejpal Singh, Dahra, Hapur, Uttar Pradesh-245205', '7819925497', 1, 700, 1, 'uploads/signatures/a294b65945309481b97336891c0f1b52.jpg', '2024-12-09 00:00:00', '2024-12-08 06:56:50'),
(690, 'Chandana N', 'Adhaar Card', '3081 1609 0995', '8050775391', 'kushikiran478@gmail.com', 'Address: D/O: Nagesh K, 334, Sanjeevinagar, Huskur, Bangalore, Karnataka, 560099', '8050775391', 1, 700, 1, 'uploads/signatures/707eafb17a149aac7358b6af5ab0230b.jpg', '2024-12-08 00:00:00', '2024-12-08 07:09:09'),
(691, 'Ayush Kumar', 'Adhaar Card', '6528 4653 9085', '8809359910', 'Sonusingh252431@gmail.com', 'S/O: Rajesh Kumar Singh, haharo, Haharo Urf Chaturbhujpur, Vaishali, Bihar - 844113', '8809359910', 1, 1, 1, 'uploads/signatures/5b225c804eeb7d020734eddff8a58ff2.jpg', '2024-12-17 00:00:00', '2024-12-08 07:10:11'),
(692, 'Rishabh Dubey', 'Adhaar Card', '2510 2260 1426', '7983478764', 'rishabhsharma1755@gmail.com', 'C/O: Rameshwar Dubey, mahavidhya colony. Mathura, PO: Mathura, DIST: Mathura, Uttar Pradesh-281001', '7983478764', 1, 700, 1, 'uploads/signatures/73f2e37940b2d0f03845112a0bc37045.jpg', '2024-12-08 00:00:00', '2024-12-08 07:15:16'),
(693, 'B Thulasi', 'Adhaar Card', '4189 6742 2643', '8050033446', 'anithulasib@gmail.com', 'D/O: J Bakthavatchalu, #1027, 5th Block Vishweshwaraiah Layout, Ullalu Main Road, Ullalu, Bangalore,\r\nKarnataka 560056', '8050033446', 1, 0, 0, 'Not Signed', NULL, '2024-12-08 07:31:25'),
(694, 'B Thulasi', 'Adhaar Card', '4189 6742 2643', '8050033446', 'anithulasib@gmail.com', 'D/O: J Bakthavatchalu, #1027, 5th Block Vishweshwaraiah Layout, Ullalu Main Road, Ullalu, Bangalore,\r\nKarnataka 560056', '8050033446', 1, 0, 0, 'Not Signed', NULL, '2024-12-08 07:31:25'),
(695, 'Sharul Rajput', 'Adhaar Card', '6401 0897 4688', '9058706138', 'sharulajput28@gmail.com', 'C/O: Raju Rajput, Rasidpur Kaneta, Donkeli, Firozabad, Uttar Pradesh - 283203', '9058706138', 1, 700, 1, 'uploads/signatures/09b67457a168babee8e1858db5097548.jpg', '2024-12-08 00:00:00', '2024-12-08 08:09:41'),
(696, 'Mahendra Shankarji Prajapati', 'Adhaar Card', '7061 1848 5337', '7490905656', 'mahichauhan1094@gmail.com', 'Shankarji, A/306 satva2 residency, Narol aslali highway road, Opp. Sanghaani platinam, Narol, Narol, PO: Narol, DIST: Ahmedabad, Gujarat-382405', '7490905656', 1, 3, 1, 'uploads/signatures/931eefdab23bcf28c1201abee34a2c5e.jpg', '2024-12-08 00:00:00', '2024-12-08 08:36:47'),
(697, 'Armandeep Kaur ', 'Adhaar Card', '6034 0207 5883', '9780415514', 'armandeepk722@gmail.com', 'D/O Kulwinder Singh, Vill - Raipur Raian, Khamanon, Fatehgarh Sahib, Punjab - 141801\r\n', '9780415514', 1, 700, 1, 'uploads/signatures/a9d14e84d857aaa419dabbd29d4edfc2.jpg', '2005-05-12 00:00:00', '2024-12-08 09:00:03'),
(698, 'Kalaganda Mahideep', 'Adhaar Card', '9496 7677 2009', '9346672296', 'mahixdeep04@gmail.com', 'S/O: Kalagandha Srinivasulu 1-5-73 BANGLA THOTA NEAR KRANTHI SCHOOL NAWABUPET Nellore Nellore Andhra Pradesh-524002', '9346672296', 1, 0, 0, 'Not Signed', NULL, '2024-12-08 09:31:16'),
(699, 'Tabasur Banu J', 'Adhaar Card', '4497 2946 0554', '8867052825', 'tabassumbanu679@gmail.com', 'C/O: Alishan Pasha, No 20/1. 4th Main 3rd Cross, Gangondanahalli, VTC: Bangalore South, PO: Nayandahalli, Sub District: Bangalore South, District: Bengaluru, State: Karnataka, PIN Code: 560039', '8867052825', 1, 20, 1, 'uploads/signatures/46e56a5c2cbb90af08aee635d2d64c50.jpg', '2024-12-08 00:00:00', '2024-12-08 09:32:55'),
(700, 'P CHANDAN KUMAR REDDY', 'Adhaar Card', '9792 7272 5507', '6309014574', 'chandanreddy9848@gmail.com', 'S/O Poreddy Maheswar Reddy, 2-1991. CHENNAREDDY VEEDHI, PILERU, Pileru, Chittoor, 3 Andhra Pradesh - 517214', '6309014574', 1, 700, 1, 'uploads/signatures/6874a2e93a04bc896f2bddd5c3faae6a.jpg', '2024-12-08 00:00:00', '2024-12-08 09:36:36'),
(701, 'Aastha Tuteja', 'Adhaar Card', '7334 0472 4053', '8920568837', 'aasthatuteja13@gmail.com', 'C/O: Jayesh Tuteja, 1/11120-B, Street no. 9, Behind kirti mandir, Subhash park, Shahdara, North East Delhi, Delhi - 110032', '8920568837', 1, 281, 1, 'uploads/signatures/540d643dee779899aefca04620bc0882.jpg', '2024-12-08 00:00:00', '2024-12-08 09:38:47'),
(702, 'ALOY ROY', 'Election Card', 'YEX2135838', '7679645460', 'aloyr542@gmail.com', 'BELARLBelerl AUSGRAM PURBA BARDHAMAN 713141', '7679645460', 1, 700, 1, 'uploads/signatures/c6213efeb3d70073775908f34d47e4a4.jpg', '2024-12-08 00:00:00', '2024-12-08 09:40:39'),
(703, 'Mohammed Asaduddin', 'Adhaar Card', '7627 3575 1820', '7815839920', 'asadziyan786@gmail.com', 'S/O: Mohd.Shareefuddin 02-81/3 bazar wada Sirpur (T) Adilabad Telangana - 504299', '7815839920', 1, 0, 0, 'Not Signed', NULL, '2024-12-08 09:41:55'),
(704, 'Ashok Kumar ', 'Adhaar Card', '5864 4683 5228', '9043613616', 'ranjther@gmail.com', 'S/O Vaiyapuri, 5/765, AMMAN NAGAR, AMMAMPALAYAM POST, ATTUR TALUK, Ammampalayam, PO: Ammampalayam, DIST: Salem, Tamil Nadu - 636141', '9043613616', 1, 0, 0, 'Not Signed', NULL, '2024-12-08 10:45:23'),
(705, 'Nidhi Sharma ', 'Election Card', 'YIY0945022', '7999502718', 'ashusharma9329@gmail.com', 'WARD NO. 11 BHAGATASINGH, GORAMI, TEHSIL GORMI, DISTRICT BHIND, M.P.)-477660\r\n', '7999502718', 1, 0, 0, 'Not Signed', NULL, '2024-12-08 10:47:22'),
(706, 'Akashraj K', 'Adhaar Card', 'PY05V20230000418', '9788973111', 'akashrajk297@gmail.com', '11ST CROSS STREET\r\nKUPPUSAMY NAGAR KOTHAPURINATHAM\r\nTHIURUVANDARKOIL VILLIANUR TALUK PUDUCHERRY\r\nPIN: 605102\r\n', '9788973111', 1, 37, 1, 'uploads/signatures/ec3855bd1f526249dbf913121c9ee653.jpg', '2024-12-08 00:00:00', '2024-12-08 10:49:48'),
(707, 'Dharmi k Gangdev', 'Driving License', 'GJ32-20240004398', '9773167109', 'dharmigangdev@gmail.com', 'Block No 26C West Dayanand Society,\r\nGir Gadhada Road,\r\nUna, Gir Somnath[Ver, GJ, 362560\r\n', '9773167109', 1, 700, 1, 'uploads/signatures/64dac6915c8539b8ca868103ab8990c3.jpg', '2024-12-08 00:00:00', '2024-12-08 10:53:56'),
(708, 'Kartikeshwar Vaishnaw', 'Adhaar Card', '5924 7901 3846', '8878206410', 'kanhavaishnav3@gmail.com', 'S/O: Bajrang Das Vaishnaw,\r\nGhiwra, Ghiwra, Janjgir-champa,\r\nChhattisgarh, 495661', '8878206410', 1, 0, 0, 'Not Signed', NULL, '2024-12-08 10:58:18'),
(709, 'Rupali Uikey', 'Adhaar Card', '3673 3253 3803', '9329226895', 'rupaliuikey530@gmail.com', 'D/O: Tejram Uikey, Ward no. 19, mu. Jamlapani Ta. Sausar, Jamalpani No.1, Chhindwara, Madhya Pradesh - 480106', '9329226895', 1, 44, 1, 'uploads/signatures/3927558d49590792d09740388ac81d95.jpg', '2025-01-28 00:00:00', '2024-12-08 11:12:05'),
(710, 'Asif Ajishkhan', 'Adhaar Card', '6613 6927 6062', '6381912406', 'ashifzahida196@gmail.com', '1/353 Annai Indira Street, Sakthi Nagar, Arani, Tiruvannamalai, Tamil Nadu - 632301', '6381912406', 1, 700, 1, 'uploads/signatures/0f04fb95a7b348a248da616d5a20eaaf.jpg', '2024-12-08 00:00:00', '2024-12-08 11:15:17'),
(711, 'Vedalakshmi N L', 'Adhaar Card', '8710 4790 5333', '7337816346', 'ramaveda560@gmail.com', '20th ward, jamiya maseedi road,\r\nBagepalli, Bagepalli,\r\nChikkaballapur, Karnataka, 561207\r\n', '7337816346', 1, 7, 1, 'uploads/signatures/500a58200f8c4f5915f0a6cc9225475d.jpg', '2024-12-08 00:00:00', '2024-12-08 11:17:42'),
(712, 'Aditi Sanjay Devrukhar', 'Adhaar Card', '4754 4174 3210', '9136062208', 'aditikasbe4@gmail.com', 'Arun Patil Chawl No-03, Room No-03\r\nSabe Road\r\nNear Jivdani Mandir\r\nDiva East\r\nThane\r\nThane Maharashtra 400612', '9136062208', 1, 701, 1, 'uploads/signatures/9d81bf01c6637e226b4c10400df2c564.jpg', '2024-12-08 00:00:00', '2024-12-08 11:30:51'),
(713, 'Dev Viraj', 'Adhaar Card', '9503 5793 1429', '9336592913', 'devvirajkashyap@gmail.com', 'C/O: Deepak, 501/149, Keshripur Daliganj, Gurudwara, Daliganj, Niralaa E Nagar, Lucknow, Uttar Pradesh, 226020', '9336592913', 1, 640, 1, 'uploads/signatures/3df63505d5ca5200f6faca313f818640.jpg', '2024-12-10 00:00:00', '2024-12-08 11:35:39'),
(714, 'SAMRAGGI PAUL', 'Election Card', 'TUE0155994', '8099358536', 'sreyap1420@gmail.com', 'PRESBYTERIAN CHURCH, SHILLONG, LABAN, EAST\r\nKHAST-HILLS, MEGHALAYA-793004', '8099358536', 1, 0, 0, 'Not Signed', NULL, '2024-12-08 12:23:01'),
(715, 'Dev Viraj', 'Adhaar Card', '9503 5793 1429', '9336592913', 'devvirajkashyap@gmail.com', 'Address: C/O: Deepak, 501/149, Keshripur Daliganj, Gurudwara, Daliganj, Nirala Nagar, Lucknow, Uttar Pradesh, 226020', '9336592913', 1, 640, 0, 'Not Signed', NULL, '2024-12-09 03:44:13'),
(716, 'SAMRAGGI PAUL', 'Election Card', 'TUE0155994', '8099358536', 'sreyap1420@gmail.com', 'Address 23/5, PRESBYTERIAN CHURCH, SHILLONG, LABAN, EAST KHASTHILLS, MEGHALAYA-793004', '8099358536', 1, 0, 0, 'Not Signed', NULL, '2024-12-09 03:45:37'),
(717, 'Shalya A', 'Election Card', 'XKW6699045', '9448264483', 'shalyaaammu@gmail.com', 'ATHIHALLI POST, SAKLESHPURA, HASSAN, KARNATAKA-573123', '9448264483', 1, 700, 1, 'uploads/signatures/0a486d48a063ec4fda2196e36636dff5.jpg', '2024-12-14 00:00:00', '2024-12-09 03:47:13'),
(718, 'Ranjeet Pal', 'Adhaar Card', '4187 0653 1570', '7007128776', 'Betupal1965@gmail.com', 'Address: S/O: Ram Sanehi Pal, 1A/130, AWAS VIKAS, HANSPURAM, NAUBASTA, Kanpur, Kanpur Nagar, Uttar Pradesh, 208021', '7007128776', 1, 0, 0, 'Not Signed', NULL, '2024-12-09 03:49:03'),
(719, 'Swati Rani Snod', 'Adhaar Card', '6213 5672 6244', '8859524538', 'swatisood784@gmail.com', 'Oro Rajendra Kumar Singh MOHALLA TAKIYA GADI PURVI Nahlaur Nehtaur Dhampur Banor Uttar Pradesh 246733', '8859524538', 1, 0, 0, 'Not Signed', NULL, '2024-12-09 03:49:57'),
(720, 'Subathra Devi S', 'Adhaar Card', '9795 8497 5418', '9342506479', 'devisubathra74@gmail.com', 'Address: D/O: Sundarraj, 50c, 1st STREET, KARAIRUPPU, Thalaiyuthu, Tirunelveli, Tamil Nadu, 627357', '9342506479', 1, 0, 0, 'Not Signed', NULL, '2024-12-09 03:50:46'),
(721, 'Sangeetha Subramaniyan', 'Adhaar Card', '7718 7484 3519', '8523951797', 'sangeema112@gmail.com', 'D/O Subramaniyan, 2/111, MARAVAR STREET, KOTTUR POST, VTC Kottur, District Pudukkottai, State: Tamil Nadu, PIN Code 622404,', '8523951797', 1, 0, 0, 'Not Signed', NULL, '2024-12-09 04:08:19'),
(722, 'Ramdeo Kumar Yadav', 'Adhaar Card', '5484 0885 6209', '8292173379', 'kumarramdeo1996@gmail.com', 'S/O Phagu Yadav, ward n? 06. kharkota post Inderwa thana koderma, Indarwa, Koderma', '8292173379', 1, 0, 1, 'uploads/signatures/c00af92c4e229f068b6c18de4035db7a.jpg', '2024-12-11 00:00:00', '2024-12-09 04:18:47'),
(723, 'Jayadharshini V ', 'Adhaar Card', '9555 4802 3555', '8903628684', 'jayadharshinivijayakumar005@gmail.com', 'C/O: S.Vijayakumar, 1-8 GOODLUCK\r\nAPARTMENT, ANANDHA AVENUE, NEAR\r\nJEYANDRA SCHOOL, Tiruchirappalli,\r\nTiruchirappalli, Tamil Nadu 620002', '8903628684', 1, 100, 1, 'uploads/signatures/ef9c82b86933658cff4bd0bce04c7327.jpg', '2024-12-10 00:00:00', '2024-12-09 04:34:05'),
(724, 'Vishal Singh', 'Adhaar Card', '7837 2553 4718', '8968827983', 'sherpurp68@gmail.com', 'Anbass: S/O Saman Singh Nang Ramats Punjah 148025', '8968827983', 1, 700, 1, 'uploads/signatures/49ee4bb7cbdc8100e0102f61e8d28b6f.jpg', '2024-12-09 00:00:00', '2024-12-09 04:37:55'),
(725, 'Sammy Kumar', 'Adhaar Card', '5977 9536 7136', '9470732344', 'Sammykr2008@gmail.com', 'S/O: Rahul Kumar, basbitti, ward no-06, Baspiti, Supaul. Bihar-852130', '9470732344', 1, 1, 1, 'uploads/signatures/7be63f240a2bd0a748e4a660bc1d76f0.jpg', '2024-12-09 00:00:00', '2024-12-09 04:39:00'),
(726, 'Shalini R', 'Adhaar Card', '9139 9521 0711', '7411758725', 'monisharsubbe@gmail.com', 'ress: Raju, #102, rajeshwari nagara, barahalli, Lakshmipura, Bangalore', '7411758725', 1, 700, 1, 'uploads/signatures/8befa4394a80e7a48e0d073edb9b3f95.jpg', '2024-12-09 00:00:00', '2024-12-09 05:22:43'),
(727, 'Gidyon Gudida', 'Adhaar Card', 'RQN2113157', '6305293437', 'gideongu3@gmail.com', 'Address: 2-64, VANGAVEEDU, VANGAVEEDU, VANGAVEEDU, KHAMMAM, TELANGANA-507203', '6305293437', 1, 0, 0, 'Not Signed', NULL, '2024-12-09 05:23:50'),
(728, 'Prabhandham Meghana', 'Adhaar Card', '5662 3908 4928', '6281346496', 'prabhandhammeghana7@gmail.com', 'D/O: P S Dwarakanath Vanasthalipuram Hayathnagar Flat No 303, Subhodaya Arcadia Sushma Sai Nagar Colony, Road No-1 Vanastalipuram K.v. Rangareddy Telangana - 500070', '6281346496', 1, 402, 1, 'uploads/signatures/fd1eee0f8569499b435ee70361cc771e.jpeg', '1996-12-09 00:00:00', '2024-12-09 05:25:00'),
(729, 'Bidyut Kumar Mahato', 'Adhaar Card', '6028 0588 7646', '9064187950', 'bidyut.mahato07@gmail.com', 'Address: S/O: Anil Ch Mahato, chakirbon, chakirban, Chakirban, Puruliya, West Bengal, 723102', '9064187950', 1, 5, 1, 'uploads/signatures/c55320eaf327bb3fc6d935ea860f27e3.jpg', '2024-12-11 00:00:00', '2024-12-09 05:26:09'),
(730, 'Channaveerayya', 'Adhaar Card', '3454 8912 8990', '9902927560', 'channaveerayyahiramath633@gmail.com', 'S/O: Gundayya, VTC: Pattan. PO: Pattan, Sub District. Afzalpur, District: Gulbarga, State: Karnataka, PIN Code: 585311,', '9902927560', 1, 3, 1, 'uploads/signatures/60b6fe823b5db718f53dc1dde38ba17a.jpg', '2024-12-09 00:00:00', '2024-12-09 06:43:54'),
(731, 'Mullaparthi Purna Chander Rao', 'Adhaar Card', '3727 7985 8132', '9701460290', 'chandu.202021@gmail.com', 'S/O Mullaparthi Venkateshwar Rao, H NO-344, RAJEEV GANDHI NAGAR BACHUPALLY, QUTHBULLAPUR, Rangareddi Andhra Pradesh, 500090', '9701460290', 1, 0, 0, 'Not Signed', NULL, '2024-12-09 09:27:10'),
(732, 'Praveen Kumar Mandal', 'Adhaar Card', '6835 4566 0104', '8851956126', 'iampraveen7016@gmail.com', 'S/O Suraj Kumar Mandal, C-Block-674, J.J colony, Bawana, North West Delhi, Delhi-110039', '8851956126', 1, 100, 1, 'uploads/signatures/8cd04d2c7f951729a5246de07b6afeff.jpg', '2024-12-09 00:00:00', '2024-12-09 09:28:29'),
(733, 'Karna Mality', 'Adhaar Card', '7954 3713 4996', '9062326256', 'karnamaity2553@gmail.com', 'S/O Genesh Mally MUCHIPARA GIP COLONY Hacra Corporation Hacra West Bengal-711112', '9062326256', 1, 0, 0, 'Not Signed', NULL, '2024-12-09 09:31:30'),
(734, 'Siddling swami', 'Adhaar Card', '7255 8876 5624', '9900775795', 'shidhaling1@gmail.com', 'S/O Mahaling Swam, Handkhera, PO\r\nChimegaon, ?IST: Bidar,\r\nfKarnataka - 585443 ', '9900775795', 1, 7, 1, 'uploads/signatures/d4b4542d400c7f07a8779dd8ac874241.jpg', '2024-12-09 00:00:00', '2024-12-09 11:42:28'),
(735, 'HEENA MEHTA', 'Adhaar Card', '2246 7078 3739', '9468116899', 'himanshimehta831@gmail.com', 'D/O: Harsh Mehta,\r\n59/407, Preet Nagar,\r\nNear police line chowk,\r\nVTC: Ambala City,\r\nPO: Ambala City,\r\nSub District: Ambala, District: Ambala,\r\nState: Haryana,\r\nPIN Code: 134003,\r\nMobile: 9728800252', '9468116899', 1, 82, 1, 'uploads/signatures/b3d8c8a0d158717b4fd80ea3bbb76b3b.jpg', '2024-12-09 00:00:00', '2024-12-09 11:44:54'),
(736, 'Karna maity', 'Adhaar Card', '7954 3713 4996', '9062326256', 'karnamaity2553@gmail.com', '5/0 Genesh Malty\r\nMUCHEFARA\r\nGI PCOLONY\r\nHasora Corperation\r\nHaora West Bengal - 711112\r\n9062326258', '9062326256', 1, 0, 0, 'Not Signed', NULL, '2024-12-09 11:46:22'),
(737, 'Keerthi N', 'Adhaar Card', '5506 3376 6267', '7019131288', 'keerthinagaraj95@gmail.com', '1D/O: Nagaraj, # 1087/2, 2nd main road NGO S colony, 2nd stage, near nanjudeshwar kalyan mantap, kamalanagar, Bangalore North, Bangalore, Karnataka-560079', '7019131288', 1, 700, 1, 'uploads/signatures/bb4de98e9363893fbde07b45ca2a8ee9.jpg', '2024-12-09 00:00:00', '2024-12-09 12:40:21'),
(738, 'Ranjeeta', 'Adhaar Card', '7522 4870 0952', '9667627424', 'jeenatmirja8@gmail.com', 'D/O: Anilrudh Ram Pasi, 588, BLOCK, Jahangir Puri, Narh West Delhi, Azadpur', '9667627424', 1, 700, 1, 'uploads/signatures/37237450919d4f1a0f5d72920bdc0ed4.jpg', '2024-12-10 00:00:00', '2024-12-09 13:03:06'),
(739, 'Taraprasad Dube', 'Adhaar Card', 'DMB2620086', '9091909085', 'rakesh13dubey@gmail.com', 'Khottapara Lane, Khottapara Eastlane, Ward No-7\r\nKotwali Nadia 741101', '9091909085', 1, 32, 1, 'uploads/signatures/384b7e1996aebdb25032eef7c52055e9.jpg', '2024-12-10 00:00:00', '2024-12-10 03:38:26'),
(740, 'Ankush Bhatia', 'Adhaar Card', '2449 2358 1194', '7807725537', 'ankushbhatiablp@gmail.com', 'S/O Dina Nath, Village Gehrwin P.O Gehrwin Tehsil Jhandutta, Gehrwin (191), Bilaspur, Himachal Pradesh - 174034', '7807725537', 1, 8, 1, 'uploads/signatures/842c88d8104fd075a0272f7c8db47be2.jpg', '2024-12-11 00:00:00', '2024-12-10 03:39:44'),
(741, 'Athulya Ravi', 'Adhaar Card', '5270 4028 7285', '9746879623', 'athu.athulya9@gmail.com', 'D/O: Radha Ravi, Cheroor House, SN Nagar, PO Nadathara, VTC: Nadathara, District: Thrissur,\r\n\r\n', '9746879623', 1, 700, 1, 'uploads/signatures/3d20860037b6323c5459b489234cb0fd.jpg', '2024-12-10 00:00:00', '2024-12-10 03:41:54'),
(742, 'Kamesh Dixit', 'Adhaar Card', '2724 8802 5638', '7983428197', 'kameshdixit9690@gmail.com', 'S/O Sukhlal, 0, Village - Kaulara Khurd,\r\nKolara Khurd, Agra, Uttar Pradesh - 283125', '7983428197', 1, 0, 0, 'Not Signed', NULL, '2024-12-10 03:43:04'),
(743, 'Chintha Pushpa Latha', 'Adhaar Card', '7676 8303 9541', '9676892839', 'chinthapushpalatha2002@gmail.com', 'C/O: Chintha Srinivas, 7-1-38/1/34, BJR Nagar, Leela Nagar, Ameerpet, PO:\r\nBegumpet, DIST: Hyderabad, Telangana-500016', '9676892839', 1, 0, 0, 'Not Signed', NULL, '2024-12-10 03:44:25'),
(744, 'Logeshwari', 'Adhaar Card', '2014 7381 0706', '9655931986', 'ammu82128@gmail.com', 'D/O Jayaraman, 32, Mariamman Koil Street, Palani Kiramani Thottam, Vazhaikulam,\r\nPadmini Nagar S.O, Pondicherry, Pondicherry-605012', '9655931986', 1, 700, 1, 'uploads/signatures/6115b5082f0260ea276bc2c8c31f9903.jpg', '2024-12-15 00:00:00', '2024-12-10 03:54:10'),
(745, 'Ameen K S', 'Adhaar Card', '8120 1092 0499', '97787', 'ksameen0451@gmail.com', 'Address: S/O: Shahul Hameed, Kanisseril, Arookkutty P O, Arookutty, Alappuzha, Kerala, 688535', '97787', 1, 2, 1, 'uploads/signatures/4e28df6e392e8c3dc208f70c62f8d563.jpg', '2024-12-10 00:00:00', '2024-12-10 04:26:58'),
(746, 'Janaki M', 'Adhaar Card', '3275 5526 2762', '7845995986', 'jeevadeepim@gmail.com', 'Address:D/O Moorthy, 3/110/D, North Street, Pudhupalayam, Gettisamudram, PO: GETTISAMUDRAM, DIST: Erode, Tamil Nadu - 638501', '7845995986', 1, 0, 0, 'Not Signed', NULL, '2024-12-10 04:57:26'),
(747, 'HAZEERA NIKHAT', 'Adhaar Card', 'FYY1367176', '8919601593', 'Izelbella123@gmail.com', '8-4-549/82/G\r\nNETAJI NAGAR SLUM, SULTAN NAGAR, HYDERABAD', '8919601593', 1, 0, 0, 'Not Signed', NULL, '2024-12-10 04:59:52'),
(748, 'Rushi', 'Adhaar Card', '9894 2838 0152', '9588304226', 'vermarushi28@gmail.com', 'D/O: Suresh, Kural Bass, Kurdal (70), Bhiwani, Haryana 127201', '9588304226', 1, 253, 1, 'uploads/signatures/9bc272d4ff2c7c84c40b3b1d79bf6cbe.jpg', '2024-12-10 00:00:00', '2024-12-10 05:01:48'),
(749, 'Preeti Mitra', 'Adhaar Card', '4263 5686 1491', '7980057094', 'p41105234@gmail.com', 'Address: W/O Abir Mitra, 142, P K GUHA ROAD, DUMDUM CANTONMENT, Dum Dum(m), PO:Dumdum, DIST: North 24 Parganas, West Bengal, 700028', '7980057094', 1, 2, 1, 'uploads/signatures/aa1d2bd89cbc303bd9e149b77970bbfe.jpg', '2024-12-10 00:00:00', '2024-12-10 05:20:22'),
(750, 'Patel Nikita Hitesh', 'Adhaar Card', '4857 6052 7799', '7567057897', 'nikipatelpharma@gmail.com', 'Address: W/O Hitesh, Plot No 43/1, Sector 3 A, Gandhinagar, PO:(gandhinagar) Sector 6, DIST:Gandhinagar, Gujarat, 382006', '7567057897', 1, 700, 1, 'uploads/signatures/bdd945ec4cd99d21446f977edec71302.jpg', '2024-12-10 00:00:00', '2024-12-10 05:21:46'),
(751, 'Rupam Kumari ', 'Adhaar Card', '2534 4639 4029', '9810831368', 'rupamkumari86@gmail.com', 'Flat No- 505, Sunlight Residency Tower No-5,\r\nVillage Sadarpur,\r\nDefence Enclave Near Sombazar,\r\nNoida Sec 44,\r\nVTC: Noida,\r\nPO: Noida,\r\nDistrict: Gautam Buddha Nagar,\r\nState: Uttar Pradesh,\r\nPIN Code: 201301', '9810831368', 1, 700, 1, 'uploads/signatures/9071164b8017d64afe4ab49f72772b8a.jpg', '2024-12-12 00:00:00', '2024-12-10 06:31:44'),
(752, 'Ankur Nath', 'Election Card', 'GZC0285247', '8811896674', 'nathankur61@gmail.com', 'HNo.46, RANGACHAHI, RANGACHAHI, RANGACHAHI, MAJULI, ASSAM-785104\r\n', '8811896674', 1, 112, 1, 'uploads/signatures/bf6da09d9e1a3eec9815a42e8b75757d.jpg', '2024-12-10 00:00:00', '2024-12-10 06:33:54'),
(753, 'Rahul Saini', 'Adhaar Card', '6893 8966 2043', '8690044669', 'mitleshsaini889@gmail.com', 'Address: S/O Khushiram Saini, alapur, hadiya, Mahwa,\r\nPO: Mahwa, DIST: Dausa, Rajasthan 321608', '8690044669', 1, 0, 0, 'Not Signed', NULL, '2024-12-10 12:10:15'),
(754, 'Ashik', 'Adhaar Card', '8122 1223 8066', '9258281235', 'shivteachnical@gmail.com', 'S/O: Sharif Khan, Gobra, Agra, Hansela, Uttar Pradesh, 283101', '9258281235', 1, 1, 1, 'uploads/signatures/200d856fda61b1faa69a738b26322ed8.jpg', '2024-12-10 00:00:00', '2024-12-10 12:27:34'),
(755, 'Uppari Praveen', 'Adhaar Card', '5877 1729 0104', '9542284576', 'praveenmj655@gmail.com', 'S/O Uppari Bhoomaiah\r\nH No 1-38/A\r\nMulugu Mandal\r\nMulug\r\nMedak Andhra Pradesh - 502279', '9542284576', 1, 0, 0, 'Not Signed', NULL, '2024-12-11 04:28:04'),
(756, 'Monu kumar Kharwar ', 'Adhaar Card', '9654 9667 7282', '9936961340', 'monukumarkharwar02@gmail.com', 'S/O: Hansnath Kharwar, Indara, Pashchim Patti, Indara, Mau, Uttar Pradesh - 275102\r\n', '9936961340', 1, 15, 1, 'uploads/signatures/dd3360474d6799fbad44533c6c889139.jpg', '2024-12-12 00:00:00', '2024-12-11 04:32:24'),
(757, 'Sumit ', 'Adhaar Card', '8338 5053 7774', '8920964182', 'thakursumit37539@gmail.com', 'C/o Sinnet Singh Rawat, House No-J-284, Street No-2, Chautha Pusta Kartar Nagar, Garhi Mendu, PO: Bhajan Pura, DIST: North East Delhi, Delhi - 110053\r\n', '8920964182', 1, 53, 1, 'uploads/signatures/27c7480d2456d2779087ed457008547d.jpg', '2024-12-11 00:00:00', '2024-12-11 04:34:16'),
(759, 'Abdulrehaman Moulali Shaikh', 'Adhaar Card', '5968 0720 4083', '9448942198', 'abdulrehamanms@gmail.com', 'To\r\n Abdulrehaman Moulali Shaikh\r\nGUNJAVATI,\r\nMundgod,\r\nVTC: Gunjavati,\r\nSub District: Mundgod, District: Uttara Kannada,\r\nState: Karnataka, PIN Code: 581349', '9448942198', 1, 0, 0, 'Not Signed', NULL, '2024-12-11 05:22:38'),
(760, 'SHAY JAIN', 'Driving License', 'KA19 20U810002778', '9902399067', 'thodaraj@gmail.com', 'H NO 2-226, BHAVADABETTU HOUSE, \r\nTHODAR POST, MOODABIDRI, MANGALURU. \r\n575001', '9902399067', 1, 0, 0, 'Not Signed', NULL, '2024-12-11 05:26:19'),
(761, 'Radhika ', 'Adhaar Card', '6074 1231 6164', '8754564740', 'radhikajani88@gmail.com', 'D/O: Paneer Selvam\r\nNO 30A\r\n3RD MAIN ROAD SEENIVASAPURAM\r\nSRINIVASAPURAM\r\nKorattur RS\r\nKorattur RS, Tiruvallur\r\nTamil Nadu - 600076', '8754564740', 1, 8, 1, 'uploads/signatures/fd0d9483e49f1270332f5812e7e244f7.jpg', '2024-12-11 00:00:00', '2024-12-11 05:45:38'),
(762, 'Asif Ajishkhan', 'Adhaar Card', 'ashifzahida196@gmail.com', '638191', 'ashifzahida196@gmail.com', '1/353 Annai Indira Street, Sakthi Nagar, Arani, Tiruvannamalai, Tamil Nadu - 632301', '638191', 1, 8, 1, 'uploads/signatures/1be98f5bba4fd176ef9e3468ca796777.jpg', '2024-12-11 00:00:00', '2024-12-11 05:48:03'),
(763, 'Sanjana ', 'Adhaar Card', '5095 5907 3224', '8800480180', 'sannukashyap077@gmail.com', 'D/O: Sanjay Kashyap, 2G/9, Nehru Nagar, Ghaziabad, Uttar Pradesh, 201001\r\n', '8800480180', 1, 700, 1, 'uploads/signatures/d9affbf8fa6a5c0005dbe2d49cddfa56.jpg', '2024-12-11 00:00:00', '2024-12-11 06:34:36'),
(764, 'Keerthik K J', 'Adhaar Card', '6228 6657 3815', '9746125311', 'keerthikkj5311@gmail.com', 'KOOVAPPARAMBIL, VAYKKARA,\r\nVAIKKARA, Asamannoor,\r\nErnakulam,\r\nKerala - 683549', '9746125311', 1, 0, 0, 'Not Signed', NULL, '2024-12-11 06:37:04'),
(765, 'Ganesh Dnyandev Rite', 'Adhaar Card', '4296 8310 3987', '9168070084', 'serviceleader.ganesh@gmail.com', ' S/O: Dnyandev Rite, miryachiwadi, miryachiwadi, Wakhari, Vakhari, Satara, Maharashtra, 415523\r\n', '9168070084', 1, 43, 1, 'uploads/signatures/6a054f6f8f172703cc9448e88be7415b.jpg', '2024-12-11 00:00:00', '2024-12-11 06:54:03'),
(766, 'Manasa R', 'Adhaar Card', '9498 5724 9644', '7305359802', 'manasamlt12@gmail.com', 'D/O: Ramakrishnan\r\n7/4 VINAYAKAM STREET\r\nWEST MAMBALAM\r\nChennai Tamil Nadu 600033', '7305359802', 1, 700, 1, 'uploads/signatures/6a9db9c2baa722fe2146d60d86561324.jpg', '2024-12-11 00:00:00', '2024-12-11 07:34:50'),
(767, 'Tarun Chauhan', 'Adhaar Card', '5192 7697 2602', '97523', 'mrtarun2012@gmail.com', 'Address: S/O: Hol Say Chauhan, 1635, BELGIRI BASTI, BALACO NAGAR, ward no32, Korba M.corp., Balco Nagar Korba, Korba, Chhattisgarh, 495684', '97523', 1, 2, 1, 'uploads/signatures/6ea67dde41b4b7584b33c84ccaf9eea4.jpg', '2024-12-11 00:00:00', '2024-12-11 11:02:57'),
(768, 'Arman Akhtar', 'Election Card', 'YNB3419918', '6396673002', 'armanakhtar6396@gmail.com', 'Address: SMARTPHONE SOLUTION, SARKARAPARAMPUR,\r\nSARKARAPARAMPUR, RATUPURA, THAKURDWARA, MORADABAD, UTTAR', '6396673002', 1, 7, 1, 'uploads/signatures/4203d99b48a2a1cb56f843659bea7ea2.jpg', '2024-12-11 00:00:00', '2024-12-11 11:09:50'),
(769, 'Lingaraj', 'Adhaar Card', '2115 6023 2761', '8150959791', 'sarveshsarvesh56224@gmail.com', 'S/O: Chandrashekhar Uppin, 120,\r\nhanamanal, Hanmanhal, PO: Hanumanhal,\r\nDIST: Koppal, Karnataka-583280', '8150959791', 1, 1, 1, 'uploads/signatures/5b1f5c39040c8b9f794d201ecb73a4ca.jpg', '2024-12-11 00:00:00', '2024-12-11 11:37:32'),
(770, 'A Rajesh Kumar', 'Adhaar Card', '8614 7498 7043', '9491873979', 'achinirajesh24@gmail.com', 'S/O Achini Krishna uppuguda sishu mandir school tanaji Nagar Hyderabad Hyderabad Andhra Pradesh-500053', '9491873979', 1, 701, 1, 'uploads/signatures/8b379c43cd5431a42ba7363456d1d802.jpg', '2024-12-11 00:00:00', '2024-12-11 11:42:16'),
(771, 'Alim Ansari', 'Adhaar Card', '4573 3888 0756', '8726913156', 'alimansari157@gmail.com', 'S/O Muslim Ansari, karammar, karammar, thana khejuri, Karammar, Ballia, Uttar Pradesh, 277304\r\n', '8726913156', 1, 0, 0, 'Not Signed', NULL, '2024-12-11 12:09:47'),
(772, 'Poonam ', 'Adhaar Card', '865785474372', '9868276056', 'poonamkatnawar@gmail.com', 'W/o Ravinder Kumar,\r\nHouse No. 465,\r\nR.K. Puram,\r\nType-4,\r\nSector-4,\r\nVTC: RK Puram Sect-4,\r\nPO: RK Puram Sect-5,\r\nDistrict: South West Delhi,\r\nState: Delhi,\r\nPIN Code: 110022\r\n', '9868276056', 1, 0, 0, 'Not Signed', NULL, '2024-12-11 12:54:56'),
(773, 'Santhanamari M', 'Adhaar Card', '8574 4044 6417', '9384505290', 'sanriyasanriya55@gmail.com', 'D/O: Muthukumar,\r\n4/8/947A, NEHRUJI NAGAR,\r\nRESERVELINE,\r\nVTC: Anaiyur,\r\nPO: Sivakasi West,\r\nSub District: Sivakasi,\r\nDistrict: Virudhunagar,\r\nState: Tamil Nadu,\r\nPIN Code: 626124\r\n', '9384505290', 1, 0, 0, 'Not Signed', NULL, '2024-12-11 12:58:23'),
(774, 'Rasiya K', 'Driving License', 'KL52-20190018009', '9846392089', 'rasiusman777@gmail.com', 'KARUVANKUZHIYIL,\r\nNADUVATTAM,\r\nPattambi, Palakkad, KL, 679308\r\n', '9846392089', 1, 0, 0, 'Not Signed', NULL, '2024-12-11 13:00:55'),
(775, 'Gorla Nikharika ', 'Adhaar Card', '4830 2646 1353', '8885324838', 'nihagorla@gmail.com', 'House No1-11-37and38\r\nChinna Thokatta\r\nnew Bowenpally\r\nsecunderabad\r\nHyderabad Andhra Pradesh - 500011\r\n', '8885324838', 1, 700, 1, 'uploads/signatures/b82aa4286266cfefe60d6fda919194f6.jpg', '2024-12-11 00:00:00', '2024-12-11 13:04:59'),
(776, 'Kavitha Perumal ', 'Adhaar Card', '4679 2640 1288', '8973170854', 'kavithaperumal221@gmail.com', 'D/O: Perumal, 10, ANCHANEYAR KOVIL STREET, Eluvambady, Tiruvannamalai, Mambattu, Tamil Nadu, 606803\r\n', '8973170854', 1, 700, 1, 'uploads/signatures/bf72184f1667f88442491e8111cb11d6.jpg', '2024-12-11 00:00:00', '2024-12-11 13:07:12'),
(777, 'Amir Raja', 'Election Card', 'UWQ2977411', '8002785504', 'missrukiya24@gmail.com', ' 159, NAWAKA TOLA, ORMA MUKUND, HAKAM, SIWAN, SIWAN, BIHAR-841227\r\n', '8002785504', 1, 10, 1, 'uploads/signatures/17a9e1dea0f3bfafc39adc234c51b590.jpg', '2024-12-11 00:00:00', '2024-12-11 13:09:21'),
(778, 'Bismiya B J', 'Adhaar Card', '9972 4445 1119', '8111938413', 'basheerjophibismiya@gmail.com', 'D/O Basheer A, B J Land, Perumkulam,\r\nPerumkulam, Keezhattingal (part),\r\nThiruvananthapuram,\r\nKerala - 695102\r\n', '8111938413', 1, 0, 0, 'Not Signed', NULL, '2024-12-11 13:45:05'),
(779, 'Santhanamari M', 'Adhaar Card', '8574 4044 6417', '9384505290', 'sanriyasanriya55@gmail.com', 'D/O: Muthukumar, 4/8/947A, NEHRUJI NAGAR, Reserve line, VTC: Anaiyur, PO: Sivakasi West, Sub District: Sivakasi, District: Virudhunagar, State: Tamil Nadu, PIN Code: 626124,', '9384505290', 1, 0, 0, 'Not Signed', NULL, '2024-12-12 03:27:37'),
(780, 'RASIYA K', 'Driving License', 'No. KL5220190018009', '9846392089', 'rasiusman777@gmail.com', 'KARUVANKUZHIYIL, NADUVATTAM, Pattambi, Palakkad, KL, 679308', '9846392089', 1, 0, 0, 'Not Signed', NULL, '2024-12-12 03:28:37'),
(781, 'Kakoli Panja', 'Adhaar Card', 'KQR8480402', '927930', 'kp457228@gmail.com', '09, KHERUA, KHERUA, DIGHI, EAST SINGHBHUM, JHARKHAND-832105\r\n', '927930', 1, 2, 1, 'uploads/signatures/53c48e907b4f539f14d7a2084f86bb98.jpeg', '2024-12-12 00:00:00', '2024-12-12 05:22:58'),
(782, 'Lana Johny M', 'Adhaar Card', '5898 9259 9491', '701262', 'lenalenz891@gmail.com', 'KUTTUKARAN\r\nHOUSE. SAHAYA ROAD\r\nELTHURUTH P O, Eithuruth\r\nS.O, Thrissur, Kerala\r\n680611', '701262', 1, 2, 1, 'uploads/signatures/75f15fe8b9ef5fbac5ef542aed4db5d9.jpg', '2024-12-12 00:00:00', '2024-12-12 05:24:51'),
(783, 'Lana Johny M', 'Adhaar Card', '5898 9259 9491', '701262', 'lenalenz891@gmail.com', 'KUTTUKARAN\r\nHOUSE. SAHAYA ROAD\r\nELTHURUTH P O, Eithuruth\r\nS.O, Thrissur, Kerala\r\n680611', '701262', 1, 2, 0, 'Not Signed', NULL, '2024-12-12 05:24:51'),
(784, 'Kavitha Perumal', 'Adhaar Card', '4679 2640 1288', '8973170854', 'Kavithaperumal221@gmail.com', 'D/O: Perumal, 10, ANCHANEYAR KOVIL STREET, Eluvambady, Tiruvannamalai, Mambattu, Tamil Nadu, 606803', '8973170854', 1, 699, 0, 'Not Signed', NULL, '2024-12-12 05:26:40'),
(785, 'Divi Yogambika Devi', 'Adhaar Card', '7536 3370 0096', '7569399557', 'ambikadivi009@gmail.com', 'D/O: Veerababu, 16-1-1/10, rustumbada,peethala vari peta, Narasapuram, West Godavari, Andhra Pradesh - 534275', '7569399557', 1, 0, 0, 'Not Signed', NULL, '2024-12-12 05:28:23'),
(786, 'RM Nihanika', 'Adhaar Card', '2697 8347 4463', '9087424439', 'nihanika2004rm@gmail.com', 'D/O Raja, 45, Ahimshapuram Mela Street, Pudhu Visalam, Selur, Madurai North, rai. Madurai,\r\nTamil Nadu - 625002', '9087424439', 1, 17, 1, 'uploads/signatures/785ccd09f199fbd0d86a020c59ff9ab4.jpg', '2024-12-12 00:00:00', '2024-12-12 05:30:17'),
(787, 'Neethipudi Jayadeep Kishore', 'Adhaar Card', '4195 1508 5267', '9492538164', 'kishoreneethi83@gmail.com', 'S/O Neethipudi Satyanarayana Murthy, 7-1- 277/59/35, QR No 83, LIG/II, B.K.Guda,\r\nS.R.Nagar, Hyderabad, Hyderabad, Andhra Pradesh-500038', '9492538164', 1, 700, 1, 'uploads/signatures/3751374f90e6b954b51586653114abc7.jpg', '2024-12-12 00:00:00', '2024-12-12 05:31:35'),
(788, 'Shaik Shafi ', 'Adhaar Card', '6217 0513 8019', '8919647050', 'sk3588459@gmail.com', '102-12, 4th Line, Dorathopu Colony, Maseed Veedhi, Nellore, Andhra Pradesh - 524002\r\n', '8919647050', 1, 40, 1, 'uploads/signatures/90b9f1143bc994d826ba282ab1cd9b05.jpg', '2024-12-12 00:00:00', '2024-12-12 06:58:32'),
(789, 'Gorla Dhanaswasi ', 'Adhaar Card', '5584 9062 3435', '7416069920', 'gdhanaswi@gmail.com', 'To\r\nGorla Dhanaswi\r\nD/O Gorla Venu\r\nHouse No.1-11-37and38\r\nChinna Thokatta\r\nnew Bowenpally\r\nsecunderabad\r\nHyderabad Andhra Pradesh - 500011', '7416069920', 1, 76, 1, 'uploads/signatures/86dedfef11f4d9ceaf3cb46f62d3db5e.jpg', '2024-12-12 00:00:00', '2024-12-12 07:00:32'),
(790, 'Arya Sarker', 'Adhaar Card', '7314 7194 3941', '7679109558', 'tansarker1@gmail.com', 'GURUSADAY DUTTA ROAD,\r\nNORTHBHARAT NAGAR WARD NO 24,\r\nSiliguri (M. Corp), Darjeeling,\r\nWest Bengal-734006\r\n', '7679109558', 1, 700, 1, 'uploads/signatures/3828283951227c7313beb7c6882733ee.jpeg', '2024-12-16 00:00:00', '2024-12-12 08:43:14'),
(791, 'Om Prakash Kumar', 'Adhaar Card', '4074 2277 9713', '7231089954', 'omprakash6854@gmail.com', 'S/O Sitaram Chandravanshi, GOLPAR, PO.- RAMGARH CANTT, WARD NO.-02, Ramgarh Cantt, Ramgarh, Jharkhand-829122\r\n', '7231089954', 1, 700, 1, 'uploads/signatures/551305b216d762fcde543347e43119e7.jpg', '2024-12-12 00:00:00', '2024-12-12 08:53:04'),
(792, 'Pratibha Sharma', 'Adhaar Card', '4182 9675 3261', '8814927013', 'sharmapratibha3012@gmail.com', 'C/O: Deepak, near police line, maharana pratap nagar, Namaul, PO: Narnaul, DIST: Mahendragarh, Haryana-123001\r\n', '8814927013', 1, 700, 1, 'uploads/signatures/dce171881fe9a53b4f8ba23cc6bb5de2.jpeg', '2024-12-12 00:00:00', '2024-12-12 11:21:06'),
(793, 'SWATI KOLI', 'Election Card', 'UFR4812384', '9886086524', 'sp227337@gmail.com', 'Address: 53, KOLI GALLI KALLOL, KALLOL, KALLOL. BELGAUM, KARNATAKA-591244', '9886086524', 1, 700, 1, 'uploads/signatures/0affefa53e348e22912fe4b6dff76364.jpg', '2024-12-13 00:00:00', '2024-12-13 04:52:10'),
(794, 'Dhvani Tanwar', 'Adhaar Card', '5144 3126 5798', '7849934705', 'ttanwar249@gmail.com', 'Address: D/O: Sanjeev Kumar, dhani hari singh ji ki, teh neem ka thana, Bhoodoli, Sikar, Rajasthan, 332713', '7849934705', 1, 42, 1, 'uploads/signatures/28856e802b17ab3e38bdb77fe51c78bf.jpg', '2024-12-13 00:00:00', '2024-12-13 04:53:06'),
(795, 'RITA SHARMA', 'Driving License', 'DL11 20000326161', '7678145524', 'ritaatoffice@gmail.com', 'A-203 LORD KRISHNA APARTMENT PLOT NO GH 22 SECTOR 43', '7678145524', 1, 0, 0, 'Not Signed', NULL, '2024-12-13 04:54:22'),
(796, 'GOKULAPRIYA M', 'Adhaar Card', '3424 1454 5074', '9790806574', 'iyappannisha15@gmail.com', 'D/O Murugesan, RENGANATHAR KOVIL PINPURAM, DOMBUCHERY, bodinayakkanur, Theni, Tamil Nadu - 625582', '9790806574', 1, 700, 1, 'uploads/signatures/84cc7b285172d27fe458be77ef1eb7ed.jpg', '2024-12-13 00:00:00', '2024-12-13 04:55:34'),
(797, 'R Murali', 'Adhaar Card', '8313 3907 9965', '7899105022', 'muralimonster11@gmail.com', 'S/O: Ramesh, pichaguntlahalli, Alangur, Kolar, Karnataka-563132', '7899105022', 1, 3, 1, 'uploads/signatures/bee7a852ad14dda5e95862cafe78f9db.jpg', '2024-12-13 00:00:00', '2024-12-13 04:56:28'),
(798, 'Santhanamari M', 'Adhaar Card', '8574 4044 6417', '6382524960', 'ajithnarmatha4@gmail.com@gmail.com', 'D/O: Muthukumar, 4/8/947A, NEHRUJI NAGAR, RESERVELINE, VTC: Anaiyur, PO: Sivakasi West, Sub District: Sivakasi, District: Virudhunagar,\r\nState: Tamil Nadu, PIN Code: 626124,', '6382524960', 1, 0, 0, 'Not Signed', NULL, '2024-12-13 04:59:56'),
(799, 'Nisarga HR', 'Adhaar Card', '5670 1939 9024', '7259287260', 'Devunishu58@gmail.com', 'DIO Rajesh HK. hunsur taluk VTC Harave PO: Hanave. Sub District: Hunsur Distac: Mysun State Kamara??\r\nPIN Code: 571134,', '7259287260', 1, 0, 0, 'Not Signed', NULL, '2024-12-13 05:14:18'),
(800, 'Vijayastri R', 'Adhaar Card', 'PY02-20200000445', '86751', 'vijayastrigowri51196@gmail.com', '38 KALIAMMAN KOVIL STREET PETTAI\r\nPettai\r\nThirunallar Taluk, Karaikal, PY\r\nPIN 609607\r\n', '86751', 1, 2, 1, 'uploads/signatures/a7ce1f3bcc9e81e77d721fee646d88f3.jpg', '2024-12-13 00:00:00', '2024-12-13 05:51:36'),
(801, 'Vennila Natarajan', 'Adhaar Card', '9474 8623 0434', '8220207189', 'n.vennila58@gmail.com', 'D/O Natarajan NO 68/76 SITTALATCHI NAGAR\r\nT B ROAD Madurai South Madurai Tamil Nadu - 625016', '8220207189', 1, 500, 1, 'uploads/signatures/f7d0addf1271b2e32d77df61f89a1ff4.jpg', '2024-12-13 00:00:00', '2024-12-13 06:15:20'),
(802, 'Kishan Mishra', 'Adhaar Card', '7978 4776 4821', '8859643775', 'Kishanmishra1999@gmail.com', 'S/O: Ghan Shyam Mishra, House No. 6/3G, Shastri Nagar, Khandari, Agra, Agra, Uttar Pradesh - 282002', '8859643775', 1, 0, 0, 'Not Signed', NULL, '2024-12-13 06:35:14'),
(803, 'Nand Kishore', 'Adhaar Card', '7610 2819 2368', '9650516429', 'nkkishore624@gmail.com', 'C/O: Yogendra Ram, Plot No-21/22 Flat No- 103, Old Palam Road, Vishwakarma Mandir, Raju Enclave, Kakrola, South West Delhi, Delhi - 110078', '9650516429', 1, 700, 1, 'uploads/signatures/14d90675f2a1082e25f02558994af197.jpg', '2024-12-13 00:00:00', '2024-12-13 06:40:20'),
(804, 'Nandikonda Akeera Nandan Reddy', 'Adhaar Card', '4420 1098 7300', '9490270394', 'akeeranandanr@gmail.com', '1-48/3, Hanuman Wada, VTC: Rudragudem, PO: Rudragudem, Sub District: Nallabelly, District: Warangal Rural, State: Telangana, PIN Code: 506349.', '9490270394', 1, 0, 0, 'Not Signed', NULL, '2024-12-13 07:06:34'),
(805, 'Armandeep Kaur ', 'Adhaar Card', '6034 0207 5883', '978041', 'armandeepk722@gmail.com', 'D/O Kulwinder Singh, Vill - Raipur Raian, Khamanon, Fatehgarh Sahib, Punjab - 141801\r\n', '978041', 1, 2, 1, 'uploads/signatures/c6e07131393b02c3f25c07de135be8a8.jpg', '2005-05-12 00:00:00', '2024-12-13 07:27:49'),
(806, 'Asha Kumari Yadav ', 'Adhaar Card', '9052 7351 0710', '6289251715', 'asha29254@gmail.com', '39, Bijay Kumar Mukherjee Road, Panitanki Shiv Mandir, Panitanki Shiv Mandir, VTC: Haora (M.Corp), PO: Salkia, District: Howrah, State: West Bengal, PIN Code: 711106.\r\n', '6289251715', 1, 0, 0, 'Not Signed', NULL, '2024-12-13 07:52:48'),
(807, 'Nidhi Giri ', 'Adhaar Card', '8114 2491 9891', '9026045746', 'ankitgiri737373@gmil.com', 'D/O: Keshav Giri, madan patti, post-aidilpur, Aidilpur, Azamgarh, Edilpur, Uttar Pradesh, 223221\r\n', '9026045746', 1, 0, 1, 'uploads/signatures/350c64e70cc774df3dd461339d51b66d.jpg', '2024-12-13 00:00:00', '2024-12-13 09:17:13'),
(808, 'Vishal Singh', 'Adhaar Card', '7837 2553 4718', '89688', 'sherpurp68@gmail.com', 'Anbass: S/O Saman Singh Nang Ramats Punjah 148025', '89688', 1, 2, 1, 'uploads/signatures/fe40ab834df0f7008d6cc638e08773eb.jpg', '2024-12-13 00:00:00', '2024-12-13 09:18:20'),
(809, 'Sonalika Mallick', 'Election Card', 'NEX1804756', '8018023892', 'mallicksonalika29@gmail.com', ' Plantsite, PLANTSITE, ROURKELA, PLANTSITE, SUNDARGARH, ODISHA-769001\r\n\r\n', '8018023892', 1, 0, 0, 'Not Signed', NULL, '2024-12-13 09:19:38'),
(810, 'Patel Nikita Hitesh', 'Adhaar Card', '4857 6052 7799', '75670', 'nikipatelpharma@gmail.com', 'Address: W/O Hitesh, Plot No 43/1, Sector 3 A, Gandhinagar, PO:(gandhinagar) Sector 6, DIST:Gandhinagar, Gujarat, 382006', '75670', 1, 2, 1, 'uploads/signatures/8d61e9321aebb7f6052956701dd4e4bf.jpg', '2024-12-13 00:00:00', '2024-12-13 09:20:35'),
(811, 'SANRAJ HAZARIKA', 'Adhaar Card', 'AS03 20240007851', '6003116893', 'sanrajhazarika1@gmail.com', 'ROWRIAH TINIALI Barbheta,\r\nChaliha Gaon Jorhat West Jorhat Assam, 785004', '6003116893', 1, 0, 0, 'Not Signed', NULL, '2024-12-13 09:58:56'),
(812, 'Ram Sain', 'Adhaar Card', '3563 8862 9824', '9672298530', 'Ramsain2412@gmail.com', 'S/O Radhey Shyam, 4209 mehta marg galta road, surajpole bazar, Jaipur City, Jaipur,\r\nRajasthan 302003', '9672298530', 1, 0, 0, 'Not Signed', NULL, '2024-12-13 10:04:10'),
(813, 'Gourav Gogoi', 'Adhaar Card', '2053 3678 7321', '6002121179', 'gouravgogoi62@gmail.com  ', 'C/O: Jugesh Gogoi, Qtr No-03, Block -C, 10 th A.P.Battalion, Kahilipara, Kamrup Metro, Assam-781019', '6002121179', 1, 0, 0, 'Not Signed', NULL, '2024-12-13 10:05:26');
INSERT INTO `tbl_member` (`member_id`, `member_name`, `member_id_type`, `member_id_number`, `member_contact`, `member_email`, `member_address`, `member_pass`, `member_status`, `completed_form`, `agreement_status`, `agreement_sign`, `agreement_date`, `added_on`) VALUES
(814, 'Gajula Vinay Krishna', 'Adhaar Card', '8359 3023 2695', '7989447600', 'Vinaychinna6005@gmail.com', 'S/O Gajula Muralidhar, 6-4-9, Maruthi Nagar Maruthi Nagar, Anantapur, Anantapur Andhra Pradesh, 515001', '7989447600', 1, 0, 0, 'Not Signed', NULL, '2024-12-13 10:06:25'),
(815, 'Sanjeet Kumar', 'Adhaar Card', '8337 9887 6927', '9792579196', 'spgautam833@gmail.com', 'Chhote lal, Aditya hospital, Khushhalganj, Mohan road near union bank, Kakori, Khushalganj, Khushalganj, Lucknow, Uttar Pradesh, 226101', '9792579196', 1, 700, 1, 'uploads/signatures/fdb84b5578209564570a076c056964dc.jpg', '2024-12-13 00:00:00', '2024-12-13 10:08:21'),
(816, 'Nimai Mandi', 'Election Card', 'XWQ2036408', '9064348194', 'mandijitu9@gmail.com', 'SILDA, SAHARI, BINPUR, JHARGRAM-721515\r\n', '9064348194', 1, 0, 1, 'uploads/signatures/8c550347dd58f335893d8929bd82476b.jpg', '2024-12-13 00:00:00', '2024-12-13 10:54:41'),
(817, 'Chanchal Vaibhaw', 'Adhaar Card', '8960 4695 2361', '9006746024', 'chanchellvaebhaw09@gmail.com', 'S/O L.K Verma, Q.NO-59, K2 D S TUBE BARIDIH, JAMSHEDPUR, Baridih Colony, East Singhbhum, Jharkhand - 831017\r\n', '9006746024', 1, 700, 1, 'uploads/signatures/d7457149acfc54b071b9a13e85a6a3f0.jpg', '2024-12-13 00:00:00', '2024-12-13 11:43:46'),
(818, 'Prolay Mandal', 'Adhaar Card', '3763 2638 3269', '9547512856', 'prolayraj74@gmail.com', 'Uttargobindakati, Shridhar Kati, North 24 Parganas, Sridharkati, West Bengal, 743439\r\n', '9547512856', 1, 700, 1, 'uploads/signatures/8d6cff0dcf395e372c04b7515a7b0912.jpg', '2024-12-13 00:00:00', '2024-12-13 12:45:28'),
(819, 'Amarjeet Kumar Yadav', 'Election Card', 'ZDU1979624', '620639', 'Amarjeet.deepalerts@gmail.com', 'Address: Sahladpur, Sahladpur, Sahladpur, Kolhua, Gopalganj,\r\nBihar-841427', '620639', 1, 2, 1, 'uploads/signatures/d65f3ac725bf0be4e12873cc58f632e6.jpg', '2024-12-13 00:00:00', '2024-12-13 12:56:04'),
(820, 'Domalapalli Sreaya', 'Adhaar Card', '36993112 4822', '9866104142', 'shreyadomalapalli@gmail.com', 'D/O: Saidulu, 120 lay out 2. hydalapuram, Indiramma colony, miryalaguda mandal, Miryalaguda, Nalgonda, Andhra Pradesh - 508207', '9866104142', 1, 148, 1, 'uploads/signatures/c6a74a72f98afc5e9597fc760fca42e6.jpg', '2024-12-14 00:00:00', '2024-12-14 04:50:22'),
(821, 'PATIL GANESHBHIMRAO', 'Driving License', 'MH18 20210013793', '7387661815', 'gibipatil.79@gmail.com', 'TAL DIST DHULE DHULE MAHARASHTRA PIN: 424307\r\n', '7387661815', 1, 120, 1, 'uploads/signatures/65fa3b079767896ff00a1a9d21795e06.jpg', '2024-12-14 00:00:00', '2024-12-14 04:52:19'),
(822, 'Vishnu Kumar Saini', 'Adhaar Card', '9790 1252 2328', '8742033092', 'vishnukumarsaini077@gmail.com', 'S/O: Nanaga Ram Saini,,,, Khohra, Bharatpur, Rajasthan - 321615', '8742033092', 1, 0, 0, 'Not Signed', NULL, '2024-12-14 04:53:23'),
(823, 'Naganandhini', 'Election Card', 'WBV1912021', '6379313276', 'psnaganandhini1999@gmail.com', 'Address: 3/346, THANAKKANKULAM (R.V)\r\nTHANAKKANKULAM (P), KARTHIKA NAGAR.\r\nThanakkankulam, THANAKKANKULAM-625006', '6379313276', 1, 0, 0, 'Not Signed', NULL, '2024-12-14 04:54:34'),
(824, 'Pandranga Dhana Teja', 'Adhaar Card', '9317 9845 5192', '6300702129', 'dhanatejapandranga@gmail.com', 'S/O: Pandranga Narsimha Murthy, plot no 158 pragathi Enclave, near sai baba Temple, Miyapur, Tirumalagiri, Hyderabad, Telangana - 500049', '6300702129', 1, 0, 0, 'Not Signed', NULL, '2024-12-14 05:24:00'),
(825, 'Tankeswar Tajan', 'Adhaar Card', 'RRB1523570', '6371308868', 'tankeswartajan307@gmail.com', 'Address: 8, KUPATANGAR, KUPATANGAR, KINJIRKELA, BALISANKARA, SUNDARGARH, ODISHA-770015', '6371308868', 1, 1, 1, 'uploads/signatures/1be6e8e785b44bf0ecf59110c0da05e9.jpg', '2024-12-14 00:00:00', '2024-12-14 06:31:23'),
(826, 'Tankeshwar tajan', 'Election Card', 'RRB1523570', '6371308868', 'tankeswartajan307@gmail.com', '8, KUPATANGAR, KUPATANGAR, KINJIRKELA, BALISANKARA, SUNDARGARH, ODISHA-770015\r\n', '6371308868', 1, 1, 0, 'Not Signed', NULL, '2024-12-14 06:32:17'),
(827, 'Karthika Karmel Alagar', 'Adhaar Card', '4327 9153 6834', '9962206919', 'rifhaaspak@gmail.com', 'Karthika Karmel Alagar\r\n82/39, SIVA PERUMAL NAGAR,\r\nMETTUPATTI,\r\nVTC: Pallapatti,\r\nPO: Begampur,\r\nSub District: Dindigul,\r\nDistrict: Dindigul,\r\nState: Tamil Nadu,\r\nPIN Code: 624002,\r\n\r\n', '9962206919', 1, 0, 0, 'Not Signed', NULL, '2024-12-14 06:34:52'),
(828, 'Praveen Kumar Yadhav', 'Adhaar Card', '8280 2844 4024', '8102526346', 'praveen8102526346@gmail.com', 'Ekwal Yadav, Village-Trimuhani, Post-Trimuhani, Jarshon, Darbhanga, Bihar - 847201\r\n', '8102526346', 1, 2, 1, 'uploads/signatures/221dde2d2240bd5e6354b8f7c578c82d.jpg', '2024-12-14 00:00:00', '2024-12-14 06:38:05'),
(829, 'ANOWAR HUSSAIN', 'Election Card', 'HBP0612150', '7638821891', 'froncaps77@gmail.com', 'VILL./TOWN: KANIHA, P.S.: RANGIA, SUB_DIVN.: RANGIA, DIST.: KAMRUP., ASSAM-781380', '7638821891', 1, 42, 1, 'uploads/signatures/fa0a15fb5296d93bfef27aa15515378e.jpg', '2024-12-14 00:00:00', '2024-12-14 07:10:25'),
(830, 'Ridhi Paswan ', 'Adhaar Card', '9072 6568 5880', '7480964721', 'rishikayma@gmail.com', 'S/O: Rajesh Paswan,\r\nChaitudih, Malkera, Dhanbad,\r\nJharkhand, 828304\r\n\r\n', '7480964721', 1, 132, 1, 'uploads/signatures/3381feeba2ea9ef995b97df72c421163.jpg', '2024-12-14 00:00:00', '2024-12-14 07:48:35'),
(831, 'Sharul Rajput', 'Adhaar Card', '6401 0897 4688', '90587', 'sharulajput28@gmail.com', 'C/O: Raju Rajput, Rasidpur Kaneta, Donkeli, Firozabad, Uttar Pradesh - 283203', '90587', 1, 2, 1, 'uploads/signatures/f8a3fbe8f59664ef0d4378a9b9efe044.jpg', '2024-12-14 00:00:00', '2024-12-14 09:06:01'),
(832, 'Priyanshu Verma', 'Adhaar Card', '4632 2254 2787', '8540980478', 'pv09040@gmail.com', '249A, Near Alfa Academy, Pochra, VTC: Barkakana, PO: Barkakana, Sub District: Patratu, District: Ramgarh, State: Jharkhand, PIN Code: 829102\r\n', '8540980478', 1, 1, 1, 'uploads/signatures/c7e586c3bf731c5ceae3849a1054e9fd.jpg', '2024-12-14 00:00:00', '2024-12-14 09:29:52'),
(833, 'Echha Kumari ', 'Adhaar Card', '3803 2700 7458', '9241014047', 'ikshamishra572@gmail.com', ' D/O Rajiv Kumar Mishra, VILL GAICHHAND\r\nPOST JAMTARA P S JAMTARA\r\nGAICHHAND, Jamtara,\r\nJharkhand, 815351\r\n', '9241014047', 1, 700, 1, 'uploads/signatures/b5499ae741ac3465d61cd29c48b3d927.jpg', '2024-12-15 00:00:00', '2024-12-14 09:45:09'),
(834, 'Mohd Toukeer', 'Adhaar Card', '5247 4061 0426', '7724007095', 'toukeerkhanm@gmail.com', 'C/O Abdul Lateef\r\nChandametta\r\nWard No 12 Chacha Mohalla\r\nChikhali Kala\r\nChandametta\r\nChhindwara Madhya Pradesh - 480447\r\n', '7724007095', 1, 0, 0, 'Not Signed', NULL, '2024-12-14 09:59:24'),
(835, 'Vaishvikar Dhruti ', 'Adhaar Card', '2932 9956 1728', '8320355220', 'dhrutiveshvikar@gmail.com', '313,\r\nPoonam complex,\r\nNear Lal Bahadur Shastri Marg,\r\nWaghodiya Road,\r\nSub District: Vadodara,\r\nDistrict: Vadodara,\r\nState: Gujarat,\r\nPIN Code: 390019\r\n', '8320355220', 1, 0, 0, 'Not Signed', NULL, '2024-12-14 10:01:55'),
(836, 'Reddy Sanjeeva Prasanth', 'Adhaar Card', '5406 2646 9986', '8523825495', 'reddysanjeevaprasanth089@gmail.com', 'S/O Reddy Naga Malleswara Rao\r\n10/801, konetikalva street,\r\nVTC: Proddatur,\r\nPO: Proddatur,\r\nDistrict: Cuddapah,\r\nState: Andhra Pradesh,\r\nPIN Code: 516360,\r\nMobile: 8523825495\r\n', '8523825495', 1, 0, 0, 'Not Signed', NULL, '2024-12-14 10:03:57'),
(837, 'Walunj Pratik Kisan ', 'Adhaar Card', '821673461004', '8010852195', 'pratikwalunj69@gmail.com', 'Gavthan Kaknewadi, Ahmadnagar, Maharashtra - 414304\r\n', '8010852195', 1, 0, 0, 'Not Signed', NULL, '2024-12-14 10:06:41'),
(838, 'Raja Faisal ', 'Adhaar Card', '3756 1429 3476', '7051099919', 'faisalraja5698@gmail.com', 'S/O: Bashir Ahmed Butt, -, Sazan, -, Sazan, Bajarni, Bajarni, Doda, Jammu and Kashmir, 182202\r\n', '7051099919', 1, 0, 0, 'Not Signed', NULL, '2024-12-14 10:08:45'),
(839, 'Feemina Sundaramoorthy ', 'Election Card', 'UCH2296671', '9342641114', 'femina27062004@gmail.com', '5.37, MELA STREET, THAYANUR, THAYANUR POST OFFICE, TIRUCHIRAPPALLI, TAMIL NADU-620102\r\n', '9342641114', 1, 160, 1, 'uploads/signatures/15da1994771c407145dc7c4b1953b53d.jpg', '2024-12-16 00:00:00', '2024-12-14 10:14:45'),
(840, 'Gopinath Gauda', 'Adhaar Card', '2674 8236 0844', '8763980168', 'gopinathgouda8@gmail.com', 'C/O Kangresh Gauda, Mohiguda, Mohiguda, Kurula, Ganjam, Orissa - 761144\r\n', '8763980168', 1, 2, 1, 'uploads/signatures/d86d2a739277da724668a116d5426593.jpeg', '2024-12-28 00:00:00', '2024-12-15 05:52:50'),
(841, 'Shreedharshan B', 'Adhaar Card', '3384 6616 0395', '7397771180', 'shreedharshan123@gmail.com', 'S/O Balaji\r\nD No 238\r\nVEERAPANDIYAR NAGAR\r\nVEMBADITHALAM\r\nVTC: Vembadithalam, PO: Vembadithalam\r\nDistrict: Salem\r\nState: Tamil Nadu\r\nPIN Code: 637504\r\n\r\n', '7397771180', 1, 0, 1, 'uploads/signatures/c2c596f5d5dd2c50e80313534de13645.jpg', '2024-12-25 00:00:00', '2024-12-15 06:18:53'),
(842, 'P Bhavya ', 'Adhaar Card', '9658 1028 2891', '9395122220', 'bhavyaputta287@gmail.com', 'D/O P Upender, 23-284/A/1, Old Gabbilapet, Near Noble High Sch, Jawahar Nagar, Yapral, PO:Jj Nagar Colony, DIST Medchal-malkajgiri, Telangana, 500087\r\n', '9395122220', 1, 0, 0, 'Not Signed', NULL, '2024-12-15 06:20:46'),
(843, 'Mansi', 'Select Id Type', '3960 3805 4388', '8287014393', 'mansijangra2005@gmail.com', 'C/O: Pramod Kumar, H. No 271, Samaypur Road, Near Shiv Mandir, Rajeev Colony, Ballabgarh, Faridabad, Haryana 121004', '8287014393', 1, 7, 1, 'uploads/signatures/7a5f5ab31f3ebdde9dd4020810de7eab.jpg', '2024-12-15 00:00:00', '2024-12-15 06:30:12'),
(844, 'Bongu Vinayak Kumar', 'Adhaar Card', '3940 5585 7124', '7075346175', 'vnayadav121@gmail.com', 'S/O Bongu Cheralu, 24-1-365/1/a, Sarwer Nagar, Kazipet Jaagir, Darga, Hanamkonda, Warangal, Andhra Pradesh 506004\r\n', '7075346175', 1, 0, 0, 'Not Signed', NULL, '2024-12-15 06:37:30'),
(845, 'Vikas Gupta ', 'Adhaar Card', '6882 7309 2625', '8791639709', 'vkguptavikasgupta@gmail.com', 'S/O Sanoj Gupta, 122, ward 4, mohalla hanuman gadi\r\nchandausi sambhal, VTC: Chandausi, PO: Chandausi, Sub\r\nDistrict: Chandausi, District: Sambhal State: Uttar Pradesh,\r\nPIN Code: 202412.\r\n', '8791639709', 1, 0, 0, 'Not Signed', NULL, '2024-12-15 06:40:03'),
(846, 'Rajesh Gurjar ', 'Adhaar Card', '6355 0534 9144', '9602142821', 'rajgurjar3224@gmail.com', 'S/O: Baluram Gurjar, Rahad, Rahar, Tonk, Rajasthan 304025\r\n', '9602142821', 1, 100, 1, 'uploads/signatures/8ab3194eb5c4ad3263425b2e08c18815.jpg', '2024-12-15 00:00:00', '2024-12-15 06:52:12'),
(847, 'Sonali Rajendra Sawwalakhe', 'Adhaar Card', '9453 1128 3810', '9226157104', 'sonalisawwalakhe109@gmail.com', 'D/O Rajendra Sawvalakhe,\r\nAdarsha Chowk, Hiwarkhed,\r\nTa. Morshi, Amravati,\r\nMaharashtra - 444905', '9226157104', 1, 0, 0, 'Not Signed', NULL, '2024-12-15 06:54:41'),
(848, 'Anerthyst Ksoo', 'Adhaar Card', '5190 6309 6720', '8798724340', '191003thyst@gmail.com', 'S/O: Pheris Ksoo, 92, Mission Compound, Jowai, West Jaintia Hills, Jowai, Meghalaya, 793150\r\n', '8798724340', 1, 11, 1, 'uploads/signatures/28617495caafaf8e085137a12ecc1d05.jpg', '2024-12-15 00:00:00', '2024-12-15 06:57:54'),
(849, 'Abhilasha ', 'Adhaar Card', '4575 4467 0873', '8528195296', 'fjfhruva0001@gmail.com', 'D/O: Gyanendra Kumar, gram jahani kheda, Manikapur, Hardoi, Saadat Nagar, Uttar Pradesh, 241407\r\n', '8528195296', 1, 235, 1, 'uploads/signatures/98a31fdc1fead3fa21b866f6170aea47.jpg', '2024-12-15 00:00:00', '2024-12-15 06:59:38'),
(850, 'Balaji Chandrashekhar Myakal', 'Adhaar Card', '7944 2538 9510', '9881717226', 'atharvamyakal4@gmail.com', 'Balaji Chandrashekhar Myakal\r\nSr no 13/1A/A/5 Shriniwas Hights 4 Floor flat no 401,\r\nBehind Primier in Hotel kalubai Nagar Kharadi Pune,\r\nVTC: Pune City,\r\nPO: Dukirkline,\r\nSub District: Pune City,\r\nDistrict: Pune,\r\nState: Maharashtra,\r\nPIN Code: 411014,\r\n', '9881717226', 1, 700, 1, 'uploads/signatures/8924b805af4574da3ab2159a661d53ae.jpg', '2024-12-15 00:00:00', '2024-12-15 07:02:06'),
(851, 'Muskan Mohan Devikar', 'Adhaar Card', '6705 8628 0666', '9518916641', 'devikarmuskan@gmail.com', 'D/O Mohan Devikar,\r\nNear Yuva Jagruti Bank,\r\nJogithana Peth,\r\nVTC: Umred, PO: Umred,\r\nSub District: Umred, District: Nagpur,\r\nState: Maharashtra, PIN Code: 441203,\r\nMobile: 8767359748\r\n', '9518916641', 1, 2, 1, 'uploads/signatures/3ea4fcc35e94e91de39543e70d9abb1d.jpg', '2024-12-15 00:00:00', '2024-12-15 07:05:51'),
(852, 'Nandini Manikandan ', 'Adhaar Card', '4788 6159 3952', '8925113154', 'jayanandhu1804@gmail.com', 'D/O: Manivannan, 5/1, DHIYAGARAJAPURAM ROAD, Sankaraapuram, Sankaraapuram, Viluppuram, Tamil Nadu, 606401', '8925113154', 1, 1, 1, 'uploads/signatures/f0f963dbc28433e38ca2a4f12b091b37.jpg', '2024-12-15 00:00:00', '2024-12-15 07:18:32'),
(853, 'Mohammad Aman Mohammad Salim', 'Adhaar Card', '7314 1680 6176', '7499699919', 'ytsohail59@gmail.com', 'Babulouch Chowk Ward No 08, Near Qureshi Masjid, Chikhli, Buldhana, Maharashtra - 443201\r\n', '7499699919', 1, 0, 0, 'Not Signed', NULL, '2024-12-15 07:21:02'),
(854, 'Keerthi M', 'Adhaar Card', '9734 4784 3817', '9488530291', 'moorthikeerthi3@gmail.com', 'D/O: Moorthi, 131, BUT FIRE, FINGER POST, ooty, Udhagamandalam, The Nilgiris, Tamil Nadu - 643006', '9488530291', 1, 253, 1, 'uploads/signatures/34137e9b102c84a6f990fa42a7e12b85.jpg', '2024-12-15 00:00:00', '2024-12-15 07:22:52'),
(855, 'Anjali ', 'Adhaar Card', '8854 1264 1462', '8449167470', 'singhvishal7455@gmail.com', 'C/O: Naresh Chand, Jautana, Fatehpursikari, Agra, Uttar Pradesh - 283110', '8449167470', 1, 37, 1, 'uploads/signatures/a3ff5bd71e2541a829c236e35f7bece3.png', '2024-12-15 00:00:00', '2024-12-15 07:27:44'),
(856, 'Adarsh Kumar Gautam ', 'Adhaar Card', '7972 5397 5446', '9369063247', 'adarshroy6666@gmail.com', 'S/O Mahendra Kumar Gautam\r\n05, Chauri Road, Pureshyam, Bhadohi\r\nSant Ravidas Nagar\r\nUttar Pradesh - 221401\r\n', '9369063247', 1, 9, 1, 'uploads/signatures/007ad6217cced44c6414041465c17133.jpg', '2024-12-15 00:00:00', '2024-12-15 07:32:24'),
(857, 'Rajneesh ', 'Adhaar Card', '8420 5368 4519', '9125772242', 'rajneeshchaudhary2242@gmail.com', 'C/O: Raj Bahadur, Patkhauli, Maharajganj, Uttar Pradesh, 273151\r\n', '9125772242', 1, 57, 1, 'uploads/signatures/3e66c8f649ba18d6314b31553cd13868.jpg', '2024-12-19 00:00:00', '2024-12-15 11:28:28'),
(858, 'Jodhani Purvi Hasmukhbhai', 'Adhaar Card', '6904 0937 4483', '7863078357', 'purvipatel869073@gmail.com', 'D/O Hasmukhbhai, 0, 0, nava, jasapar, jasdan, Jasapar, Atkot, Rajkot, Gujarat, 360040\r\n', '7863078357', 1, 155, 1, 'uploads/signatures/b34b7839c40b7d04109378b43d95e4fb.jpg', '2024-12-15 00:00:00', '2024-12-15 13:13:56'),
(859, 'Rimi Das', 'Election Card', 'HXH1464502', '7896424515', 'drimi8845@gmail.com', '198, 30 NO JABAINPUR L.P.SCHOOL, JABAINPUR, JABAINPUR, KARIMGANJ, ASSAM-788713', '7896424515', 1, 700, 1, 'uploads/signatures/52fcbd0be7a5cffcacd40474a8269800.jpg', '2024-12-16 00:00:00', '2024-12-15 15:47:32'),
(860, 'Chetna Manawat', 'Adhaar Card', '4713 0913 2381', '9644273658', 'chetnapawar96442736@gmail.com', 'C/O: Devendra Manawat\r\nAddress:\r\n35/1, Banganga 35 K Gali No 1,\r\nFreeganj Marimata Square,\r\nVTC: Indore,\r\nPO: Industrial Estate,\r\nSub District: Indore,\r\nDistrict: Indore,\r\nState: Madhya Pradesh,\r\nPIN Code: 452015', '9644273658', 1, 0, 0, 'Not Signed', NULL, '2024-12-16 03:43:50'),
(861, 'S Vishal ', 'Adhaar Card', '6818 9328 2932', '9789921574', 'trichyvichu45@gmail.com', 'S/O: Senthil, 72/43, BHARATHI NAGAR, TENNUR, Tiruchirappalli, PO: Tennur, DIST: Tiruchirappalli, Tamil Nadu - 620017\r\n', '9789921574', 1, 1, 1, 'uploads/signatures/9e5be7cf77a2a068820b661bbc4cf45c.jpg', '2024-12-16 00:00:00', '2024-12-16 04:12:16'),
(862, 'Solanki Asha Himatbhai', 'Adhaar Card', '9625 7870 0693', '7990457109', 'ashusolanki1004@gmail.com', 'Flat 402 Rajhans Residency\r\nNr Sanskriti Park\r\nOpp 5 Square Point\r\nNayug College, Surat\r\nPO: Navyug College\r\nDIST: Surat\r\nGujarat\r\n395009', '7990457109', 1, 700, 1, 'uploads/signatures/3a6bc3628bc2ccda6afe8a96803317c3.jpg', '2024-12-16 00:00:00', '2024-12-16 04:21:43'),
(863, 'Rohit Suresh Rajput ', 'Adhaar Card', '5955 9371 9404', '7987727078', '456yugraj@gmail.com', 'S/O: Suresh, temala, temala, Temla,\r\nBarwani,\r\nMadhya Pradesh - 451881', '7987727078', 1, 700, 1, 'uploads/signatures/abac2f3389622ea5f4d929eb9a83f409.jpg', '2024-12-16 00:00:00', '2024-12-16 04:28:25'),
(864, 'Ansari Shibbu Sirajuddin', 'Adhaar Card', '4351 6726 8311', '9173786778', 'rukhish918@gmail.com', '79, nagma nagar, behind chhipa society, Danilimda, Ahmedabad City, Ahmedabad, Gujarat - 380028\r\n', '9173786778', 1, 220, 1, 'uploads/signatures/b343e85159e1944ba241cf3ccbca783a.jpg', '2024-12-16 00:00:00', '2024-12-16 04:57:45'),
(865, 'Alisha ', 'Adhaar Card', '3930 0124 5494', '8264827270', 'talktoalisha786@gmail.com', 'C/O: Faim Khan, H No. 776, Barmajra, Balongi, PO: Balongi, Dist: SAS Nagar (Mohali), Punjab - 160055', '8264827270', 1, 0, 0, 'Not Signed', NULL, '2024-12-16 05:05:10'),
(866, 'Gurpreet ', 'Adhaar Card', '2383 3488 5773', '9729170741', 'gurpreetranga10@gmail.com', 'S/O: Somnath, D 1000, Ravidas Mandir, Thaska Miranji (308), Kurukshetra, Haryana - 136129', '9729170741', 1, 0, 1, 'uploads/signatures/0d1e12b790978cbafcb224d3fb365335.jpg', '2024-12-16 00:00:00', '2024-12-16 05:28:41'),
(867, 'Akshya Tomar', 'Adhaar Card', '9066 3355 7676', '7302752304', 'akshaytomar985@gmail.com', 'C/O: Omvir Singh, Bijrol, Baghpat,\r\nUttar Pradesh - 250611\r\n', '7302752304', 1, 9, 1, 'uploads/signatures/93e132d3b21a01d8f5d48058a5ca0ae2.jpg', '2024-12-16 00:00:00', '2024-12-16 05:39:36'),
(868, 'Athulya Ravi', 'Adhaar Card', '5270 4028 7285', '97468', 'athu.athulya9@gmail.com', 'D/O: Radha Ravi, Cheroor House, SN Nagar, PO Nadathara, VTC: Nadathara, District: Thrissur,\r\n\r\n', '97468', 1, 2, 1, 'uploads/signatures/9e76918c259e21b00a399fe339020ca8.jpg', '2024-12-16 00:00:00', '2024-12-16 05:41:15'),
(869, 'Manish Roat', 'Adhaar Card', '2709 7649 4470', '6375434509', 'roatmanish162@gmail.com', 'S/O: Harish Chandra Roat, Nalwa, Gumanpura, Dungarpur, Dungarpur, Nalwa, Dungarpur, Rajasthan - 314011', '6375434509', 1, 0, 1, 'uploads/signatures/974dc4c1548515090db0e36f0089fa2b.jpg', '2024-12-16 00:00:00', '2024-12-16 05:42:13'),
(870, 'Dinesh Singh ', 'Adhaar Card', '2770 5484 1684', '9599058897', 'dineshksingh235@gmail.com', 'S/O: Diwan Singh, House No-7, Gangseer, Kotkendri, Chalthi, Purnagiri-Tanakpur, Gangseer, Champawat, Uttarakhand - 262523', '9599058897', 1, 0, 0, 'Not Signed', NULL, '2024-12-16 06:02:42'),
(871, 'Rohit Purushottam Izave', 'Adhaar Card', '6373 4672 6341', '7875124422', 'rohitizave4422@gmail.com', '\r\nWaard Na 5\r\nAt Post Waigaon Nipani Tah Jilha Wardha\r\nWaigaon Nipani\r\nWardha Maharashtra 442001', '7875124422', 0, 90, 1, 'uploads/signatures/470b3c4ac548cc98d5dc8fb9d3f9a8cc.jpg', '2024-12-16 00:00:00', '2024-12-16 06:17:25'),
(872, 'Murala Nandini', 'Adhaar Card', '9243 5505 6784', '9177622371', 'muralanandini123@gmail.com', 'D/O Janardhana Rao\r\n1-220 Vakkalagadda\r\nVakkalagadda\r\nChallapalli\r\nKrishna, Andhra Pradesh - 521126', '9177622371', 1, 0, 1, 'uploads/signatures/bac209f049a2a723f74a72721d132ef8.jpg', '2024-12-17 00:00:00', '2024-12-16 06:19:18'),
(873, 'Gopal Kumar ', 'Adhaar Card', '8430 6655 8394', '7759800155', 'gopalkumarraj866@gmail.com', ' S/O Nand Kishor Sharma, Bodhgawan, Budhgawan, Patna, Bihar, 801113\r\n', '7759800155', 1, 5, 1, 'uploads/signatures/319a97f5ab6ac1c364a2afae7961c78d.jpg', '2024-12-16 00:00:00', '2024-12-16 07:49:58'),
(874, 'Harshada Ulhas Titkare', 'Adhaar Card', '6564 9659 6957', '8830323330', 'titkareharshu@gmail.com', '4171, Sharda Chowk, Bhaskar Nagar, Ambarnath west, Ambarnath, Thane, Maharashtra - 421505\r\n', '8830323330', 1, 700, 1, 'uploads/signatures/cbf1ee64e0a8e4b21f9ecfca782eac08.jpg', '2024-12-16 00:00:00', '2024-12-16 08:49:21'),
(875, 'Anshu Ray', 'Adhaar Card', '2290 8763 8029', '8235073082', 'anshu090602@gmail.com', 'S/O Lal Bahadur Roy, TETULMARI TOWNSHIP, P S TETULMARI, sijua, Dhanbad, Jharkhand - 828121\r\n', '8235073082', 1, 100, 1, 'uploads/signatures/9c00da0dfa69d0caa7307623be54ff72.jpg', '2024-12-16 00:00:00', '2024-12-16 09:08:47'),
(876, 'Rajeshwari Masram', 'Adhaar Card', '2495 9512 5053', '9399538005', 'rajeshwarimasram78@gmail.com', 'House No.: 63\r\nWard No.: 03\r\nPost: Devgaon\r\nGram: Sudgaon\r\nTehsil: Deogaon\r\nDistrict: Mandla\r\nState: Madhya Pradesh\r\nPincode: 481663', '9399538005', 1, 0, 0, 'Not Signed', NULL, '2024-12-16 10:05:52'),
(877, 'Anushka Pandey', 'Adhaar Card', '3537 7122 0925', '9151747545', 'panushka428@gmail.com', 'Manoj Kumar Pandey, padari,\r\nPadri, Ballia,\r\nUttar Pradesh -221711', '9151747545', 1, 700, 1, 'uploads/signatures/05dca714342d8d163bd7c8682faef557.jpg', '2024-12-16 00:00:00', '2024-12-16 12:09:15'),
(878, 'Chandel Nihit Pareshbhai', 'Adhaar Card', '9785 5799 8231', '8160180480', 'nihitchandel3@gmail.com', 'Chandel Nihit Pareshbhai\r\nS/O: Chandel Pareshbhai Dhalusingh.\r\nB-1., bindi apartment,\r\njethabhai park, Narayan nagar pald,\r\nVTC: Ahmedabad City.\r\nPO: Paldi,\r\nSub District Ahmadabad City, District Ahmedabad,\r\n\r\nState: Gujaral,\r\nPIN Code: 380007\r\nMobile: 8160180480', '8160180480', 1, 8, 1, 'uploads/signatures/462c47bc4bd223acbe06a6c8ff8eb884.jpg', '2024-12-16 00:00:00', '2024-12-16 12:11:16'),
(879, 'Darshana Shailesh Bhujbal', 'Adhaar Card', '6598 9126 5547', '8010657374', 'darshanabhujbal88@gmail.com', 'SHAILESH RAJENDRA BHUJBAL, SURVEY\r\nNUMBER 75,SAYYED NAGAR,KALPATARU\r\nHOUSING SÕCIETY, MOHAMDWADI ROAD,\r\nNEAR RAILWAY CROSSING, HADAPSAR, Pune\r\nCity, Pune,\r\nMaharashtra - 411028', '8010657374', 1, 0, 0, 'Not Signed', NULL, '2024-12-16 12:12:58'),
(880, 'Vijaylaxmi p', 'Adhaar Card', '5465 8910 0204', '9042813160', 'Vg.vijaya.5793@gmail.com', 'Eswaran, G/201A. MUSUI\r\nNEAR RAVI HOTEL,\r\nAYAM.\r\nAltevanal\r\nPO: Attavanai\r\nErayamangalám,\r\nNamakkal,\r\nTamil Nadu . 637210', '9042813160', 1, 700, 1, 'uploads/signatures/3021529572b500baf4097af2d9980a85.jpg', '2024-12-16 00:00:00', '2024-12-16 12:15:38'),
(881, 'Bhavesh Kumar', 'Adhaar Card', '5436 9250 4194', '8920709835', 'bhaveshkumar9293@gmail.com', 'S/O Satish Chandra Jha, 0, Maladh, Ward\r\nNo-10, Malar, Supaul\r\nBihar- 852138', '8920709835', 1, 0, 0, 'Not Signed', NULL, '2024-12-16 12:17:00'),
(882, 'Sazmi', 'Adhaar Card', '4048 8260 9352', '7204386454', 'mahammadnawfal044@gmail.com', 'C/O: Husain\r\n1-14(B) Hunsekatte House\r\nBelthangady Taluk\r\nThannirpantha\r\nDakshina Kannada\r\nKarnataka - 574326\r\n', '7204386454', 1, 700, 1, 'uploads/signatures/86892a4abc90bbf5c07587c22283addd.jpeg', '2024-12-16 00:00:00', '2024-12-16 12:38:15'),
(883, 'Sourabh Modani', 'Adhaar Card', '4142 1204 5610', '6378540434', 'souravkmodani@gmail.com', 'O Madan Gopal Modani, Flat No-G-1, Plot\r\nNo4l Vasudha Apartment. Near Saini\r\nMamnage Farm House, Vikas Nagar- A.\r\nMrtpura, jaipur,\r\nRajasthan - 302039', '6378540434', 1, 0, 0, 'Not Signed', NULL, '2024-12-17 03:54:43'),
(884, 'Abu Suflyan', 'Adhaar Card', '2369 2095 6472', '9026136039', 'maazamir026@gmail.com', 'O\r\n??? ??????\r\nAbu Sufiyan\r\nSyO: Salamat Ula\r\n132/731\r\nmunshi purwa\r\nTPNagar\r\nTP Nagar\r\nKanpur Nagar Uttar Pradesh - 208023\r\n9839791350', '9026136039', 1, 2, 1, 'uploads/signatures/fb5dd761d513f9f62936cc7636334f09.jpg', '2024-12-17 00:00:00', '2024-12-17 03:56:17'),
(885, 'Vimal Kumar', 'Adhaar Card', '7408   9906   5179', '7394828792', 'vimaljaiswal46@gmail.com', 'Vinod Kumar, bangarmau\r\nroad, ashayash, post ashayash,\r\nAsayasa, Unnao, Ashayash, Uttar\r\nPradesh, 241501', '7394828792', 1, 0, 0, 'Not Signed', NULL, '2024-12-17 03:57:39'),
(886, 'Shovanjeet Kar', 'Adhaar Card', '7330 7796 0793', '7077844379', 'shovanjeetkar@gmail.com', 'TALA TELENGA BAZAR, PURIGHAT, Cuttack Sadar, Cuttack, Odisha - 753009\r\n', '7077844379', 1, 135, 1, 'uploads/signatures/0fdd2528cf181b6ac349c99a3ff524d1.jpg', '2024-12-17 00:00:00', '2024-12-17 05:20:00'),
(887, 'Parneet Kaur brar', 'Adhaar Card', '3207 4239 9476', '8077758618', 'brarparneet34@gmail.com', 'D/O Gurpreet Singh Brar, Brar nagar, fazalpur maharaula, Rudrapur, Udham Singh Nagar, Uttarakhand - 263153\r\n', '8077758618', 1, 0, 0, 'Not Signed', NULL, '2024-12-17 07:00:07'),
(888, 'Krishan Singh Chauhan ', 'Adhaar Card', '5025 0534 6895', '7974458147', 'chauhankishan535@gmail.com', 'S/O: Babulal Singh Chauhan, ward 08,\r\njamodi khurd, sidhi, Jamodi Kalan, Sidhi,\r\nMadhya Pradesh - 486661\r\n', '7974458147', 1, 0, 0, 'Not Signed', NULL, '2024-12-17 07:03:34'),
(889, 'Kanhu Charan Madala', 'Adhaar Card', '9511 4345 0974', '8984643392', 'kanhumadala1992@gmail.com', 'C/O Bala Krushna Madala\r\nSipahi Ambatha\r\nBada Sahi\r\nGoutami\r\nGanjam, Odisha - 761054', '8984643392', 1, 0, 0, 'Not Signed', NULL, '2024-12-17 07:05:40'),
(890, 'Soheb khan', 'Adhaar Card', '9528 0842 4544', '9982097215', 'sohebsok9982@gmail.com', 'S/O: Amin Khan,.., Dubra Kalan, Sawai\r\nMadhopur, Rajasthan - 322034', '9982097215', 1, 13, 1, 'uploads/signatures/28377e89c0ad2a8e6ab4bad5a94856d4.jpg', '2024-12-17 00:00:00', '2024-12-17 07:26:34'),
(891, 'Mahammad Kais', 'Adhaar Card', '3276 4010 9834', '8197522302', 'mohammadkais957@gmail.com', 'HUNSEKATTE,\r\nKALLERI,\r\nBELTHANGADY,\r\nVTC: Thannirpantha,\r\nSub District: Belthangady,\r\nDistrict: Dakshina Kannada,\r\nState: Karnataka,\r\nPIN Code: 574326,\r\nMobile: 9448446202\r\n', '8197522302', 1, 0, 0, 'Not Signed', NULL, '2024-12-17 07:32:33'),
(892, 'Sakcham thapa', 'Adhaar Card', '4517 7523 7946', '7247076305', 'sakshamthapa476@gmail.com', 'S/O Santosh Thapa, H no-226, madhuban toli, Jashpurnagar, Jashpur Nagar, PO: Jashpurnagar, DIST: Jashpur, Chhattisgarh - 496331\r\n', '7247076305', 1, 1, 1, 'uploads/signatures/e773e0008b779bce93b2a86169471850.jpg', '2024-12-17 00:00:00', '2024-12-17 08:08:14'),
(893, 'Himanshu Kumar Sahu', 'Adhaar Card', '4838 0485 9444', '7999419619', 'himanshu1707@hotmail.com', 'S/O: Shree Dinesh Sahu, D.M-41, OMPUR,\r\nRAJGAMAR, Rajgamar, PO: Rajgamar\r\nCollery, DIST: Korba,\r\nChhattisgarh - 495683', '7999419619', 1, 103, 1, 'uploads/signatures/5b7f56701aa1093e860fc253384702fb.jpg', '2024-12-17 00:00:00', '2024-12-17 08:19:43'),
(894, 'Sathya K', 'Adhaar Card', '9294 3130 0360', '6380158307', 'sathyauthaya2801@gmail.com', 'To Sathya K Kannan 12/1a 2nd street, Gandhi Nagar Jamal college Subramaniyapuram Tiruchirappalli Tiruchirappalli Tamil Nadu - 620020', '6380158307', 1, 0, 0, 'Not Signed', NULL, '2024-12-17 09:19:49'),
(895, 'Mandhala Vishnavi', 'Adhaar Card', '6594 3403 4640', '9652012996', 'valmikivaishnavi08@gmail.com', 'D/O Mandhala Shiva 12-1-748 ashok nagar ashok nagar Anantapur Anantapur Anantapur Andhra Pradesh - 515001', '9652012996', 1, 1, 1, 'uploads/signatures/c71e6ad43cd286b65ed7056d350f8e48.jpg', '2024-12-17 00:00:00', '2024-12-17 09:31:02'),
(896, 'Jeshnutha B', 'Adhaar Card', '3927 6081 7818', '918197950004', 'jeshnuthababu75@gmail.com', 'C/O: M B Babu Thirumala Appanna\r\n17/06/2019\r\nNo 13,3rd Block 4th Street Prakruthi Township\r\nBabusahibpalya\r\nBangalore North\r\nKalyananagar\r\nBangalore North Bengaluru\r\nKarnataka 560043', '918197950004', 1, 22, 1, 'uploads/signatures/6022ab00c9b5fd661f74b4fa6a3c87b0.jpg', '2024-12-18 00:00:00', '2024-12-17 12:52:43'),
(897, 'Saritha', 'Adhaar Card', '3460 8621   3736', '9384431059', 'rithusolo15@gmail.com', 'MELPAKKAM,\r\nVTC: Eguvarpalayam, PO: Iguvarpalayam\r\nSub District: Gummidipoondi, District: Tiruvallur\r\nState: Tamil Nadu, PIN Code: 601201\r\nMobile: 9384431059', '9384431059', 1, 700, 1, 'uploads/signatures/c11a8a5b60a3ad5d1b0770a3aef098e5.jpg', '2024-12-18 00:00:00', '2024-12-18 03:45:19'),
(898, 'Gopi Yogitha Jyothirmai', 'Adhaar Card', '8447 0845 8261', '8522031205', 'yogithajyothirmai03@gmail.com', 'Gopi Yogitha Jyothirmai\r\nD/O Gopi Mahesh,\r\nFlat No 301,\r\nSangivalasa,\r\nVTC: Bheemunipatnam,\r\nPO: Sangivalasa,\r\nSub District: Bheemunipatnam,\r\nDistrict: Visakhapatnam,\r\nState: Andhra Pradesh,\r\nPIN Code: 531162', '8522031205', 1, 700, 1, 'uploads/signatures/e56827ad8f7779f05f5adfc017056ee1.jpg', '2024-12-18 00:00:00', '2024-12-18 03:55:45'),
(899, 'Anudesh Kumar', 'Adhaar Card', '2319 1015 6651', '9015869070', 'anudeshkumar65@gmail.com', 'S/O Sant Lal,\r\nVillage Bihariya,\r\nVTC: Amgodar,\r\nPO: Shankargarh,\r\nSub District: Bara,\r\nDistrict: Allahabad,\r\nState: Uttar Pradesh,\r\nPIN Code: 212108', '9015869070', 1, 700, 1, 'uploads/signatures/b89d18bab6d2f08a45695c92a4586f32.jpeg', '2024-12-18 00:00:00', '2024-12-18 04:36:35'),
(900, 'Ankit Kumar ', 'Adhaar Card', '6205 0499 6194', '7073742170', 'ankit62050499@gmail.com', 'S/O: Rajesh Kumar, Ward No. 1, Jejusar, PO: Jejusar, DIST: Jhunjh ok unun, Rajasthan - 333707', '7073742170', 1, 1, 1, 'uploads/signatures/9ec49974b99721688ae34d405b79f4f8.jpg', '2024-12-18 00:00:00', '2024-12-18 05:27:07'),
(901, 'Rahul', 'Adhaar Card', '8240 6824 2029', '9602876159', 'rssainiboy11@gmail.com', 'S/O: Raghuveer Prasad, beraapur ki dhaani, Bardod, Alwar, Rajasthan, 301020', '9602876159', 1, 0, 0, 'Not Signed', NULL, '2024-12-18 05:45:36'),
(902, 'Plabita Saikia', 'Adhaar Card', '6705 7618 5004', '6001537644', 'plabitasaikia88@gmail.com', 'C/O Adhan Saikia,\r\nNIZ DANDUA HALADHIBARI,\r\nVTC. Niz Dandua,\r\nPO. Nizdandua,\r\nSub District. Morigaon,\r\nDistrict. Marigaon,\r\nState: Assam,\r\nPIN Code: 782104.', '6001537644', 1, 0, 0, 'Not Signed', NULL, '2024-12-18 05:58:50'),
(903, 'Lucky Chandwani', 'Adhaar Card', '8378 7790 3491', '7024908719', 'chandwaniluckychandwani@gmail.com', 'S/O: Mahesh Chandwani, Ghorpude Sahab Ka\r\nBada, Daulatganj, Gird, Gwalior,\r\nMadhya Pradesh - 474001', '7024908719', 1, 3, 1, 'uploads/signatures/c9f996129f43b1e2a4f3a3509eea31d1.jpeg', '2024-12-18 00:00:00', '2024-12-18 06:13:14'),
(904, 'Vaishali Lalit Tripathi', 'Adhaar Card', '6446 5073 7120', '9096914700', 'trtripathivaishali2003@gmail.com', 'BUILDING NO-A1 FLAT NO 304,\r\nPMAY KH NO 63 TARODI KAMPTEE NAGPUR,\r\nNEAR BY SYMBIOSIS UNIVERSITY,\r\nWATHODA ROAD,\r\nVTC: Kamptee, PO: Kamptee,\r\nDistrict: Nagpur,\r\nState: Maharashtra, PIN Code: 441001', '9096914700', 1, 700, 1, 'uploads/signatures/9123062bdec66307668c04c279d7c02b.jpg', '2024-12-18 00:00:00', '2024-12-18 06:29:44'),
(905, 'Sheik Sowbar Sarthik', 'Adhaar Card', '9624 7809 4472', '6384720190', 'sahubarsathik2003@gmail.com', 'S/O: Mohamed Ibrahim, 6/75C2, PALLIVASAL KEELATHERU, EMANESWARAM, PARAMAKUDI, Emaneswaram, Ramanathapuram, Tamil Nadu - 623701', '6384720190', 1, 0, 0, 'Not Signed', NULL, '2024-12-18 06:34:06'),
(906, 'Prince Kumar', 'Adhaar Card', '6023 3938 0949', '9346852804', 'techefy85@gmail.com email', '\r\nS/O: Arbind Kumar\r\n11-171\r\nMallanna Basti\r\nBollaram\r\nRamachandrapuram, Medak\r\nAndhra Pradesh - 502325', '9346852804', 1, 0, 0, 'Not Signed', NULL, '2024-12-18 06:36:13'),
(907, 'Prince Kumar', 'Adhaar Card', '6023 3938 0949', '9346852804', 'techefy85@gmail.com email', 'S/O: Arbind Kumar\r\n11-171\r\nMallanna Basti\r\nBollaram\r\nRamachandrapuram, Medak\r\nAndhra Pradesh - 502325', '9346852804', 1, 0, 0, 'Not Signed', NULL, '2024-12-18 06:37:42'),
(908, 'Prince Kumar', 'Adhaar Card', '6023 3938 0949', '9346852804', 'techefy85@gmail.com', 'Prince Kumar\r\nS/O: Arbind Kumar\r\n11-171\r\nMallanna Basti\r\nBollaram\r\nRamachandrapuram, Medak\r\nAndhra Pradesh - 502325', '9346852804', 1, 0, 0, 'Not Signed', NULL, '2024-12-18 06:38:48'),
(909, 'Guddu Ram', 'Adhaar Card', '2554 5912 9995', '8449465914', 'ramg59621@gmail.com', 'S/O: Jagat Singh, Gram Balupura\r\nPost Kharsol, Balpura, PO:Shahabad,\r\nDIST Rampur, Uttar Pradesh, 244922', '8449465914', 1, 2, 1, 'uploads/signatures/613e28ef7c17d6eca89fef97580b595e.jpg', '2024-12-18 00:00:00', '2024-12-18 06:40:27'),
(910, 'Chinthia Mathoor Selvan', 'Adhaar Card', '8111 1283 2975', '7401570896', 'cinthiaclick@gmail.com', 'D/O: Mathoor Selvan, 1, MANIMEHALAI STREET, RAMAKRISHNAPURAM, Tambaram, Kancheepuram, Tamil Nadu - 600059', '7401570896', 1, 0, 0, 'Not Signed', NULL, '2024-12-18 07:10:06'),
(911, 'Ravolkol Jahnavi', 'Adhaar Card', '8227 7198 2360', '6304820374', 'ravolkoljahnavi@gmail.com', 'D/O Ravolkol Sadanand 4-223 Meerpet Sarvodaya Nagar Saroornagar Rangareddi Andhra Pradesh - 500097', '6304820374', 1, 701, 1, 'uploads/signatures/fec6ae617a2ba96ad7994b7a7abcefc6.jpg', '2024-12-18 00:00:00', '2024-12-18 07:26:00'),
(912, 'Bhojani Mahek Ghanshyambhai', 'Adhaar Card', '5013 1570 2319', '8200538638', 'mahekbhojani05@gmail.com', 'Panchavada, Rajkot, Gujarat, 360040', '8200538638', 1, 232, 1, 'uploads/signatures/0bc58d88cf690df56efcc095d7dd0d3d.jpg', '2024-12-18 00:00:00', '2024-12-18 07:39:50'),
(913, 'Abi E', 'Adhaar Card', '5317 7803 8955', '9384736145', 'magicalstory143@gmail.com', 'ABI E ESAAK\r\n9, AKC Avenue, Theethipalayam, VTC: Theethipalayam, PO: Theethipalayam, District: Coimbatore, State: Tamil Nadu, PIN Code: 641010', '9384736145', 1, 0, 0, 'Not Signed', NULL, '2024-12-18 08:03:16'),
(914, 'Prince Dharmeshbhai Bhuva', 'Adhaar Card', '6743 7254 3783', '9327962125', 'pp4446874@gmail.com', 'LECK HILL CITY 54, NEAR RAM PUMP, Gondal, Rajkot, Gujarat, 360311\r\n', '9327962125', 1, 0, 0, 'Not Signed', NULL, '2024-12-18 08:37:22'),
(915, 'Meraj Khan ', 'Adhaar Card', '2943 6593 3461', '7239964013', 'vp617360@gmail.com', 'saray dan shah, KATRAULI, Poore Durgi, Phoolpur, Allahabad, Uttar Pradesh, 212402', '7239964013', 1, 0, 0, 'Not Signed', NULL, '2024-12-18 09:29:52'),
(916, 'Marvel lal Thafela Nampui', 'Adhaar Card', '7902 6497 8308', '6000653238', 'marveltekinit@gmail.com', 'C/O:\r\nDi Khuma Nampui, SILUM, Umrangso,\r\nNorth Cachar Hills,\r\nAssam-788931', '6000653238', 1, 0, 0, 'Not Signed', NULL, '2024-12-18 09:51:23'),
(917, 'Charu', 'Adhaar Card', '5062 1181 5534', '8685940279', 'piryapiryathakur33@gmail.com', 'Sanjay, HARDAN BASTI, Janti Kalan\r\n(52), Sonipat,\r\nHaryana - 131028', '8685940279', 1, 52, 1, 'uploads/signatures/e360c56b222c8a3443802ed6a8f749ef.jpg', '2007-02-25 00:00:00', '2024-12-18 12:41:36'),
(918, 'Gulivindala Vedanth', 'Adhaar Card', '7688 0961 5665', '9566882129', 'vedanthgulivindala@gmail.com', 'C/O: Gulivindala Tirupati,\r\nradhu,\r\nVTC: Bichikote, PO: Bichikote,\r\nSub District: Gudari, District: Rayagada,\r\nState: Odisha, PIN Code: 765024', '9566882129', 1, 0, 0, 'Not Signed', NULL, '2024-12-18 13:58:56'),
(919, 'Manasa R', 'Adhaar Card', '9498 5724 9644', '58423', 'manasamlt12@gmail.com', 'D/O: Ramakrishnan\r\n7/4 VINAYAKAM STREET\r\nWEST MAMBALAM\r\nChennai Tamil Nadu 600033', '58423', 1, 2, 1, 'uploads/signatures/d22609b1f58c3296d4c79c55a70a67e3.jpg', '2024-12-18 00:00:00', '2024-12-18 14:37:57'),
(920, 'Anushka Pandey', 'Adhaar Card', '3537 7122 0925', '9151', 'panushka428@gmail.com', 'Manoj Kumar Pandey, padari,\r\nPadri, Ballia,\r\nUttar Pradesh -221711', '9151', 1, 2, 1, 'uploads/signatures/01caab299030fea57b790c228f25dcca.jpg', '2024-12-19 00:00:00', '2024-12-19 04:20:08'),
(921, 'Vivek Chidar', 'Adhaar Card', '2648 3978 2378', '8109879449', 'vivekchidar786@gmail.com', 'S/O: Rajkumar Chidar, Ward no. 20, Gali no. 3, Mohangiri, Vidisha, Vidisha, Madhya Pradesh - 464001\r\n', '8109879449', 1, 4, 1, 'uploads/signatures/9025a901b8e8ea58d8e4beff1397aa6c.jpg', '2024-12-19 00:00:00', '2024-12-19 04:44:34'),
(922, 'Tinku Panging', 'Adhaar Card', '3328 5647 1346', '7099827180', 'princetinku146@gmail.com', 'C/O: Bijoy Panging\r\nVTC: Ligri Bari\r\nPO: Disangmukh\r\nSub District: Sibsagar\r\nDistrict: Sibsagar\r\nState: Assam\r\nPIN Code: 785663', '7099827180', 1, 0, 0, 'Not Signed', NULL, '2024-12-19 04:56:35'),
(923, 'Abhishek Sharma', 'Adhaar Card', '5704 7818 5529', '8114078331', 'badsa221712@gmail.com', 'S/O: Manoj Sharma, Parasia N 2, Parsia, Ballia, Uttar Pradesh, 221712\r\n', '8114078331', 1, 0, 0, 'Not Signed', NULL, '2024-12-19 04:58:18'),
(924, 'Amit Kumar ', 'Adhaar Card', '6172 2391 2487', '6390516453', 'amitsharma991977@gmail.com', 'S/O: Bajrangi Lal, supelwa new colony\r\ngandhinagar basti, Amhut, Basti,\r\nUttar Pradesh - 272001', '6390516453', 1, 0, 0, 'Not Signed', NULL, '2024-12-19 05:05:38'),
(925, 'Sumit Kumar ', 'Adhaar Card', '3189 0463 6124', '7544915996', 'sumitmunger7544@gmail.com', 'S/O: Avnish Kumar Singh, gram-parsando, Parsando, Munger, Bihar - 811213', '7544915996', 1, 92, 1, 'uploads/signatures/dbb21b9d5fa58eca07fc0e819d2239c1.jpg', '2024-12-19 00:00:00', '2024-12-19 05:13:36'),
(926, 'Nranjini Renganathan', 'Adhaar Card', '3889 1572 1446', '8072116027', 'devilprincess1510@gmail.com', 'RENGANATHAN R, NO 6/39, N S K STREET,\r\nTHUNAKUDIMALAÏ NORTH, AMBETHAR\r\nNAGAR, Tiruchirappalli, Tiruchirappalli,\r\nTamil Nadu 620022', '8072116027', 1, 0, 0, 'Not Signed', NULL, '2024-12-19 05:54:51'),
(927, 'Moin', 'Adhaar Card', '7972 8869 0746', '8126665431', 'moinmojn789@gmail.com', 'mandkan mohalla\r\nNahal\r\nGhaziabad\r\nUttar Pradesh - 201302\r\n', '8126665431', 1, 151, 1, 'uploads/signatures/24b416adb193815787a35dcbf67956d6.jpeg', '2024-12-19 00:00:00', '2024-12-19 06:54:46'),
(928, 'GIREESH KUMAR', 'Adhaar Card', 'PGSPK8252D', '9528740126', 'gireeshkumar9528740126@gmail.com', 'Village lalpur district Aligarh state uttar pradesh pincode 202145', '9528740126', 1, 10, 1, 'uploads/signatures/033b286e267cb064d49870d362b495e4.jpg', '2024-12-19 00:00:00', '2024-12-19 08:09:37'),
(929, 'Deleep Kumar', 'Adhaar Card', '7427 3783 5004', '9012495986', 'dk9576744@gmail.com', 'S/O Rakesh Prasad, savaiya mahalavar,\r\nthana sahabganj, Keraogaon, Chandauli,\r\nUttar Pradesh-232118', '9012495986', 1, 0, 0, 'Not Signed', NULL, '2024-12-19 12:08:02'),
(930, 'Ritik Goyal', 'Adhaar Card', '8701 9214  6304', '8279766696', 'rg430341@gmail.com', 'S/O: Rajiv Goyal, block c, near shiv mandir, govind nagar, Moradabad, Moradabad, Uttar Pradesh - 244001\r\n', '8279766696', 1, 0, 0, 'Not Signed', NULL, '2024-12-19 12:12:09'),
(931, 'Raj Kumar Singh', 'Adhaar Card', '9014 5391 8502', '7980546172', 'ryadav131205@gmail.com', 'S/O: Dililp Kumar Singh,\r\nP-44,\r\nC.I.T. ROAD\r\nVTC: Entally, PO: Entally,\r\nSub District: Circus Avenue, District: Kolkata\r\nState: West Bengal, PIN Code: 700014\r\nMobile: 7980546172', '7980546172', 1, 0, 0, 'Not Signed', NULL, '2024-12-19 12:31:15'),
(932, 'Nahiem Kosar', 'Adhaar Card', '6723 6344 3458', '6006713854', 'nahiemkosar45@gmail.com', 'D/O Mohd Abdullah, -, ward no\r\n1, BHATA DHURIAN, Bhata\r\nDhurian, Punch,\r\nJammu and Kashmir - 185121', '6006713854', 1, 0, 0, 'Not Signed', NULL, '2024-12-19 12:58:09'),
(933, 'Shalini R', 'Adhaar Card', '9139 9521 0711', '7411', 'monisharsubbe@gmail.com', 'Raju, #102, rajeshwari nagara, barahalli, Lakshmipura, Bangalore\r\n', '7411', 1, 216, 1, 'uploads/signatures/4c3d961f270ca4c25e58d66665e8af95.jpg', '2024-12-20 00:00:00', '2024-12-19 13:08:21'),
(934, 'Muqaddis Fatima', 'Adhaar Card', '6970 0813 4087', '8309485470', 'mohdjunaid78@gmail.com', '17-4-33, Pather Ka Makan, Yakutpura, Charminar, Hyderabad, Andhra Pradesh - 500023\r\n', '8309485470', 1, 175, 1, 'uploads/signatures/cb5dbeb5f4ae38668d3fb6742bc41660.jpg', '2024-12-21 00:00:00', '2024-12-19 13:23:25'),
(935, 'Raju Prakash Kambale', 'Adhaar Card', '4019 0794 8794', '9226180043', 'rajukamblr01@gmail.com', 'HOUSE NO.496, BUBANE CHAWL\r\nRAILWAY LINES\r\nBESIDES RAILWAY HOSPITAL\r\nSolapur North\r\nSolapur Maharashtra - 413001', '9226180043', 1, 0, 0, 'Not Signed', NULL, '2024-12-19 13:25:08'),
(936, 'Bharath Hegde', 'Adhaar Card', '4767 7415 3159', '6362159878', 'bharathhegade55@gmail.com', 'TEGINAMAKKI. 152,\r\nTHENGINA MAKKI,\r\nHENGAVALLI,\r\nKUNDAPURA-TALUK,\r\nVTC: Hengaval, PO: Hengavalli,\r\nDistrict: Udupi,\r\nState: Kamataka, PIN Code: 576212,\r\n22150603\r\nMoblle: 8971893065', '6362159878', 1, 700, 1, 'uploads/signatures/342d9eaa153e8678e362d55f3a6c7675.jpg', '2024-12-19 00:00:00', '2024-12-19 14:44:49'),
(937, 'Bhupati Kumar Dhal', 'Adhaar Card', '3433 3034 9682', '9827930703', 'dhalbhupati07@gmail.com', 'Bhupat Kumar Dhal\r\nS/O Srikrushna Dhal,\r\nSANMUNDHABANI, SANMUNDHABANI.\r\nVTC: Sanmundhabani,\r\nPO: Sanmundhabani,\r\nSub District: Muruda, District: Mayurbhan).\r\n184701243\r\nState: Odisha,\r\nPIN Code: 757023,\r\nMobile: 9827930703', '9827930703', 1, 700, 1, 'uploads/signatures/23dc3a2592d2ec0bdf806465b3900773.jpg', '2024-12-20 00:00:00', '2024-12-19 14:46:01'),
(938, 'Anil Kumar Jha', 'Adhaar Card', '7930 9425 8831', '9257477969', 'ajha021973@gmail.com', 'S/O Ramakant Jha, 00, ward no-06, anandpura, Anandpura Milk.\r\nMadhepura,\r\nBihar - 852115\r\n', '9257477969', 1, 0, 0, 'Not Signed', NULL, '2024-12-20 04:19:51'),
(939, 'Sanjeev Saxena ', 'Adhaar Card', '3120 5199 4971', '8302829911', 'sanjeev1051993@gmail.com', 'S/O Deshraj Saxena, 26, DEV NAGAR, RAILWAY STATION KE SAMNE, SANGANER, Sanganer, Jaipur, Rajasthan, 302029', '8302829911', 1, 0, 0, 'Not Signed', NULL, '2024-12-20 04:21:46'),
(940, 'Goutami Rohit Lohar ', 'Adhaar Card', '7362 1088 8919', '9421523088', 'maaambajir@gmail.com', 'Shani Mandir Galli, New Plot, At Post Amalner, Tal Amalner, Dist Jalgaon, Amalner, PO: Amalner, DIST: Jalgaon, Maharashtra - 425401\r\n', '9421523088', 1, 700, 1, 'uploads/signatures/b26c81be8018c1be88573558b5776c69.jpg', '2000-04-11 00:00:00', '2024-12-20 04:23:31'),
(941, 'Keerthana', 'Adhaar Card', '2442 7470 8716', '9786223901', 'keerthudhana17@gmail.com', ' 7D POSTAL AVENUE GANAPATHY NAGAR\r\nNATHAMBEDU Pakkam\r\n Thiruvallur Tiruvallur\r\n  Tamil Nadu 602024\r\n', '9786223901', 1, 700, 1, 'uploads/signatures/cb0c834d7cbc4841bb7b2df9d45c41fa.jpg', '2024-12-20 00:00:00', '2024-12-20 04:26:58'),
(942, 'Nagajothi Matchakali', 'Adhaar Card', '4850 4713 4523', '9566848206', 'chandrjo2608@gmail.com', 'D/O: Matchakalai, 206/210, PASANGARAI, SAKKANTHI POST, SENDIUDAIYANATHAPURAM, Sivaganga, Tamil Nadu - 630562\r\n', '9566848206', 1, 0, 0, 'Not Signed', NULL, '2024-12-20 07:02:27'),
(943, 'L al Bahadur', 'Adhaar Card', '3072 5115 6489', '8607276171', 'kidstorycartoon@gmail.com', 'S/O: Udal, Village Mohna (182), Palwal,\r\nHaryana -\r\n121102', '8607276171', 1, 700, 1, 'uploads/signatures/3a7b972af9c421ad1dbc6f4e48b348f6.jpg', '2024-12-20 00:00:00', '2024-12-20 07:24:25'),
(944, 'Aman Tomar', 'Adhaar Card', '4777 9453 8046', '8450891946', 'amansinghtomar926@gmail.com', 'S/O: Sanjay Singh, village ludhawali, Ludhawali, Morena, Madhya Pradesh - 476111', '8450891946', 1, 0, 0, 'Not Signed', NULL, '2024-12-20 08:08:26'),
(945, 'Hiralal Yadav ', 'Driving License', 'CG04 20130024504', '7509162129', 'harshit667yadav@gmail.com', 'BORIYA KALA, KOTWAL CHOWK, SAHU PARA RAIPUR C.G. 492015', '7509162129', 1, 0, 0, 'Not Signed', NULL, '2024-12-20 09:51:48'),
(946, 'Pankaj Manjhi ', 'Adhaar Card', '8306 4674 4553', '7000159131', 'pankajmajhi758@gmail.com', 'C/O: Ramji Majhi, 1, khajuri no.1, teonthar, rewa, Khajuri No 1, Rewa, Madhya Pradesh - 486226', '7000159131', 1, 0, 0, 'Not Signed', NULL, '2024-12-20 10:25:07'),
(947, 'Chirip M Momin', 'Adhaar Card', '5449 7912 6679', '9612264200', 'chiripmomin@gmail.com', 'C/O: Julius W Sangma, Damas, North Garo Hills, Meghalaya, 794112\r\n', '9612264200', 0, 300, 1, 'uploads/signatures/4a407ce2154c9e0bdd03adcfd947974c.jpg', '2024-12-20 00:00:00', '2024-12-20 10:33:52'),
(948, 'K Kokia Narayani', 'Adhaar Card', '7424 3070 7810', '9843840092', 'royalsatheesh69@gmail.com', 'RAMASAMY SANNATHE STREET\r\nPALAYAMKOTTAI\r\nTIRUNELVELI\r\nTamil Nadu - 627002\r\n', '9843840092', 1, 0, 0, 'Not Signed', NULL, '2024-12-20 11:11:39'),
(949, 'Uma Bharathi Venkadeswaran', 'Adhaar Card', '3986 3171 1905', '9597675248', 'umabharathi1424@gmail.com', 'D/O: Venkadeswaran, 10-3-4(2). NAICKAR GROSS STREET, PODI ???????? ?????, Vadips. Madurai, Tamil Nadu - 625218', '9597675248', 1, 0, 0, 'Not Signed', NULL, '2024-12-20 12:18:35'),
(950, 'Rahul Khodabhai Nayak', 'Adhaar Card', '7575 7050 0219', '9898322349', 'rahulnayak2519@gmail.com', 'A-101, Tulip-1, Behind Pani Ni tanki, Vaishnodevi Circle, Khodiyar, Khodiyar, Ahmedabad, Gujarat - 382421', '9898322349', 1, 0, 0, 'Not Signed', NULL, '2024-12-20 12:19:52'),
(951, 'Sakshi Agrawal ', 'Adhaar Card', '7894 3929 6364', '9389074001', 'sv485888@gmail.com', 'C/O: Manoj Kumar Agrawal, Anand Nagar, Birla Mandir, Jaisinghpura Bangar, Mathura, Uttar Pradesh - 281003\r\n', '9389074001', 1, 1, 1, 'uploads/signatures/4cfb978cff8a6fa89351219bec5e067c.jpg', '2024-12-20 00:00:00', '2024-12-20 13:13:13'),
(952, 'Sangamesha Biradara', 'Adhaar Card', '7722 4617 1839', '8431822719', 'patilsangamesh918@gmail.com', ' S/O: Shivaji House No.: 51-1 Ladha\r\n Near Basava Mantapa Ladha Bidar Karnataka\r\n Pincode: 585421', '8431822719', 1, 21, 1, 'uploads/signatures/baf6ba3feb57fc180ea8f49a7b5c4dd3.jpg', '2024-12-21 00:00:00', '2024-12-21 03:51:22'),
(953, 'Azra Bilal ', 'Adhaar Card', '8510 7996 1493 ', '7006252599', 'bazazazra@gmail.com', 'C/O: Waseem Rasool, 28, Haji Bagh, Buchpora, Srinagar, Srinagar, Jammu and Kashmir, 190020', '7006252599', 1, 0, 0, 'Not Signed', NULL, '2024-12-21 03:53:09'),
(954, 'Vishnu Ghatage', 'Adhaar Card', '2074 4932 3825', '7338630139', 'vishnughatage67@gmail.com', 'S/O Narayan,\r\nHorti Plot Near Moti Gumbaz, Sainik School Campus,\r\nVTC: Bijapur,\r\nPO: Bijapur,\r\nDistrict: Bijapur,\r\nState: Karnataka,\r\nPIN Code: 586101,\r\nMobile: 9900447504\r\n', '7338630139', 1, 700, 1, 'uploads/signatures/1d8f5da2f224afb93caeb77f7a7e2dac.jpg', '2004-06-04 00:00:00', '2024-12-21 03:54:54'),
(955, 'Poonam Kumari ', 'Adhaar Card', '2056 4471 4434', '9736663419', 'poonamzinta7@gmail.com', 'D/O: Bhagat Chand, Village\r\nKandrora, Khangtehri (6), Rohru,\r\nShimla, Himachal Pradesh,\r\n171207', '9736663419', 1, 700, 1, 'uploads/signatures/3be237b20dee10d27900c1b99e80e3fa.jpg', '2024-12-21 00:00:00', '2024-12-21 03:57:20'),
(956, 'Andrea Valencia Cruz ', 'Adhaar Card', '5551 0695 5863', '9765913485', 'cruzandrea58125@gmail.com', 'D/O Estevao Cruz, H No. 186, Desterro, Near Busy Bee High School, Vasco-Da-Gama, South Goa, Goa 403802\r\n', '9765913485', 1, 45, 1, 'uploads/signatures/07d5ffa49ee7422b4e02030f0d90de66.jpg', '2024-12-21 00:00:00', '2024-12-21 04:47:07'),
(957, 'Abhishek Kumar ', 'Adhaar Card', '4189 3136 7177', '7267951081', 'shikharsachan236@gmail.com', 'Hara Mau,kanpur Dhat, Uttar Pradesh, 209111\r\n', '7267951081', 1, 701, 1, 'uploads/signatures/405ba6b0dae35a18410db0abd0d26e4f.jpg', '2024-12-21 00:00:00', '2024-12-21 04:49:00'),
(958, 'Deepak Kumar Naik', 'Adhaar Card', '9249 1192 2255', '8093231867', 'dnaik7675@gmail.com', 'C/O: Dasarath Naik, Jamda, Mayurbhanj, Odisha, 757091\r\n', '8093231867', 1, 0, 0, 'Not Signed', NULL, '2024-12-21 05:01:31'),
(959, 'Tirumalasetti Rakesh', 'Adhaar Card', '9323 4706 6874', '6303693744', 'rd297975@gmail.com', 'S/O Srinivasa Rao,\r\nNuzvid Mandal,\r\nVTC: Siddharthanagar, PO: Siddharthanagar,\r\nDistrict: Krishna,\r\nState: Andhra Pradesh, PIN Code: 521201,', '6303693744', 1, 254, 1, 'uploads/signatures/837d79e5aeb16587a4086c6188911c91.jpg', '2024-12-21 00:00:00', '2024-12-21 05:03:03'),
(960, 'Prince Yadav ', 'Adhaar Card', '2948 7652 9779', '6261999895', 'ollinonechannel5@gmail.com', 'S/O: Thansingh, gram sakuli, gram sakuli\r\npost shaktibheron tehseel niwari, Sakuli,\r\nTikamgarh,\r\nMadhya Pradesh - 472446', '6261999895', 1, 700, 1, 'uploads/signatures/a2d1f52d15ee58de2b317a429c841cea.jpg', '2024-12-21 00:00:00', '2024-12-21 05:06:18'),
(961, 'Kaviyasri V', 'Adhaar Card', '6300 0533 2788', '7826098710', 'kaaviyakaaviyavinothkumar@gmail.com', '1-53A Thekkampatti, Karuppur, Omalur, Salem, Tamil Nadu 636012\r\n', '7826098710', 1, 0, 0, 'Not Signed', NULL, '2024-12-21 05:57:52'),
(962, 'Konduru joshna Devi', 'Adhaar Card', '9268 3401 8653', '9866704684', 'kondurujyoshna4684@gmail.com', 'ULAVALAPALLI\r\nNandimandalam\r\nCuddapah, Andhra Pradesh - 516218', '9866704684', 1, 0, 0, 'Not Signed', NULL, '2024-12-21 06:00:17'),
(963, 'Krishan Dubey ', 'Driving License', 'UP66 20220009808', '9044690017', 'kishandubeyu869@gmail.com', 'KESHVAPUR SARAPATAHA GYANPUR\r\nGyanpur, Bhadohi, UP 221304', '9044690017', 1, 0, 0, 'Not Signed', NULL, '2024-12-21 06:02:57'),
(964, 'Danduboyana Lakshmi Thulasi', 'Adhaar Card', '2415 6233 2920', '9381664972', 'thulasibujji065@gmail.com', 'D/O Ramana 5/29 P Kotta Palli P Kotta Palli Peddacheppalle\r\n Dadireddypalle Cuddapah, Andhra Pradesh - 516289', '9381664972', 1, 93, 1, 'uploads/signatures/d3c6065e1562390012a5020a70fb560e.jpg', '2024-12-21 00:00:00', '2024-12-21 06:05:31'),
(965, 'Daman Charan Hansdah', 'Adhaar Card', '3638 6149 1380', '9861796049', 'hansdahdaman697@gmail.com', 'GADIGAON\r\nGADIGAON\r\nGADIGAON\r\nMayurbhanj Odisha - 757087\r\n', '9861796049', 1, 0, 1, 'uploads/signatures/e3626f2dfef5e6a153b1fec0e74815a1.jpg', '2024-12-21 00:00:00', '2024-12-21 06:12:46'),
(966, 'Surjit kaur ', 'Adhaar Card', 'kantarathod942@gmail.com', '98787', 'kantarathod942@gmail.com', 'Gurdeep Singh,, Malout, Muktsar, Punjab\r\nak\r\n152107', '98787', 1, 2, 1, 'uploads/signatures/225e14da4bcebb9b971c2569a38a7c92.jpg', '2024-12-06 00:00:00', '2024-12-21 06:14:01'),
(967, 'Balaji Chandrashekhar Myakal', 'Adhaar Card', '7944 2538 9510', '988171', 'atharvamyakal4@gmail.com', 'Balaji Chandrashekhar Myakal\r\nSr no 13/1A/A/5 Shriniwas Hights 4 Floor flat no 401,\r\nBehind Primier in Hotel kalubai Nagar Kharadi Pune,\r\nVTC: Pune City,\r\nPO: Dukirkline,\r\nSub District: Pune City,\r\nDistrict: Pune,\r\nState: Maharashtra,\r\nPIN Code: 411014,\r\n', '988171', 1, 2, 1, 'uploads/signatures/64187d9ee083ef3ff75cce1efbb65d93.jpg', '2024-12-21 00:00:00', '2024-12-21 06:53:49'),
(968, 'Dabburi Lakshitha Sri', 'Adhaar Card', '9316 9220 0291', '9346976062', 'lakshithasri20049@gmail.com', 'C/O D Venkateswar Rao, 5-51, Takkellapadu, Takkellapadu, Pedakakani, Takkellapadu, PO: Takkellapadu, DIST: Guntur, Andhra Pradesh - 522509\r\n', '9346976062', 1, 0, 0, 'Not Signed', NULL, '2024-12-21 06:54:47'),
(969, 'Shivani Rana', 'Adhaar Card', '2288 4821 1869', '8894118762', 'Shivani3560rana@gmail.com', 'C/O Surender Singh, vill Lag, po Lag, Tehsil Dada siba, Distt Kangra, Lag (67), Kangra, Himachal Pradesh - 177106', '8894118762', 1, 0, 0, 'Not Signed', NULL, '2024-12-21 07:13:41');
INSERT INTO `tbl_member` (`member_id`, `member_name`, `member_id_type`, `member_id_number`, `member_contact`, `member_email`, `member_address`, `member_pass`, `member_status`, `completed_form`, `agreement_status`, `agreement_sign`, `agreement_date`, `added_on`) VALUES
(970, 'S Karthick Babu', 'Adhaar Card', '7169 1182 0358', '8778533837', 'babukarthickvv@gmail.com', '1/19 A, NEHRU NAGAR, Tondiarpet, PO: Tondiarpet, DIST: Chennai, Tamil Nadu 600081', '8778533837', 1, 19, 1, 'uploads/signatures/a54b176b5df1b93e034adfc221b1f0aa.jpeg', '2024-12-21 00:00:00', '2024-12-21 07:56:25'),
(971, 'Adarsh Kumar Saraf', 'Adhaar Card', '9545 8981 9916', '7605963080', 'adarsh05saraf@gmail.com', 'NUANSADAK, RAJABORASAMBAR, Padmapur, Bargarh, Odisha, 768036', '7605963080', 1, 17, 1, 'uploads/signatures/3d5cd39f535c71910acd212315236edd.jpg', '2024-12-21 00:00:00', '2024-12-21 07:58:24'),
(972, 'Urmila ', 'Adhaar Card', '2762 7405 0818', '7523992304', 'dubeypuchu43@gmail.com', 'W/O: Arvind Kumar, Marachipar khurd, Marachipar khurd, Bharwali, Gorakhpur, Barhalganj Uttar Pradesh, 273408\r\n', '7523992304', 1, 2, 1, 'uploads/signatures/274cfc3863af393875ba57e641da6114.png', '2024-12-25 00:00:00', '2024-12-21 08:25:50'),
(973, 'Hrutik Nagorao Jadhav', 'Adhaar Card', '6401 9302 0343', '8956790932', 'jrutik391@gmail.com', 'S/O: Nagorao Jadhav, Dhar Road, Khandoba Bazar, Parbhani, Parbhani, Maharashtra - 431401', '8956790932', 1, 0, 0, 'Not Signed', NULL, '2024-12-21 10:19:49'),
(974, 'Pallavi Ganappanavar', 'Adhaar Card', '6058 6269 5794', '9743881889', 'devendraganappanavar@gmail.com', 'D/O: Devendrappa, Ankada Kana bankapur, Bankapur, Haveri, Karnataka - 581202\r\n', '9743881889', 1, 12, 1, 'uploads/signatures/014e29d5e84d359de43259ce071497ca.jpg', '2024-12-22 00:00:00', '2024-12-22 04:06:35'),
(975, 'Ramji Ezhilan', 'Adhaar Card', '6874 5822 3604', '9791592202', 'ramjiezhil@gmail.com', 'Co.Ezhilan. No.53. Radha Nagar, Reddipalayam\r\nRoad, Melavelithottam, PO: Thanjavur West. DIST: Thanjavur, Tamil Nadu - 613009', '9791592202', 1, 0, 0, 'Not Signed', NULL, '2024-12-22 04:38:45'),
(976, 'Aman Pandey ', 'Adhaar Card', '3350 2212 0224', '8188808576', 'apandey8218@gmail.com', 'S/O: Rakesh Panday, VILL NAUGAWAN, Alhadadpur Baihari, Shahjahanpur, Uttar Pradesh, 242221', '8188808576', 1, 274, 1, 'uploads/signatures/d897ceacc9924942188c8afb2412af91.jpg', '2024-12-22 00:00:00', '2024-12-22 04:40:35'),
(977, 'Kriti Kumar ', 'Adhaar Card', '7221 1870 5388', '7352945392', 'jaishwalkriti@gmail.com', 'VTC: Katai,\r\nPO: Ufrauli,\r\nSub District: Katra, District: Muzaffarpur,\r\nState: Bihar,\r\nPIN Code: 843360\r\n', '7352945392', 1, 115, 1, 'uploads/signatures/b58b0237578cfc6e62e5d32b4833cc2b.jpg', '2024-12-22 00:00:00', '2024-12-22 04:43:52'),
(978, 'Abhishek Kumar ', 'Adhaar Card', '9052 4060 1195', '9508070960', 'roy727596@gmail.com', 'S/O: Ashish Kumar, Shivdih, Pathakchak, Sikandra, Jamui, Bihar - 811315\r\n', '9508070960', 1, 0, 0, 'Not Signed', NULL, '2024-12-22 06:22:53'),
(979, 'Abhishek Kumar', 'Adhaar Card', '9052 4060 1195', '9508070960', 'roy727596@gmail.com', 'S/O: Ashish Kumar, shivdih,\r\npathakchak, Sikandra, Jamui,\r\nBihar -811315', '9508070960', 1, 0, 0, 'Not Signed', NULL, '2024-12-22 06:23:02'),
(980, 'Harshitha ', 'Adhaar Card', '3907 4735 5013', '9353406119', 'harshithahacchi49@gmail.com', 'D/O: Sathish T N, #39, Halasahalli Thippasandra, PO: Gunjur, DIST: Bangalore Karnataka-560087\r\n', '9353406119', 1, 700, 1, 'uploads/signatures/ecb466350309cc642c4d107b7d181db3.jpg', '2024-12-22 00:00:00', '2024-12-22 06:26:08'),
(981, 'Duvvu Roja Roshini', 'Adhaar Card', '6628 6572 3856', '6302955098', 'luckyduvvu18@gmail.com', 'D/O Duvvu Ravi Ramakrishna\r\nH.No 2-234, Ganesh Colony\r\nMadugula Mandal\r\nMadugula\r\nVisakhapatnam, Andhra Pradesh - 531027\r\n', '6302955098', 1, 708, 1, 'uploads/signatures/617ef1d7cffef6c9635ea406f84f5437.jpg', '2024-12-22 00:00:00', '2024-12-22 06:56:35'),
(982, 'Gopi Yogitha Jyothirmai', 'Adhaar Card', '8447 0845 8261', '85220', 'yogithajyothirmai03@gmail.com', 'D/O Gopi Mahesh,\r\nFlat No 301,\r\nSangivalasa,\r\nVTC: Bheemunipatnam,\r\nPO: Sangivalasa,\r\nSub District: Bheemunipatnam,\r\nDistrict: Visakhapatnam,\r\nState: Andhra Pradesh,\r\nPIN Code: 531162', '85220', 1, 2, 1, 'uploads/signatures/cbb21c0f67c9a6bed2bb8faf8df9a3f8.jpg', '2024-12-22 00:00:00', '2024-12-22 07:07:47'),
(983, 'T amilarasi Y', 'Adhaar Card', '2572 4780 6137', '9003820778', 'tamilarasiyuvaraj17@gmail.com', 'D/O: Yuvaraj, Peddur, ALANGAYAM, vaniyambadi, Peddur, Vellore, Tamil Nadu - 635701', '9003820778', 1, 70, 1, 'uploads/signatures/85259cad3e37dcf0818082c28d699ff7.jpg', '2024-12-22 00:00:00', '2024-12-22 07:17:48'),
(984, 'Gogula Lavanya', 'Adhaar Card', '9340 2542 9476', '7386955149', 'lavanyagogula18@gmail.com', 'C/O G Laxmi Narayana Goud\r\nH NO.SRT-700 SRT COLONY\r\nSANATHNAGAR\r\nSanathnagar\r\nSanathnagar I E\r\nAmeerpet Hyderabad\r\nTelangana 500018\r\n', '7386955149', 1, 702, 1, 'uploads/signatures/d6fcf0fcda53318cad4c3c852c3a736c.jpg', '2024-12-22 00:00:00', '2024-12-22 07:20:25'),
(985, 'Rajkumar Bharti', 'Adhaar Card', '5436 9744 0226', '8264834865', 'Kumari9534515046@gmail.com', 'S/O: Gulabchand Yadav, ward 05, school, Ghiwaha, Supaul, Bihar - 852137\r\n', '8264834865', 1, 700, 1, 'uploads/signatures/52d1f39d2422913abf31c1e6bb20dcad.jpg', '2024-12-22 00:00:00', '2024-12-22 08:06:45'),
(986, 'Gourav Singh ', 'Adhaar Card', '8196 9785 7050', '9972521928', 'gouravsingh.maa9398@gmail.com', 'S/O Rajesh Singh, 473/0216, B-12, Ram Leela Ground, Khadra, Nirala Nagar, Lucknow, Uttar Pradesh - 226020\r\n', '9972521928', 1, 700, 1, 'uploads/signatures/fc7691ab969ab579690ca1df8af20367.jpg', '2024-12-22 00:00:00', '2024-12-22 08:08:46'),
(987, 'Ezilarasi jayapal', 'Adhaar Card', '4958 4461 8567', '9943489774', 'ezhilarasijayapal96@gmail.com', 'ayapal, 56E, OLD G S T ROAD\r\nAddress:\r\nANUIMÁNTHAPUTHERI, CHENGALPATTU.,\r\nDIO.\r\nChengalp?ttu. Kancheepuram.\r\nTamil Nadu - 603001\r\nF', '9943489774', 1, 0, 0, 'Not Signed', NULL, '2024-12-23 03:32:21'),
(988, 'Kiran', 'Adhaar Card', '4566  6485  4733', '6367508692', 'Jgodara583@gmail.com', 'D/O: Ravinder Godara, Ward No.\r\n03, VPO Umewala, Vaya Goluwala, Tehsil\r\nPilibangan, 4 UMW, Hanumangarh,\r\nRajasthan, 335802\r\n\r\n\r\n4', '6367508692', 1, 8, 1, 'uploads/signatures/cc8f7a6f5d582982e5fc1cfa238b8826.jpeg', '2024-12-23 00:00:00', '2024-12-23 03:33:48'),
(989, 'Sapna ', 'Adhaar Card', '9761 9627 9596', '7876603991', '???????????991@?????.???', 'D/O: Kanshi Ram,\r\nWARD NO.05,\r\nVILL UGHRAL TEH.DAKLHOUSIE\r\nVTC: Pukhar (97).\r\nPO: Banikhet,\r\nSub District: Dalhousie, District: Chamba,\r\nState: Himachal Pradesh,\r\nPIN Code: 176303.', '7876603991', 1, 0, 0, 'Not Signed', NULL, '2024-12-23 04:38:42'),
(990, 'Rju mondal ', 'Adhaar Card', '447442631803', '7029561567', 'Sukdevmondal.0788@gmail.com', '', '7029561567', 1, 0, 0, 'Not Signed', NULL, '2024-12-23 04:44:33'),
(991, 'Praveen Palanisami', 'Adhaar Card', '5724 7541 4993', '9597192409', 'Pjpraveen2000@gmail.com', 'Palanisami, 888 A, KADALUR MAINROD, PUDUPPATTI, Attur, PO: Pud\r\nupet,DIST: Salem,Tamil Nadu - 636141', '9597192409', 1, 0, 0, 'Not Signed', NULL, '2024-12-23 05:31:45'),
(992, 'Priyanshu Verma', 'Adhaar Card', '8126 2617 6811', '9354098370', 'pv5874154@gmail.com', 'Raiesh Verma, RZ-F-38 NEW\r\nROSHANPURA, Nagafgarh, South West\r\nDelhi, Delhi - 110043', '9354098370', 1, 0, 0, 'Not Signed', NULL, '2024-12-23 05:38:47'),
(993, 'Mohd Saif', 'Adhaar Card', '6851 8703 8739', '7905617496', 'saifmansoori323@gmail.com.', 'Naim Akbar, 343/1, bahar khanderavgate, jhansi, Jhansi Khas, Jhansi,Utar Pradesh - 284002', '7905617496', 1, 0, 0, 'Not Signed', NULL, '2024-12-23 05:40:01'),
(994, 'Harishgopi Ramkumar', 'Adhaar Card', '9149 7430 2990', '9629520013', 'harishari987456@gmail.com', 'Ramkumar, 3/70, PERUMAL KOVIL\r\nSTREET, Pottaneri, Salem,\r\nTamil Nadu -636453', '9629520013', 1, 143, 1, 'uploads/signatures/b842874b19b09eb5ee40e04b6acefc4e.jpg', '2024-12-23 00:00:00', '2024-12-23 05:41:09'),
(995, 'Pratima patel', 'Adhaar Card', '5315 0280 9667', '8821926618', 'pratimapatel2854@gmail.com', '', '8821926618', 1, 0, 0, 'Not Signed', NULL, '2024-12-23 05:42:27'),
(996, 'Jitendra', 'Adhaar Card', '3843 3271 9368', '9784921048', 'bhatijitendra455@gmail.com', ',\r\nJajiwal Kalan, Jodhpur, Jajiwal Kallan,\r\n??????????, ????????, 342027 Rajasthan, 342027', '9784921048', 1, 0, 0, 'Not Signed', NULL, '2024-12-23 05:44:40'),
(997, 'Jothika Ganesamoorthy', 'Adhaar Card', '6095 4813 8143', '8438388680', 'jothikajothi65@gmail.com', 'Ganesamoorthy, NO 101, MAIN ROAD,\r\nULLIKOTTAI, MANÑARGUDI-TALUKA,\r\nDetails\r\nUllikottai -i, PO: Ullikottai, DIST: Thiruvarur,\r\nTamil Nadu -614018', '8438388680', 1, 0, 0, 'Not Signed', NULL, '2024-12-23 05:45:59'),
(998, 'Siddhant Vasant Gawali', 'Adhaar Card', '7903 4539 3293', '9137359575', 'siddhantgawali0357@gmail.com', 'BHIMWADI RAHIWASHI\r\nSANGH SHIVAJI NAGAR\r\nGOVANDI, NEAR\r\nDR.BABASAHEB\r\nAMBEDKAR CHOWK,,\r\nShivaji Nagar (Kurla),\r\nMumbai, Maharashtra,\r\n400043', '9137359575', 1, 700, 1, 'uploads/signatures/31340cf4910dff25bb8fc5c99fa2adc7.jpeg', '2024-12-24 00:00:00', '2024-12-23 07:25:38'),
(999, 'Anand Basavaraj Naik', 'Adhaar Card', '5915 3700 7057', '7975768642', 'naikanand270@gmail.com', 'Basavaraj Naihk\r\n# 71A Rukmini.nagar\r\nBolgauim\r\nBolgaum Shivall Nagat\r\nHukkeri Belgaum\r\nKamataku 500016', '7975768642', 1, 0, 0, 'Not Signed', NULL, '2024-12-23 12:02:14'),
(1000, 'Saraswathi G', 'Adhaar Card', '4908 6225 6220', '9943712112', 'sarasvinoth1201@gmail.com', 'Vinothkumar,\r\n1/129,\r\nWest Street,\r\nThirunanriyur,\r\nVTC: Natham, PO: Cholachakkaranaloor,\r\nDistrict: Nagapattinam,\r\nState: Tamil Nadu, PIN Code: 609118,\r\nMobile: 7010507271', '9943712112', 1, 0, 0, 'Not Signed', NULL, '2024-12-23 12:03:40'),
(1001, 'Duvvu Roja Roshini', 'Adhaar Card', '6628 6572 3856', '630295', 'luckyduvvu18@gmail.com', 'D/O Duvvu Ravi Ramakrishna\r\nH.No 2-234, Ganesh Colony\r\nMadugula Mandal\r\nMadugula\r\nVisakhapatnam, Andhra Pradesh - 531027\r\n', '630295', 1, 3, 1, 'uploads/signatures/a58e54ab09c64dfaff56aaae003074dc.jpg', '2024-12-23 00:00:00', '2024-12-23 12:12:36'),
(1002, 'Saritha', 'Adhaar Card', '3460 8621   3736', '938443', 'rithusolo15@gmail.com', 'MELPAKKAM,\r\nVTC: Eguvarpalayam, PO: Iguvarpalayam\r\nSub District: Gummidipoondi, District: Tiruvallur\r\nState: Tamil Nadu, PIN Code: 601201\r\nMobile: 9384431059', '938443', 1, 2, 1, 'uploads/signatures/4dc71586c21fb908e163375dd0b097f7.jpg', '2024-12-23 00:00:00', '2024-12-23 13:54:52'),
(1003, 'Nihar Praveen ', 'Adhaar Card', '4452 5811 2304', '9304000241', 'niharpraween22april@gmail.com', 'C/O: Md Shahjad Sheedagi, madarsha mohallah, konra post barhi block barhi, Konra. PO: Barhi, DIST: Hazaribagh, Jharkhand-825405', '9304000241', 1, 57, 1, 'uploads/signatures/c930de664390857bda42d70e4c8e002d.jpeg', '2024-12-24 00:00:00', '2024-12-23 14:12:31'),
(1004, 'Nihar Praveen ', 'Adhaar Card', '4452 5811 2304', '9304000241', 'niharpraween22april@gmail.com', 'C/O: Md Shahjad Sheedagi, madarsha mohallah, konra post barhi block barhi, Konra. PO: Barhi, DIST: Hazaribagh, Jharkhand-825405', '9304000241', 1, 57, 0, 'Not Signed', NULL, '2024-12-23 14:12:32'),
(1005, 'Golanakonda Swathi', 'Adhaar Card', '6848 6338 2119', '6304553927', 'swathigolanakonda32@gmail.com', '12-86/A sheripally wargal mandalam wargal Medak Telangana - 502279', '6304553927', 1, 0, 0, 'Not Signed', NULL, '2024-12-23 14:14:53'),
(1006, 'Abhishek Kumar', 'Adhaar Card', '3344 7669 3752', '7807188734', 'Abhishekthakur78077@gmail.com', 'S/O Karam Chand, TEHSIL SUNDERNAGAR, KOON, Mandi, Himachal Pradesh, 174401\r\n', '7807188734', 1, 30, 1, 'uploads/signatures/ac5f83c33d86972a57a16adcc59f78c9.jpg', '2024-12-24 00:00:00', '2024-12-23 14:17:53'),
(1007, 'Ashwini Deepak Savarkar ', 'Election Card', 'TTZ8496093', '9209113516', 'dsavkar6@gmail.com', '32, GURHALE, GURHALE, WADALIBHOI, NASHIK, MAHARASHTRA-423117', '9209113516', 1, 0, 0, 'Not Signed', NULL, '2024-12-23 15:07:19'),
(1008, 'Varun S T', 'Adhaar Card', '6533 1650 9937', '9513292195', 'varunst0@gmail.com', 'S/O: Shivaraj N T, No TF 8 Balaji Residency,\r\nNear 100 feet road, BSK 6th stage,\r\nBangalore South, PO: Konanakunte, DIST:\r\nBangalore,\r\nKarnataka - 560062\r\n', '9513292195', 1, 700, 1, 'uploads/signatures/0d41085825d2863f09df069b6a2eec00.jpg', '2024-12-24 00:00:00', '2024-12-24 04:42:54'),
(1009, 'Mayur Santosh Vichare', 'Adhaar Card', '5518 1367 2695', '8356950132', 'vmayur732@gmail.com', 'Opp. Municipal Hospital Dr. R. P. Road Chavan Chawl, Room No.5, Kadam Pada, Mulund West, Mumbai (Sub Urban), Maharashtra 400080', '8356950132', 1, 0, 0, 'Not Signed', NULL, '2024-12-24 04:44:56'),
(1010, 'Syed Sameer T', 'Adhaar Card', '7559 2446 5747', '7010861194', 'syedsameer2710@gmail.com', '19/1, PARASURAMAN STREET, OLD WASHERMENPET, VTC: Washermenpet, PO: Washermenpet, Sub District: Chennai, District: Chennai, State: Tamil Nadu, PIN Code: 600021', '7010861194', 1, 0, 0, 'Not Signed', NULL, '2024-12-24 04:50:07'),
(1011, 'Raj Soni ', 'Adhaar Card', '3416 7088 2663', '9303828394', 'rajsoni49588@gmail.com', 'S/O: Rajesh, Gram Singawada, Post Mankund, Teh Hatpipliya, Gram Panchayat Ponasa, Singawada, Mankund, Dewas, Madhya Pradesh, 455223', '9303828394', 1, 0, 0, 'Not Signed', NULL, '2024-12-24 05:14:37'),
(1012, 'Narendra Sawaitul', 'Adhaar Card', '7789 8179 0830', '9755557412', 'narendrs.sawaitul@gmail.com', 'S/O: Madhukar Sawai, 11/C, alankar palace near alankeswar mahadev mandir, Indore, Sudama Nagar, Madhya Pradesh, 452009', '9755557412', 1, 0, 0, 'Not Signed', NULL, '2024-12-24 05:17:05'),
(1013, 'S Satya Nagendra Babu', 'Driving License', 'TS4152022002998', '7989091835', 'satyanagendra2014@gmail.com', 'PLT NO: 74 CITYZEN CO, INDRESHAM VILLAGE, SWEET SHOP BACK SIDE, PATANCHERU, SANGAREDDY-502319', '7989091835', 1, 0, 0, 'Not Signed', NULL, '2024-12-24 05:19:47'),
(1014, 'Saloman Raja', 'Adhaar Card', '8736 1478 4094', '9828013470', 'salamanraja08@gmail.com', 's/o muthukrishnan, 3/1289, AVS NAVEEN GARDEN, VAVIPALAYAM, VAVIPALAYAM, Tiruppur, Tamil Nadu - 641666\r\n', '9828013470', 1, 0, 0, 'Not Signed', NULL, '2024-12-24 05:40:24'),
(1015, 'Anshika Pal', 'Adhaar Card', '9011 0087 6186', '8506012925', 'bindassgirl2633@gmail.com', 'D/O: Upendra Singh, Plot Number-4B, E-Block, Qutub Vihar Phase-1, Goela Khurd, South West Delhi, Delhi - 110071\r\n', '8506012925', 1, 422, 1, 'uploads/signatures/75cf631ec2a835004f39fd8a47f6d0cb.jpg', '2024-12-24 00:00:00', '2024-12-24 09:06:36'),
(1016, 'Sneha Jose', 'Adhaar Card', 'WLS1504646', '7736264116', 'snehajose572@gmail.com', 'CRA 94 DIPPO PURAYIDOM, CONTONMENT SOUTH, KOLLAM WEST, KOLLAM PO, KOLLAM, KOLLAM, KERALA-691001', '7736264116', 1, 0, 0, 'Not Signed', NULL, '2024-12-24 09:08:28'),
(1017, 'Shrenik Dilip Mule', 'Adhaar Card', '4616 9409 0078', '7420984731', 'shrenikmulay691@gmail.com', 'VTC: Kavalapur, PO: Kavalapur, Sub District: Miraj, District: Sangli, State: Maharashtra, PIN Code: 416306.', '7420984731', 1, 134, 1, 'uploads/signatures/120596a1f94ad3dff5c9f75f337dee33.jpg', '2025-12-24 00:00:00', '2024-12-24 10:22:24'),
(1018, 'Amrit Dhiman', 'Adhaar Card', '9741 4889 4758', '9814095182', 'riyadhiman230@gmail.com', 'C/O Chander Shekhar,\r\nHouse no-125,\r\nStreet no- 2,\r\nGuru Nanak Nagar,\r\nVTC: Gill,\r\nPO: Gill,\r\nSub District: Ludhiana (west),\r\nDistrict: Ludhiana,\r\nState: Punjab,\r\nPIN Code: 141116', '9814095182', 1, 0, 0, 'Not Signed', NULL, '2024-12-24 11:11:35'),
(1019, 'Yukta Verma', 'Driving License', 'DL1-20230172863', '9958496558', 'Kakuartkaku@gmail.com', 'HOUSE NO WZ-1, GOLDEN PARK, NEAR DURGA MANDIR RAMPURA, Onkar Nagar S.O North West Delhi Delhi, 110035', '9958496558', 1, 2, 1, 'uploads/signatures/57c551691f831b6d889357f3f26eefc7.jpg', '2024-12-24 00:00:00', '2024-12-24 11:16:19'),
(1020, 'Simran Nadim Shaikh ', 'Adhaar Card', '2351 3231 0538', '9370644698', 'shaikhsimran235467@gmail.com', 'Flat no-7 Sulochana Apartment, S.no-333, Bavdhan, Pune City, Pune, Maharashtra - 411021\r\n', '9370644698', 1, 51, 1, 'uploads/signatures/3b1ab4a111f18c20573243fb94e48c50.jpg', '2024-12-24 00:00:00', '2024-12-24 11:18:41'),
(1021, 'Kaveri Tulsimani', 'Adhaar Card', '8178 3100 3886', '8431063818', 'tejappatulsimani@gmail.com', 'Tejappa, Beladadi Tanda, Beladhadi,\r\nGadag,\r\nKarnataka - 582103\r\n', '8431063818', 1, 0, 0, 'Not Signed', NULL, '2024-12-24 12:30:01'),
(1022, 'Lakshmi N', 'Adhaar Card', '3135 4608 7918', '9739933859', 'lakshmi1992reddy@gmail.com', 'W/o Harish AT, No 242, Adigondanahalli, Anekal Taluk, Adigondanahalli, Bengaluru, Karnataka - 560099', '9739933859', 1, 50, 1, 'uploads/signatures/0baae561c29794580c92737ed6078f4c.jpg', '2024-12-24 00:00:00', '2024-12-24 12:57:51'),
(1023, 'Goutami Rohit Lohar ', 'Adhaar Card', '7362 1088 8919', '94215', 'maaambajir@gmail.com', 'Shani Mandir Galli, New Plot, At Post Amalner, Tal Amalner, Dist Jalgaon, Amalner, PO: Amalner, DIST: Jalgaon, Maharashtra - 425401\r\n', '94215', 1, 13, 1, 'uploads/signatures/7f4bfb30ce80d63130d4d3dd0298bc3f.jpg', '2000-04-11 00:00:00', '2024-12-24 14:43:05'),
(1024, 'Keerthana', 'Adhaar Card', '2442 7470 8716', '97862', 'keerthudhana17@gmail.com', '7D POSTAL AVENUE GANAPATHY NAGAR\r\nNATHAMBEDU Pakkam\r\n Thiruvallur Tiruvallur\r\n  Tamil Nadu 602024\r\n', '97862', 1, 2, 1, 'uploads/signatures/d431a24f67e7e6e1894c7ef7b1676186.jpg', '2024-12-25 00:00:00', '2024-12-25 03:49:08'),
(1025, 'Pinki Bhawel', 'Adhaar Card', '6570 8045 5688', '6265373732', 'farukuddin8094@gmail.com', 'D/O: Gangaram, gram petlawad, Patlawada,\r\nDhar, Madhya Pradesh - 454446', '6265373732', 0, 0, 0, 'Not Signed', NULL, '2024-12-25 04:25:07'),
(1026, 'Pinki Bhawel', 'Adhaar Card', '6570 8045 5688', '6265373732', 'Bhawelpinki8@gmail.com', 'D/O: Gangaram, gram petlawad, Patlawada,\r\nDhar, Madhya Pradesh - 454446', '6265373732', 1, 0, 1, 'uploads/signatures/b300efdb8b6652efa16513b89ed8488b.jpg', '2024-12-25 00:00:00', '2024-12-25 04:33:03'),
(1027, 'Faruk Uddin', 'Election Card', 'HXH0465732', '8822351580', 'Bhawelpinki8@gmail.com', 'Vill/Town - BIRGRAM P.S. - Ratrabari Sub-Divn. - Karimganj Dist. - KARIMGANJ (Assam)', '8822351580', 1, 4, 1, 'uploads/signatures/8f2950b1d4b79713e849da7a49251a14.jpg', '2024-12-25 00:00:00', '2024-12-25 04:35:26'),
(1028, 'PONNAVARAM DHANAMMA', 'Adhaar Card', '2939 1191 0304', '9346272810', 'kusumakusuma42683@gmail.com', 'C/O: Mamidi Kiran Kumar\r\nMummayapalem\r\nTirupati Andhra Pradesh - 524402', '9346272810', 1, 495, 1, 'uploads/signatures/390682f2883960d2d4c42893328f936f.jpg', '2024-12-25 00:00:00', '2024-12-25 04:37:47'),
(1029, 'Paidiwala Hemavarshini', 'Adhaar Card', '7816 8669 1386', '7702950863', 'paidiwadah@gmail.com', '9-9-47/21, Balaram Nagar, Sivaji Palem, VTC: Visakhapatnam (Urban), PO: LB Colony, Sub District: Visakhapatnam (Urban), District: Visakhapatnam, State: Andhra Pradesh, PIN Code: 530017.\r\n', '7702950863', 1, 700, 1, 'uploads/signatures/758ed6f528c34776803a22fbd5114b86.jpg', '2024-12-25 00:00:00', '2024-12-25 04:50:48'),
(1030, 'Balwant Tiwari ', 'Adhaar Card', '6978 7417 9817', '8100505664', 'nt0535107@gmail.com', 'S/O: Ramesh Tiwari, 29, GOPAL CHANDRA MUKHERJEE LANE, Haora (M.Corp), Howrah, West Bengal, 711101', '8100505664', 1, 0, 1, 'uploads/signatures/d0ce45511d2e19cd1ca01737d9adf221.jpg', '2024-12-25 00:00:00', '2024-12-25 04:53:00'),
(1031, 'Harsha J N', 'Adhaar Card', '8784 6455 6597', '9900103373', 'harshajn10@gmail.com', 'S/O Nagaraja S,\r\n#230,\r\nbasaveshwara nagara,\r\nVTC: Rampura,\r\nPO: Rampura,\r\nDistrict: Chitradurga,\r\nState: Karnataka,\r\nPIN Code: 577540,\r\nMobile: 9900103373\r\n', '9900103373', 1, 0, 0, 'Not Signed', NULL, '2024-12-25 04:54:54'),
(1032, 'T Vyshnavi', 'Adhaar Card', '4688 2953 4284', '6301467552', 'vvyshnavi313@gmail.com', 'D/O T Sreenivasulu, 1-25,\r\nPUJAGANIPALLI, BHEEMAGANIPALLI Punganur,\r\nPunganur, Chittoor,\r\nAndhra Pradesh, 517247\r\n', '6301467552', 1, 17, 1, 'uploads/signatures/5a05b72ed8c107772b61f2429ca8a456.jpg', '2024-12-25 00:00:00', '2024-12-25 04:56:57'),
(1033, 'Pankaj Kumar Pandey ', 'Adhaar Card', '3717 2517 8598', '8356885036', 'pankajpandey99565612@gmail.com', 'S/O: Ramraj Pandey, belwan pakari ka pura,\r\npahada, Agrauli, Mirzapur,\r\nUttar Pradesh - 231001', '8356885036', 1, 8, 1, 'uploads/signatures/a79130fdf912fa3c7ef22c871fbb80a1.jpg', '2024-12-25 00:00:00', '2024-12-25 05:03:40'),
(1034, 'Vicky Sahani', 'Adhaar Card', '5183 9406 6745', '8453018932', 'sahani6901@gmail.com', 'C/O: Raj Kumar Sahani,\r\nHouse No 08, Mother Teresa Road,\r\nNear Over Bridge, 2 No Mathgharia,\r\nVTC: Noonmati,\r\nPO: Noonmati,\r\nSub District: Guwahati, District: Kamrup Metro,\r\nState: Assam,\r\nPIN Code: 781020\r\n', '8453018932', 1, 1, 1, 'uploads/signatures/bfbcee4477815c2c415bd6c45a6fd451.jpg', '2024-12-25 00:00:00', '2024-12-25 07:38:00'),
(1035, 'Vicky Sahani', 'Adhaar Card', '5183 9406 6745', '8453018932', 'sahani6901@gmail.com', 'No 08, Mother Teresa Road,\r\nNear Over Bridge, 2 No Mathgharia,\r\nVTC: Noonmati,\r\nPO: Noonmati\r\nSub District: Guwahati, District: Kamrup Metro,\r\n123160893\r\nState: Assam,\r\nPIN Code: 781020,\r\nMobile: 7002645748', '8453018932', 1, 0, 0, 'Not Signed', NULL, '2024-12-25 09:00:03'),
(1036, 'Doma Kanaka Raju', 'Adhaar Card', '4385 1742 8580', '6304275081', 'mosesraju09@gmail.com', 'RAMA JOGI PET A\r\nVISAKHAPAT NAM\r\nMAHARANIPETA\r\nVisakhapatnam (Urban)\r\nMaharanipeta\r\nVisakhapalnam Andhra Pradesh-530002', '6304275081', 1, 0, 0, 'Not Signed', NULL, '2024-12-25 09:01:10'),
(1037, 'Pinki Bhawel ', 'Adhaar Card', '6570 8045 5688', '6265373732', 'bhawelpinki8@gmail.com', 'D/O: Gangaram, gram petlawad, Patlawada, Dhar, Madhya Pradesh - 454446\r\n', '6265373732', 1, 0, 0, 'Not Signed', NULL, '2024-12-25 10:48:02'),
(1038, 'Ramprasad ', 'Adhaar Card', '5970 8008 8360', '8667800567', 'pram24487@gmail.com', 'KOTTAGUDI\r\nSivaganga\r\nSivaganga\r\nTamil Nadu - 630561', '8667800567', 1, 0, 0, 'Not Signed', NULL, '2024-12-25 11:06:53'),
(1039, 'Manisha Singh', 'Adhaar Card', '7370 5040 6471', '9241547134', 'manishasingh0400@gmail.com', 'D/O: Mithalesh Kumar Singh,\r\nVILL-UDIH (PAGAR), POST-LOHARSI, PS-PIPARA TAND,\r\nVTC: Pagar Khurd,\r\nPO: Loharsi,\r\nSub District: Panki,\r\nDistrict: Palamu,\r\nState: Jharkhand,\r\nPIN Code: 822122\r\n', '9241547134', 1, 701, 1, 'uploads/signatures/958ea7ea35c76ead8d6973c0ba66a8c9.jpg', '2024-12-25 00:00:00', '2024-12-25 11:08:36'),
(1040, 'Sujita Tamang', 'Adhaar Card', '8000 7201 1807', '7047608148', 'sujitatamang903@gmail.com', 'D/O Santosh Tamang,\r\nDonak PW,\r\nNear Donak Primary School, Turung Mamring GPU,\r\nVTC: Mamring,\r\nPO: Mamring,\r\nDistrict: South,\r\nState: Sikkim,\r\nPIN Code: 737132', '7047608148', 1, 700, 1, 'uploads/signatures/95d7d11639926c2f63e39a2280596b02.jpg', '2024-12-25 00:00:00', '2024-12-25 11:18:59'),
(1041, 'N Lakshmi Priya ', 'Adhaar Card', '3054 1627 0996', '7550374682', 'lp2029273@gmail.com', 'Naanamedu Street\r\nLakshmi Nagar Pooranankuppam Post\r\nEdaiyarpalayam\r\nPondicherry - 605007\r\n', '7550374682', 1, 4, 1, 'uploads/signatures/91236085df8cf3074c4a146bf9c61c60.jpg', '2024-12-25 00:00:00', '2024-12-25 11:34:01'),
(1042, 'Upendra Kumar Pandey ', 'Adhaar Card', '6688 7939 9667', '9755667010', 'upendrakumarpandey291@gmail.com', 'S/O Kamlesh Pandey, LIG 2/22/349 nehru nagar ward no- 13 rewa, Huzur, Rewa, Madhya Pradesh - 486001\r\n', '9755667010', 1, 0, 0, 'Not Signed', NULL, '2024-12-25 11:36:48'),
(1043, 'Pradeep Singh Chudawat', 'Adhaar Card', '9284 4948 5632', '9887448483', 'Pradeep.chundawat@gmail.com', 'Sumer Singh Chundawat, 40 New B.J.S Colony, Bayana House, Near Kalyan Singh Kalvi Bus Stand, New B.J.S Colony, Jodhpur, Rajasthan, 342006', '9887448483', 1, 700, 1, 'uploads/signatures/94ac0a420d999b460965f8bf0a1e8aab.jpg', '2024-12-25 00:00:00', '2024-12-25 13:48:22'),
(1044, 'Dhruvraj Pandurang Vasaikar', 'Adhaar Card', '3801 1305 2807', '8999011172', 'dhruvrajvasaikar2001@gmail.com', 'sakri rode\r\nNear old pani taki\r\nNandurbar\r\nNandurbar\r\nNandurbar Maharashtra - 425412\r\n8999011172\r\n', '8999011172', 1, 700, 1, 'uploads/signatures/33d4b976de06e58adced459bfa7d764a.jpg', '2024-12-25 00:00:00', '2024-12-25 13:50:13'),
(1045, 'Nitesh Kumar Pal', 'Adhaar Card', '7508 9461 6485', '9508336521', 'niteshkrpal01@gmail.com', 'C/O Pashupati Pal, gram-monglabandh, post-monglabandh, Mangla Bandh, Moglabandh, Pakur, Jharkhand, 816117\r\n', '9508336521', 1, 0, 0, 'Not Signed', NULL, '2024-12-25 13:51:51'),
(1046, 'Kanchupati Sham Sudheer', 'Adhaar Card', '4029 2126 1299', '7013184730', 'g63251221@gmail.com  ', 'Kanchupat Sham Sudheer\r\nSIO Abraham,\r\n3/183-42B,\r\nTILAK NAGR,\r\nVTC: Cuddapah,\r\nDistrict: Cuddapah,\r\nState: Andhra Pradesh,\r\nPIN Code: 516002,', '7013184730', 1, 0, 0, 'Not Signed', NULL, '2024-12-25 15:58:00'),
(1047, 'Md Sabir Hussain ', 'Adhaar Card', '2541 1158 9102', '8860241171', 'faisalrajjaq@gmail.com', 'C/O: Istekhar Hussain, Naya Tola, Pakija Gali, Ward No-21, Phulwari, PO: Phulwarisharif, DIST: Patna, Bihar - 801505', '8860241171', 1, 1, 1, 'uploads/signatures/4738d3352b58b56920874e6f2264d52e.jpg', '2024-12-27 00:00:00', '2024-12-26 08:51:40'),
(1048, 'T PRASHANTH KUMAR', 'Adhaar Card', 'TS10720230015096', '8019228991', 'prashanthkumar7369@gmail.com', '3-4-588/1 ROAD NO 2,\r\nSRI BALAJI NAGAR,\r\nMANSOORABAD, SAROORNAGAR, RANGA REDDY - 500068', '8019228991', 1, 0, 0, 'Not Signed', NULL, '2024-12-26 12:11:50'),
(1049, 'Bibi Aysha Kakar', 'Adhaar Card', '7508 6897 3708', '8088802352', 'ayeeshabibiayeesha563@gmail.com', 'Kakar Building,\r\n1st Cross Line Bazaar,\r\nVTC: Dharwad, PO: Dharwad\r\nSub District: Hubli, District: Dharwad\r\nState: Karnataka, PIN Code: 580001', '8088802352', 1, 0, 0, 'Not Signed', NULL, '2024-12-26 12:14:19'),
(1050, 'Padala Sai Kumar', 'Adhaar Card', '6580 1082 1974', '7989166979', 'padalasaikumar2001@gmail.com', 'S/O Sankara Rao, 20-79/1, dabbi veedhi,\r\n?andigam road, salur, Salúr, Vizianagaram,\r\nP Andhra Pradesh - 535591', '7989166979', 1, 0, 0, 'Not Signed', NULL, '2024-12-26 12:15:27'),
(1051, 'Ritik Kumar ', 'Adhaar Card', '3777 3518 0897', '6205771216', 'Kreetik430@gmail.com', 'S/O: Arun Sah, WARD NO-04, CHHOTI BALLIA UPPER TOLA, NAGAR PANCHAYAT BALLIA, CHHOTI BALLIA, Balia, Begusarai, Bihar-851211', '6205771216', 1, 0, 0, 'Not Signed', NULL, '2024-12-26 12:32:42'),
(1052, 'Mithinga Basumatary', 'Adhaar Card', '6660 8228 9123', '9864617172', 'mithingabasu000@gmail.com', 'C/O: Binad Basumatary, \r\nManikpur, Simen Chapori, Dhemaji, \r\nAssam., 787061', '9864617172', 1, 0, 0, 'Not Signed', NULL, '2024-12-26 12:34:11'),
(1053, 'Uddhab Baruah ', 'Adhaar Card', '7906 3663 9557', '7086747769', 'uddhabuddhab43@gmail.com', 'C/O: Kabita Baruah,\r\nVill Barjalah,\r\nVTC: Chamuapara, PO: Tangla,\r\nSub District: Harisinga, District: Udalguri,\r\nState: Assam, PIN Code: 784521', '7086747769', 1, 0, 1, 'uploads/signatures/4164e3809a37fbc195838dc1df48ad49.jpg', '2024-12-26 00:00:00', '2024-12-26 12:37:03'),
(1054, 'Sakshi Wilson Adhav', 'Adhaar Card', '9040 3364 1046', '8591150519', 'adhavsakshi1013@gmail.com', 'C/O: Wilson Adhav,\r\nBldg No.2, Room No.703.,\r\nSuswagatam Nagar Housing Society, Postal Colony,\r\nChembur,\r\nVTC: Mumbai,\r\nPO: Chembur,\r\nSub District: Kurla,\r\nDistrict: Mumbai Suburban,\r\nState: Maharashtra,\r\nPIN Code: 400071.', '8591150519', 1, 0, 1, 'uploads/signatures/cd1375da51755d0dd9828f7f0292e145.jpg', '2024-12-27 00:00:00', '2024-12-27 05:41:59'),
(1055, 'Pranshu Soni', 'Adhaar Card', '3315 2430 0155', '8574852719', 'pranshus699@gmail.com', 'S/O: Guddu Soni, devin tola, Sarai Meera (Anshik), Kannauj, Uttar Pradesh - 209725', '8574852719', 1, 24, 1, 'uploads/signatures/e0723dcfabc0fdc464223c4c23386f0f.jpg', '2024-12-27 00:00:00', '2024-12-27 05:43:59'),
(1056, 'Venkatesh K', 'Adhaar Card', '7752 7152 3174 ', '9655818254', 'venkat.shadow243@gmail.com', 'S/O: Kesavan\r\n1/735 B, Bharath Nagar,\r\nThiruvalluvar Salai,\r\nPoolangudy Colony,\r\nVTC: Palanganangudy,\r\nPO: HAPF Township,\r\nSub District: Thiruverumbur,\r\nDistrict: Tiruchirappalli,\r\nState: Tamil Nadu,\r\nPIN Code: 620025', '9655818254', 1, 4, 1, 'uploads/signatures/7d6fb03dccd5a5f2c891bae8f68ca90c.jpg', '2024-12-27 00:00:00', '2024-12-27 06:21:57'),
(1057, 'Kashish Ramprasad Sarkar ', 'Adhaar Card', '2865 7645 8871', '9307423107', 'kashishsarkar2004@gmail.com', 'D/O: Ramprasad Sarkar, bhiwapur prantik colony, Chandrapur, PO: Chandrapur, DIST: Chandrapur, Maharashtra - 442401', '9307423107', 1, 73, 1, 'uploads/signatures/2457c9a6caf8658f1ee0f75f94fa43b8.jpg', '2024-12-27 00:00:00', '2024-12-27 06:39:29'),
(1058, 'Himanshu Verma', 'Adhaar Card', '4892 3218 00098', '6390297386', 'hv8308473@gmail.com', 'S/O: Gauri Shankar Verma, village- bakhira, mangal bazar, Bakhira Urf Bag Nagar, PO: Bakhira, DIST: Sant Kabir Nagar, Uttar Pradesh - 272199\r\n', '6390297386', 1, 105, 1, 'uploads/signatures/6ca5f09214eb202e48b8163908c044a6.jpg', '2024-12-28 00:00:00', '2024-12-28 04:15:14'),
(1059, 'Garima Sharma ', 'Adhaar Card', '5459 9699 2074', '7819886132', 'gs6833002@gmail.com', 'D/O: Rahul Sharma, Bhattipura, Meerut, Uttar Pradesh - 250001\r\n', '7819886132', 1, 42, 1, 'uploads/signatures/f1453b8b07d3e48ce6b5b612ab221c63.jpg', '2024-12-28 00:00:00', '2024-12-28 05:09:34'),
(1060, 'Laxmi Kumari ', 'Adhaar Card', '4327 3751 9471', '8887659995', 'kumarilaxmi55977@gmail.com', 'D/O: Satyanarayan, Taranpur, Mugalsarai,\r\nChandauli,\r\nUttar Pradesh - 232101', '8887659995', 1, 7, 1, 'uploads/signatures/ddda03ee289b4e749b3e10531657a711.jpg', '2024-12-28 00:00:00', '2024-12-28 05:12:28'),
(1061, 'Arun Jayapal', 'Adhaar Card', '6433 6022 8069', '9965416527', 'arunjjss7@gmail.com', 'S/O: Jayapal, 289/5, KARUMARIYAMMAN STREET, Athivakkam, Attuputhur, Kancheepuram, Tamil Nadu, 631561', '9965416527', 1, 0, 0, 'Not Signed', NULL, '2024-12-28 05:21:42'),
(1062, 'Divya', 'Adhaar Card', '9708 2421 9537', '8870196998', 'divyakumari7596@gmail.com', '229, NORTH STREET, Palur, Cuddalore, Tamil Nadu - 607102\r\n', '8870196998', 1, 78, 1, 'uploads/signatures/4458a017489720876a95a4565dafb020.jpg', '2024-12-28 00:00:00', '2024-12-28 05:23:50'),
(1063, 'Anil', 'Adhaar Card', '3496 2586 8927', '8106451230', 'anilnikitha44@gmail.com', 'H NO 6-13/1 BUDAMAGONDA TANDA\r\nGUNDIYAL POST HANWADA MANDAL\r\nGundiyal\r\nGundiyal\r\nMahabub Nagar\r\nAndhra Pradesh 509334\r\n', '8106451230', 1, 711, 1, 'uploads/signatures/d491fe7f7dd448ccbf94dfb19d1fb456.jpg', '2024-12-28 00:00:00', '2024-12-28 05:25:51'),
(1064, 'Prajwal Kutni', 'Adhaar Card', '232157759635', '9482577336', 'prajwalkutni143@email.com', 'O Basavaraj - - Kundgol Kundgol Mouneshwar Plot Kalidas Nagar Dharwad Kundgol Karnataka 581113', '9482577336', 1, 0, 0, 'Not Signed', NULL, '2024-12-28 06:08:32'),
(1065, 'Rashi Varshney ', 'Adhaar Card', '8398 8687 5304', '7017646529', 'rashivarshney912@gmail.com', 'D/O Tapish Kumar Gupta, M.N. 143 CHHIPETI BAZAR, Koil, Aligarh, Uttar Pradesh, 202001\r\n', '7017646529', 1, 0, 1, 'uploads/signatures/a49273154983f58662412d816007944f.jpg', '2024-12-29 00:00:00', '2024-12-28 09:03:16'),
(1066, 'Mittapally Manasa', 'Adhaar Card', '2124 3968 3703', '7989929475', 'mittapallymanasa96@gmail.com', 'D/O: Rajamouli\r\n1-107\r\nNamsanipalle\r\nKolanur\r\nOdela Karimnagar\r\nTelangana 505162\r\n9652944193\r\n', '7989929475', 1, 0, 0, 'Not Signed', NULL, '2024-12-28 09:05:12'),
(1067, 'Pavithra Manimaran', 'Adhaar Card', '4788 4487 4455', '9482373375', 'apnaonlinevyapar@gmail.com', 'W/O Dineshram K.\r\n2/57, Renuga Devi Kovil Big Street,\r\nAthipalayam,\r\nVTC: Coimbatore North, PO: Athipalayam,\r\nDistrict: Coimbatore,\r\nState: Tamil Nadu, PIN Code: 641110,\r\nMobile: 9150963068\r\n', '9482373375', 1, 1, 1, 'uploads/signatures/4ebddf9263f399169d2b1fb6cd0fcecf.png', '2024-08-11 00:00:00', '2024-12-28 10:01:25'),
(1068, 'Bharath Hegde', 'Adhaar Card', '4767 7415 3159', '63621', 'bharathhegade55@gmail.com', 'TEGINAMAKKI. 152,\r\nTHENGINA MAKKI,\r\nHENGAVALLI,\r\nKUNDAPURA-TALUK,\r\nVTC: Hengaval, PO: Hengavalli,\r\nDistrict: Udupi,\r\nState: Kamataka, PIN Code: 576212,\r\n22150603\r\nMoblle: 8971893065', '63621', 1, 2, 1, 'uploads/signatures/d7289722a668117dd3e10e72c4338c42.jpg', '2024-12-28 00:00:00', '2024-12-28 12:45:15'),
(1069, 'Pradeep Singh Chudawat', 'Adhaar Card', '9284 4948 5632', '98874', 'Pradeep.chundawat@gmail.com', 'Sumer Singh Chundawat, 40 New B.J.S Colony, Bayana House, Near Kalyan Singh Kalvi Bus Stand, New B.J.S Colony, Jodhpur, Rajasthan, 342006', '98874', 1, 2, 1, 'uploads/signatures/aa54d2585b746df7a6052a4544e3a083.jpg', '2024-12-29 00:00:00', '2024-12-29 07:31:20'),
(1070, 'Deep Chanda', 'Adhaar Card', '7710 5010 9499', '8822130025', 'deepchanda742@gmail.com', 'C/O: Chandan Chanda\r\nKALIGANJ BAZAR\r\nKhagkandi\r\nKarimganj, Assam - 788720\r\n', '8822130025', 1, 11, 1, 'uploads/signatures/e80ba04d7b55a572cbde7d88f59312b6.jpg', '2024-12-29 00:00:00', '2024-12-29 08:06:06'),
(1071, 'Naveen Ravi ', 'Adhaar Card', '4580 6410 2498', '9790812638', 'd03796140@gmail.com', 'S/O Ravi, 7/194, PERUMAPALAYAM COLONY, MUTHUGAPATTY, Muthugapatti, Namakkal, Tamil Nadu, 637405', '9790812638', 1, 0, 0, 'Not Signed', NULL, '2024-12-29 08:07:53'),
(1072, 'KOTESWARA RAO SAMAREDDI VENKANNA SAMAREDDI', 'Election Card', 'DLEPS6649B', '9391438005', 'Koteswarsree@gmail.com', 'Munchingiput put (vi)\r\nMunchingiput (mandal)\r\nAlluriseetharamaraju (di)\r\nAndhra pradesh \r\n531040', '9391438005', 1, 608, 1, 'uploads/signatures/bac95b9f8b924bdaf33beb010803fb16.jpg', '2024-12-30 00:00:00', '2024-12-29 08:24:34'),
(1073, 'Haresh ', 'Adhaar Card', '6959 4071 6827', '8273795406', 'hareshkumar410@gmail.co', 'S/O Dabal Singh, 25/79, naya bans loha mandi, loha mandi, AGRA, Agra, Uttar Pradesh - 282002', '8273795406', 1, 0, 0, 'Not Signed', NULL, '2024-12-29 08:27:11'),
(1074, 'Chandresh Kumar ', 'Adhaar Card', '5784 5198 7336', '9919087374', 'ckv5840@gmail.com', 'S/O Jagdeesh Prasad, jagdeesh nagar basaudhi, post pure kamgar, Patranga, Faizabad, Uttar Pradesh - 225408\r\n', '9919087374', 1, 0, 0, 'Not Signed', NULL, '2024-12-29 08:45:07'),
(1075, 'Harshita Kushwah', 'Adhaar Card', '9682 2835 8915', '8817142316', 'kharshita261@gmail.com', 'C/O Rajendra Kushawah, 07, subhash colony,\r\nsemra, Huzur, Bhopal,\r\nMadhya Pradesh - 462010\r\n', '8817142316', 1, 0, 0, 'Not Signed', NULL, '2024-12-29 08:58:50'),
(1076, 'Veramalla Veera Venkata Lakshmi Sudheer', 'Adhaar Card', '7711 3489 5532', '8885406282', 'sudheerveramalla2006@gmail.com', 'Veeramala Gangadhara Ramu\r\nH NO 4-44\r\nPasuvula Hospital Daggara, Undrajavaram Mandalam\r\nVTC: Velivennu,\r\nDistrict: West Godavari\r\nState: Andhra Pradesh,\r\nPIN Code: 534329', '8885406282', 1, 0, 0, 'Not Signed', NULL, '2024-12-29 10:34:21'),
(1077, 'Chonduri Lalitha', 'Adhaar Card', '4093 5029 1276', '9182997586', 'Email id_lalliroyal06968@gmail.com', 'Srinivasulu, 6-18-a, Bachanapall,\r\nBachanapall, Vanavolu, DIST: Anantapur,\r\n#Andhra Pradesh- 515231', '9182997586', 1, 700, 1, 'uploads/signatures/a181a30c4591f6ca2db571a4a28047b4.jpeg', '2024-12-29 00:00:00', '2024-12-29 11:04:02'),
(1078, 'JAYASHREE VITTHAL PAWAR', 'Driving License', 'MH19 20240013423', '9552785029', 'jayashreepawar9834@gmail.com', 'PLOT NO.6 BLOCK NO. 1 SUDATTA COLONY JALGAON Jalgaon,MH\r\n425001', '9552785029', 1, 129, 1, 'uploads/signatures/29395f9207bde9160762b34967cd37c3.jpg', '2024-12-29 00:00:00', '2024-12-29 11:05:42'),
(1079, 'RAKHI KUMARI', 'Adhaar Card', 'ML05 2022 0008153', '6009227462', 'rs7053897@gmail.com', 'GOLFLINK PDENGSHNONG,\r\nMyliem.East Khasi HiL.ML,793001', '6009227462', 1, 0, 0, 'Not Signed', NULL, '2024-12-29 11:11:01'),
(1080, 'Mritunjoy Sarma', 'Adhaar Card', '3565 0119 0327', '6026799371', 'mritunjaysarma9@gmail.com', 'Tapan Chandra Sarma, 2, Natun\r\nPath, Hatigaon, Hatigaon Chariali,\r\nKamrup Metro, Assam - 781038', '6026799371', 1, 55, 1, 'uploads/signatures/d247e5194d97ec42c269a3b5751ec304.jpg', '2024-12-30 00:00:00', '2024-12-29 11:25:50'),
(1081, 'Mrityunjoy Sarma', 'Adhaar Card', '3565 0119 0327', '6026799371', 'mritunjaysarma9@gmail.com', 'S/O: Tapan Chandra Sarma, 2, Natun Path, Hatigaon, Hatigaon Chariali, Kamrup Metro, Assam - 781038', '6026799371', 1, 55, 0, 'Not Signed', NULL, '2024-12-29 12:06:30'),
(1082, 'Shaikh Alfiyabanu', 'Adhaar Card', '4414 9142 5703', '7041832932', 'alfushaikh344@gmail.com', 'Beldarwad\r\nChand Dalal No Dahelo\r\nShahpur\r\nAhmedabad City\r\nAhmedabad, Gujarat - 380001\r\n', '7041832932', 1, 700, 1, 'uploads/signatures/e07c73b14c0ef1b2fce330697ebed160.jpg', '2024-12-29 00:00:00', '2024-12-29 12:08:55'),
(1083, 'Runjhun Khandelwal', 'Adhaar Card', '8070 5342 7860', '9799963107', 'runjhunkhandelwal2@gmail.com', 'D/O Naveen Khandelwal, JASORIA BHAWAN, PRATAP BAS, Alwar, Alwar, Rajasthan - 301001', '9799963107', 1, 0, 0, 'Not Signed', NULL, '2024-12-29 12:49:07'),
(1084, 'D harshita', 'Driving License', 'TN09 20230008998', '7418920514', 'mmonisha6554@gmail.com', 'NO 23 NAGAINAMMAN KOVIL STREET EIN\r\nASHOKNAGARCHENNALTN 600083', '7418920514', 1, 0, 0, 'Not Signed', NULL, '2024-12-29 12:55:26'),
(1085, 'Narakatla Vamsi Kumar', 'Adhaar Card', '9312 4415 4902', '7396450730', 'salaarsaga@gmail.com', 'SO Penchalaiah 4/106-4 kotha bazar Flailway Kodur Kodur, Cuddapah, Andhra Pradesh-516101', '7396450730', 1, 700, 1, 'uploads/signatures/d6271e2fc981a4e506fbac93708f6c45.jpg', '2024-12-30 00:00:00', '2024-12-30 05:11:27'),
(1086, 'Sujith Pomman', 'Adhaar Card', '9226 1934 5980', '9037020086', 'sujithpomman@gmail.com', 'S/O: Dasan P, Pomman House, Thanikkal, Kodur, Malappuram, Kerala 676504', '9037020086', 1, 390, 1, 'uploads/signatures/9493f05349889094494dddfb69db1c7b.jpg', '2024-12-30 00:00:00', '2024-12-30 05:12:26'),
(1087, 'JAVVAJI VAMSHI', 'Adhaar Card', '5050 3450 2614', '9951910519', 'javajivamshi128@gmail.com', 'JAWAJI VAMSHI C-421. MADGUL MANDAL, VTC: Irwin, PO: Irwin, Sub District: Madgul, District: Mahabubnagar, State: Telangana, PIN Code: 509321,', '9951910519', 1, 0, 0, 'Not Signed', NULL, '2024-12-30 05:13:41'),
(1088, 'Rahul Singh Chundawat', 'Adhaar Card', '9963 4384 0210', '9351878793', 'rs0319038@gmail.com', 'S/O: Maan Singh Chundawat, rajkiy ucch\r\nprathmik school k pas, Shobhji Ka Khera, PO:\r\nSalera Kalan, DIST: Udaipur, Rajasthan - 313201', '9351878793', 1, 559, 1, 'uploads/signatures/a3d6ca60e5aea944b09c58452e5a708c.jpg', '2024-12-30 00:00:00', '2024-12-30 05:14:45'),
(1089, 'Saravanakumar', 'Adhaar Card', '4878 2746 8619', '9361011814', 'kssaravana54@gmail.com', 'S/O: Selvaraj, 14/65, KOTTAPALAYAM ROAD, Vattamalai, PO: Udhiyur, DIST: Tiruppur.\r\nTamil Nadu-638703', '9361011814', 1, 0, 1, 'uploads/signatures/bdbbbfb02efecac41a8db985b21034fe.jpg', '2024-12-30 00:00:00', '2024-12-30 05:59:40'),
(1090, 'Gagana K M', 'Adhaar Card', '8662 7400 0902', '8123487723', 'gaganasanju5@gmail.com', 'Address: D/O KS Manjunath, lakshmi Devi Devastated rasthe, Koodanahalli Grama, Varuna Hobli someshwarapura post, Koodanahalli, PO:, DIST:Mysore, Karnataka, 571311', '8123487723', 1, 84, 1, 'uploads/signatures/247716aaeab5c918348fef00a8c2563f.jpg', '2024-12-30 00:00:00', '2024-12-30 07:02:31'),
(1091, 'Rajkishore Nayak', 'Adhaar Card', '3886 9330 8413', '7735701074', 'nayakrajkishore27@gmail.com', 'S/O Niranjan Nayak, Tunga, Kendrapara, Orissa-754219', '7735701074', 1, 0, 0, 'Not Signed', NULL, '2024-12-30 07:03:49'),
(1092, 'Sakib Ansari', 'Adhaar Card', '4072 5718 8034', '9639990157', 'Khalidansari000000000000@gmail.com', 'S/O Khalid Ansari, 00, 00, new basti mustfabad, Kandhala Rural, Shamli, Uttar Pradesh - 247775', '9639990157', 1, 1, 1, 'uploads/signatures/ac18e2aeb53b74b3ca98de0bd6ed01f3.jpg', '2024-12-30 00:00:00', '2024-12-30 07:04:46'),
(1093, 'Asha J', 'Adhaar Card', '4982 4180 1231', '8296141685', 'vijiashu2547@gmail.com', 'Asha J\r\nD/O: Vijaya\r\n82,New No-424\r\n3rd Cross\r\nOpp Balvad Vidyalaya\r\nDevara Beesana Halli\r\nBellandur\r\nBangalore Kamataka - 560103\r\n8548855947', '8296141685', 1, 524, 1, 'uploads/signatures/60df9a628a58d71026ecaf350e89631c.jpg', '2025-01-06 00:00:00', '2024-12-30 10:50:59'),
(1094, 'Lala Ram Gena', 'Adhaar Card', '3650 7837 3451', '6375856322', 'lalaramgena123@gmail.com', 'S/O Bajrang Lal Gena, khokhari mod, ,\r\nBaldoo, Nagaur,\r\nRajasthan - 341316', '6375856322', 1, 0, 0, 'Not Signed', NULL, '2024-12-30 10:52:48'),
(1095, 'Zoya Ambar', 'Adhaar Card', '6534 1459 1194', '9666330057', 'zoyaambaar@gmail.com', 'C/O: Md Asif Uddin, 10-51/4/B, Bommakal,\r\nSFS Garden, Karimnagar, Karimnagar,\r\nTelangana -505001', '9666330057', 1, 0, 0, 'Not Signed', NULL, '2024-12-30 10:53:56'),
(1096, 'Rakshita', 'Adhaar Card', '7534 8640 1264', '7989327519', 'raksh.itaa2728@gmail.com', 'C/O: Pavan Kishore,\r\n15-6-190/1/1,\r\nKolsawadi,\r\nBegum Bazar,\r\nVTC: Nampally,\r\nPO: Begumbazar,\r\nSub District: Nampally.\r\nDistrict: Hyderabad,\r\nState: Telangana,\r\nPIN Code: 500012,\r\nMobile: 9290985005', '7989327519', 1, 6, 1, 'uploads/signatures/cabc9a9e039669c73dc74757fc3496bd.jpeg', '2024-12-30 00:00:00', '2024-12-30 10:55:01'),
(1097, 'Thumma Keerthi', 'Adhaar Card', '2024 5421 0881', '8247351540', 'kiterestu09@gmail.com', 'DO Mary Sujatha T, H NO 2-111/2\r\nHIIMAGIRINAGAR COLONY, BANDLAGUDA\r\nROAD, RAJENDRA NAGAR,\r\nHYDE RABAD, Rangaredd,\r\nAndhra Pradesh- 500048', '8247351540', 1, 104, 1, 'uploads/signatures/d16140862b1fa30f0198fee9b4d70fa6.jpg', '2024-12-30 00:00:00', '2024-12-30 10:56:21'),
(1098, 'Harsh kumar kakda', 'Select Id Type', '8995 4450 9736', '9010333335', 'harshkakda@gmail.com', 'C/O: Rajender Kumar Kakda\r\nHanuman Sadan, 14-2-179/I And J,\r\nHari Om Colony, Khufianaka\r\nShahiniyatgunj, begum bajar, Nampally\r\nHyderabad, Telangana, 500012', '9010333335', 1, 0, 0, 'Not Signed', NULL, '2024-12-30 10:58:00'),
(1099, 'Mustafa Bohra', 'Adhaar Card', '6350 9283 9891', '9672864252', 'Mustafaghati@gmail.com', 'S/0 Asgar Ali Bohra, sultaniye road\r\nyadav mohalla, Bhinder. Udaipur.\r\nRajasthan -313603', '9672864252', 1, 421, 1, 'uploads/signatures/93be2eeb34a9bdc80958f0a8a309869e.jpg', '2024-12-30 00:00:00', '2024-12-30 10:59:46'),
(1100, 'Harshita', 'Adhaar Card', '3249 6186 4264', '9354015625', 'sonih3270@gmail.com', 'DIO: Ram Avlar. House NO-\r\n304/2. Ward NO-5 Gali nO1.New Adarsh\r\nColony. Palwal, Palwal, Haryana. 121102', '9354015625', 1, 260, 1, 'uploads/signatures/5ae22c628188264675662a70fa812cca.jpg', '2024-12-30 00:00:00', '2024-12-30 11:01:22'),
(1101, 'Azmat Ali', 'Adhaar Card', '3947 2766 9872', '9870845043', 'graphicsali7@gmail.com', 'Sakhawat Ali, 23/136, Wazirpura, Agra,\r\n9 PO: Agra Fort, DIST: Agra,\r\nButar Pradesh - 282003', '9870845043', 1, 1, 1, 'uploads/signatures/eed57fb15ad426ebecdd70be2c2ba4c9.jpg', '2024-12-30 00:00:00', '2024-12-30 11:02:31'),
(1102, 'Shivani ', 'Adhaar Card', '6080 0891 5138', '8929049906', 'shivanikatheriya646@gmail.com', 'C/O Sonu Kumar, House No 912,\r\nIndergarh, Tirwa, Ban Gawan, Kannauj,\r\nUttar Pradesh - 209728', '8929049906', 1, 47, 1, 'uploads/signatures/3fd1f2b99d496d151e6af53cab4b2b32.jpg', '2024-12-30 00:00:00', '2024-12-30 12:15:32'),
(1103, 'Garima Yadav', 'Adhaar Card', '6064 4399 2291', '7678806514', 'ygarima864@gmail.com', 'D/O: Brijesh Yadav, gram sugauti post maharajganj, Maharaj Ganj, PO: Maharaj Ganj, DIST: Azamgarh, Uttar Pradesh - 276137\r\n', '7678806514', 1, 10, 1, 'uploads/signatures/ff8a020f64c40e8c05d52efca9324316.jpg', '2024-12-31 00:00:00', '2024-12-31 04:53:39'),
(1104, 'Prathamesh Raju Kadam', 'Adhaar Card', '7288 0983 2564', '7620877881', 'prathameshrkadam664@gmail.com', 'at dudhgaon post gomghar taluka\r\nMokhada, Gomghar, Palghar,\r\nMokhada, Maharashtra, 401604\r\n', '7620877881', 1, 55, 1, 'uploads/signatures/0e7e28216885d3848847fdd34ff66b46.jpeg', '2024-12-31 00:00:00', '2024-12-31 04:55:46'),
(1105, 'Mohammad Rehaan ', 'Adhaar Card', '5672 6470 4760', '6300676433', 'mdrehan70866@gmail.com', 'S/O Mohammad Haneef, 3-1-56/40/3/40, brahmapuri Colony, meena Nagar, mallapur, kaapra, DIST: Rangareddi, Andhra Pradesh - 500076', '6300676433', 1, 145, 1, 'uploads/signatures/e614e35db7505719fb1076017c6087a5.jpg', '2024-12-31 00:00:00', '2024-12-31 04:57:44'),
(1106, 'Simi Mariya ', 'Adhaar Card', '5373 0368 8650', '7907116061', 'simimariyaantonyk@gmail.com', 'D/O: Antony, Kanjirathingal House, Karoor P.O., Vellanchira Junction, Alur, Thrissur, Karur, Kerala, 680697', '7907116061', 1, 450, 1, 'uploads/signatures/b851dd777ff762e4cfd8ade0c9950f4f.jpg', '2024-12-31 00:00:00', '2024-12-31 05:00:20'),
(1107, 'Arpan Dutta ', 'Adhaar Card', '268366633432', '6291360986', 'iarpandutta2003@gmail.com', 'C/O: Anit Dutta,\r\n21/B/222,\r\nDJ B LANE,\r\nRAM SHOP,\r\nKONNAGAR,\r\nVTC: Konnagar, PO: Konnagar,\r\nSub District: Serampur Uttarpara, District: Hooghly,\r\nState: West Bengal, PIN Code: 712235', '6291360986', 1, 0, 0, 'Not Signed', NULL, '2024-12-31 05:01:57'),
(1108, 'Samsad Alam ', 'Election Card', 'RPG1868280', '8617661563', 'khanplay321@gmail.com', '0050, HEMTABAD (DAKSHINANGSHA),\r\nHEMTABAD, HEMTABAD, UTTAR\r\nDINAJPUR-733144', '8617661563', 1, 297, 1, 'uploads/signatures/ea336c2aa91e09af08d2a351cc37c77b.jpg', '2024-12-31 00:00:00', '2024-12-31 05:04:19'),
(1109, 'Mohammed Aabid ', 'Adhaar Card', '6329 0489 3721', '8271114627', 'mohdaabid830@gimal.com', 'S/O: Mohammad Khalik, farsatar, farsatar, belthraroad, Farsatar, Ballia, Farsatar, Uttar Pradesh, 221715', '8271114627', 1, 0, 0, 'Not Signed', NULL, '2024-12-31 05:06:25'),
(1110, 'Chandana Gopalkrishna Bhat', 'Adhaar Card', '6302 8195 1206', '8553141154', 'bhatcchandu@gmail.com', '269 Tingalbail, Post Hillur, Ankola Taluk, Uttara Kannada District, Hillur, PO: Hillur, DIST: Uttara Kannada, Karnataka - 581344\r\n', '8553141154', 1, 49, 1, 'uploads/signatures/4ecbbd466e13cd4e35d6eb945d138e15.png', '2024-12-31 00:00:00', '2024-12-31 05:08:56'),
(1111, 'Shaik Parveen', 'Adhaar Card', '8841 1707 2029', '9063617462', 'parvernparveen06@gmail.com', 'D/O Illiaz,\r\n12-12-33,\r\npanduranga peta,\r\nVTC: Tenali,\r\nDistrict: Guntur,\r\nState: Andhra Pradesh,\r\nPIN Code: 522201', '9063617462', 1, 0, 0, 'Not Signed', NULL, '2024-12-31 05:10:47'),
(1112, 'Jayesh Vishwakarma ', 'Select Id Type', 'BSUPV6760M', '8907777723', 'jayeshvishwakarma777@gmail.com', 'Room No. 129, Indira Nagar, Andheri Kurla Road, Kurla West, Mumbai, Maharashtra 400072', '8907777723', 1, 0, 0, 'Not Signed', NULL, '2024-12-31 05:42:51'),
(1113, 'Shaikh Nazeer Basha', 'Driving License', 'APO2620240002590', '8639824128', 'nazeerbashask1432@gmail.com', '28/8/698 JANARDHAN REDDY COLONY,\r\nBARMASHAL GUNTA VENKATESWARA PURAM,\r\nNELLORE ANDHRA PRADESH, 524001\r\n', '8639824128', 1, 5, 1, 'uploads/signatures/ade96b77f1922465856aef7bc540253d.jpg', '2024-12-31 00:00:00', '2024-12-31 05:47:10'),
(1114, 'Nutan', 'Adhaar Card', '8866 3451 8575', '8938824512', 'bhandarinootan8@gmail.com', 'D/O: Naveen Bhandari, Khwir, Village - Khwir, Kapholsyun, Khwir, Pauri Garhwal, Uttarakhand, 246176\r\n', '8938824512', 1, 0, 0, 'Not Signed', NULL, '2024-12-31 06:10:42'),
(1115, 'Anand Kumar Singh', 'Adhaar Card', '3500 0044 3571', '7388118255', 'kumaranand1631@gmail.com', 'S/O Ram Bharos Singh, Ulhopur, Adalhat, Ulhopur, Mirzapur, Uttar Pradesh - 231302', '7388118255', 1, 0, 0, 'Not Signed', NULL, '2024-12-31 07:08:07'),
(1116, 'Abhishek Dubey ', 'Adhaar Card', '5337 7944 4080', '9265672724', 'abhishekdubey565678@gmail.com', 'S/O: Pawan Kumar Dubey, nandekunwan, nandekunwan, Nande Kwanw, Basti, Uttar Pradesh - 272128\r\n', '9265672724', 1, 0, 0, 'Not Signed', NULL, '2024-12-31 07:22:53'),
(1117, 'Paidiwala Hemavarshini', 'Adhaar Card', '7816 8669 1386', '77029', 'paidiwadah@gmail.com', '9-9-47/21, Balaram Nagar, Sivaji Palem, VTC: Visakhapatnam (Urban), PO: LB Colony, Sub District: Visakhapatnam (Urban), District: Visakhapatnam, State: Andhra Pradesh, PIN Code: 530017.\r\n', '77029', 1, 2, 1, 'uploads/signatures/762b1ba90bb3886ba057cd7d70a311f5.jpg', '2024-12-31 00:00:00', '2024-12-31 07:57:40'),
(1118, 'Ramesh ', 'Adhaar Card', '4685 0071 0468', '7665319246', 'rj824969@gmail.com', 'S/O: Sewat Ram, popawas,\r\nJODHPUR, Popawas, Jodhpur,\r\nPopawas, Rajasthan, 342024\r\n', '7665319246', 1, 10, 1, 'uploads/signatures/874e99de83cb64afd92b3fddc77445c2.jpg', '2024-12-31 00:00:00', '2024-12-31 08:37:34'),
(1119, 'Vikram Singh Rathore ', 'Adhaar Card', '8904 7390 2299', '9027822516', 'vikramsingh9027822516@gmail.com', 'MOH. MAHADEV, SHIV MANDIR KE PASS, MOH. MAHADEV, FARIDPUR, FARIDPUR, Bareilly, Uttar Pradesh - 243503', '9027822516', 1, 377, 1, 'uploads/signatures/8e709715a937eca237f35f7ccb6d426b.jpg', '2024-12-31 00:00:00', '2024-12-31 08:39:10'),
(1120, 'Prachi ', 'Adhaar Card', '7047 9959 8717', '9990450467', 'aaryaprachu@gmail.com', 'Raj Kumar, 1/136, SECTOR-1, KAMNA VAISHALI, I.E. Sahibabad, Ghaziabad, Uttar Pradesh - 201010\r\n', '9990450467', 1, 310, 1, 'uploads/signatures/b2fbaa83e57eb71609831090f6a261f6.jpg', '2024-12-31 00:00:00', '2024-12-31 09:19:53'),
(1121, 'Gopinathan R', 'Adhaar Card', '9418 9302 9365', '6380683805', 'gn516423@gmail.com', 'S/O Ramu, NO 178, KAMUTHAKUDI, KAMUTHAKUDI, PARAMAKUDI, Kamuthnakudi, PO:Kamudakudi, DIST: Ramanathapuram, Tamil Nadu, 623707', '6380683805', 1, 145, 1, 'uploads/signatures/637f166c23cb524e53bc8af4cfb75535.jpg', '2024-12-31 00:00:00', '2024-12-31 10:20:02'),
(1122, 'Prathamesh Sanjay Makwane', 'Adhaar Card', '4918 2488 1604', '8329711226', 'prathmeshmakwane786@gmail.com', 'S/O: Sanjay Makwane,\r\nMatakhidki Road,\r\nNear Maroti Temple,\r\nAmba Gate, patvipura,\r\nVTC: Amravati,\r\nPO: Amravati,\r\nSub District: Amravati,\r\nDistrict: Amravati,\r\nState: Maharashtra,\r\nPIN Code: 444601.\r\n', '8329711226', 1, 126, 1, 'uploads/signatures/23f3c9b5565f81df859163adf8cbedb2.jpg', '2024-12-31 00:00:00', '2024-12-31 10:22:33'),
(1123, 'Akash Saha', 'Adhaar Card', '9391 9115 9228', '6291751214', 'akashsaha012345@gmail.com', 'DWADASH SHIB MANDIR LANE, NABADWIP, -WARDNO 9, Nabadwip, Nadia, West Bengal, 741302', '6291751214', 1, 44, 1, 'uploads/signatures/6e7d399fbe7073c5490299d2b46679a7.jpg', '2024-12-31 00:00:00', '2024-12-31 10:26:27');
INSERT INTO `tbl_member` (`member_id`, `member_name`, `member_id_type`, `member_id_number`, `member_contact`, `member_email`, `member_address`, `member_pass`, `member_status`, `completed_form`, `agreement_status`, `agreement_sign`, `agreement_date`, `added_on`) VALUES
(1124, 'Kotakonda Gowtham ', 'Adhaar Card', '5897 5481 6510', '7997707882', 'K.gowtham8522@gmail.com', 'House No.: 2-18  Locality: PAYALA vari palli Village/Town: STAND MANDALAM VTC: Irikipenta PO: Irikipenta Sub-District: Somala District: Chittoor State: Andhra Pradesh PIN Code: 517257', '7997707882', 1, 11, 1, 'uploads/signatures/3349cb4d3c7fd4446072e477b60028c4.jpg', '2024-12-31 00:00:00', '2024-12-31 10:38:01'),
(1125, 'Revathy R', 'Adhaar Card', '7842 8555 1124', '7736083599', 'revathydevu372405@gmail.com', 'D/O: Sasidharan\r\nKunnamvilaveedu\r\nNalloorvattam\r\nKulathoor\r\nThiruvananthapuram Kerala - 695122\r\n', '7736083599', 1, 366, 1, 'uploads/signatures/46b84c94d49e16147227721b1c355688.jpg', '2024-12-31 00:00:00', '2024-12-31 10:39:58'),
(1126, 'Prabhakaran A', 'Adhaar Card', '3796 1951 8065', '9655350072', 'prabha090289@gmail.com', 'S/O: Annadurai, 229, ADHITHIRAVIDAR\r\nSTREET, PANJANATHIKKOTTAI,\r\nPO: Panchanathikottai,\r\nDIST: Thanjavur,\r\nTamil Nadu - 614904\r\n', '9655350072', 1, 341, 1, 'uploads/signatures/cde1df110696d7a4377b030dc2177d7d.jpg', '2025-01-01 00:00:00', '2024-12-31 13:45:24'),
(1127, 'Jaysingh Yadav', 'Adhaar Card', '8236 9724 7658', '7376930153', 'jaysinghyadavjaysinghyadav081@gmail.com', 'S/O: Narendra Pratap Yadav, No.1 Or Kishundasp, PO:Kisundaspur, DIST:Azamgarh, Uttar Pradesh, 276208', '7376930153', 1, 10, 1, 'uploads/signatures/caba5a0776e92582a40b4e3f6bed881c.jpg', '2024-12-31 00:00:00', '2024-12-31 13:49:09'),
(1128, 'Mini NeelaKrishan ', 'Adhaar Card', '2506 5997 1222', '9080030947', 'minineelan1@gmail.com', 'D/O, Neelakrishnan, 71-b, Sethupathiyoor,\r\nAgasteeswaram, PO: Puthalam, DIST:\r\nKanniyakumari,\r\nTamil Nadu - 629602\r\n', '9080030947', 1, 0, 0, 'Not Signed', NULL, '2024-12-31 14:03:32'),
(1129, 'Masapaka Madhu', 'Adhaar Card', '2291 6594 3908', '9154804770', 'masapaka.madhu93@gmail.com', 'S/O Mashapaaka Ram Chander,\r\n11-145, BABU JAGJEEVAN RAM NAGAR,\r\nNEAR ELECTRICAL TRANSFORMER, MALKAJGIRI,\r\nVTC: Hyderabad,\r\nDistrict: Rangareddi,\r\nState: Andhra Pradesh,\r\nPIN Code: 500047', '9154804770', 1, 0, 0, 'Not Signed', NULL, '2024-12-31 14:05:37'),
(1130, 'Guriya Kumari', 'Adhaar Card', '8640 0074 0080', '6207980654', 'gk9840059@gmail.com', 'C/O: Surendra Singh\r\nGram - mosimasaray.post - lakhawar\r\nLakhawar\r\nLakhawar Ed\r\nGhosi Jehanabad\r\nBihar 804434', '6207980654', 1, 0, 0, 'Not Signed', NULL, '2024-12-31 14:08:03'),
(1131, 'Taiyyaba Khan', 'Adhaar Card', '9449 6867 5991', '9532470277', 'taiyyabakhan9532470277@gmail.com', 'W/O Irshad Khan, 363/13, hasanganj bawli,\r\ncampwell road, Saadatganj, Lucknow,\r\nLucknow,\r\nUttar Pradesh - 226017', '9532470277', 1, 0, 0, 'Not Signed', NULL, '2024-12-31 14:55:09'),
(1132, 'Rajeev Kumar', 'Adhaar Card', '3574 6857 8292', '8394919988', 'yadavr2008@gmail.com', 'S/O: Ramesh Chand, house - 26. bhagwanpur road, gram - nagal ahir, post chauradev, Gagalheri, Saharanpur, Gagalheri, Uttar Pradesh, 247669', '8394919988', 1, 5, 1, 'uploads/signatures/da9f8fdc87a5048b72393dee18dc49c3.jpg', '2025-01-03 00:00:00', '2024-12-31 15:37:22'),
(1133, 'Haseena A', 'Adhaar Card', '7998 1999 8777', '9037363633', 'shekshenna@gmail.com', 'D/O: Abdul Khader\r\nA.P Circle House\r\nMovvar P.O\r\nNekraje\r\nMulleria\r\nKasaragod Kerala - 671543', '9037363633', 1, 0, 0, 'Not Signed', NULL, '2025-01-02 04:41:08'),
(1134, 'Chandu M', 'Adhaar Card', '8763 5582 6999', '7899983087', 'chandumangala7@gmail.com', 'Muniraju, Sreeramanahalli, PO: Arakere,\r\nEDIST: Bangalore.\r\nKarnatakca - 561203', '7899983087', 1, 8, 1, 'uploads/signatures/b48bcb52383f77d805f97260063f93e5.jpg', '2025-01-02 00:00:00', '2025-01-02 05:46:41'),
(1135, 'Premkumar P Premkumar P', 'Election Card', 'NCC2169357', '8838214497', 'm.pandiyan17111996@gmail.com', '5/22, KAVARA STREET,\r\nTHIRUVELVIKUDI, KADALANGUDI,\r\nKUTTALAM, KUTTALAM,\r\nMAYILADUTHURAI, TAMIL NADU- 609801', '8838214497', 1, 0, 0, 'Not Signed', NULL, '2025-01-02 06:55:31'),
(1136, 'Deepanshu Kumar Giri', 'Adhaar Card', '4993 3762 4862', '8630943292', 'deepanshugiri626@gmail.com', 'S/O: Nirom, VILL- antvara, Antwara, Muzaffarnagar, Uttar Pradesh - 251201', '8630943292', 1, 16, 1, 'uploads/signatures/e220c28d678f1d02e28f872b6dd8b6bd.jpeg', '2025-01-02 00:00:00', '2025-01-02 11:47:03'),
(1137, 'Rajeshwar Prasad Singh', 'Adhaar Card', '7261 7526 7917', '8103183644', 'rajeshwarprasadsingh2000@gmail.com', 'S/O Kameshwar Prasad Singh\r\nPlot No.-16,17 Block No.-17\r\nDakshin Gangotri\r\nSupela\r\nSupela Bhilai\r\nDurg Chhattisgarh - 490023', '8103183644', 1, 0, 0, 'Not Signed', NULL, '2025-01-03 05:44:33'),
(1138, 'Nazima Banu M', 'Adhaar Card', '9841 5740 2486', '8880879711', 'naaz2627banu@gmail.com', 'C/O: Imran Ulla Khan, No.200, 9th Cross, HMT Layout, Poornima Hospital, V V Pura, R T Nagar, Bengaluru, Karnataka, 560032\r\n', '8880879711', 1, 0, 1, 'uploads/signatures/a3acac8e05fc89932fcd42d414e70315.jpg', '2025-01-03 00:00:00', '2025-01-03 07:00:18'),
(1139, 'Vasu Vishwakarma ', 'Adhaar Card', '9948 8469 1059', '9219575248', 'Rajvasu395@gmail.com', 'S/O: Rajendra Prasad, chhitemau\r\nbajitpur, post MAHRAUNDA,\r\ntahseel soraon, Mahraunda,\r\nAllahabad, Mehraunda, Uttar\r\nPradesh, 212507', '9219575248', 1, 0, 0, 'Not Signed', NULL, '2025-01-03 07:02:28'),
(1140, 'Anubhav Sounak', 'Adhaar Card', '808309457579', '9395352725', 'anubhavshounak48@gmail.com.', 'C/O: Ranjit Sarmah, 181, MISSION CHARIALI, DEURIGAON, KETEKIBARI, Gatanga Kahdol, PO: Ketekibari, DIST: Sonitpur, Assam - 784154', '9395352725', 1, 0, 0, 'Not Signed', NULL, '2025-01-03 07:04:40'),
(1141, 'Laxmi Manjunath Toragal', 'Adhaar Card', '3818 3358 0208', '9353191480', 'laxmitoragal67@gmail.com', 'C/O: Manjunath, near maradi math, naragund, VTC: Chikkanargund, PO: Chiknargund, Sub District: Nargund, District: Gadag, State: Karnataka, PIN Code: 582207', '9353191480', 1, 1, 1, 'uploads/signatures/6b4022550f90ac916330ce312b6fbce7.jpg', '2025-01-03 00:00:00', '2025-01-03 07:32:59'),
(1142, 'Asha Mishra', 'Adhaar Card', '7731 4424 1431', '8882626563', 'Mangeshg0023@gmail.com ', 'D/O: S P Mishra, D-309, D-Block, Gali No-1A, Ganesh Nagar, Pandav Nagar, East Nagar Complex, Laxmi Delhi, Delhi-110092', '8882626563', 1, 0, 0, 'Not Signed', NULL, '2025-01-03 07:53:38'),
(1143, 'Asha Mishra', 'Adhaar Card', '7731 4424 1431', '8882626563', 'ashamishratripathi1@gmail.com', 'D/O: S P Mishra, D-309, D-Block, Gali No-1A, Ganesh Nagar, Pandav Nagar Complex Laxmi Nagar, East Delhi-110092', '8882626563', 1, 0, 0, 'Not Signed', NULL, '2025-01-03 07:55:48'),
(1144, 'Purvi ', 'Adhaar Card', '4508 4271 1497', '8053644128', 'purvithakur983@gmail.com', 'C/O: Sandeep Kumar, House No. 832, Gali No. 1, Gaushala Road, Janakpuri, Karnal, Karnal, Haryana - 132001', '8053644128', 1, 0, 0, 'Not Signed', NULL, '2025-01-03 07:59:41'),
(1145, 'Mohammed Riswanullah', 'Adhaar Card', '4333 2716 6175', '9605495645', 'www.riswwy@gmail.com', 'S/O: Mohammed Rafeeq PT,\r\nPottanthodika, Payyakode,\r\nVTC: Karuvarakundu,\r\nPO: Pulvetta,\r\nSub District: Nilambur,\r\nDistrict: Malappuram,\r\nState: Kerala,\r\nPIN Code: 676523', '9605495645', 1, 0, 1, 'uploads/signatures/4f74eaca4354e2b41cbff14eb6aa0748.jpg', '2025-01-03 00:00:00', '2025-01-03 09:22:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_forms`
--
ALTER TABLE `tbl_forms`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `tbl_mail`
--
ALTER TABLE `tbl_mail`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `memberemail` (`member_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_forms`
--
ALTER TABLE `tbl_forms`
  MODIFY `member_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=702;

--
-- AUTO_INCREMENT for table `tbl_mail`
--
ALTER TABLE `tbl_mail`
  MODIFY `e_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `member_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1147;
--
-- Database: `kuberconsultancy_new`
--
CREATE DATABASE IF NOT EXISTS `kuberconsultancy_new` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kuberconsultancy_new`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `status`) VALUES
(1, 'kuberconsultancy', 'e537864228e219f52747cc2656bd8ef220443df4ed27242554864264c948ec4a65ee3f2842e5b5849c6fa95d9b5d28cb327636fe86c8e557106419b9d96d252c', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_forms`
--

CREATE TABLE `tbl_forms` (
  `member_id` int(10) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `member_number` varchar(100) NOT NULL,
  `member_address` varchar(200) NOT NULL,
  `member_city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_forms`
--

INSERT INTO `tbl_forms` (`member_id`, `member_name`, `member_number`, `member_address`, `member_city`) VALUES
(2, 'Munnu Kumar', '9871689335', 'H No-D-57 Jai Vihar Sunday Market 110043 Delhi', 'Delhi'),
(3, 'Mahesh Kumar', '9873360566', 'S/O Mr Laxman Hno 582 Block-B Sangam Vihar Nr Opp Ganpati Properties 110062 Delhi', 'Delhi'),
(4, 'Subhash .', '9873378503', '313 Rishi Nagar Rani Bagh Near Shiv Mandir Gali 110034 Delhi', 'Delhi'),
(5, 'Om Prakash Kunwar', '9971479851', 'H No WZ 24 Dasghara Toda Pur Delhi 110012 Delhi', 'Delhi'),
(6, 'Mamta Rani', '9999036055', '239 FF Rishi Nagar Rani Bagh Near Canara Bank 110034 Delhi', 'Delhi'),
(7, 'Akash Ahuja', '9910950599', 'H No 45/2 Ashok Nagar Tilak Nagar Metro Station 110018 Delhi', 'Delhi'),
(8, 'Sunil Gujral', '9873957494', 'GG 2/55 C Durgyana Appts Vikas Puri Near Durgyana Mandir 110018 Delhi', 'Delhi'),
(9, 'Hemant Kumar', '9999695051', 'H No-G-60 Block-G Kunwar Singh Nagar Ranholla , 110015 Delhi', 'Delhi'),
(10, 'Raj Kumar', '9999636520', '7/22A Tilak Nagar , 110018 Delhi', 'Delhi'),
(11, 'Chetan Mehla', '9990000304', 'H No-266/B Ward No-2 Mehrauli Prince Public School 110030 Delhi', 'Delhi'),
(12, 'Gagandeep Kaur', '9899980373', 'H No 116A Gali No 5 South Anarkali Krishna Nagar Nr Brijwasi Sweet 110051 Delhi', 'Delhi'),
(13, 'Geetanjli Gupta', '9711410516', '151, Chaudhary Mohalla, Dhool Siras Village, Nr. Bus Stand 110010 Delhi', 'Delhi'),
(14, 'Harish Joshi', '9999276463', 'H No-53 Police Apartment A 3 Pashim Vihar Delhi 110063 Delhi', 'Delhi'),
(15, 'Sumit Bhandari', '9953007166', 'Pkt 14/79 Pocket-14 Rohini Sector-24 Delhi Near-Delhi Public School 110081 Delhi', 'Delhi'),
(16, 'Lalit Kumar Saini', '9711209817', 'H No 122/27 Block CPJ New Seelam Pur Near Naveen Public School 110053 Delhi', 'Delhi'),
(17, 'Mohit .', '9971292567', 'H No A315 Block A Pandav Nagar , 110092 Delhi', 'Delhi'),
(18, 'Mohit Kumar Garg', '9873229908', 'C/O Shri Chand,H.No-C-53, Sreet No-7, West Jyoti Nagar,Behind Gopal Nusring Hm Near Durga Puri Chowk,Shahdara, 110032 Delhi', 'Delhi'),
(19, 'Pankaj Kumar Maurya', '9811635414', 'Plot No-12B Gali No-1 Deep Enclave Part-1 Vikas Nagar Uttam Nagar Nr Verma Road and Tapan Cable 110059 Delhi', 'Delhi'),
(20, 'Pawan Bajaj', '9873917216', 'S/O Mr Raj Kumar H No 170 B/11 4Th Flor East Of Kailash Gali No 11 Top Floor Nr Durga Store 110065 Delhi', 'Delhi'),
(21, 'Neeraj Kumar Suji', '9873541115', 'H No A-62 Basement Haus Khas , 110016 Delhi', 'Delhi'),
(22, 'Asim', '9999138699', '25-A Ganesh Park Rasheed Market Krishna Nagar nr by narang kite houseDelhi 110051 Delhi', 'Delhi'),
(23, 'Riya Sharma', '9999206642', 'H No-227 Chandan Park Gali-5-6 Libas Pur Near Tom Jerry Convent School 110042 Delhi', 'Delhi'),
(24, 'Pawan .', '9873656207', 'H No 117/11 SBM Qtrs Tulsi Ram Bhawan Najaf Garh Road Shivaji Marg Moti Nagar Near Blue Dart Courier 110015 Delhi', 'Delhi'),
(25, 'Harish Chand Sharma', '9868026224', '26 Kasturba Polytechnic Staff Quater Nr-Kastura Politecnic 110085 Delhi', 'Delhi'),
(26, 'Rajesh Saraswat', '9810032046', 'B - 148 Ashoka Enclave Peera Garhi Metro Station 110087 Delhi', 'Delhi'),
(27, 'Seema Shukla', '9953895828', 'H No-18/899, Flats Baba Kharak Singh Marg, Near-R,M,L,Hospital, 110001 Delhi', 'Delhi'),
(28, 'Sulochana .', '9953709491', 'E-32A 3rd Floor Left Side Portion Vishwakarma Colony M B Road Nr Suraj Kund Crossing 110044 Delhi', 'Delhi'),
(29, 'Sumit Kumar Vashney', '9899884577', 'H No-A-1/15 Sanjay Enclave Uttam Nagar Nr-Sahil Chatbhandar 110059 Delhi', 'Delhi'),
(30, 'Vikram Vij', '9711601377', 'S/o Vikram Raj Vij House No-S-2/219 Tilak Nagar Old Mahavir Nagar Near-Om Dairy 110018 Delhi', 'Delhi'),
(31, 'Yameen Khan', '9717780054', 'House No-F-191/S-3 Top Floor Dilshad Colony Seemapuri me hosptal 110095 Delhi', 'Delhi'),
(32, 'Yogesh Kumar', '9711195527', 'H No-138-A A-Block Vikash Vihar Kakrola Delhi Near NSIT 110043 Delhi', 'Delhi'),
(33, 'Lalit Kumar', '9891552325', 'R1/21 Phase-1 Budh Vihar Delhi near Sai Dham Mandir 110086 Delhi', 'Delhi'),
(34, 'Jayant Kumar Sharma', '9716308664', 'Hno 82 Crossing 1 Blk-A Gl-5 Uttrakhand Enclave Burari Behind Joshp Merry School 110084 Delhi', 'Delhi'),
(35, 'Kuldeep Singh Tariyal', '9811964233', 'A/2-140G, Pocket A-2, LIG Mayur Vihar Phase 3 .. 110096 Delhi', 'Delhi'),
(36, 'Yashpal Singh', '9818245505', 'Kh No-17/13, Gali No-10 Amrit Vihar, Burari Near Paradise Public School 110084 Delhi', 'Delhi'),
(37, 'Ruchika Khurana', '9999239317', '36-B PocketA-2 Mayur Vihar Ph-3 Opp Super Dry Cleaner 110096 Delhi', 'Delhi'),
(38, 'Gaurav Arora', '9873340774', 'H. No- B-223 Ashok Vihar-1 Near D Cinema 110052 Delhi', 'Delhi'),
(39, 'Davinder Singh', '9999232922', '7 Staff Qtr Gurudwara Nanak Piao GTK Road Model Town  110009 Delhi', 'Delhi'),
(40, 'Mukesh Kumar', '9899354939', 'D-302 D-Blk Part-2 Qutab Vihar Vihar Goyla Dairy OPG World Sc 110071 Delhi', 'Delhi'),
(41, 'R K Mathur', '9873518895', 'S/O B P Mathur37 Block B Vishwarkrma Colony Lal Kuan Nr Vishkarma Mandir 110044 Delhi', 'Delhi'),
(42, 'Riya Sikka', '9953863330', 'h 271 delhi vikaspuri nr brain international school 110018 Delhi', 'Delhi'),
(43, 'Ruchika Sabhrwal', '9711264293', 'House Nno C-3/309 Janakpuri Near Desu Colony 110058 Delhi', 'Delhi'),
(44, 'Ashok Kumar', '9711260838', 'D-96 MCD Flats Azad Pur Azad pur Metro Station 110033 Delhi', 'Delhi'),
(45, 'Chandramani Mani', '9811973216', '945 Sector-3 R K Puram Near LBS  110022 Delhi', 'Delhi'),
(46, 'Holisol Logisitics Private Limited Robbin Kumar', '9873927260', 'A1 Carriappa Marg, Sainik Farms Nr Saket road 110062 Delhi', 'Delhi'),
(47, 'Naveen .', '9899206378', 'S/o Jogender Singh, H No-B-35 Vijay Nagar, Bawana Delhi Nr White Leat Public School Narela Road 110039 Delhi', 'Delhi'),
(48, 'Akash .', '9711811524', 'C-80 Gali No-19 Khajoori Khas Karawal Nagar Nr Corporationbank Atm 110094 Delhi', 'Delhi'),
(49, 'Sunil Kumar Zunglan', '9711774828', 'H No G-1857 Block G Tigri Colony , 110062 Delhi', 'Delhi'),
(50, 'Kapil Sharma', '9899416225', 'H No 25 D Block Gali No 10 11 Jagat Puri Nr Aman Public School 110093 Delhi', 'Delhi'),
(51, 'Kapil Sharma', '9899649114', 'D-25 Blk-D Gali No-10 Jagat Puri Extn Aman Public School 110093 Delhi', 'Delhi'),
(52, 'Chandra ..', '9654990301', 'D-239 Phase 4 New Colony Street No 8 Aya Nagar Nr Shiv Mandir 110047 Delhi', 'Delhi'),
(53, 'Brijesh Kumar Singh', '9716360435', 'H No-25 Gali No- 1 Moralband Extn. Badarpur Nr Ram Rasoi 110044 Delhi', 'Delhi'),
(54, 'Ashish Kumar', '9718021670', 'H No-C-3/7 Block-C R P Bagh Nr Nanak Piyau Gurudwara 110007 Delhi', 'Delhi'),
(55, 'Prashant Thakur', '9999553343', 'Vijay Thakur B-150,Gali No-2,Kh No-39/4, Burari Near By Pd Joshi Kothi 110084 Delhi', 'Delhi'),
(56, 'Ashutosh Gunjan', '9910519144', 'H No 510/18 Deoli Village Nr Sent Merry Pub School 110062 Delhi', 'Delhi'),
(57, 'Rahul .', '9811793537', 'S/o Saroj H No-B-139 Gautam Puri Ph-2 Near-Kali Mandir and NTPC 110044 Delhi', 'Delhi'),
(58, 'Aayush Yadav', '9811515904', 'S/O Leela Singh H No-8/87 Jain Mandir Gali Chhota Bazar Shahadara Nr-Sahadara Metro Station 110032 Delhi', 'Delhi'),
(59, 'Anshu Chauhan', '9999309404', '76,New Chaupal Dhakka Village Nr Kingsway Camp 110009 Delhi', 'Delhi'),
(60, 'Manmeet S Malhotra', '9899992609', 'H No-208 Block-B 1st Floor Karampura Nr-Moti Nagar Metro 110015 Delhi', 'Delhi'),
(61, 'Abhishek Singh', '9711770975', 'A-88 , 1St F Floor Bhagwan Nagar Ashram 110014 Delhi', 'Delhi'),
(62, 'Gulshan Verma', '9873156653', '62 Pol No - 69 V P O Issapur New Delhi Jaggu Ganral Store 110061 Delhi', 'Delhi'),
(63, 'Neeraj Dagar', '9899181483', 'S/o Mahinder Singh Dagar VPO Issa Pur Near Jaggu Genral Near Store Wali Gali 110073 Delhi', 'Delhi'),
(64, 'Mahima Chawla', '9999017278', 'B-55, Derawal Nagar,Opp-Model Town-2nd Near By Opp-Model Town-2nd 110009 Delhi', 'Delhi'),
(65, 'Sushma Kumari Sawhney', '9899207831', 'Flat No-52 F/F Back Side Block-A gulab Bagh Uttam Nagar 110059 Delhi', 'Delhi'),
(66, 'R C Rohit', '9811505357', '200 F, Pkt-1, Mayur Vihar Ph-1, - 110091 Delhi', 'Delhi'),
(67, 'Ajay Kumar', '9953970563', '139 ,D -Block Dcm Colony Nathu Pura Burari Dcm Colony 110084 Delhi', 'Delhi'),
(68, 'Manoj Singh', '9711971213', 'H No-H-61/5 Street No-3 J P Nagar Ghonda Opp Sanatan Dharmshala In Sunday Market 110053 Delhi', 'Delhi'),
(69, 'Manish', '9999490711', 'Home No-E2/8 Gali No-32, Chankya Place Part-1 Near Janak Puri C1 Uttam Nagar 110059 Delhi', 'Delhi'),
(70, 'Iftekhar Ahmad', '9999354387', 'D-64 Ist Floor Sirsayed Tower Abul Fazal Enclave Jamia Ngr Nr-Bilual Masjid 110025 Delhi', 'Delhi'),
(71, 'Aman Sharma', '9999251543', '98 F/F B2B Block LIG Flat Janak Puri Subzi Mandi 110058 Delhi', 'Delhi'),
(72, 'Ravi Kumar Mishra', '9711218848', 'Flat No: A-1/291, Second Floor, A-1 Block Nr. Holi Chowk, Uttam Nagar 110059 Delhi', 'Delhi'),
(73, 'Anuj Kumar', '9971600491', 'H No-747 Top Floor Mukherjee nagar Delhi 110009 Delhi', 'Delhi'),
(74, 'Anuj Kumar', '9953547560', 'O-42 2nd Floor Room-3 Old Double Story Lajpat Nagar-4 Nr Hero Mutton Shop 110024 Delhi', 'Delhi'),
(75, 'Ashish Maurya', '9999443830', 'House No-H16/218,Gali No-16,Block-H Sangam Vihar,Delhi Near- Heera Public School 110062 Delhi', 'Delhi'),
(76, 'Benjamin Cherian', '9711503983', 'B-203 Thiruvizha Appt Plot No-37 Sec-10 Dwarka , 110075 Delhi', 'Delhi'),
(77, 'Abhishek Butola', '9711751861', 'F-309 Pkt-2 Mayur Vihar Ph-1 Govt School,Nr Shashi Garden 110091 Delhi', 'Delhi'),
(78, 'Chanchal .', '9953977157', 'D/O Roshan Lal C 1/970 Madan Gir Gurudwara 110062 Delhi', 'Delhi'),
(79, 'Prabhakar Rai', '9953097494', 'G-323, Phase-6 Bandh Road, Ayanagar Nr Shiv Hansa Chowk 110047 Delhi', 'Delhi'),
(80, 'Gaurav Rana', '9999337507', 'Hno-177 Siraspur Village Near Gol Chakkar Nr Som Bazar Chowk 110042 Delhi', 'Delhi'),
(81, 'Hari Om', '9873248356', 'H No-96 Neelwal Nr Community Centre 110041 Delhi', 'Delhi'),
(82, 'Rakesh Panchal', '9873418280', 'Vpo Hiran Kudna Vpo Hiran Kudna Nr Ganga International School 110041 Delhi', 'Delhi'),
(83, 'Hitesh Kumar', '9953289779', 'C/o Yashbir Chauhan House No-U-208A 2nd Flr Upadhyay Blk Shakarpur k v college left sideNear Bank Of Barod 110092 Delhi', 'Delhi'),
(84, 'Sujay S Gupta', '9891531794', 'K-1/132 Pocket K-I C R Park NR Arya Samaj mandir Nehru Park 110019 Delhi', 'Delhi'),
(85, 'Pankaj Kumar', '9811881135', 'C-25/A 1st Floor New Acharya Kripalani Road Adarsh Nagar Govind Medicos 110033 Delhi', 'Delhi'),
(86, 'Rajendra Kr Gupta', '9891478700', 'H No-B-32 Mansa Ram Park Uttam Nagar Near Metro Pillar No-750 110059 Delhi', 'Delhi'),
(87, 'Lokesh .', '9811924326', '445 Block-29 Trilok Puri 110091 Delhi', 'Delhi'),
(88, 'Manjeet Malik', '9999659638', 'S/O Narender House No-RZ-35C Roshan Garden Najafgarh Sai Mandir 110043 Delhi', 'Delhi'),
(89, 'Someet Prabhakar', '9999440277', 'D-6/277/1 BLK-D-6 Rohini Sec-6 Nr Vidya Jain Public school 110085 Delhi', 'Delhi'),
(90, 'Mukesh', '9718110900', 'Dco 31 Bn Crpf Parliament House , 110001 Delhi', 'Delhi'),
(91, 'Mukesh', '9990063995', 'Dco 31 Bn Crpf Parliament House , 110001 Delhi', 'Delhi'),
(92, 'Narender Rana', '9968498904', 'H No-416 Shahbad Daulat Pur Jati Choupal 110042 Delhi', 'Delhi'),
(93, 'Pradeep Kumar', '9999908007', 'H No-212-A-3,Railway Colony, Daya Basti, - 110007 Delhi', 'Delhi'),
(94, 'Sarvesh Kumar', '9811210902', 'WZ-12/3 Block-WZ Choukhandi Village Tilak Nagar Gurudwara 110018 Delhi', 'Delhi'),
(95, 'Sajid Khan', '9899474030', 'H No 1202 HHH Punjabi Pahatak Gali Chowki Dar Wali Balli Maran , 110006 Delhi', 'Delhi'),
(96, 'Saurav Kumar', '9899337371', 'H No 102 2nd Flr Maidan Garhi Nr Shiv Mandir 110068 Delhi', 'Delhi'),
(97, 'Sualeheen .', '9971292379', 'Sadarpur, Tvs Motor S-524, Vikas Marg Show Room, 110092 Delhi', 'Delhi'),
(98, 'Ekta Sharma', '9718505507', 'H No 64 RZ-Block Prem Nagar Uttam Nagar Nr Shiv Mandir 110059 Delhi', 'Delhi'),
(99, 'Sandeep Patwa', '9968527460', 'H No-149 Dhakka Village Delhi , 110013 Delhi', 'Delhi'),
(100, 'Sudesh Yadav', '9716791409', 'C/o Hars Yadav H NO RZ-56 Mohan Nagar Gali No-9 Pankha Road Nr Hanuman Mandir 110008 Delhi', 'Delhi'),
(101, 'Ajay Kumar', '9899301914', 'H No-1809 G-Block Jhangir Puri Behind Kaushal Cinema 110033 Delhi', 'Delhi'),
(102, 'Manish Yadav', '9811882889', '16 Sec-3 R K Puram Near Police Colony 110022 Delhi', 'Delhi'),
(103, 'Raj Kumar Singh', '9999295706', 'C-18 B Ugfloor Himgiri Enclave Chander Vihar Near Kikar Wala Chowk 110041 Delhi', 'Delhi'),
(104, 'Arvind Sharma', '9911439449', 'H No 326 D Block BG-6 Paschim Vihar Near DDA Market 110063 Delhi', 'Delhi'),
(105, 'Rajan Singh Chauhan', '9711956839', 'H No-L-1st, 1866/12 Sangam Vihar , 110062 Delhi', 'Delhi'),
(106, 'Ranjan Singh Chauhan', '9999697177', 'H No-1866/12 Block L-1, Sangam Vihar Nr-Asthal Mandir 110062 Delhi', 'Delhi'),
(107, 'Palini', '9650302377', '4/2/1,Servent Qtrs,Sec-13 R K Puram , 110066 Delhi', 'Delhi'),
(108, 'Satish .', '9873303566', 'E-393/6 Bvlock-E west Vinod Nagar , 110092 Delhi', 'Delhi'),
(109, 'Vipul Jain', '9999499828', 'E-15 3rd Floor Rose Appt Plot No-5 Sec-14 Rohini Extn NEAR SPORTS COMPLEX 110085 Delhi', 'Delhi'),
(110, 'Purnima Baluni', '9953452775', '474 Pocket-C Janta Flats Group-1 Hastsal Uttam Nagar 110059 Delhi', 'Delhi'),
(111, 'Bhagya Prakash', '9711624881', 'C/o Dr DP Sharma H No WZ-98 Janakpuri West C-2 Possangipur Nr Kavita Beauty Porlour 110058 Delhi', 'Delhi'),
(112, 'Bhagya Prakash', '9711624882', 'C/o Dr DP Sharma H No WZ-98 Janakpuri West C-2 Possangipur Nr Kavita Beauty Porlour 110058 Delhi', 'Delhi'),
(113, 'Amit Kumar', '9899305055', 'H NO-L-440/7 Sangam Vihar Bandh Road Nr-Sani Bazar 110062 Delhi', 'Delhi'),
(114, 'Abhishek Bhargawa', '9899368525', 'H No 26/146 2nd Floor West Patel Nagar Delhi 110008 Delhi', 'Delhi'),
(115, 'Sarvesh Kumar', '9999137411', 'H No-B-49 Shakarpur Baramod Nr Hanuman Mandir 110092 Delhi', 'Delhi'),
(116, 'Aman .', '9953690068', 'H No-421 Indra Market Najafgarh Nr New Anai Mandi 110043 Delhi', 'Delhi'),
(117, 'Arpit Jain', '9953272706', 'H No-5773/5 Gali No-3 Dev Nagar Karol Bagh Nr- Khalsa Collage 110005 Delhi', 'Delhi'),
(118, 'Ghazanfar Ullah', '9911867859', 'HNo Q-5, Room No 3 Nafees Road Batla Ho Jamia Nagar An Noor Masjid 110025 Delhi', 'Delhi'),
(119, 'Indrajeet Meena', '9899938330', 'Constable InderjeetMeena Police Station Sec 7 Rohini Nr Indian Petrol Pump 110085 Delhi', 'Delhi'),
(120, 'Amit Kumar', '9873604191', 'S/O Jitendra Prasad 2Nd Floor Vihan Appt Kh No-618 Masjid Road Sultanpuri Delhi 110030 Delhi', 'Delhi'),
(121, 'Amrendra Kumar', '9716025829', 'US 261 3rd Floor Flat No 9 Chander Vihar NR Wine Shop Mandawali 110092 Delhi', 'Delhi'),
(122, 'Monika', '9999550507', 'New T-61 Shukar Bazar Uttam Nagar Nr- Binda Pur Matiyala Rd Nr Mandir 110059 Delhi', 'Delhi'),
(123, 'Rajeev Sharma', '9873939247', 'Hno. E356/D Gali No. 7 West Vinod Nagar Manglam Hospital 110092 Delhi', 'Delhi'),
(124, 'Somesh Kumar Singh', '9971248546', 'H No 61 Flat No 401 4th Floor Purani Haweli Sarita Vihar Haddu Mohalla Madanpur Khadar 110076 Delhi', 'Delhi'),
(125, 'Sushant Pandey', '9873685687', 'House No-WZ-135B Gali No-18A Sadh Nagar-2 Palam Colony Rahul Model School 110045 Delhi', 'Delhi'),
(126, 'Varun Kumar', '9873934481', 'S/O Anandi Pandey H No-265 Shapur Jat Asiad Village Khel Gaon 110049 Delhi', 'Delhi'),
(127, 'Ram Sumer', '9891706999', 'H No-78-D Delhi Shivam Enclave 110092 Delhi', 'Delhi'),
(128, 'Dalbir Singh', '9999154005', 'House No-A-113 Raju Park ,Khanpur Mother Dairy 110062 Delhi', 'Delhi'),
(129, 'Ruchika Kumar', '9873417225', '14-C, DDA Flats Naraina Road Nr Rike Metro Hospital 110008 Delhi', 'Delhi'),
(130, 'Shivani Malhotra', '9711456795', 'House No-C-316 Block-C Surajmal Vihar Yamuna Sports Complex 110092 Delhi', 'Delhi'),
(131, 'Deepak .', '9871864017', 'H No-565 Pkt-1 Sec-A6 Narela Delhi 110040 Delhi', 'Delhi'),
(132, 'Nikhil Bansal', '9873717575', '1799, 2Nd Flr Gali Sohan Ganj Subzi Mandi Nr Yadav Namkeen Sethi Cake Shop 110007 Delhi', 'Delhi'),
(133, 'Ravinder Singh Negi', '7838330333', 'H No 549/1 Deoli Vill nr Shiv mandir 110062 Delhi', 'Delhi'),
(134, 'Sameer', '9718776581', 'H No - D-8 ,2nd Floor Batla House ,Jamia Nagar Nr Jal Board 110025 Delhi', 'Delhi'),
(135, 'Kasim Abbas', '9868341762', 'H No K-208 Gali No-4, Sunder Nagri Near Auliya Masjid 110093 Delhi', 'Delhi'),
(136, 'Aqib Ali', '9999731967', 'C/O Faisal Hasan A-1/103 1st Floor Taj Enclave Geeta Colony Nr cng pump 110031 Delhi', 'Delhi'),
(137, 'Lalit Yadav', '9999037678', 'Room No B-30 ADGPI South Block DHQ-PO  110011 Delhi', 'Delhi'),
(138, 'Purayatil Balakrishnan Mani', '9999795660', 'A-7/11 Ground Floor, Nr Mother Dairy Sector-17, Rohini 110089 Delhi', 'Delhi'),
(139, 'Saroj Malik', '9999111716', 'H No B1 Masood Pur Vasant Kunj Near MCD Park 110070 Delhi', 'Delhi'),
(140, 'Sunny', '9911963697', 'H No-B-56C Gangotri Enclave Alaknanda Opp-Alaknanda Market 110019 Delhi', 'Delhi'),
(141, 'Pradeep Kumar Sharma', '9910415751', '198/52B Ramesh Mkt Garhi ,, Nr Sapna Cinema 110065 Delhi', 'Delhi'),
(142, 'Mukul Sharma', '9899832610', 'S/O Ishwar Dev Sharma H No-18/14 A Azad Nagar Kishan Ganj Nr Pratap Nagar Metro Pillar No-117 110007 Delhi', 'Delhi'),
(143, 'Nishant Kumar', '9811034069', 'H No 53 1st Floor Hari Nagar Ashram Nr Shalimar Cinema Hall 110014 Delhi', 'Delhi'),
(144, 'Nishant Kumar', '9811034760', 'H No 53 1st Floor Hari Nagar Ashram Nr Shalimar Cinema Hall 110014 Delhi', 'Delhi'),
(145, 'Vivek Rana', '9899513468', 'H No - K - 377 Kangra Niketan Vikas Puri West Near Kangra Niketan Bus Stop 110018 Delhi', 'Delhi'),
(146, 'Vivek Rana', '9899513648', 'H No - K - 377 Kangra Niketan Vikas Puri West Near Kangra Niketan Bus Stop 110018 Delhi', 'Delhi'),
(147, 'Prateek Chhibber', '9999304908', '13/4 AD/S Prem Ngr,Janak Puri , 110058 Delhi', 'Delhi'),
(148, 'Alok Kumar', '9990017655', 'H NO-E-50 Kondli Ambedkar Park 110096 Delhi', 'Delhi'),
(149, 'Sukhpal Kaur', '9811605579', 'H No 2 Vishwakarma Park Laxmi Nagar Nr Kabir Dham Gurudwara 110092 Delhi', 'Delhi'),
(150, 'Pankaj Gupta', '9891000400', 'C-11 Acharya Kirplani Road Adarsh Nagar 110033 Delhi', 'Delhi'),
(151, 'Amit Chawla', '9811453732', 'A2/94 SF Rohini Sec-5 Delhi 110085 Delhi', 'Delhi'),
(152, 'Shalini Jain', '9899825935', '237 2nd Floor Satya Niketan Near Gundwara  110021 Delhi', 'Delhi'),
(153, 'Prtik Shukl', '9811715352', 'H.No F 44 Ground Floor C/O. Ch mann Sin Gh 16/A Room No D6 Katwaria sarai South Mother Dairy katwaria sarai 110016 Delhi', 'Delhi'),
(154, 'Sumit Singh', '9818321239', 'H No D1/379 Sultan Puri Near Geeta School 110086 Delhi', 'Delhi'),
(155, 'Sudhir Pal', '9891121737', 'R no B-68 Nilgiri Hostel IIT HAUZ KHAS Delhi 110016 Delhi', 'Delhi'),
(156, 'Sunil Jain', '9873331207', 'H No-198/27-B, Ramesh Market Garhi Village, Near-Sapna Cinema, 110065 Delhi', 'Delhi'),
(157, 'Sunil Jain', '9971161280', '198/27B. First Floor. Gali No-4.Ramesh Market Garhi. Nr-Sapna Cinema. 110065 Delhi', 'Delhi'),
(158, 'Neha Gulati', '9711220704', 'H No-F-3/115 SF Sec-16 Rohini Delhi 110085 Delhi', 'Delhi'),
(159, 'Himani .', '9711322968', 'H No-89 Ambika Vihar Paschim Vihar Delhi 110087 Delhi', 'Delhi'),
(160, 'Shaubhik Duttaroy', '9711387634', '473 Dakshinayan Plot No-19 Sec-4 Dwarka DPS SCHOOL Near DPS School 110078 Delhi', 'Delhi'),
(161, 'Ruchika Yadav', '9953729148', 'H No-RZ-F1/14,St No-1, Mahavir Enclave,Palam, Nr-Church, 110045 Delhi', 'Delhi'),
(162, 'Nar Singh', '9711551103', 'B-1/576 ,Madanpur Khadar J J Colony Ph-2 Nr Jalebi Chauk 110076 Delhi', 'Delhi'),
(163, 'Vivek Kumar Gupta', '9999306332', 'B-14-B First Floor Pandav Nagar Nr Mother Deiry 110092 Delhi', 'Delhi'),
(164, 'Khem Singh Rawat', '9899246339', 'C/O Bhagwati Devi, H No-AS-293, Block-AS Gali No-8, Keshav Nagar Near Mukti Ashram, Maszid 110036 Delhi', 'Delhi'),
(165, 'Catherine John', '9899242966', 'H No-44-A Safdarjung Enclave Himayun Pur Near-Kamal Cnema 110029 Delhi', 'Delhi'),
(166, 'Rahul Kumar', '9899190822', 'H NO-B-612 Aman Vihar Kirari Suleman Nagar NR Choudhary Ki Kothi 110086 Delhi', 'Delhi'),
(167, 'Hitesh Satija', '9999988988', 'H No 177 Kalyan Vihar Delhi 110009 Delhi', 'Delhi'),
(168, 'Rajesh Verma', '9873556552', 'H No-266-P-23 Ward No-2 Mehrauli Near Larisa Public School 110030 Delhi', 'Delhi'),
(169, 'Gaurav', '9899799750', 'House No-B-109 Block-B Budh Vihar Tajpur Pahari Badarpur Sebal Cinema 110044 Delhi', 'Delhi'),
(170, 'Meghraj Singh', '9971919963', 'S/o Indra Pal Singh H No A 432 J J Colony, Gharoli Dairy Farm Mayur Vihar Ph 3 Nr Hanuman Mandir 110096 Delhi', 'Delhi'),
(171, 'Yogesh', '9711197978', 'D-2/351, Sultan Puri, Near-Mother Dairy, 110041 Delhi', 'Delhi'),
(172, 'Roop Kishore Sharma', '9711800952', 'C-2/89A, Brijpuri, Opp-Yamuna Vihar, 110094 Delhi', 'Delhi'),
(173, 'Rohan Kumar', '9999068945', 'C- 11 Uttarakhand Enclave Burari Nathupura NR Amrit Vihar Bus Stand 110084 Delhi', 'Delhi'),
(174, 'Bijendra Sharma', '9711497903', 'H No-22/657 DDA Flats Madan Gir / 110062 Delhi', 'Delhi'),
(175, 'Vishav Singh', '9711673946', '79 Ground Floor Chander Colony Gali No-4 narela Nr Hanuman mandir 110040 Delhi', 'Delhi'),
(176, 'Varun Jain', '9873674139', '12 E/2 Street No-2 Shri Ram Marg Maujpur Centrel Bank 110053 Delhi', 'Delhi'),
(177, 'Nancy Kalra', '9868338368', 'D/O Saroj Kagra H No-B-4/66 Block-B Pocket-4 Rohini Secto-8 Presting Convent School 110085 Delhi', 'Delhi'),
(178, 'Saroj Kalra', '9968567202', 'B4/66 1st Floor Sec-8 Rohini Delhi 110085 Delhi', 'Delhi'),
(179, 'Rajiv Kumar', '9711366327', '42499 Dakshin Puri Ambedkar Nagar Tigri Near Police Station 110062 Delhi', 'Delhi'),
(180, 'Nidhi Arora', '9873185228', 'Flat No-1 1st Floor Nizamuddin East Nizamuddin Rly Station 110013 Delhi', 'Delhi'),
(181, 'Harsh Mittal', '9711186774', 'S/O Naresh Mittal L-64, Shastri Nagar Nr-Indra Park 110052 Delhi', 'Delhi'),
(182, 'Nitin Gupta', '9899605356', 'S/o Ajay Gupta Krishna 206 Agarsen Appts 66 IP Extn Parparganj Plot No-66 2nd Flr Near Balco Market 110092 Delhi', 'Delhi'),
(183, 'Nitin Gupta', '9899607457', 'S/o Ajay Gupta Krishna 206 Agarsen Appts 66 IP Extn Parparganj Plot No-66 2nd Flr Near Balco Market 110092 Delhi', 'Delhi'),
(184, 'Lipika Roy', '9818385528', 'K-2098 1st Floor Chiitaranjan Park Kali Mandir 110019 Delhi', 'Delhi'),
(185, 'Lokesh Kumar', '9899165270', 'F-155 Room No-310 3rd Floor CA Building-2 Mangal Market Laxmi Nagar 110092 Delhi', 'Delhi'),
(186, 'Atul Kumar', '9711173741', 'H NO-D-4 Lotos Appartment Aya Nagar Arjung Garh metro Station 110027 Delhi', 'Delhi'),
(187, 'Karan Malhotra', '9999203201', 'H No-1535 Rani Bagh Delhi 110034 Delhi', 'Delhi'),
(188, 'Neha Bhatnagar', '9899723411', 'Flat No-C-211 2nd Flr Paradise Appt Plot No-1 Sec-9 Dwarka Opp Green Velley School 110075 Delhi', 'Delhi'),
(189, 'Prakhar Singh', '9873899762', 'H No-B-8 1st Floor Ganesh Nagar Extn-2 Shakarpur 110092 Delhi', 'Delhi'),
(190, 'Ranjeet Kumar', '9953605013', 'H No-A-2/51 Hastsal Road Uttam Nagar Near Sunil Dairy 110059 Delhi', 'Delhi'),
(191, 'Aanchal Sharma', '9999899844', 'H No-122, Sukhdev Vihar Near Escort Hospital 110025 Delhi', 'Delhi'),
(192, 'Avinash Sharma', '9958173279', 'House-264,Block-C Even,Sarojini Nagar Nr SN Market 110023 Delhi', 'Delhi'),
(193, 'Ravi Sharma', '9711289967', 'H No-2994/3, Ground Floor,Gali No-17, Shiv Chowk,Ranjeet Nagar, Opp-Nijhare Hospital, 110008 Delhi', 'Delhi'),
(194, 'Ravi Sharma', '9711289987', 'H No-2994/3, Ground Floor,Gali No-17, Shiv Chowk,Ranjeet Nagar, Opp-Nijhare Hospital, 110008 Delhi', 'Delhi'),
(195, 'Ravi Sharma', '9711863984', '2994/3,GF,Gali No-17,Shiv Chowk Ranjeet Nagar Opp Nijhara Hospital 110008 Delhi', 'Delhi'),
(196, 'Sonamoni Guha', '9899047559', 'House No C-479 First Floor C R Park Raisana Bengali Junior school 110019 Delhi', 'Delhi'),
(197, 'Sonamoni Guha', '9899048035', 'House No C-479 First Floor C R Park Raisana Bengali Junior school 110019 Delhi', 'Delhi'),
(198, 'Sonamoni Guha', '9899048378', 'House No C-479 First Floor C R Park Raisana Bengali Junior school 110019 Delhi', 'Delhi'),
(199, 'Tamal Chanda', '9953135024', 'H No-B-222 Badarpur Main Market Delhi Nr Sitaram Complex 110044 Delhi', 'Delhi'),
(200, 'Brij Raj', '9873673751', 'U-449/A Prem Nagar-2 Kirari Suleman Nagar Nr Naag Mandir 110086 Delhi', 'Delhi'),
(201, 'Arshad .', '9899852529', 'E-642 1St Floor Jahangir Puri Near Pryas 110033 Delhi', 'Delhi'),
(202, 'Manoj Kumar', '9911819669', 'H No 593/12 Sbs Colony West Karawal Nagar Near Masjid Nr Kala Mata Ki Mandir 110094 Delhi', 'Delhi'),
(203, 'Rizwan Khan', '9899186618', 'H No-F-39,Block-F, Aali Vihar,  110044 Delhi', 'Delhi'),
(204, 'Shweta Singh', '9711541182', 'H No - 231 Gangotri Appt Pocket-I Dwarka Sector-12 Nr Dwarka International School 110075 Delhi', 'Delhi'),
(205, 'Akshay Garg', '9873352719', 'H No C-2/2293 Vasant Kunj Nr DPS Vasant Kunj 110070 Delhi', 'Delhi'),
(206, 'Md Kaif', '9999145051', 'H No I 27 2nd Floor Batla House Okhla Shahab Masjid 110025 Delhi', 'Delhi'),
(207, 'Pankaj Kumar', '9811867850', 'D-365/A Ganesh Nagar Pandav Nagar Nr Kela Ka Godan 110092 Delhi', 'Delhi'),
(208, 'Brij Mohan', '9873346353', 'Hno446-447 Gali No 8 East Babarpur Chhajjupur Yadram Mandir Nr Near Anand School 110032 Delhi', 'Delhi'),
(209, 'Apoorva Sharma', '9910969989', 'H NO-D-244 1st Floor Anand Vihar , 110092 Delhi', 'Delhi'),
(210, 'Apoorva Sharma', '9953987043', 'S/O Arun Kumar 722 2Nd Flr Blk-9 Lodhi Colony Khanna Mrkt 110003 Delhi', 'Delhi'),
(211, 'Bhupal Singh', '9818572530', 'H No 2222 Gali No 61/1 Molarband Extn Badar Pur Nr Ranjan Medical Nr 60 Foota Road 110044 Delhi', 'Delhi'),
(212, 'Balvir Kumar Tiran', '9811724835', 'H No-M-116 Saurabh Vihar Jaitpur Badarpur Nagar Dairy 110044 Delhi', 'Delhi'),
(213, 'Nitin Chawla', '9891221322', 'Flat No-106 Promise Appts F Block Vikas Puri . 110018 Delhi', 'Delhi'),
(214, 'Gaurav Jain', '9711899670', 'F-25/111 Sector-3 Rohini Avantika Chowk 110085 Delhi', 'Delhi'),
(215, 'Sandeep .', '9999656238', 'H No 119 Pooth Kalan Village Near Budh Chowk 110081 Delhi', 'Delhi'),
(216, 'Rahul Solanki', '9953534344', 'Khazan Singh Wz-3C Palam Vill Badiyal Village Nr Shiv Mandir Nr. Dharam Sala 110045 Delhi', 'Delhi'),
(217, 'Prashant Kumar', '9999666929', 'Barrack No 102 PS Fatehpur Beri South District Mehrauli , 110074 Delhi', 'Delhi'),
(218, 'Saurabh Puri', '9999768765', 'JP-33 FF Maurya Enclave Pitam Pura Delhi 110034 Delhi', 'Delhi'),
(219, 'Parminder Kaur', '9999600406', 'H No-E-251 J J Colony Shakar Pur Nr-Britania Chowk 110092 Delhi', 'Delhi'),
(220, 'Parminder Kaur', '9999600762', 'H No-E-251 J J Colony Shakur Pur Near-Britania Chowk 110092 Delhi', 'Delhi'),
(221, 'Vinit Brigenja', '9873180391', 'H No- 51A, Aaya Nagar Nr- Arjan Garh Metro Station  110047 Delhi', 'Delhi'),
(222, 'Anita Pawan', '9953339995', 'Flat No-B53 MK Appt Plot No-88 Sec-11 Dwarka LAL BAHADUR SHASTARI 110075 Delhi', 'Delhi'),
(223, 'Saurabh Raghuvansh', '9711214226', '148/4 Minto Bridge Railway Colony . Delhi 110001 Delhi', 'Delhi'),
(224, 'Rajan Chadha', '9999681987', 'H No-10699 Gali No-11-12 Community Centre Pratap Nagar Delhi 110007 Delhi', 'Delhi'),
(225, 'Chandan Kumar Singh', '9711614072', 'Parmanand Singh H No B/1/201 Street No 7 Harsh Vihar Nr Sagar Centre 110093 Delhi', 'Delhi'),
(226, 'Chandan Kumar Singh', '9711614073', 'Parmanand Singh H No B/1/201 Street No 7 Harsh Vihar Nr Sagar Centre 110093 Delhi', 'Delhi'),
(227, 'Anju Jain', '9999852261', 'H No-C-7/216A Yamuna Vihar Nr-Sunder Pub School Opp-Mangla Park 110053 Delhi', 'Delhi'),
(228, 'Akshay Kumar Gupta', '9999196638', 'CV Saida Mohalla Chilla Vill Near Sai Mandir Opp Shiv Mandir 110091 Delhi', 'Delhi'),
(229, 'Anshul Saxena', '9873717381', 'Varun House No-768,Gh-14 Mig Flats,Paschim Vihar Bosco School Nr Tony Properties 110087 Delhi', 'Delhi'),
(230, 'Devender Gill', '9999880704', 'S/O Kundan Lal 281 Sector-V R K Puram Near Mohan Singh Market 110022 Delhi', 'Delhi'),
(231, 'Surendra Gupta', '9811953767', '1/7782 Gali No-1 East Gorakh Park Shahdara , 110032 Delhi', 'Delhi'),
(232, 'Anup Kumar Tiwari', '9899917954', 'B-3 Room No-D2 Christion Colony Patel Chest Du North Campus Nr-Opp- Maurise Ngr Thana 110007 Delhi', 'Delhi'),
(233, 'Amrish Bhatt', '9899935062', 'S/O Suresh Kumar Bhatt H No-1413 Type-3 Poorvanchal Jnu Near Munirka 110067 Delhi', 'Delhi'),
(234, 'Sanjeev Sharma', '9711704566', '9 Gali No-8 Saboli Bagh Nand Nagri 110093 Delhi', 'Delhi'),
(235, 'Samriti .', '9953534854', 'H No-113 Near Gita Bhawan Old Gupta Colony Near Meera By Park 110009 Delhi', 'Delhi'),
(236, 'Samriti .', '9953534983', 'H No-113 Near Gita Bhawan Old Gupta Colony Near Meera By Park 110009 Delhi', 'Delhi'),
(237, 'Deepak Kumar', '9811401149', 'H No 700 Street No 13 G-F Sbs Colony Karwal Nagar MANISH GERNAL STORE 110096 Delhi', 'Delhi'),
(238, 'Mohd Yehya Khan', '9899444637', 'H No-84 Block-A Chankya Place Part-1 Nr-Opp-C1 Janakpuri Nr Hanuman Mandir 110059 Delhi', 'Delhi'),
(239, 'Jyoti .', '9873604103', 'House No 4/1039 R K puram Hdfc bank , 110022 Delhi', 'Delhi'),
(240, 'Archana Sharma', '9899092324', '355 Pkt-2 Sec-19 Dwarka Nr- Ambrai Vill 110075 Delhi', 'Delhi'),
(241, 'Garima Sharma', '9999937797', 'H No-C7/86 C7-Block Yamuna Vihar c1 govt school 110053 Delhi', 'Delhi'),
(242, 'Pankaj Singh', '9811556550', 'Lalan Singh H No C-71 Plot No-30 Sector-10, Rohini Appts Dwarka Nr Pub School 110075 Delhi', 'Delhi'),
(243, 'Shiksha .', '9999395991', 'W/O Mr Praveen 51 Humayun Pur Village Nr Sheetla Mata Ka Mandir 110029 Delhi', 'Delhi'),
(244, 'Shubhra Jain', '9711326668', 'B-17/209 Pharma Appt Ip Extn Patparganj Madhu Vihar Market 110092 Delhi', 'Delhi'),
(245, 'Sita Ram', '9968247700', 'RZG-25 Vijay Encl Gali No-1 Palam Tent Wala School 110045 Delhi', 'Delhi'),
(246, 'Sumit Goyal', '9899447403', 'H No 14A Blk G B Shalimar Bagh Trilok Bhawan 110088 Delhi', 'Delhi'),
(247, 'Vikram Singh', '9717711716', 'House No-S 194, 1st Floor Pandav Nagar , 110092 Delhi', 'Delhi'),
(248, 'Ajit Kumar', '9910733120', 'House Number-60 Village Saidulajab Near Saket Metro Station Ground Floor Lane No 2 Kehar Singh State 110030 Delhi', 'Delhi'),
(249, 'Kamal Kishore', '9999015058', '585/3 Nehru Eclave Village Alipur Near Mini Stadium 110036 Delhi', 'Delhi'),
(250, 'Narendra Kumar Aggarwal', '9899514791', 'H No - RZ - 12D ,Gali No - 4 East Indra Park ,Palam Colony Nr Shiv Mandir 110045 Delhi', 'Delhi'),
(251, 'Saurabh Kohli', '9711204201', 'House No-WZ-105 GNO- 3rd Floor Sri Nagar Shakur BasTI Near Govt School 110034 Delhi', 'Delhi'),
(252, 'Saurabh Kohli', '9711371337', 'House No-WZ-105 GNO-1 3rd Floor Sri Nagar Shakur BasTI Near Govt School 110034 Delhi', 'Delhi'),
(253, 'Ritu Pilkhwal', '9873729792', 'House No-33D,4th Floor,Pocket-A, Dilshad Garden,Mig Flats, Near Greenway Public School, 110095 Delhi', 'Delhi'),
(254, 'Shamshad Ahmad', '9711578927', 'H No-F-138/1 Badarpur South Delhi Nr Masjid Raza 110044 Delhi', 'Delhi'),
(255, 'Ajay .', '9711820692', 'H.no 5/117 Dakshin Puri Block 5 Nr Mother Dairy 110062 Delhi', 'Delhi'),
(256, 'Pyare Lal', '9711865483', 'H No-614 Type-II Sec-2 Sadiq Nagar Govt Of India 110049 Delhi', 'Delhi'),
(257, 'Shiv Kumar', '9711927684', 'S/O Mr Anmol Singh H No-I-8 Block-I J J Camp Tigri Nr- Hanuman Mandir 110062 Delhi', 'Delhi'),
(258, 'Manoj .', '9711938425', 'H N o-23, Gali No-3, 33 Sec-1 Colony Dwarka Nr- MEtro Station 110075 Delhi', 'Delhi'),
(259, 'Sanjay .', '9711960703', 'Hno 643 Sanjay Camp Block A Dakshin Puri Extn NR Masjid 110062 Delhi', 'Delhi'),
(260, 'Manoj Kumar', '9717250380', 'G 5/ 120 Badarpur Nr chauhan property main market 110044 Delhi', 'Delhi'),
(261, 'Rajender Prasad', '9718174737', 'H No-N-235/11 Gali No-11 Amar Market Saurav Vihar Hari Nagar Extn Jaitpur Nr-Mama Dairy 110044 Delhi', 'Delhi'),
(262, 'Sambhunath Biswal', '9810773341', 'H No-B-313 B-Block Gola Kuan Nr-Tehkhand Village Okhla Ph-1 Nr-Esic Hospital 110020 Delhi', 'Delhi'),
(263, 'Yogesh Chauhan', '9810814736', 'H No-166 Staff Qtrs Safdarjung Hospital 110029 Delhi', 'Delhi'),
(264, 'Paramjit Singh', '9811005444', 'H NO 207/26 Prakash Mohl East Of Kailash Nr Shiv Mandir 110065 Delhi', 'Delhi'),
(265, 'Arun .', '9811119766', 'S/O Resram 76 Village Asola Near Chandan Complex 110074 Delhi', 'Delhi'),
(266, 'Altaf Shah', '9811216871', '507/20 Zakir Nagar Nr Ashoka Park NFC 110025 Delhi', 'Delhi'),
(267, 'Rupender Singh', '9811230765', 'H No F-3 259/2 Sangam Vihar , 110062 Delhi', 'Delhi'),
(268, 'Man Singh', '9811301418', 'H No-16 Maharani Bagh Easten Avenue Opp Meera bai College 110065 Delhi', 'Delhi'),
(269, 'Firoz', '9811378639', 'S/O Mohd Yusuf,D-19,D-Block Para Ambedkar Colony,Chattarpur Near Kishan Baat 110074 Delhi', 'Delhi'),
(270, 'Aradhana Manocha', '9811396959', 'C-106 Block C Dayanand Colony Lajpat Nagar-IV NR taneja Paints 110024 Delhi', 'Delhi'),
(271, 'Om Prakash Chauhan', '9811710674', 'H No 139 A Hari Nagar Ashram Delhi 110014 Delhi', 'Delhi'),
(272, 'Md Naushad Ansari', '9811726528', 'D-18/1/3 Block-D Gali No-1 Om Nagar Badarpur , 110044 Delhi', 'Delhi'),
(273, 'Irshad ....', '9811885956', 'H No-R-22 Block-R Private Colony Sriniwaspuri Nr gaba store 110065 Delhi', 'Delhi'),
(274, 'Shakeel Ahmed', '9818087711', 'H No-E-7 Hazi Colony Jamiya Nagar Nr-Indian Bharat Gas Agengy 110025 Delhi', 'Delhi'),
(275, 'Sandeep Kumar Goyal', '9818658999', 'S/o Bimal Prasad Goel Pt-62/3 Basement Kalkaji 110019 Delhi', 'Delhi'),
(276, 'Murli Maheta', '9873069287', 'S/O Lalu Mehta H No 200 Aadhikari Mohalla Maidan Garhi Nr Adhikari Mohalla 110068 Delhi', 'Delhi'),
(277, 'Vijay Pandey', '9873165189', 'F-3 -111 Gali No-1 Delhi Nr By Veer Bazar Neem Ped 110062 Delhi', 'Delhi'),
(278, 'Usha Rani', '9873263002', 'H No 705 C-10 Ward No 3 Mehrauli , 110030 Delhi', 'Delhi'),
(279, 'Paras Nath', '9873406283', 'S/O Ram Milan 189/4 Gali No-4 Block-A Sindhu Farm Road Mithapur Extn Nr Choudhary Dairy 110044 Delhi', 'Delhi'),
(280, 'Vijay Chakraborty', '9873575207', 'H No 2/276, Dakshinpuri, Near Police Station 110062 Delhi', 'Delhi'),
(281, 'Muinuddin Mansuri', '9873703598', 'H No-BC-23A Gali No-1 Nr Pir Baba Mazar Hand Pump Bapu Colony Mandi Pahadi 110047 Delhi', 'Delhi'),
(282, 'Bhag Singh', '9873717321', 'H No 130 Gautam Nagar nr chhota gurudwara 110049 Delhi', 'Delhi'),
(283, 'Kamal Singh', '9873930986', 'H No 382 Gali No 17 Zakir Nagar Okhla , 110025 Delhi', 'Delhi'),
(284, 'Mustaqim Khan', '9891803142', 'H No-D/129 G1-Block Gali No-8/4 Ratia Marg Sangam Vihar Nr-Pintu Aachar Wala 110062 Delhi', 'Delhi'),
(285, 'Jugnu Prakash', '9899003546', 'CPO 243/244 Block CPO Madangir Dr Ambedkar Nagar , 110062 Delhi', 'Delhi'),
(286, 'Esrar Choudhary', '9899019470', '19 Block L Sangam Vihar , 110062 Delhi', 'Delhi'),
(287, 'Raja .', '9899072428', 'H No-1189 Sec-7 R K Puram Nr- Malai Mandir 110024 Delhi', 'Delhi'),
(288, 'Chandan Kishore', '9899330991', 'HOC-H-16/122 Gali No-16 Block-H Sangam Vihar Nr kokil chauhan house 110062 Delhi', 'Delhi'),
(289, 'Kamini Kaushal', '9899889152', 'H No 705 A Ward No 3 Mehrauli , 110030 Delhi', 'Delhi'),
(290, 'Deepak .', '9899939827', 'H NO-G-536 Gali NO-11 Mohan Baba Nagar Tajpur Badapur Jaitpur Dharam Market 110044 Delhi', 'Delhi'),
(291, 'Ravi Sahnkar', '9911851419', 'H No. 16 ,Ekta Vihar Meethapur Extn Street No. 2 Durga Builder Gate Near.Badarpur 110044 Delhi', 'Delhi'),
(292, 'Kanhaiya Lal', '9911885130', 'S-239/221/589 BIW Colony BTPS Badarpur NTPC Gate No-1 110044 Delhi', 'Delhi'),
(293, 'Kamal', '9911917058', 'C/O Asha Ram House No-I-2/66 Madangir J J Colony Khanpur Near-Shani Dev Mandir Bala Ji Medical 110062 Delhi', 'Delhi'),
(294, 'Kamal Gupta', '9953429494', 'H No-B-229 J J Colony Khan Pur Nr- Post office 110062 Delhi', 'Delhi'),
(295, 'Sunita Devi', '9953449991', 'H No-B-430/A J J Camp Tigri Nr Gurudwara 110062 Delhi', 'Delhi'),
(296, 'V Dhandapani', '9990146607', 'H NO-S-67/333-A Iyyappa Temple Madrasi Camp Jai Vihar Lajpat Nagar-1 NR-Shiva Mandir 110024 Delhi', 'Delhi'),
(297, 'Reji', '9990816142', 'C/o Tarawati H No II/86 2nd Flr Madan Gir Nr Shani Mandir 110062 Delhi', 'Delhi'),
(298, 'Ashok Kumar', '9999210097', 'S/O Late Subhram H No-H-78 Block-H Saurabh Vihar Jaitpur Nr-Kasana Mandir 110044 Delhi', 'Delhi'),
(299, 'Pawan Kumar', '9999219009', 'H No 209 Gujjar Mohalla Chandan Hola Village Nr Chhattarpur Temple 110074 Delhi', 'Delhi'),
(300, 'Suleman .', '9999335913', 'H No-167 Block-C Gali No-11 Madanpur Khadar Extn Nr-Bari Masjid 110076 Delhi', 'Delhi'),
(301, 'Sanjeev Tokas', '9999372104', 'S/O Jai Singh Tokas H No-211D/1 Munirika Village Community Center Nr- Badoda Bank 110067 Delhi', 'Delhi'),
(302, 'Sheikh Mohirom', '9999501324', '212a Shahpur Jat Near MCD School 110049 Delhi', 'Delhi'),
(303, 'Prem Chand', '9999516461', 'H No B 23/A-4 Block B Iit Campus Hauz Khas 110016 Delhi', 'Delhi'),
(304, 'Pawan', '9999604586', 'H No-J-151/10C Block-J-1 Gali No-10C Sangam Vihar Nr Govt School 110062 Delhi', 'Delhi'),
(305, 'Ritu .', '9999641710', '2897 Block-F Neta Ji Nagar , 110023 Delhi', 'Delhi'),
(306, 'Ramavtar Sharma', '9999687140', 'H No-A-400 Jait Pur Extn Badarpur Nr-Gurudwara 110044 Delhi', 'Delhi'),
(307, 'Santosh Kumar Dawal', '9999731894', '450 Sapera Gali Ali Vill Sarita Vihar Monu Ki Dukan Parchun 110076 Delhi', 'Delhi'),
(308, 'Rakesh Kumar', '9999850437', 'H No L-I 985/14 Sangam Vihar Nr sunny market 110062 Delhi', 'Delhi'),
(309, 'Vikrant Singh', '9999872700', 'H No-L-83 Block-L Saurabh Vihar Badarpur Vijay Public School 110044 Delhi', 'Delhi'),
(310, 'Arjun Chauhan', '9810663845', 'H No-G-6 Street No-19 40 Futa Road Jagatpuri Near Ambedkar Gate 110051 Delhi', 'Delhi'),
(311, 'Arjun Chauhan', '9810663846', 'Hno-G-6 Jagatpuri Gali No-19 Near Ambedkar Gate 110051 Delhi', 'Delhi'),
(312, 'Rajinder Kumar', '9999554098', 'HNO-774 Gali No-16 Lakpat Colony-2 Mithapur Extn Nr barat ghar 110044 Delhi', 'Delhi'),
(313, 'Achal Sharma', '9711770184', 'H No 243/3 2nd Floor Gali No 3 Govind Puri Kalkaji Nr AND collage 110019 Delhi', 'Delhi'),
(314, 'Vijay Kumar', '9873210636', 'A-33A East Uttam Nagar , 110059 Delhi', 'Delhi'),
(315, 'Vijay Kumar', '9873699402', 'A-33 Blk-A East Uttam Nagar Nr-Pali Factory 110059 Delhi', 'Delhi'),
(316, 'Neha Jain', '9873246775', 'H No-H-205,Aruna Appts, 33,I P Extn,Patparganj, Near-Max Hospital,Nr Opp.Side Prince Apt 110092 Delhi', 'Delhi'),
(317, 'Rishabh Gupta', '9953947323', 'H No 16/647 E Tank Road Karol Bagh Nr Shiv Mandir 110005 Delhi', 'Delhi'),
(318, 'Synkron Inc', '9711300130', 'Karan 23 Khanna Market Lodhi Road 110003 Delhi', 'Delhi'),
(319, 'Deepak Bhalla', '9999022666', 'L1/9 Satsang Road Mohan Garden Uttam Nagar Nr Gagan Bharti School 110059 Delhi', 'Delhi'),
(320, 'Priti Varshney', '9711987795', 'House Number-D-221, Gali No-9 Block-D, Laxmi Nagar Delhi Near-Laxmi Nagar Metro Station 110092 Delhi', 'Delhi'),
(321, 'Chaman Lal', '9911545253', '305 Harijan Basti Vajirpur Thakran 110039 Delhi', 'Delhi'),
(322, 'Gurpreet Singh', '9899919827', 'H No-26/183 2nd Floor West Patel Nagar New Shani Mandir 110008 Delhi', 'Delhi'),
(323, 'Ravi Kumar Singh', '9953200568', 'Flat No 344 Om Apartment LIG House Dwarka Sector 14 Near Dwarka Sec 14 Police Chouky 110078 Delhi', 'Delhi'),
(324, 'Ruchika Sethi', '9873399327', 'B-247/12 Amrit Puri East Of Kailash Nr Iskcon Temple 110065 Delhi', 'Delhi'),
(325, 'Sumit K Mehra', '9953552812', 'C/O Hariom Gupta, H No-MB-42 MB Block 2nd Flr, Gali No-2 Chattarpur Near Jain Mandir 110092 Delhi', 'Delhi'),
(326, 'Tarun Batra', '9999500661', 'Plot No-9,G/F Inder Enclave,Rohtak Road HOPSITAL Opp Shymphani Banquet Hall 110087 Delhi', 'Delhi'),
(327, 'Virender Singh Yadav', '9999535777', 'H No-RZ-9-A/ 2 Gali No-8-A, Sadh Nagar Palam Colony 110045 Delhi', 'Delhi'),
(328, 'Rahul Kumar Chauhan', '9711608330', 'D-506 West Vinod Nagar Nr Mahesh Hospital 110092 Delhi', 'Delhi'),
(329, 'Ajay Saxena', '9711282086', 'Hno-110 2Nd Floor Dtc Colony, Model Town Nr Gurudwara 110009 Delhi', 'Delhi'),
(330, 'Ajay Saxena', '9711284264', '110 2 Floor Dtc Colony Model Town Gurudwara 110009 Delhi', 'Delhi'),
(331, 'Amrita Choudhary', '9873110635', 'H No-251 Gali no-5 Durga puri Extn Near- Gurudwara Gali No-4 110093 Delhi', 'Delhi'),
(332, 'Amrita Choudhary', '9873113748', 'H No-251 Gali no-5 Durga puri Extn Near- Gurudwara Gali No-4 110093 Delhi', 'Delhi'),
(333, 'Irfan', '9716094786', 'H No D-229 Street No 17 Old Mustafabad Near Noor Masjid 110094 Delhi', 'Delhi'),
(334, 'Akshima .', '9999397393', '518/6A Vishwas Nagar Karkari Road Nr HDFC Bank 110032 Delhi', 'Delhi'),
(335, 'Chander Dhar', '9953322480', 'House No - 80A Steet no -5 Anarkali Garden Jagatpuri nr Power Tranamer 110051 Delhi', 'Delhi'),
(336, 'Chander Dhar', '9953323791', 'House no - 80A Steet no -5 Anarkali Garden Jagatpuri nr Power Tranamer 110051 Delhi', 'Delhi'),
(337, 'Neha Jain', '9811658275', 'H No-88 Block-F Poket-5 Sec-16 Rohini Nr-Rock Sikld Public School NR DDA PARK 110085 Delhi', 'Delhi'),
(338, 'Harish Chander Bhatt', '9953962562', '1198/3, BLOCK B Baba Colony ,Gali No 3A,Burari Nr Mother Teresa School 110085 Delhi', 'Delhi'),
(339, 'Vikki .', '9873601362', 'H No 886 G/F Block-CF Madan Gir Nr Kishna mandir 110062 Delhi', 'Delhi'),
(340, 'Nishant Sharma', '9871119264', 'H No- 462 / 5 Mahram Mohalla Vishwash Nagar Bharat Medical Store 110032 Delhi', 'Delhi'),
(341, 'Rajat Chawla', '9999030052', 'H No-6024-5,2nd Floor,D6, Santushti Appartment,Vasant Kunj, - 110070 Delhi', 'Delhi'),
(342, 'Satish Kumar Yadav', '9711846686', 'H No-318 1st Floor G-Block Nauroji Nagar Hayat Hotel 110029 Delhi', 'Delhi'),
(343, 'Khushboo Arora', '9999240950', 'H No A-1/59 Block A-1 Paschim Vihar , 110063 Delhi', 'Delhi'),
(344, 'Lalita .', '9711570960', 'H No-1153 Ishwar Colony Village Bawana Dav Public School 110065 Delhi', 'Delhi'),
(345, 'Deepak Kumar', '9911659595', '137 Pkt-G-27 Sec-3 Rohini Near Abhinav Public School 110085 Delhi', 'Delhi'),
(346, 'Kiran Saini', '7838436597', 'H No 2281/173 Gali No 173 Ganesh Pura Tri Nagar 110053 Delhi', 'Delhi'),
(347, 'Kiran Saini', '9711286918', 'H No-2281/173 Gali No-173 Ganesh Pura Tri Nagar Delhi 110035 Delhi', 'Delhi'),
(348, 'Kiran Saini', '9873448483', 'S/O Lachh Minder Saini H No-2281/173 Gali No-173, Ganesh Pura Tri Nagar 110035 Delhi', 'Delhi'),
(349, 'Kiran Saini', '9873550107', 'S/O Lachh Minder Saini H No-2281/173 Gali No-173, Ganesh Pura Tri Nagar 110035 Delhi', 'Delhi'),
(350, 'Chetan Sharma', '9899372484', 'A-164 Third Floor Inderpuri Nr Sbi Atm 110012 Delhi', 'Delhi'),
(351, 'Shri Krishna Singh', '9999460796', 'J N Singh 578 Sarvhit Appt Dda Flats Pkt-A Sec-17 Dwarka Nr- Ip University 110075 Delhi', 'Delhi'),
(352, 'Gurinderjit Singh', '9711411491', 'H No-30/45 New Rohtak Road Karol Bagh 110005 Delhi', 'Delhi'),
(353, 'Aashutosh Sharma', '9999673122', 'H No-C/132 West Vinod Nagar Street No-9 Nr- Manglam Hospital 110092 Delhi', 'Delhi'),
(354, 'Jagdish .', '9868970203', '581 Bajit Pur Thakran Delhi 110039 Delhi', 'Delhi'),
(355, 'Pankaj Chikara', '9873391355', 'H No-78 Vill-Tetesar P O-Jaunti Nr Purani Gali 110081 Delhi', 'Delhi'),
(356, 'Ritika Malik', '9811262281', 'H NO-8/17 East Patel Nagar New Delhi Nr Patel Nagar West Metro Station 110008 Delhi', 'Delhi'),
(357, 'Anit Choudhary', '9873751169', 'H No-D377, Gali No-9 D-Block Bhajan Pura , 110053 Delhi', 'Delhi'),
(358, 'Anshuman Singh', '9990016007', 'Rzd3/116 Gali No-9 Mahavir Encl Palam Road Semrok School,Sai Baba Mandir 110045 Delhi', 'Delhi'),
(359, 'Khushbu .', '9953335474', 'H No-C-196,2nd Sarita Vihar C-Block Market 110044 Delhi', 'Delhi'),
(360, 'Naveen Dabas', '9999245826', 'C/O Naresh 1201 Ramayan Panna Village Pooth Khurd Delhi Near Old Post Office 110039 Delhi', 'Delhi'),
(361, 'Pankaj Kumar', '9899014464', '1B-64 , Third Floor Single Storey , Ramesh Nagar , 110015 Delhi', 'Delhi'),
(362, 'Kaushal Kumar Sharma', '9711415614', 'H No WZ 193 Shakur Pur Delhi 110034 Delhi', 'Delhi'),
(363, 'Amit Kr Yadav', '9873008200', 'S/O Suresh Chand H No-8/320 Mandoli Extn Nr Krishna Sweets 110093 Delhi', 'Delhi'),
(364, 'Suraj Prakash Pandey', '9873325811', 'H NO 1049 A First Floor Govind Puri Kalkaji Gali No 10 110019 Delhi', 'Delhi'),
(365, 'Varsha Gupta', '9899882811', 'H No B-12 Flat No 3 Anupam Enclave Ph-1 Ignou Road Saidulajab Extn 110030 Delhi', 'Delhi'),
(366, 'Atul Kumar Gupta', '9999757673', 'H No-G-254 Mohan Baba Nagar Tajpur Pahari Badarpur New Delhi Near Opp SBI ATM 110044 Delhi', 'Delhi'),
(367, 'Gaurav Chaturvedi', '9999972246', 'A-55 1st Floor Sudershan Park Shankar Ji Ki Murti Sanatan Dharm 110015 Delhi', 'Delhi'),
(368, 'Gaurav Chaturvedi', '9999972247', 'House No-55,Block-A, Sudershan Park, Near Shankar Ji Ki Murti, 110015 Delhi', 'Delhi'),
(369, 'Abhinav Sharma', '9810421515', 'House No-D-11/56 Shahjahan Road DELHI DELHI 110011 Delhi', 'Delhi'),
(370, 'Aditya Kumar Singh', '9811313098', 'H No - 126 Ward No - 9 Kishangarh Vasant Kunj Gaushala Mandir 110070 Delhi', 'Delhi'),
(371, 'Ankush Chander', '9999034728', 'B- 186 Pandav Nagar First Floor Shakarpur Near Mother Dairy 110092 Delhi', 'Delhi'),
(372, 'Komal Sharma', '9873418052', 'H No 4/375, Gali No 13, Idgah Road Bhola Nath Nagar Shahdara ID Gold Road 110032 Delhi', 'Delhi'),
(373, 'Brijesh Kumar Rai', '9953473354', 'H No B 316 1st Floor Sec 1 Rohini Avantika Delhi 110085 Delhi', 'Delhi'),
(374, 'Prince Saini', '9899913045', 'H No 21A, Khasra No 876 Block-D Nehru Enclave Nr Corpration Bank 110036 Delhi', 'Delhi'),
(375, 'Yamini Diwan', '9811498535', '2440 Hudson Lines Kingsway Camp GTB Nagar 110009 Delhi', 'Delhi'),
(376, 'Abad Ali', '9811692144', 'Shop No 16 MCD market Angoori bagh Delhi 110006 Delhi', 'Delhi'),
(377, 'Astha Enterprises Alpana', '9711304782', 'Astha Enterprises E35/30 Feet Road, Jagatpuri Ext , 110093 Delhi', 'Delhi'),
(378, 'Astha Enterprises Nishtha', '9953041907', 'Astha enterprises E35/30 Feet Road, Jagatpuri Ext , 110093 Delhi', 'Delhi'),
(379, 'Astha Enterprises Rahul', '9999399574', 'Astha Enterprises E35/30 Feet Road, Jagatpuri Ext , 110093 Delhi', 'Delhi'),
(380, 'Astha Enterprises Arpan', '9999399593', 'Astha Enterprises E35/30 Feet Road, Jagatpuri Ext , 110093 Delhi', 'Delhi'),
(381, 'Astha Enterprises Arpan', '9999985672', 'Astha Enterprises E35/30 Feet Road, Jagatpuri Ext , 110093 Delhi', 'Delhi'),
(382, 'Pushkar Raj', '9811169395', 'H No-D-130 Iiird Floor Lajpat Nagar Part-I Nr Opp Park Facing 110024 Delhi', 'Delhi'),
(383, 'Neha Kapoor', '9999039960', 'H No-2/5, 1st Floor East Punjabi Bagh , 110026 Delhi', 'Delhi'),
(384, 'Ahmad Parvez', '9990576890', 'S/O I Z Aledin B - 237-238, G Floor Gandhi Vihar Near Dr Mukherjee Nagar Near Mukherjee Nagar Post Office 110009 Delhi', 'Delhi'),
(385, 'Sourav Kumar', '9899387617', 'H No-C-153 New Ashok Nagar Nr-Mata Dairy 110096 Delhi', 'Delhi'),
(386, 'Swati Gupta', '9899052237', 'H No-522/7 Pushp Vihar Nr Select City Walk  110017 Delhi', 'Delhi'),
(387, 'Vipin Yadav', '9811986664', '675 Radha Krishna Mandir Veer Bzr, Wali Gali 110037 Delhi', 'Delhi'),
(388, 'Akhil Saxena', '9873604619', 'H No B 58/2 East of Kailash Hdfc Bank 110065 Delhi', 'Delhi'),
(389, 'Arun Kumar Singh', '9711979876', 'S/O Mr Lal Ram H No-E-16 Gali No-1 West Vinod Nagar Nr-Mangal Hospital 110092 Delhi', 'Delhi'),
(390, 'Gurpreet Singh', '9910117985', 'H No-1/9547 Gali No-2/1 Pratap Pura West Rohtash Nagar Shahdara Behind Mukut Pan Bhandar 110032 Delhi', 'Delhi'),
(391, 'Kush Shukla', '9999795635', 'S/O Mr J Narayan Shukla H No-55 3Rd Floor, Sultan Pur Extn Nr-Gurudwara 110030 Delhi', 'Delhi'),
(392, 'Pooja Arora', '9999826016', '20 Road No-68 West Punjabi Bagh Nr-Club Road 110026 Delhi', 'Delhi'),
(393, 'Permod Kumar', '9818185192', 'H No-RZ-126A/60 Gali No-13 Sagar Pur Kali Mata Mandir 110046 Delhi', 'Delhi'),
(394, 'Pawan Yadav', '9718276968', 'H No RZ-47 C Block Old Roshan Pura Najaf Garh Near SBI Bank Gali 110043 Delhi', 'Delhi'),
(395, 'Mahesh Chandra', '9990134748', 'S/O V L Sharma H No-205, Hadoo Mohalla Madanpur Khadar, Sarita Vihar Nr Harijan Chopal 110076 Delhi', 'Delhi'),
(396, 'Pankaj Kumar', '9873026251', 'S/O Sh Balwan Singh Old Add 409 New Add- 164 Pandit Mohalla Vpo Khera Khurd Shyam Baba Chowk 110082 Delhi', 'Delhi'),
(397, 'Randhir Singh', '9899339788', 'Directorate General Of Military Intellig Sena Bhawan IHQ of MoD Army DHQ PO General Staff Branch Room No-822 110011 Delhi', 'Delhi'),
(398, 'Madhav Kapur', '9953147665', 'H No-E-1/7 Model Town Near Naini Lake 110009 Delhi', 'Delhi'),
(399, 'Romila Singh', '9999701521', 'Flat No - 217 Pocket - 8, Sector - 12, Dwarka Near Bal Bharti Public School 110075 Delhi', 'Delhi'),
(400, 'Manu Parmar', '9953978265', 'C-174 Top Floor Lajpat Nagar-1 Near Defence Clony Block-C 110024 Delhi', 'Delhi'),
(401, 'Swati', '9899478756', 'S/o Yogender Kumar 315 Pocket B 5 Sector 3 Rohini New Delhi 110085 Delhi', 'Delhi'),
(402, 'Ashwani Kumar', '9899773756', 'HOC-Pink House No-315 B-5/315 Sec-3 Rohini Near-MCD School 110085 Delhi', 'Delhi'),
(403, 'Aashish Kumar', '9810571629', 'Cn-709, S-Block Bengali Camp, Isirieal Camp, Rangpuri Pahari 110037 Delhi', 'Delhi'),
(404, 'Monika Jain', '9999689202', 'H No 75 Shakar Pur Baramad Shakar Pur Nr Karkardooma Court Bahubali Enclave 110092 Delhi', 'Delhi'),
(405, 'Ajit', '9953881607', 'H No-H-55B Blk-H Vijay Vihar Ph-ll Nr-Raj Medical Store 110085 Delhi', 'Delhi'),
(406, 'Sanjeev Bhardwaj', '9910104181', 'RZF-244A C/o Niranjan Lal Goyal Rajendar part 2 Palam Colony Nr-DDA Park 110045 Delhi', 'Delhi'),
(407, 'Sanjeet Bhardwaj', '9953114191', 'C/o Niranjan Lal Goyal RZF-244A Raj Nagar Part-2 Nr DDA Park Plaza Colony 110045 Delhi', 'Delhi'),
(408, 'Shankar Sharma', '9711169186', 'S-15 Chanakya Place Part-2 C-1 Nr-Janakpuri Nr-Janakpuri 110059 Delhi', 'Delhi'),
(409, 'Shiv Sharma', '9968160686', 'S- 15 Block S Chankiya Place Part-2 Uttam Nagar Mogia Building 110059 Delhi', 'Delhi'),
(410, 'Shiv Sharma', '9999285615', 'H No S-15 Block S Chanakya Place-II Uttam Nagar Near Mongia Building 110059 Delhi', 'Delhi'),
(411, 'Vishal Varma', '9871035557', 'Flat No-2F Neeti Apartment Plot No-84 IP Extn Paparganj opp Side of pankaj plaza 110092 Delhi', 'Delhi'),
(412, 'Vishal Varma', '9871037711', 'Flat No-2F Neeti Apartment Plot No-84 IP Extn Paparganj opp Side of pankaj plaza 110092 Delhi', 'Delhi'),
(413, 'Yogesh Arora', '9899990049', 'H No-CA-80-C Hari Nagar DDA Flats NR-Hari Nagar Clock Tower 110064 Delhi', 'Delhi'),
(414, 'Rakesh Kapoor', '9873142270', 'E-58 Blk-E Lajpat Nagar-2 Nr Shyam Garments 110024 Delhi', 'Delhi'),
(415, 'Sunil Kumar', '9910461424', 'S/O Roop Chand S/O-Roop Chand H No-25 Naya Bans Harijan Mohalla Vill Iradat Ngr 110082 Delhi', 'Delhi'),
(416, 'Sumit Chaudhary', '9711195718', 'H No-5/295 Mohalla Maharam Shahadra Nera- Farsh Bazar Ploice Station 110032 Delhi', 'Delhi'),
(417, 'Sumit Chaudhary', '9711195814', 'H No-5/295 Mohalla Maharam Shahadra Nera- Farsh Bazar Ploice Station 110032 Delhi', 'Delhi'),
(418, 'Vikram Kapoor', '9811030216', 'H No - D1/16, First Floor Janakpuri B-1 Near Tilak Nagar Jail 110058 Delhi', 'Delhi'),
(419, 'Pradeep Kumar Pandey', '9999035733', 'Hno GC-27 Block GC Pul Pehlad Pur Nr School Tool Tax 110044 Delhi', 'Delhi');
INSERT INTO `tbl_forms` (`member_id`, `member_name`, `member_number`, `member_address`, `member_city`) VALUES
(420, 'Parul Jain', '9810764243', 'HNo D 7 Vardhman Apartments Apts Mayur Vihar I Samarhar 110091 Delhi', 'Delhi'),
(421, 'Ravinder Singh', '9873917898', '132 Ishwar Colony Bawana Shanti Vidaya Nikeetan School 110039 Delhi', 'Delhi'),
(422, 'Ravi Kamal', '9899573356', 'Hno D-68A Gali No 7A Ganesh Nagar Pandav Nagar Nr Kali Mandir 110092 Delhi', 'Delhi'),
(423, 'Ruchika Goyal', '9811102411', 'cottage no-22 West Patel nagar Chocolate cake studio 110008 Delhi', 'Delhi'),
(424, 'Shikha Sachdeva', '9999914240', 'C-9/95 Sec-8 Rohini Delhi Near Saroj Hospital Madhuban Chowk 110085 Delhi', 'Delhi'),
(425, 'Shivani Sharma', '9899571141', 'C/o. Mukesh Sharma H No RZ-616 Main Road Palam Colony Raj Nagar Part-1 Near Opp Pillor No-51 110077 Delhi', 'Delhi'),
(426, 'Vishal Gupta', '9999393980', 'H No PU -49 Blk PU Pitampura Delhi 110088 Delhi', 'Delhi'),
(427, 'Himanshu Khurana', '9990625096', 'H No 38 B Block J G/3 Vikas Puri Nr H Block Lal Market 110018 Delhi', 'Delhi'),
(428, 'Shisher Prasad', '9953184088', 'Flat No 401, 3Rd Floor, Building No R50, Khirki Extn,Near Womens Politecnic Collage,Nr Sai Mandir 110017 Delhi', 'Delhi'),
(429, 'Sumit Bhardwaj', '9873262095', 'Old House No-404 New H No-380 4th Flor Haveli Haider Quli Chandani Chowk Near Fatehpur Masjid 110006 Delhi', 'Delhi'),
(430, 'Tanya Khanna', '9899345079', 'S/O Vimal Khanna F-437/B, New Rajinder Nagar Nr Dda Mkt 110060 Delhi', 'Delhi'),
(431, 'S Padhanabhan', '9818697415', 'H No 175 Block-12 Lodhi R Colony Center Park 110003 Delhi', 'Delhi'),
(432, 'Ranjit Roy', '9999513391', 'C/O Radhy Shyam HNo-62 Singal Pur Village Shalimar Bagh Nr- DLF City Center Mall 110088 Delhi', 'Delhi'),
(433, 'Praveen Saini', '9999114299', 'HOC-Cream Tiles House No-9 Gali Shiv Mandir Village-Shalimar Near-Shiv Mandir 110088 Delhi', 'Delhi'),
(434, 'Rahul Mehta', '9999974542', 'H No-85 2nd Floor Block-BN West Shalimar Bagh Delhi 110088 Delhi', 'Delhi'),
(435, 'Megna Kataria', '9873287001', 'S/O Rajbir Kataria B2/72 Gram Saba Houses Sewak Park Nr-Dwarka Morh Metro Station 110059 Delhi', 'Delhi'),
(436, 'Ritesh Kumar', '9818008264', '107-C,Platinum Enclave,Sec-18 Rohini nr crime branch office 110089 Delhi', 'Delhi'),
(437, 'Shikha Bhaskar', '9899890263', '21 B Block-CA, Shalimar Bagh  110088 Delhi', 'Delhi'),
(438, 'Parul .', '9811891036', 'D/o TK Kaul D-3/3158 Vasant Kunj Fortis Hospital 110070 Delhi', 'Delhi'),
(439, 'Parul .', '9811891259', 'D/o TK Kaul D-3/3158 Vasant Kunj Fortis Hospital 110070 Delhi', 'Delhi'),
(440, 'Supreet Kaur', '9891451362', 'H.No.5 Road No-26 Ist Floor Punjabi Bagh Ext Behind Bikaner Wala 110026 Delhi', 'Delhi'),
(441, 'Syed Zafar Ali', '9999623080', 'So Mr Zafar Ali C/O Harsh House-55/2 Room-4 1St Flr Post Office Jnu Vill-Munirka Near Gurudwara 110067 Delhi', 'Delhi'),
(442, 'Anjali', '9999470489', '34/1115 DDA Flats Madangir Delhi 110062 Delhi', 'Delhi'),
(443, 'Amit K Kushwaha', '9999655762', 'H No-C-20 Bangalow Road Adarsh Nagar Near By Shri Guru Nank Public School 110033 Delhi', 'Delhi'),
(444, 'Ravi Prakash', '9999287789', 'H/No-302,1st Floor Pkt-5,Mayur Vihar Ph-1 Nr-Shashi Garden 110091 Delhi', 'Delhi'),
(445, 'Mumtaz .', '9953226613', 'House No-30/390, Block 30 Trilok Puri , 110091 Delhi', 'Delhi'),
(446, 'Pankaj Singh', '9999881835', 'S/o Jai Kant Singh Rz 3233/36 Tughalkabad Ext aali Nr Shani Public School 110019 Delhi', 'Delhi'),
(447, 'Rahul Rathore', '9999443052', 'H/No-X/1070,Gali No-3 Chand Mohalla Gandhi Nagar , 110031 Delhi', 'Delhi'),
(448, 'Rajnee Kant', '9899749262', 'H,No,189, 2nd Floor Babu Lal Chowk Moti Wara Chaupal Munirka Village Nr-Moti Wara Chaupal 110067 Delhi', 'Delhi'),
(449, 'Subhash Kumar', '9999364491', 'S/O Mr Munna Lal H No-J-75 West Ansari Nagar Aiims Staff Qurter 110029 Delhi', 'Delhi'),
(450, 'Arti Kaushik', '9811561349', 'L-72 Mahipalpur Extn  110037 Delhi', 'Delhi'),
(451, 'Manish Kumar Sinha', '9899794048', 'Flat No-622 Azad Hind CGHS Plot No-15 Dwarka 110077 Delhi', 'Delhi'),
(452, 'Mridu Singh', '9968203809', 'C/o Anju HNo J2/12B Ground Floor Khirki Extnsion Malviya Nagar NR Krishna Mandir,Agarwal SweetsWaliGali 110011 Delhi', 'Delhi'),
(453, 'Neha Aggarwal', '9711192775', 'F-126 2nd Floor Flat No-202 Clips Appt Lado Sarai , 110030 Delhi', 'Delhi'),
(454, 'Ripul Gambhir', '9711959505', 'H No 42/6, Ashok Nagar New delhi House Tax Office 110018 Delhi', 'Delhi'),
(455, 'Ripul Gambhir', '9810634927', 'S/o Suresh Gambhir H No 42/6 Ashok Nagar Nr Hosin Tax Office 110018 Delhi', 'Delhi'),
(456, 'Ripul Gambhir', '9911488489', 'H No-42/6 Ashok Nagar BACKSIDE ENTRY 110018 Delhi', 'Delhi'),
(457, 'Tanvi Mehat', '9711517581', 'H No C 10 Block C Lajpat Nagar 3 Haldi Ram Or Mulchand Hospital , 110024 Delhi', 'Delhi'),
(458, 'Ashish Kumar', '9899009968', 'H No-A-243/2 Swaroop Nagar Delhi NR-Praimery School 110042 Delhi', 'Delhi'),
(459, 'Harsh Tanwar', '9910274200', 'WZ-911/3 Naraina Village Near Choudhary Restaurant 110028 Delhi', 'Delhi'),
(460, 'Gaurav .', '9873299725', 'House No-B-24/117 Ist Floor Mangal Bazar Road Gurunananakpura laxmi Ngr Near Maharaja Banquet Hall 110092 Delhi', 'Delhi'),
(461, 'Rajni Misra', '9811717903', '9160 Sec-C Pkt-9 Vasant Kunj Near DPS School 110070 Delhi', 'Delhi'),
(462, 'Om Prakash', '9811821925', 'S/O Laxmi Narayan C - 195/B Block - C Rama Vihar Mond Pur Majri Near Durga Mandir Chowk 110081 Delhi', 'Delhi'),
(463, 'Sandeep .', '9899051878', 'H no 68 Gali no 12 Kapashera Nr Sahara Office,Mata Wali Gali 110037 Delhi', 'Delhi'),
(464, 'Orient Fans Ltd', '9999266130', 'User-Manoj Verma 82 1st Floor Okhla Industrial Estate Phase-3 New Delhi 110020 Delhi', 'Delhi'),
(465, 'Orient Fans', '9999894088', 'User-Manoj Verma Plot No-82 Okhla Indl Area Ph-3 Delhi 110020 Delhi', 'Delhi'),
(466, 'Rajiv Chowdhary', '9873691960', 'H No - C-226 Saket Golf View Appts 110017 Delhi', 'Delhi'),
(467, 'Rekha Sharma', '9999304685', 'A-251 Blk A Meera Bagh Paschim Vihar Opp Snatan Dharam Mandir 110087 Delhi', 'Delhi'),
(468, 'Rekha Sharma', '9999872348', 'A-251 Block-A Meera Bagh Paschim Vihar Nr-Santan Dharam Mandir 110087 Delhi', 'Delhi'),
(469, 'Amit Kaushik', '9968833331', 'B 774 Avantika Sec-1 Rohini Delhi 110085 Delhi', 'Delhi'),
(470, 'Hemraj .', '9873707948', 'Kh-123/18, Gali No-15, Sant Nagar Burari Near-NDPL Office 110084 Delhi', 'Delhi'),
(471, 'Jogendra Kumar', '9953923581', 'H No- 110 MIG Flats Metro Appt Jhangir Puri Delhi 110033 Delhi', 'Delhi'),
(472, 'Sunil .', '9711480850', 'S/o Mool Chand H No-A-90 Block-A DDA Flats Kalkaji Hanuman Mandir 110019 Delhi', 'Delhi'),
(473, 'Sunil', '9811287693', 'S/o Mool Chand, House No-A-90 Block-A, DDA Flats, Kalka Ji Near Hanuman Mandir 110019 Delhi', 'Delhi'),
(474, 'Avanti Yadav', '9873385346', '60/11 Sec-1 Pushp Vihar Mother Dairy Sec-1 110017 Delhi', 'Delhi'),
(475, 'Brij Pal Gahlot', '9891261515', '182/9 Dr. Ambedkar Basti Ghonda Near Community Centre 110053 Delhi', 'Delhi'),
(476, 'Brij Pal Gahlot', '9891551515', '182/9 Dr. Ambedkar Basti Ghonda Near Community Centre 110053 Delhi', 'Delhi'),
(477, 'Sandeep Sharma', '9873309746', 'A-10 Gali N0-1, A- Block Brahampuri 110053 Delhi', 'Delhi'),
(478, 'Suresh R', '9811179696', 'S V Temple,T T D Information Centre, Gol Market, Beside- Kendriya Vidyalya, 110001 Delhi', 'Delhi'),
(479, 'Naresh Kumar', '9811972738', 'H No-40 Baragi Mohalla Vill Ghoga Delhi 110040 Delhi', 'Delhi'),
(480, 'Sarita .', '9899439012', 'House no - 518 -B Street no - 4 Vijay park maujpur ne national publick school 110053 Delhi', 'Delhi'),
(481, 'Deepak Kumar', '9811459375', '106-107 Pocket-8 Sec-24 Rohini Near D-Indian Public School 110085 Delhi', 'Delhi'),
(482, 'Navin Kumar', '9811047983', 'Flat No-768, Baghwan Appt, Sector-28, Rohini, Near-Shabad Dairy Bus Stand, 110085 Delhi', 'Delhi'),
(483, 'Navin Kumar', '9999026863', 'H No 768 GH 2 IIIrd Floor Sec 28 Rohini Delhi 110028 Delhi', 'Delhi'),
(484, 'Vikash .', '9999739146', '341/4 Flat NO-5 2nd Flr Ward NO-4 Inder Compx Mehrouli Red Imate Gali Nr-Mehroli Police Stn 110030 Delhi', 'Delhi'),
(485, 'Anjana', '9718721444', 'HouseNo-G 241 G-Block Gali No-6 Punjabi Colony Narela Budho Devi Hospital 110040 Delhi', 'Delhi'),
(486, 'Jogender Kumar', '9811274624', 'D-119,Gali No-6,Vijay Colony,Usmanpur Ghonda Bhajan Pura North East Near Punjab Dairy 110053 Delhi', 'Delhi'),
(487, 'Jogendra Kumar', '9953722731', 'D-119,Gali No-6,Vijay Colony,Usmanpur Ghonda Bhajanpura North East Near Punjab Dairy 110053 Delhi', 'Delhi'),
(488, 'Surendra Singh', '9873193989', 'Rz-78 3Rd Floor Shani Bazar Nr- Shani Mandir Jain Colony -2 Nr- Above Kapoor Associate Uttam Naga 110059 Delhi', 'Delhi'),
(489, 'Sushil Kumar', '9953955258', 'S/O Virender Kumar, H No-857 Room No-10 2Nd Floor Uprahi Mohalla Nr Angan Bari Sunny General Store Mahipalpur 110037 Delhi', 'Delhi'),
(490, 'Pramod Sharma', '9873005945', 'House-D-12 Rajpur Khurd Nr Tivoli Garden Resort 110068 Delhi', 'Delhi'),
(491, 'Mahesh Kumar', '9811694366', 'C\\O Satish Tyagi , Wz-388, Hastal Village, Near Mcd School Uttam Nagar 110059 Delhi', 'Delhi'),
(492, 'Mahesh Kumar', '9811907011', 'S/o Dayanan Mahila H No WZ-388 Satish Tyagi House Village Hastsal Uttam Nagar Near Govt School 110059 Delhi', 'Delhi'),
(493, 'Niraj Kr Sharma', '9711678283', 'D-889 Gali No-13 Ashok Nagar  110093 Delhi', 'Delhi'),
(494, 'Santosh Kumar', '9999942718', 'E-431 Gali No-7 E-Block Jagjit Nagar Bahji Shop 110053 Delhi', 'Delhi'),
(495, 'Siddharth Sharma', '9811739335', 'Rk Sharma Wz-31C Jwala Heri Village Paschim Vihar Opp Dushera Park 110041 Delhi', 'Delhi'),
(496, 'Anil Kumar Pandey', '9873094960', 'C/O Jitender Gaba H No-Wz-6 Gali No-1 Srinagar Rani Bagh Delhi Nr Ram Mandir 110034 Delhi', 'Delhi'),
(497, 'Pankaj Singh', '9871127284', 'House No-275 2nd Flr Keshav Kunj Appt Pkt-D Sec-17 Dwarka , 110075 Delhi', 'Delhi'),
(498, 'Prateek Khandelwal', '9873104795', '6/60,3rd Flr,WEA Padam Singh Marg Karol Bagh Nr MC Donalds 110005 Delhi', 'Delhi'),
(499, 'Yashpal .', '9999355775', 'Harbans H No 1/10 Gali No 5 Shastri Nagar Ambedkar Park 110031 Delhi', 'Delhi'),
(500, 'Abhay Kumar Mishra', '9911469439', 'House Number-107/108 Laxmi Vihar Mohan Garden Uttam Nagar Near Malik P roperties 110059 Delhi', 'Delhi'),
(501, 'Amit Kumar', '9911640983', '28 Ghitroni Nr PNB ATM 110030 Delhi', 'Delhi'),
(502, 'Ashwani Baranwal', '9953130988', 'H No RZ-78/331 2nd Floor T Extn Vishwas Park Uttam Nagar Near Param Puri Chowk 110059 Delhi', 'Delhi'),
(503, 'Harish Sharma', '9911396562', 'H No-D-76/A F/F Old No-D-75 Krishna Park Delhi Road Nr Aggarwal Sweets 110062 Delhi', 'Delhi'),
(504, 'Rahul Arora', '9999993471', '12 Outram Lines GTB Nagar Near Metro Station 110009 Delhi', 'Delhi'),
(505, 'Rohit Koul', '9953051224', 'H No B-137 New Ashok Nagar Mayur Vihar Vihar Ph-1 Near East End Apartment 110096 Delhi', 'Delhi'),
(506, 'Mansi Kohli', '9873036777', '345 Gagan Vihar , 110092 Delhi', 'Delhi'),
(507, 'Supreet Singh', '9716666864', 'Flat No. 298, Pkt. B1, Top Floor, Lok Nayak Puram, Anmol Appt., 110041 Delhi', 'Delhi'),
(508, 'Manish Kumar', '9873555881', 'H No 148/5-B Mithapur Extn Badarpur Sindhu Farm Road 110044 Delhi', 'Delhi'),
(509, 'Sushil Kumar', '9999855946', '13 A, Gali No-1 Libas Pur Chandan Park 110042 Delhi', 'Delhi'),
(510, 'Prakash Kumar Roy', '9910780011', 'H No-158 Gali No-16 Mohan Garden Vipin Garden Extn Dwarka Mode Metro 110059 Delhi', 'Delhi'),
(511, 'Sneha Kumari', '9899366187', 'Hno- D-571 Block-D Okhla Industrial Area Ph-1 Nr- Shiv Shakti Mandir 110020 Delhi', 'Delhi'),
(512, 'Amit Kumar Shrivastva', '9971046115', 'H No-91 Vikas Marg Shakarpur Opp Nathus Sweet 110092 Delhi', 'Delhi'),
(513, 'Gaurav Khurana', '9818444442', 'H No-C-120 C Gali No-7 Majlis Park Adarsh Nagar Near N S Mandi 110033 Delhi', 'Delhi'),
(514, 'Dipti Thakur', '9999800600', 'S/O Hansraaj Thakur E-322 Gali No 5 West Vind Nagar Nr Mother Dairy 110092 Delhi', 'Delhi'),
(515, 'Tapas Pradhan', '9953532382', 'H No D 118 A South Ganesh Nagar SAGAR GUEST HOUSE AT LEFT HAND SIDENr S 110092 Delhi', 'Delhi'),
(516, 'Rakesh Kumar', '9971938499', 'E-36 A/153 Blk-32 33 Ambedkar Camp Trilok Puri Nr Madina Masjid/Transfarmer Wali Gali 110091 Delhi', 'Delhi'),
(517, 'Varun Mittal', '9873702770', 'H No-B-1538, B Block Shastri nagar Agarsen dharam shala wali gali 110052 Delhi', 'Delhi'),
(518, 'Ashish Kumar Maurya', '9810944293', 'D164A, D Block Madhu Vihar 2 number Market CR Park 110059 Delhi', 'Delhi'),
(519, 'Rajat Chaudhary', '9958041112', 'HNo D2 Plot No 10-11 Sec 11 Rohini NR Japanese Park 110085 Delhi', 'Delhi'),
(520, 'Amardeep Singh', '9999449044', 'H No E-111, Grd Floor, Amar Colony, Lajpat Nagar-4, Nr Mother Dairy, 110024 Delhi', 'Delhi'),
(521, 'Meenu Gupta', '9953872756', 'F-85B 3rd Floor Laxmi Nagar Mangal Bazar 110092 Delhi', 'Delhi'),
(522, 'Rinkaj Yadav', '9818086455', 'H No- 155 Dhakka Village Kingsway Camp G.T.B Nagar Near Old Chopal 110009 Delhi', 'Delhi'),
(523, 'Rinkaj Yadav', '9953812601', 'H No- 155 Dhakka Village Kingsway Camp Nagar Near Old Chopal 110009 Delhi', 'Delhi'),
(524, 'Rajender Kumar', '9711676192', 'House No-1/99 NCERT Ty pe NCERT Campus Kutub Hotel 110016 Delhi', 'Delhi'),
(525, 'Suhail Moin Khan', '9899091743', 'Flat No 205 Saraswati Block-1 Pkt-6 Sec-D mother dairy 110070 Delhi', 'Delhi'),
(526, 'Saran Adhar Bhatia', '9999009228', 'H No-1/7343 Street No-7 East Gorakh Park Shahdara Near Hanuman Mandir 110032 Delhi', 'Delhi'),
(527, 'Hema Mehra', '9999865921', 'D-9/4, Sectore-15 Rohini Near manan chawk 110089 Delhi', 'Delhi'),
(528, 'Leena .', '9999927905', 'House No-E-4/100 Sultan Puri Near Jalebi Chowk 110086 Delhi', 'Delhi'),
(529, 'Narender Kumar', '9811464128', 'H-7/544 ,Jwala Nagar,Shahadra ,Near Indra Park, 110032 Delhi', 'Delhi'),
(530, 'Siddharth Singh', '9999494112', 'AC-142C Shalimar bagh Shalimar Bagh 110088 Delhi', 'Delhi'),
(531, 'Alisha Vij', '9910752520', 'S/O Rajesh E-133 Ground Floor Kalkaji Block I Nr Lakshmi Narayan 110019 Delhi', 'Delhi'),
(532, 'Anurag Saksena', '7838299009', 'H No-252-253 Phase-1A Om Vihar West Uttam Nagar Near Gugudwara 110059 Delhi', 'Delhi'),
(533, 'Chinmay Mukhi', '9999668423', 'House No-584 DDA Flats Metro View Appt Sec-13B Dwarka Near- Sec-13 Metro Stn 110075 Delhi', 'Delhi'),
(534, 'Bhavna Motiani', '9871861287', 'H No A-507 Sarita Vihar Nr Apollo Hospital 110076 Delhi', 'Delhi'),
(535, 'Archana .', '9971234955', 'C-4/234 Blk-C4 Yamuna Vihar , 110053 Delhi', 'Delhi'),
(536, 'Pankaj Kumar', '9717903380', 'House No-A-5/80 Block-A Rajvir COlony Near Ambedkar Park 110096 Delhi', 'Delhi'),
(537, 'Subham Mishra', '9711991530', 'M-123- A 1st Floor Nr Jagat Ram Park Laxmi Nagar , 110092 Delhi', 'Delhi'),
(538, 'Aadesh Kumar', '9953115502', 'RZ-5/230-235 Gali No-1 Dayal Park West Sagar Pur Reeta Public School 110046 Delhi', 'Delhi'),
(539, 'Ranjeet Kumar Sharma', '9999508151', 'S/O S C Sharma H No-A-159 Gali No-5 Block A Prem Nagar-3 Gaurav Nagar-Ii Kirari Suleman Nagar Nr Budh Bzr Road 110086 Delhi', 'Delhi'),
(540, 'Tarun Gupta', '9873732044', 'H No-D-16/345-355 G Floor Sec-7 Rohini Nr Sbi Atm 110085 Delhi', 'Delhi'),
(541, 'Nitin Kumar', '9711941817', 'H No-A-23 Blk-A Roshnara Building Shakti Nagar Delhi 110007 Delhi', 'Delhi'),
(542, 'Sandeep Kataria', '9899783300', 'D-2/91A Janak Puri Nr Pnb Bank 110058 Delhi', 'Delhi'),
(543, 'Abhishek Ganotra', '9999426062', 'B-1/149 Ashok Vihar Ph-2 Nr Pink Marketnear Idbi Bank 110052 Delhi', 'Delhi'),
(544, 'Abhishek Ganotra', '9999676062', 'S/O Raj Kumar B1/149 Phase-2 C-1 Block Ashok Vihar Nr Gulabi Market 110052 Delhi', 'Delhi'),
(545, 'Jaspreet Kaur', '9873739533', 'Hardeep Singh A-140/1 Ganesh Nagar Nr Reliance Fresh 110018 Delhi', 'Delhi'),
(546, 'Sadhna ..', '9899307106', 'D/O Radheshyam C-279 Okhla Ph 2 Block C Sanjay Colony Nr S 88 Company 110020 Delhi', 'Delhi'),
(547, 'Prem Chand Yadav', '9899059603', '633 Gali No 9 Phase-V Shiv Vihar Bhajan Pura Delhi 110094 Delhi', 'Delhi'),
(548, 'Amit Kumar Patel', '9968919875', 'Hno 48 Gali no 3 3rd Floor Chandan Vihar West Sant Nagar Burari Nr JS Bajaj 110084 Delhi', 'Delhi'),
(549, 'Deepak Kumar', '9711440099', 'H No-B-177 Gali No-2 Chandu Nagar Near Ghadde Wala School 110094 Delhi', 'Delhi'),
(550, 'Nitin Kumar', '9953195113', 'House No-A-329 Gali No-17 Shyam Colony Budh Vihar Ph-2 Near Shiv Mandir 110086 Delhi', 'Delhi'),
(551, 'Manish Kumar', '9711882086', 'H No-C-55B Jain Cly Manesh Encl Barwala Bawana Blk-A Delhi 110039 Delhi', 'Delhi'),
(552, 'Abhinav', '9899150359', 'C/o Ram Pal Verma H no-G-62 Saket Pvr Saket 110017 Delhi', 'Delhi'),
(553, 'Kusum Yadav', '9899783081', 'R M Yadav House No-A-16 South X Part 1 A Block Near Kidwai Nagar 110049 Delhi', 'Delhi'),
(554, 'Kusum Yadav', '9899829017', 'C/O Bhalwinder Singh A-16 South Extn Part-1 Nr Kidwai Nagar 110049 Delhi', 'Delhi'),
(555, 'Sudhir Drall', '9999232765', 'H-No 379 Village Neelwal PO Tikri Kalan Near Tata Tower 110041 Delhi', 'Delhi'),
(556, 'Suresh Chand', '9716852723', 'C-79 South Ganesh Nagar Near Mother Dairy 110092 Delhi', 'Delhi'),
(557, 'Tanuj .', '9953199515', 'HNo 269 WZ Block Basai Ramesh Nagar Metro Station Darapur Delhi 110015 Delhi', 'Delhi'),
(558, 'Gaurav Sharma', '9873060487', 'S/O Lekhraj House No - 9 Gali No - 8 Saboli Bagh Nand Nagri Sahdev Gali 110095 Delhi', 'Delhi'),
(559, 'Gajender N', '9999139852', 'S/O Mr Ganga Dhar 169 Blk-14, Dakshin Puri Near Deep Sweets 110062 Delhi', 'Delhi'),
(560, 'Gajender .', '9999827987', '169 Block-14 Dakshin Puri  110062 Delhi', 'Delhi'),
(561, 'Gajender', '9999840157', 'S/O Mr Ganga Dhar 169 Blk-14, Dakshin Puri Near Deep Sweets 110062 Delhi', 'Delhi'),
(562, 'Saransh Pandey', '9899114575', 'D-186A D-Block Street No-20 Dabri Palam Road Nr-Sanjeevan School 110045 Delhi', 'Delhi'),
(563, 'Swati', '9711133947', 'G-186 Arjun Nagar nr Delhi police public School 110029 Delhi', 'Delhi'),
(564, 'Ajay Kumar Sharma', '9818640095', 'S/O Mangu Sharam H No-K-127/2 Block-K, Saurabh Vihar Jaitpur Badarpur Near Amar Market 110044 Delhi', 'Delhi'),
(565, 'Atul Singh', '9953089504', 'C/o Rajesh House No-88D 2nd Flr Peerwali Gali Patparganj Mayur Vihar Phase-1 Near Mayur Vihar Ph-1 Metro Stn 110091 Delhi', 'Delhi'),
(566, 'Gaurav Gupta', '9999307950', 'House No 139 1st Floor Chanderlok Pitampura , 110034 Delhi', 'Delhi'),
(567, 'Narayanaswamy I Kalyana Sundaram', '9953965092', 'Flat No-48 DDA Flat Quarter Ber Sarai Opp Water Tank Ber Sarai Market 110017 Delhi', 'Delhi'),
(568, 'Abhishek Shukla', '9711515323', 'RZF-222/14 Gali No-31C Sadh Nagar Palam Colony Nr Hanuman Mandir 110045 Delhi', 'Delhi'),
(569, 'Sidtharth .', '9711270573', 'C/O Sohan Lal H No-4/49 3rd Floor Saket Block Mandawali Chander Vihar Metro Station 110017 Delhi', 'Delhi'),
(570, 'Sidtharth .', '9711671976', 'C/O Sohan Lal H No-4/49 3rd Floor Saket Block Mandawali Chander Vihar Metro Station 110017 Delhi', 'Delhi'),
(571, 'Ajay Kumar', '8860585882', 'Kh No 25/19 -22 Sapt Rishi Garden Holambi Kalan Nr Fatak 110082 Delhi', 'Delhi'),
(572, 'Gaurav Sharma', '9873964934', 'T- 695/B1 Gali no 21A Vishwakarma Marg Baljeet Nagar , 110008 Delhi', 'Delhi'),
(573, 'Manoj Chauhan', '9953294106', 'H No-513/E Prem Gali No-4 East Babarpur Shahdara Nr-Shiv Mandir 110032 Delhi', 'Delhi'),
(574, 'Nidhi Sharma', '9999389338', '336 Police Cly Type 1 Qtrs Shalimar Bagh 110088 Delhi', 'Delhi'),
(575, 'Akshita Jain', '9999970447', 'A-3/204 Blk -A Pkt-3 Sec-8 Rohini Delhi 110085 Delhi', 'Delhi'),
(576, 'Devender Kumar', '9873975866', 'H No 104, Block-C, DDA Flats, Kalkaji, Near Pooja Masala General Store, 110019 Delhi', 'Delhi'),
(577, 'Ashish Sharma', '9999573723', 'H No Rz 440/B Gali No-19 Sadh Nagar Palam Colony Near Indian Gas Office 110045 Delhi', 'Delhi'),
(578, 'Aayush Gupta', '9971182144', 'H No-S-407 2nd Flr School Block Part-2 Shakker Pur Delhi Mother Dairy 110092 Delhi', 'Delhi'),
(579, 'Asif', '9711262825', 'H No 105/A Sri Aurobindo Marg Adhchini Nr NCERT 110017 Delhi', 'Delhi'),
(580, 'Devendra Kumar', '9899943268', 'H No B-35 Jaswant Colony Budh Vihar Phase-2 Near Tomar Bakry 110086 Delhi', 'Delhi'),
(581, 'Sourabh Sharma', '9999380586', 'B-24/2 Gali no-3 Arjun Mohalla Mouj Pur Govt School 110053 Delhi', 'Delhi'),
(582, 'Vaibhav Batra', '9716773352', 'B-A-46 West Shalimar Bagh MC Donalds 110088 Delhi', 'Delhi'),
(583, 'Mohit Bhardwaj', '9990100618', 'H No-4 Shyam Gali No-1 Maujpur Near Community Centre 110053 Delhi', 'Delhi'),
(584, 'Jitender Sharma', '9711471177', 'R- 51 Welcome Seelampur Nr Police Station 110053 Delhi', 'Delhi'),
(585, 'Mamata Sharma', '9718679057', 'Hosue No-B-340 New B-1209 Top Floor Sangam Gali Blk-B New Ashok Nagar soni genral store opp side Near Soni ge 110096 Delhi', 'Delhi'),
(586, 'Santosh Kumar', '9873553641', 'K No-121/15 G No-9 Blk-A West Kamal Vihar Ph-II Burari Pump House 110084 Delhi', 'Delhi'),
(587, 'Rahul Bansal', '9999115770', '214/B Gautam Nagar , , 110049 Delhi', 'Delhi'),
(588, 'Rahul Kumar', '9999688289', '83 Blk-B Old Roshan Pura Najafgarh Nr- Janki Hospital 110043 Delhi', 'Delhi'),
(589, 'Saumya Punjani', '9953890304', 'S/O Shubhash 47 C-6 B Block Janak Puri , 110037 Delhi', 'Delhi'),
(590, 'Vaibhav Soni', '9953890312', 'S/O Sh Sunil Soni A-2/75 Second Floor Paschin Vihar , 110063 Delhi', 'Delhi'),
(591, 'Varun Chopra', '9899964323', 'H No 24/4 Gali No 4 Salapur Khera Near Gali No 3 110061 Delhi', 'Delhi'),
(592, 'Vishal .', '9811034397', '522 Guru Ramdas Nagar Gali No-4 Sanjay Park Laxmi nagar 110092 Delhi', 'Delhi'),
(593, 'Deepali Jain', '9873773992', 'Ea - 80 Maya Enclave Hari Nagar HAUZ KHAS 110064 Delhi', 'Delhi'),
(594, 'Ashish Sharma', '9990869302', 'H.No-B-104Phase No-10 Gali No-7Shiv Vihar Nr-Kirti Public School 110094 Delhi', 'Delhi'),
(595, 'Mukesh Kumar', '9911494753', 'C/o Nepal Singh,House No-D-25C, Gali No-3,Dharampuri,Ravi Nagar Extn, Khyala,Near 830 Bus Stand, 110018 Delhi', 'Delhi'),
(596, 'Nishant Sharma', '9711680323', 'C/o Savitri Devi House No-WB-105, GF Gali No-3, Block WB Shakar Pur Near By Aggarrwal Sweets 110092 Delhi', 'Delhi'),
(597, 'Saurabh Singh', '9873639781', 'Flat No-239, Radhika Apartments Pocket-1 Phase-2 , Dwarka Sector-14 Near-Sector-14, Dwarka Metro Station 110075 Delhi', 'Delhi'),
(598, 'Amit Mann', '9999365554', 'S/O Jagpal 613-A Village-Khera Khurd Primary School 110082 Delhi', 'Delhi'),
(599, 'Praveen Kumar', '9891588723', '1415 Tara Chand Basti Nangal Raya Mother Dairy 110046 Delhi', 'Delhi'),
(600, 'Rajani Goswami', '9953581899', 'Dalip Kumar Goswami House No-B-58/1A Gali No-4 Block-B Jagat Puri Krishna Nagar Near Do Siddi Wala Mandir 110051 Delhi', 'Delhi'),
(601, 'Aravind Yadav', '9958450604', '230/6 Gali No-3 Railway Colony Mandvali Near-Roohani General Store 110092 Delhi', 'Delhi'),
(602, 'CORE SEC ALLIED SERVE PVT LTD', '9953530015', '33A Pocket C 2 Mayur Vihar Phase 3 Near Aayapa Temple 110096 Delhi', 'Delhi'),
(603, 'CORE SEC ALLIED SERVE PVT LTD', '9953530016', '33A Pocket C 2 Mayur Vihar Phase 3 Near Aayapa Temple 110096 Delhi', 'Delhi'),
(604, 'CORE SEC ALLIED SERV PVT LTD', '9953530019', '33A Pocket C 2 Mayur Vihar Phase 3 Near Aayapa Temple 110096 Delhi', 'Delhi'),
(605, 'Dipika Maheswari', '9899140482', '90/37 B third floor Malviya Nagar Nr Main Market 110017 Delhi', 'Delhi'),
(606, 'Rahul Bhatt', '9811768781', 'S/O Mr Dinesh Bhatt 84-A Ward No-4, Mehrauli Opp Hanuman Mandir 110030 Delhi', 'Delhi'),
(607, 'Sachin Verma', '9811112354', 'S/O Roshan Flat No-853 Green Heaven Appt Sec-4 Plotno-35 Dwarka Near Morden Convent School 110075 Delhi', 'Delhi'),
(608, 'Nai Dilli Times', '9999085422', 'A2/59, Safdarjung Enclave, - 110029 Delhi', 'Delhi'),
(609, 'Paritosh Sharma', '9873630035', '56 Sukhdev Vihar Near Escorts Hospital  110025 Delhi', 'Delhi'),
(610, 'Manish P Wadhwa', '9811139039', 'H No-39-B, Kalkaji Extn, Pkt-A-13, 110019 Delhi', 'Delhi'),
(611, 'Ajay Singh', '9873739379', 'A- 305 Sudha Marg Mandawali Nr Dr Masroor Ahmad 110092 Delhi', 'Delhi'),
(612, 'Ankit Mishra', '9999863625', 'C/o-Brij Bhushan Mishra H No-C-2nd 112 New Ashok Nagar Nr-Peeli Kothi Sai Motor Repairing 110096 Delhi', 'Delhi'),
(613, 'Arjun Singh Rawat', '9899996141', 'Flat No-30C, 2nd Floor Pocket C Mayur Vihar Ph-2 Near Raja Clinic 110091 Delhi', 'Delhi'),
(614, 'Saravjeet Singh', '9899743994', 'H No-153 Gali No-6 Block-E Sangam Vihar New Delhi Nr Batra Hospital 110062 Delhi', 'Delhi'),
(615, 'Ashvini Kumar', '9910493983', 'C/O Omvir Singh H No-577/B 3rd Floor Ambedkar Marg Fazal Pur Mandawali Nr Shiv mandir Marg 110092 Delhi', 'Delhi'),
(616, 'Gaurav Sahni', '9999102991', 'R K Sahni H No G-7 Radhey Puri,Krishna Nagar Nr Lal Mandir 110051 Delhi', 'Delhi'),
(617, 'Madan Lal Sharma', '9873027676', 'A-21 Blk-A Sidharthi Enclave Gali No-1 uttam Nagar Nr-Durga Hardware 110059 Delhi', 'Delhi'),
(618, 'Khursheed Alam', '9711478644', 'H No C-1-72 Raju Park Khanpur Masjid 110062 Delhi', 'Delhi'),
(619, 'Khursheed Alam', '9868664013', 'House No-C-1/72 G/F Raju Park Devil Road Khanpur Sainik Farma 110062 Delhi', 'Delhi'),
(620, 'Komal Mehra', '9899264330', '4585 Gali No-4 Ajit Nagar Gandhi Nagar , 110031 Delhi', 'Delhi'),
(621, 'Mahesh .', '9711205097', 'House No-RZ-220/1,Gali No-4, Durga Park,Mahavir Enclave,Dwarka Delhi 110045 Delhi', 'Delhi'),
(622, 'Manoj Kumar', '9971561248', 'Purnendu Narayan Sinha 374,Station Block Prem Nagar,Part-1,Kirari Vill Nr Power House 110086 Delhi', 'Delhi'),
(623, 'Rahul Aggarwal', '9810419426', 'H No A-2/134 Paschim Vihar Nr Police Stn 110063 Delhi', 'Delhi'),
(624, 'Saurabh Sen Gupta', '9811788887', 'S/O Swapan Gupta Silver Stone H No B 4 Shivalik Malviya Nagar Nr Barista 110017 Delhi', 'Delhi'),
(625, 'Rushabh Prakash Kumar', '9873531623', 'Room No-20 BLDG No-81/B Katwaria Sarai Near Adjoing Katwaria Sarai 110016 Delhi', 'Delhi'),
(626, 'Sahil Gupta', '9811769455', 'S/o Sushil Gupta H No-220/5 Rameshwar Nagar Azad Pur Nr-Shiv Mandir 110033 Delhi', 'Delhi'),
(627, 'Sanchit Malik', '9971979494', 'H No K-46A Chankya Place Part II Uttam Nagar Near 25 Futa Road 110059 Delhi', 'Delhi'),
(628, 'Sanghamitra Baral', '9873699954', 'C/O Sudesh Sharma H No-B6-H No-241 PDS Apartment Vill Ghitorni Near Water Tank 110030 Delhi', 'Delhi'),
(629, 'Manish Kumar Singh', '9953919355', 'H No 17-B Gali No 3 South Ganesh Nagar NR Mother Dairy 110092 Delhi', 'Delhi'),
(630, 'Shailesh Sharma', '9899353494', 'Room No 206 Head Quatere DG BSF Block 10 Lodhi Road , 110003 Delhi', 'Delhi'),
(631, 'Shailesh Sharma', '9899354581', 'Room No 206 Head Quatere DG BSF Block 10 Lodhi Road , 110003 Delhi', 'Delhi'),
(632, 'Neeraj Patel', '9999003536', 'M-55B Mausam Bhawan Lodhi Road Lodhi Garden 110003 Delhi', 'Delhi'),
(633, 'Sohit Nagar', '9718737373', 'H NO 46 Ground Floor Chander Nagar Janak Puri , 110058 Delhi', 'Delhi'),
(634, 'Surendra Singh', '7838313837', 'Umed Singh Qtr No-41/04 Chitra Line ,Sadar Bazar, Delhi Cantt Near Kumar Book Depot 110010 Delhi', 'Delhi'),
(635, 'Uttam Singh', '9999052386', 'H No 10 First Floor Uday Vihar Block N Nilothi Extn Chander Vihar Shanni Bazaar 110041 Delhi', 'Delhi'),
(636, 'Dinesh Anand', '9891253779', 'S/O Ramesh Chander 21/13,Block-2 West Patel Nagar Opp Military Area 110008 Delhi', 'Delhi'),
(637, 'Dinesh Anand', '9968068082', 'S/O Ramesh Chander 21/13 Block-21 Military Road,West Patel Nagar Opp Military Aera 110008 Delhi', 'Delhi'),
(638, 'Dharmender Mehto', '9999808098', 'B-285. A Gali No-28 Mahavir Enclave-Part-2 West Delhi DK Mohan Garden 110059 Delhi', 'Delhi'),
(639, 'Hitesh Kumar', '9899602809', 'H No A-14 Maya Puri Industrial Area Phase-1 , 110064 Delhi', 'Delhi'),
(640, 'Nilesh Sinha', '9811573929', 'H No 62 Flat No 107 Ber Sarai Near Old JNU Campus 110016 Delhi', 'Delhi'),
(641, 'Ravinder Kumar', '9999887171', 'House No-48, Bichh Patti Village,Asola, Delhi 110074 Delhi', 'Delhi'),
(642, 'Tarundeep Singh', '9873456194', 'S/o Jaspal Singh,House No-WZ-137, 2nd Floor,Gali No-7,Shiv Nagar, Janak Puri 110058 Delhi', 'Delhi'),
(643, 'Manish Kumar', '9910495969', 'Qtr No 342 1st Floor M B Road Push Vihar Sec 3rd . 110017 Delhi', 'Delhi'),
(644, 'Brjesh Prajapati', '9899694178', '188 Mayur Vihar-1 Delhi 110091 Delhi', 'Delhi'),
(645, 'Prashant Kumar', '9953556108', 'H No A-14 Gali No 04 West Karawal Nagar Near Jagmaal Gardenmother Dairy 110094 Delhi', 'Delhi'),
(646, 'Rishi Goswami', '9899767564', 'HNo-C-33 Guru Ram DAS Nagar Laxmi Nagar Near Bala ji Reastorant  110092 Delhi', 'Delhi'),
(647, 'Manish Sharma', '9999645420', 'H No GD-79 Pitampura Oasis Hotel 110088 Delhi', 'Delhi'),
(648, 'Rama Lakshami', '9958217444', 'F3, Ridge Castle Appartment Dadabadi Road, Mehrauli Nr Maruti Service Center 110030 Delhi', 'Delhi'),
(649, 'Amit Kumar', '9873927496', 'H NO P 7/157 Mangol Puri Nr Water tank 110083 Delhi', 'Delhi'),
(650, 'Mohan Pawar', '9891233495', '33 A New Layal Pur Krishna Nagar Nr Lovely Public School 110051 Delhi', 'Delhi'),
(651, 'Kavita Pawar', '9891902240', '33 A New Layal Pur Krishna Nagar Near Lovely Public School 110051 Delhi', 'Delhi'),
(652, 'Naveen Kumar', '9717032621', 'Quter No. 270 Type-1 Sec-2 R K Puram Madrashi Mandir 110022 Delhi', 'Delhi'),
(653, 'Anil Kumar Panday', '9873603632', 'S/O R P Pandey H No-RZ-C-39 Nihal Vihar Nangloi Near-Rajender Public School 110041 Delhi', 'Delhi'),
(654, 'Ashish .', '9873128405', 'H No-E-22 Vijay Vihar Ph-I NEAR BADI MASJID 110085 Delhi', 'Delhi'),
(655, 'Shamsher Singh', '9871070235', '1062 - First Floor Dr Mukherjee Ngr Opp Govt School 110009 Delhi', 'Delhi'),
(656, 'Shamsher Singh', '9871995235', '1062 - First Floor Dr Mukherjee Ngr Opp Govt School 110009 Delhi', 'Delhi'),
(657, 'Sahil Arora', '9868786856', 'S/o Jagdish Kumar HNo UU-177B Pitampura Nr Maharaja Agarsen Model School ,Mandir 110088 Delhi', 'Delhi'),
(658, 'Sahil Arora', '9899603341', 'S/O Jagdish Kumar Arora Hno Uu-177-B Pitampura Nr Shiv Mandir 110088 Delhi', 'Delhi'),
(659, 'Vishal Srivastava', '9873991238', '13-A J K Extn Laxmi Nagar Laxmi Nagar Metro Station 110092 Delhi', 'Delhi'),
(660, 'Puneet Sharma', '9711795121', 'C/O Premraj Sharma,House-318 Vill-Ghevra Nr Nangloi Rohilla Parchune Store 110081 Delhi', 'Delhi'),
(661, 'Waseem Ahmad', '9873786660', 'D- 1/189 B IIIrd Floor, Savitri Nagar , 110017 Delhi', 'Delhi'),
(662, 'Sanjeev Kumar', '9811235291', 'C/o Charan Singh H No-224 IInd Floor CV Saida Mohalla Chill Vill Nr Rever Club 110091 Delhi', 'Delhi'),
(663, 'Jitender Belwal', '9811619835', 'C-5 Reids Line Delhi University Nr- Miranda House Collage 110007 Delhi', 'Delhi'),
(664, 'Jitender Belwal', '9953597920', 'H No B-1/10, 1st Floor Sec-15 Rohini Sachdeva School 110089 Delhi', 'Delhi'),
(665, 'Amit Joshi', '9718921708', 'S/o Vinod Kumar Joshi,House No-H-292, 1st Floor,Block-H,Karam Pura, Near Shiv Mandir, 110015 Delhi', 'Delhi'),
(666, 'Amit Joshi', '9818554825', 'H No H-292 First Floor Block H Karam Pura . 110015 Delhi', 'Delhi'),
(667, 'Hemant Kumar Sharma', '9953866416', 'M-35 Dilshad Garden B-4 110095 Delhi', 'Delhi'),
(668, 'Inderpreet Kaur', '9811664075', 'H No J /2/59 Block J 12 Rajouri Garden , 110027 Delhi', 'Delhi'),
(669, 'Kanchan .', '9711508161', 'C-474 Street No-24 Bhajanpura Nr Jan Kalyan School 110053 Delhi', 'Delhi'),
(670, 'Udai Pratap Singh', '9999281818', 'H NO 156 2nd Flr Type IV North West Moti Bagh Nr Nanakpura Gurudwara 110021 Delhi', 'Delhi'),
(671, 'Vipin Negi', '9968111790', 'H NO C-98/8 Manda Wali Unche Par Delhi 110092 Delhi', 'Delhi'),
(672, 'Aashish Malik', '9868460047', 'S/o Partap Singh Malik H No D-65/A 1st Floor Kh No-8/12 Rajiv Nagar Vill Begum Pur 110086 Delhi', 'Delhi'),
(673, 'Mohit Shrivastava', '9871939711', 'House No- 11/15, Gali No- 11 Shankar Nagar Extn Near Shiv Mandir 110051 Delhi', 'Delhi'),
(674, 'Soumya Gupta', '9868010473', 'S/O Anil Kumar Gupta D-17,Type Iv Delhi Admn Flats Karkardooma Opp Kiran Vihar Govt School 110092 Delhi', 'Delhi'),
(675, 'Ashok Kumar', '9873736356', '38/1 G/F A-Block Double Storey Ashok Nagar Nr-Gurudwara 110018 Delhi', 'Delhi'),
(676, 'Vikash Kumar Sinh', '9899573161', 'C2/3 Nr Mandir Wali Gali Aya Nagar 110047 Delhi', 'Delhi'),
(677, 'Sachin .', '9711494769', 'H NO-63A, A Block, Kamla Nagar Nr- Ghantaghar 110007 Delhi', 'Delhi'),
(678, 'Manoj Kumar', '9899077336', 'B-71 2nd Floor Block-B Friends Enclave Village Mundka 110041 Delhi', 'Delhi'),
(679, 'Vinod Kumar', '9999266773', 'Hn Rzb 100 Nihal Vihar Nr Aggarwal Sweets 110041 Delhi', 'Delhi'),
(680, 'Gaurav .', '9899946189', 'S/o Devender Kumar H No 290 Block B Clock Tower Hari Nagar Nr Bharti Nursing Home NURSING 110064 Delhi', 'Delhi'),
(681, 'Salman Khan', '9971770999', 'S/O Abudul Gayus 887 Budh Vihar Vill Mandoli 110093 Delhi', 'Delhi'),
(682, 'Mukesh Kumar', '9953669674', 'S/O Binesh Singh C-355 Gali No.9 West Vinod Nagar Na 110092 Delhi', 'Delhi'),
(683, 'Manish Kumar', '9711598850', 'H No - C-20 G Floor Bunglow Road Adarsh Nagar Gurunanak Pub School 110033 Delhi', 'Delhi'),
(684, 'Ajay Kumar', '9811227905', 'Godrej Appliances Devision DET Okhla Mathura Road Godrej Bhavan Sher Shah Suri Marg 110020 Delhi', 'Delhi'),
(685, 'Lekh Raj', '9711311704', 'B-4/236 Block B 4 Sec 20 Rohini Extention Baladeep Model School 110085 Delhi', 'Delhi'),
(686, 'Sangeeta .', '9953311489', 'H No-Z2-592 Z 2 Blk Wlcome Seelam Pur Nr- Sabir Park 110053 Delhi', 'Delhi'),
(687, 'Grover Tin Store Anuja Grover', '9958950558', 'KH No 22/26/1 Gali No 9 Samaypur Badli Industrial Area Opposite Transfer Near Havells Factory 110042 Delhi', 'Delhi'),
(688, 'Hari Kishan', '9811767348', 'HNo A 31/211 Nataji Gali No 1 Mataria fess Moujpir Delhi Paanela 110053 Delhi', 'Delhi'),
(689, 'Rahul Kapoor', '9711879837', 'H No-151 Ghondli Village Krishna Nagar Nr Iudus Valley Play School 110051 Delhi', 'Delhi'),
(690, 'Rashmi Jain', '9999967812', 'HNo-75 Bahubali Enclave, Near Karkar Dooma opp side of gate cross river mall 110092 Delhi', 'Delhi'),
(691, 'Neha Arora', '9811514224', 'QU-304B Pitampura Chitrakoot Apptt opp Income Tax Colony 110088 Delhi', 'Delhi'),
(692, 'Sumit Sharma', '9899387270', 'F - 10 Gali No - 4 Mohan Baba Nagar Badarpur Border Stand Ford School 110044 Delhi', 'Delhi'),
(693, 'Varun Kr Jindal', '9711770139', 'S/O Rakesh Kr Jindal H No 8A Shalimar Park, Shahdara Nr Dcp Office East 110032 Delhi', 'Delhi'),
(694, 'Ajay Kumar', '9811740212', 'S/O Rattan Chand Rz-2534 3Rd Floor Gali No-27 Tughlakabad Extn Nr Malik Property Dealer 110019 Delhi', 'Delhi'),
(695, 'Shantanu Jain', '9953618881', 'J-248 W-15 K/2 Western Avenue Sainik Farm Digambar Jain Mandir 110062 Delhi', 'Delhi'),
(696, 'Rajeev Sachdeva', '9811482318', 'H No A 2/306 Rohini Printer Apartment Sec 13 110085 Delhi', 'Delhi'),
(697, 'Deepak Kumar', '9958432795', 'G-23/99 100 2nd Floor Pocket-G-23 Sector-7 Rohini 110085 Delhi', 'Delhi'),
(698, 'Harpreet Kaur', '9711971313', 'House No- 18/27 Block-18 Shakti Nagar Near Nagia Park 110007 Delhi', 'Delhi'),
(699, 'Madhav Mishra', '9999987690', 'A-73. Kamla Nagar Nr- Bharma Mishra Marg Delhi 110007 Delhi', 'Delhi'),
(700, 'Kamal Malik', '9810553549', '73D Block AP Pitampura Delhi Near City Park 110034 Delhi', 'Delhi'),
(701, 'Richa Arora', '9711922794', 'Flat No-103,Block-G-1-A, Pocket-B,Sector-18,Dwarka, Delhi 110075 Delhi', 'Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mail`
--

CREATE TABLE `tbl_mail` (
  `e_id` int(10) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_mail`
--

INSERT INTO `tbl_mail` (`e_id`, `receiver`, `msg`, `date`) VALUES
(8, 'test@gmail.com', 'hiii', '2024-06-25'),
(9, 'test@gmail.com', 'hii', '2024-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `member_id` int(10) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `member_id_type` varchar(200) NOT NULL,
  `member_id_number` varchar(200) NOT NULL,
  `member_contact` varchar(20) NOT NULL,
  `member_email` varchar(255) NOT NULL,
  `member_address` varchar(1000) NOT NULL,
  `member_pass` varchar(1000) NOT NULL,
  `member_status` int(10) NOT NULL DEFAULT 0,
  `completed_form` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`member_id`, `member_name`, `member_id_type`, `member_id_number`, `member_contact`, `member_email`, `member_address`, `member_pass`, `member_status`, `completed_form`) VALUES
(1, 'test', 'Adhaar Card', '02585958578596', '8985878578', 'test@gmail.com', 'aurangabad', '8985878578', 0, 700),
(2, 'test', 'Adhaar Card', '0255679585212', '9874585857', 'test', 'aurangabad', '9874585857', 1, 0),
(3, 'test', 'Adhaar Card', '02585958578596', '7890876545', 'test@gmail.com', 'aurangabad', '7890876545', 1, 0),
(4, 'prakash rathod', 'Adhaar Card', '025859585212', '9875895784', 'test', 'aurangabad', '9875895784', 1, 0),
(5, 'prakash', 'Driving License', '9875848596', '9875847896', 'sunil@gmail.com', 'pune', '9875847896', 1, 7),
(6, 'sachin', 'Adhaar Card', '985874585621', '9545853625', 'sachin@gmail.com', 'aurangabad', '9545853625', 1, 0),
(8, 'akash pawar', 'Adhaar Card', '985898563258', '9858589852', 'test@gmail.com', 'pune', '9858589852', 1, 1),
(9, 'demo11', 'Adhaar Card', '00000000000000000', '0000000001', 'test@gmail.com', 'demo', '0000000001', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_forms`
--
ALTER TABLE `tbl_forms`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `tbl_mail`
--
ALTER TABLE `tbl_mail`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_forms`
--
ALTER TABLE `tbl_forms`
  MODIFY `member_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=702;

--
-- AUTO_INCREMENT for table `tbl_mail`
--
ALTER TABLE `tbl_mail`
  MODIFY `e_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `member_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `laravel_prac`
--
CREATE DATABASE IF NOT EXISTS `laravel_prac` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel_prac`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_01_21_060724_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'MyApp', '67e29553e7adae69251ef813e62e8ff2b725bf1cfb9e69acad66b6aa3bb56bb8', '[\"*\"]', NULL, NULL, '2025-01-24 02:31:33', '2025-01-24 02:31:33'),
(2, 'App\\Models\\User', 5, 'MyApp', 'f6a233bf9ca8e23faa6b5f2da4dc2519a1d02ea5de0292570ff467fbcf2a2016', '[\"*\"]', NULL, NULL, '2025-01-24 02:32:21', '2025-01-24 02:32:21');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Harmony Kihn', 5, '2025-01-21 01:13:57', '2025-01-21 01:58:22', '2025-01-21 01:58:22'),
(2, 'Viva Turner', 0, '2025-01-21 01:13:57', '2025-01-21 01:59:01', '2025-01-21 01:59:01'),
(3, 'Lonnie Prohaska', 9, '2025-01-21 01:13:57', '2025-01-21 01:58:58', '2025-01-21 01:58:58'),
(4, 'Maddison Bergnaum', 4, '2025-01-21 01:13:57', '2025-01-21 01:58:55', '2025-01-21 01:58:55'),
(5, 'Ernesto Mosciski', 8, '2025-01-21 01:13:57', '2025-01-21 01:58:52', '2025-01-21 01:58:52'),
(6, 'Edgar Schroeder', 9, '2025-01-21 01:13:57', '2025-01-21 02:01:34', '2025-01-21 02:01:34'),
(7, 'Kade Quigley III', 8, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(8, 'Howell Koepp Jr.', 2, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(9, 'Jovanny Grant', 8, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(10, 'Shanna Klocko DVM', 2, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(11, 'Robin Bins', 9, '2025-01-21 01:13:57', '2025-01-21 01:59:04', '2025-01-21 01:59:04'),
(12, 'Aida Oberbrunner DVM', 6, '2025-01-21 01:13:57', '2025-01-21 01:59:06', '2025-01-21 01:59:06'),
(13, 'Dr. Jerad Emmerich', 6, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(14, 'Wanda Hartmann', 7, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(15, 'Zakary Cassin', 8, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(16, 'Dr. Sonya Schmeler Jr.', 4, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(17, 'Cathryn Runolfsson', 5, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(18, 'Esta Lang', 6, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(19, 'Ottis Wuckert', 4, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(20, 'Dr. Itzel DuBuque V', 1, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(21, 'Viola Kerluke', 2, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(22, 'Keara Wilkinson', 9, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(23, 'Delfina Willms', 2, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(24, 'Jerry Casper IV', 6, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(25, 'Granville Goldner', 1, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(26, 'Josianne Hoppe', 7, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(27, 'Shyann Cummings', 7, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(28, 'Clarabelle Stehr', 4, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(29, 'Mr. Otho Rodriguez PhD', 8, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(30, 'Everette Rogahn', 7, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(31, 'Edmond Upton', 2, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(32, 'Mrs. Joanie Smith PhD', 2, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(33, 'Maiya Steuber', 3, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(34, 'Arno Bayer', 3, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(35, 'Buster Miller', 4, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(36, 'Frieda Bradtke', 5, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(37, 'Llewellyn Keeling', 1, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(38, 'Prof. Lina Morar MD', 4, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(39, 'Olen Feest', 9, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(40, 'Mrs. Martine Ankunding V', 3, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(41, 'Dr. Effie O\'Reilly III', 9, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(42, 'Rhiannon Kozey', 7, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(43, 'Keely Gutmann', 4, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(44, 'Carleton Wuckert', 4, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(45, 'Ms. Anne Bahringer', 0, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(46, 'Mr. Clint Hoppe PhD', 3, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(47, 'Rusty Weber', 2, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(48, 'Dr. Otto Larkin', 7, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(49, 'Stefanie Dare', 7, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(50, 'Andrew Cremin', 2, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(51, 'Dr. Monique Dooley Jr.', 0, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(52, 'Prof. Gayle Dickinson II', 5, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(53, 'Dr. Sheridan Lind II', 2, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(54, 'Timothy Schultz', 9, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(55, 'Ms. Neoma Leffler PhD', 3, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(56, 'Keara Hickle', 6, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(57, 'Kaya Okuneva', 4, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(58, 'Wendell Farrell', 3, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(59, 'Horacio Buckridge', 1, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(60, 'Miss Zella Lang', 5, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(61, 'Gay Beahan', 1, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(62, 'Rita Reynolds', 6, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(63, 'Ernestine Collier', 7, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(64, 'Maymie McLaughlin', 1, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(65, 'Millie Wunsch', 9, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(66, 'Kacie Shanahan', 8, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(67, 'Francesco Anderson', 2, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(68, 'Leila Goldner', 9, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(69, 'Dr. Tyshawn Armstrong III', 8, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(70, 'Isabell Zulauf', 5, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(71, 'Talia Kirlin', 9, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(72, 'Mr. General Cronin', 4, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(73, 'Kiera Witting DDS', 6, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(74, 'Freda Carter III', 9, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(75, 'Laury Torp', 9, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(76, 'Marcelo Tillman', 7, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(77, 'Prof. Douglas Kling', 3, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(78, 'Damion Ryan', 0, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(79, 'Bria Yundt', 0, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(80, 'Adalberto Wunsch', 0, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(81, 'Grace Buckridge', 8, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(82, 'Prof. Kristian Koelpin II', 6, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(83, 'Nicholas Brown', 5, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(84, 'Alexane Morissette', 3, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(85, 'Prof. Tyson Keeling', 3, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(86, 'Dr. Lucious Howell DVM', 7, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(87, 'Jerry Kling', 2, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(88, 'Nicolette Schroeder', 0, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(89, 'Coralie Orn', 9, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(90, 'Pearlie Hilpert', 1, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(91, 'Mozell Larson', 3, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(92, 'Prof. Maxwell VonRueden', 7, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(93, 'Prof. Davon Ledner', 2, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(94, 'Duane Stark', 7, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(95, 'Esther Gibson', 0, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(96, 'Solon Satterfield', 9, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(97, 'Hulda Kassulke', 2, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(98, 'Dr. Alta Parker', 1, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(99, 'Dr. Cecelia O\'Hara V', 1, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL),
(100, 'Nannie Crist', 3, '2025-01-21 01:13:57', '2025-01-21 01:13:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ASHISH', 'ashish@gmail.com', NULL, 'vsvsferr', NULL, '2025-01-24 02:27:41', '2025-01-24 02:27:41'),
(3, 'ASHISH', 'asdhish@gmail.com', NULL, 'vsvsferr', NULL, '2025-01-24 02:31:33', '2025-01-24 02:31:33'),
(5, 'ASHISH', 'asdddhish@gmail.com', NULL, 'vsvsferr', NULL, '2025-01-24 02:32:21', '2025-01-24 02:32:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `newtons`
--
CREATE DATABASE IF NOT EXISTS `newtons` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `newtons`;

-- --------------------------------------------------------

--
-- Table structure for table `champions`
--

CREATE TABLE `champions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `achievement` varchar(255) NOT NULL,
  `testimonial` text NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `champions`
--

INSERT INTO `champions` (`id`, `name`, `achievement`, `testimonial`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'Mahima Singh', '12th', 'I experienced that every teacher provides their 100% effort...', 'assets/img/topper/rv-1.jpg', '2024-12-31 05:55:45', '2024-12-31 05:55:45'),
(2, 'Neetu Yadav', 'NEET', 'Thanks to all the teachers at Newton\'s Academy...', 'assets/img/topper/rv-2.jpg', '2024-12-31 05:55:45', '2024-12-31 05:55:45'),
(3, 'Sejal Vishwakarma', '10th', 'It has been 3 years since I passed out but I am still connected...', 'assets/img/topper/rv-3.jpg', '2024-12-31 05:55:45', '2024-12-31 05:55:45'),
(4, 'Ashish Palx', '12th', 'fegfege gherhyr uhrjrjueuej uejueuj eujeujreujrur euuru', 'storage/champions/DAKKvZzKoJmOb853EbViDj0L1Omz9jc8srcm5yzh.jpg', '2024-12-31 06:04:04', '2025-01-02 03:54:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hero_section`
--

CREATE TABLE `hero_section` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dekstop_image` varchar(255) NOT NULL,
  `phone_image` varchar(255) NOT NULL,
  `alt_tag` varchar(255) DEFAULT NULL,
  `dekstop_image_fileSize` varchar(255) NOT NULL DEFAULT '0',
  `phone_image_fileSize` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hero_section`
--

INSERT INTO `hero_section` (`id`, `dekstop_image`, `phone_image`, `alt_tag`, `dekstop_image_fileSize`, `phone_image_fileSize`, `created_at`, `updated_at`) VALUES
(1, 'storage/images/dekstop1735215051.jpg', 'storage/images/phone1735215051.jpg', 'dqdq', '609.14', '709.6', '2024-12-26 06:40:51', '2024-12-26 06:40:51'),
(2, 'storage/images/dekstop1735279794.jpg', 'storage/images/phone1735279795.jpg', NULL, '609.14', '609.14', '2024-12-27 00:39:55', '2024-12-27 00:39:55'),
(3, 'storage/images/dekstop1735279824.jpg', 'storage/images/phone1735279824.jpg', NULL, '755.38', '564.78', '2024-12-27 00:40:24', '2024-12-27 00:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2024_12_16_114704_hero_section', 2),
(11, '2024_12_27_065715_resources_categories', 3),
(12, '2024_12_27_065847_resources_sub_categories', 3),
(13, '2024_12_27_070301_resources_files', 3),
(14, '2024_12_31_070502_create_champions_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ashishpal2204@gmail.com', '$2y$10$pzI6VmJPtaJDEPAayXo0ZOu3Eg4YaII3F5g2VYIpJD101cCHsxKEa', '2024-12-16 06:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resources_categories`
--

CREATE TABLE `resources_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resources_categories`
--

INSERT INTO `resources_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Question Papers', NULL, NULL),
(2, 'Textbooks', NULL, NULL),
(3, 'Courses', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resources_files`
--

CREATE TABLE `resources_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `resources_path` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resources_files`
--

INSERT INTO `resources_files` (`id`, `sub_category_id`, `title`, `description`, `resources_path`, `created_at`, `updated_at`) VALUES
(12, 5, 'dgdge', 'gegege', 'storage/uploads/resources/EytbSaelaWq767txG5Gi1otv0sT3AVuhqMGJjWB1.jpg', '2024-12-30 06:26:24', '2024-12-30 06:26:24');

-- --------------------------------------------------------

--
-- Table structure for table `resources_sub_categories`
--

CREATE TABLE `resources_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resources_sub_categories`
--

INSERT INTO `resources_sub_categories` (`id`, `name`, `category_id`, `created_at`, `updated_at`) VALUES
(5, 'fsgfege', 3, '2024-12-30 01:03:04', '2024-12-30 01:03:04'),
(8, 'vdbbrbr', 2, '2024-12-30 01:03:29', '2024-12-30 01:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ashish Pal', 'ashishpal2204@gmail.com', NULL, '$2y$10$D/j/XIN8J1eUH9HM90bFkuLKGLRugETsLRQOjdCthxjuc0jswPQCG', 'S5bLdipV3cqzzDb7Xfy8OZ9Isl6iJvbkVJv9oB71MFI5fKfohh4oS2rNqexy', '2024-11-04 01:46:57', '2024-11-04 01:46:57'),
(2, 'Ashish Pal', 'ashishpal2203@gmail.com', NULL, '$2y$10$..PPekFFFA.MDymjwp56PuGu5SpbOKS6FU7JvLCRku5aF8IP5AUCm', NULL, '2024-12-16 06:28:53', '2024-12-16 06:28:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `champions`
--
ALTER TABLE `champions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hero_section`
--
ALTER TABLE `hero_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `resources_categories`
--
ALTER TABLE `resources_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resources_files`
--
ALTER TABLE `resources_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resources_files_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `resources_sub_categories`
--
ALTER TABLE `resources_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resources_sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `champions`
--
ALTER TABLE `champions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hero_section`
--
ALTER TABLE `hero_section`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resources_categories`
--
ALTER TABLE `resources_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `resources_files`
--
ALTER TABLE `resources_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `resources_sub_categories`
--
ALTER TABLE `resources_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `resources_files`
--
ALTER TABLE `resources_files`
  ADD CONSTRAINT `resources_files_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `resources_sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resources_sub_categories`
--
ALTER TABLE `resources_sub_categories`
  ADD CONSTRAINT `resources_sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `resources_categories` (`id`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--
-- Error reading structure for table phpmyadmin.pma__bookmark: #1932 - Table 'phpmyadmin.pma__bookmark' doesn't exist in engine
-- Error reading data for table phpmyadmin.pma__bookmark: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `phpmyadmin`.`pma__bookmark`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--
-- Error reading structure for table phpmyadmin.pma__central_columns: #1932 - Table 'phpmyadmin.pma__central_columns' doesn't exist in engine
-- Error reading data for table phpmyadmin.pma__central_columns: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `phpmyadmin`.`pma__central_columns`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--
-- Error reading structure for table phpmyadmin.pma__column_info: #1932 - Table 'phpmyadmin.pma__column_info' doesn't exist in engine
-- Error reading data for table phpmyadmin.pma__column_info: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `phpmyadmin`.`pma__column_info`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--
-- Error reading structure for table phpmyadmin.pma__designer_settings: #1932 - Table 'phpmyadmin.pma__designer_settings' doesn't exist in engine
-- Error reading data for table phpmyadmin.pma__designer_settings: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `phpmyadmin`.`pma__designer_settings`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--
-- Error reading structure for table phpmyadmin.pma__export_templates: #1932 - Table 'phpmyadmin.pma__export_templates' doesn't exist in engine
-- Error reading data for table phpmyadmin.pma__export_templates: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `phpmyadmin`.`pma__export_templates`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--
-- Error reading structure for table phpmyadmin.pma__favorite: #1932 - Table 'phpmyadmin.pma__favorite' doesn't exist in engine
-- Error reading data for table phpmyadmin.pma__favorite: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `phpmyadmin`.`pma__favorite`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--
-- Error reading structure for table phpmyadmin.pma__history: #1932 - Table 'phpmyadmin.pma__history' doesn't exist in engine
-- Error reading data for table phpmyadmin.pma__history: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `phpmyadmin`.`pma__history`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--
-- Error reading structure for table phpmyadmin.pma__navigationhiding: #1932 - Table 'phpmyadmin.pma__navigationhiding' doesn't exist in engine
-- Error reading data for table phpmyadmin.pma__navigationhiding: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `phpmyadmin`.`pma__navigationhiding`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--
-- Error reading structure for table phpmyadmin.pma__pdf_pages: #1932 - Table 'phpmyadmin.pma__pdf_pages' doesn't exist in engine
-- Error reading data for table phpmyadmin.pma__pdf_pages: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `phpmyadmin`.`pma__pdf_pages`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--
-- Error reading structure for table phpmyadmin.pma__recent: #1932 - Table 'phpmyadmin.pma__recent' doesn't exist in engine
-- Error reading data for table phpmyadmin.pma__recent: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `phpmyadmin`.`pma__recent`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--
-- Error reading structure for table phpmyadmin.pma__relation: #1932 - Table 'phpmyadmin.pma__relation' doesn't exist in engine
-- Error reading data for table phpmyadmin.pma__relation: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `phpmyadmin`.`pma__relation`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--
-- Error reading structure for table phpmyadmin.pma__savedsearches: #1932 - Table 'phpmyadmin.pma__savedsearches' doesn't exist in engine
-- Error reading data for table phpmyadmin.pma__savedsearches: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `phpmyadmin`.`pma__savedsearches`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--
-- Error reading structure for table phpmyadmin.pma__table_coords: #1932 - Table 'phpmyadmin.pma__table_coords' doesn't exist in engine
-- Error reading data for table phpmyadmin.pma__table_coords: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `phpmyadmin`.`pma__table_coords`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--
-- Error reading structure for table phpmyadmin.pma__table_info: #1932 - Table 'phpmyadmin.pma__table_info' doesn't exist in engine
-- Error reading data for table phpmyadmin.pma__table_info: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `phpmyadmin`.`pma__table_info`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--
-- Error reading structure for table phpmyadmin.pma__table_uiprefs: #1932 - Table 'phpmyadmin.pma__table_uiprefs' doesn't exist in engine
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `phpmyadmin`.`pma__table_uiprefs`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--
-- Error reading structure for table phpmyadmin.pma__tracking: #1932 - Table 'phpmyadmin.pma__tracking' doesn't exist in engine
-- Error reading data for table phpmyadmin.pma__tracking: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `phpmyadmin`.`pma__tracking`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--
-- Error reading structure for table phpmyadmin.pma__userconfig: #1932 - Table 'phpmyadmin.pma__userconfig' doesn't exist in engine
-- Error reading data for table phpmyadmin.pma__userconfig: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `phpmyadmin`.`pma__userconfig`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--
-- Error reading structure for table phpmyadmin.pma__usergroups: #1932 - Table 'phpmyadmin.pma__usergroups' doesn't exist in engine
-- Error reading data for table phpmyadmin.pma__usergroups: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `phpmyadmin`.`pma__usergroups`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--
-- Error reading structure for table phpmyadmin.pma__users: #1932 - Table 'phpmyadmin.pma__users' doesn't exist in engine
-- Error reading data for table phpmyadmin.pma__users: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `phpmyadmin`.`pma__users`' at line 1
--
-- Database: `practice`
--
CREATE DATABASE IF NOT EXISTS `practice` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `practice`;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hire_date` date NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `task_db`
--
CREATE DATABASE IF NOT EXISTS `task_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `task_db`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `dob`) VALUES
(33, 'Ashish', 'ashish@fefgegedge', '$2y$10$U8mODl.2G7RO9FMkw0JmCufp7TrVGzCkkABWdmPvI2kNs1cRAuP86', '2025-01-08'),
(43, 'ssssss', 'dhbdh@dhfrnrf', '$2y$10$moUgdcPTzgBXbnxF4aP3JumQG38Df7ftnDwxewog8OAZ9FN2n.tE.', '2025-01-15'),
(50, 'fwfwfwf', 'wfwfw@efevg', '$2y$10$yiWF.AkQQz05xzzHzg7vV.FutqF22bKXA/Sa6Hwok04uI1sSQwA2S', '2025-01-15'),
(57, 'Ashish Pal', 'ashish@dwfefef', '$2y$10$kxj/rjLLrsX1wt5k9E4TH.W9T2vllCB0eYd0PgOPlbyi8BZMpRryS', '2025-01-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- Database: `testing`
--
CREATE DATABASE IF NOT EXISTS `testing` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `testing`;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
