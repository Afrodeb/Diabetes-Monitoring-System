-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2018 at 01:23 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `health`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `advice` text NOT NULL,
  `time` varchar(10) NOT NULL,
  `day` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `type`, `advice`, `time`, `day`, `created`) VALUES
(2, 'Normal', 'Sleep', '1', '0', '2018-03-25 17:36:02'),
(3, 'Normal', 'Sleep', '2', '1', '2018-03-27 20:09:11'),
(4, 'Overweight', 'Wake up and take a jog', '5', '2', '2018-04-04 09:06:53'),
(5, 'Low BMR', 'Food plan', '7', '1', '2018-05-01 20:44:07'),
(6, 'Low', 'Breakfast', 'Morning', '2', '2018-05-05 21:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `type` enum('Doctor','Administrator') NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`, `phone`, `type`, `created`) VALUES
(1, 'Delon Mukupe', 'gabby&kuda', '0773553312', 'Administrator', '0000-00-00 00:00:00'),
(3, 'Tendai Mwarumba', 'gabby&kuda', '0773553312', 'Doctor', '2016-12-18 00:37:27'),
(4, 'Tendai Tondoro', '5c4944aa7e76aa346de56d5d00b38f30', '0773553312', 'Administrator', '2018-05-05 18:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `advice`
--

CREATE TABLE `advice` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advice`
--

INSERT INTO `advice` (`id`, `type`, `message`, `created`) VALUES
(9, 'Underweight', 'There are quite a number of risks associated with these group of  people.\r\nImpaired Immunity: Stick to food that are rich in nutrients like whole grains, fruits, vegetables, dairy products, nuts and seeds and lean proteins\r\n\r\n\r\n.\r\n\r\n\r\n\r\n\r\n\r\n', '2018-03-03 12:06:25'),
(10, 'Overweight', 'Being overweight increases the risks to many health problems .If one is pregnant it may lead to short and long-term health problems for the baby and  the mother.\r\nStroke :It happens when the flow of blood to a part of the brain stops causing brain cells to die. The most common of stroke is called the ischemic stroke it occurs when a blood clot blocks an artery that carries blood to the brain. Being overweight leads to increase in blood pressure which in turn leads to strokes.\r\n', '2018-03-03 11:10:58'),
(11, 'Overweight', '1.Lower blood pressure through reducing the salt intake in your diet not more that 1500 milligrams a day about half a teaspoon.\r\n', '2018-03-03 11:11:30'),
(12, 'Overweight', '2.Avoid eating high-cholesterol foods such as burgers or rather have them in moderate amounts maybe one cheat meal a week or use healthy alternatives when making them such as heba banting bread unprocessed beef  patties cooked in virgin oil.\r\n', '2018-03-03 11:12:07'),
(13, 'Overweight', '3.Eat four to five cups of fruits and vegetables everyday,one serving of fish two or three times a week and several daily servings of whole grains and low-fat dairy.\r\n', '2018-03-03 11:12:36'),
(14, 'Overweight', '4.Get more exercises perhaps walk short distances rather than using the car or using the staircase instead of the elevator at least 30 minutes activity a day.\r\n', '2018-03-03 11:13:52'),
(15, 'Overweight', 'Sleeping Problems: Involves snoring loudly or temporarily stopping breathing whilst sleeping its a common disorder  for people who are overweight.\r\n1Make the room comfortable and inviting for sleep it should be dark ,quiet and warm. If you can shut out the light try using block lights or sleeping masks .Having more regular sleeping hours will help to increase the metabolism rate and may help individuals to lose weight as you sleep.\r\n', '2018-03-03 11:14:25'),
(16, 'Overweight', '2.Eating well avoid eating heavy meals before bed since the body will use more energy trying to break down the food rather than using the energy for sleeping. Rather eat foods such as yoghurt that speed up metabolism and avoid starchy foods.\r\n', '2018-03-03 11:14:53'),
(17, 'Overweight', '3.Can take part in exercises such as yoga that help to slow down the breathing rate, heart rate and brain activity a busy brain will keep you from sleep.\r\n', '2018-03-03 11:15:25'),
(18, 'Overweight', 'Type 2 Diabetes: It is the most common type of diabetes though it is mostly genetic other factors such as poor diet excess body weight may lead to it.\r\n1.Eating a balanced diet helps to reduce the risk of type 2 diabetes.\r\n2.Having adequate sleep\r\n3.Exercises.\r\n\r\n', '2018-03-03 11:16:00'),
(19, 'Overweight', 'Fatty Liver Disease: Also known as nonalcoholic steatohepatitis(NASH) occurs when fat builds up in the liver and causes injury. In turn it may lead to severe liver damage ,cirrhosis(scar tissue) or even liver failure.\r\n1.Choose a healthy diet plant based that\'s rich in fruits,v vegetables wholegrains and healthy fats such as chicken skin.\r\n2.Exercises such as planks and lunges that really do not take time but work up the whole body. Prefer walking on short distances as well at the use of stairs and also about 250 rope jumps per day.\r\n3.Dietary supplements such as omega 3 that contain healthy oil such as fish oil they help to lower triglycerides levels.\r\n\r\n', '2018-03-03 11:20:18'),
(20, 'Underweight', 'Osteoporosis: This causes weak gums it causes fragile bones in later life. It also weakens the vertebrate causing people to slouch as they age.', '2018-03-03 11:59:39'),
(21, 'Underweight', '1.Stronger bones can be build by indulging in weight bearing exercises for example doing squats with the aid of weights on shoulders. The use of weights also termed as resistance training during push-ups. A lot physical activities such as walking or running ,jumping rope and climbing stairs even chores will increase bone mass.', '2018-03-03 12:01:08'),
(22, 'Underweight', '2.Eating plants and fermented foods since they contain a number of bone friendly nutrients such as Calcium,Magnesium,Pottassium, Vitamin K ,Vitamin C and protein.\r\nEdible plants such as fruits and vegetables help to provide anti-inflammatory agents and axiodants.It is also linked to the development of better bone mass. \r\nInclude foods such as yoghurt, kimchi sour milk the positively affect the bone in that they contain probiotics of which these good microbes support a healthy population of gut microbes.', '2018-03-03 12:02:23'),
(23, 'Underweight', 'Fertility problems: Women may not menstruate on a regular basis this may interfere with fertility in the wrong run it skews ovulation and makes it difficult to sustain a healthy pregnancy.Irregular cycles cause the thinning of the endometrium this causes fertilized egg to find it hard to implant in the uterus. In case of conception it may lead in miscarriages and the birth of pre-term babies.', '2018-03-03 12:03:18'),
(24, 'Underweight', 'Fertility problems: Women may not menstruate on a regular basis this may interfere with fertility in the wrong run it skews ovulation and makes it difficult to sustain a healthy pregnancy.Irregular cycles cause the thinning of the endometrium this causes fertilized egg to find it hard to implant in the uterus. In case of conception it may lead in miscarriages and the birth of pre-term babies.', '2018-03-03 12:04:05'),
(25, 'Underweight', '1.Gaining weight will not only help in conceiving but also in having a safe pregnancy .Add healthy calories to your diet such as almonds, sunflower seeds, fruit, whole wheat foods and wheat toast.', '2018-03-03 12:05:00'),
(26, 'Underweight', '2.Instead of empty calories and junk foods consider eating high-protein meats such as brown rice and iron rich foods such as red meat, green vegetables and cereals.', '2018-03-03 12:05:48'),
(27, 'Underweight', '3.Eat mini-meals to help with poor appetite due to emotions or emotional issues. Snack away during the day.\r\n\r\n', '2018-03-03 12:06:42'),
(28, 'Overweight', 'Stress incontinence:Urine leaking when laughing coughing etc kegel exercisesz can help to avoid urinary bladder leakage.', '2018-03-03 12:25:58'),
(29, 'Normal', 'If you can get through the day without taking at least 4 cups or coffee or energy drinks you are considered to be of normal weight.Even if you skip meals you still feel energetic and you can even forget that you have not yet eaten', '2018-03-03 12:36:58'),
(30, 'Normal', 'An ideal normal weight person should be a number that you can get to and maintain without heavy restrictions.When you have a healthy body weight, your current weight should be fairly stable', '2018-03-03 12:42:35'),
(31, 'Normal', 'Exercise regulary to mantain your weight and to build more muscle than fat.Indoor exercises such as squarts,lunges wall sit-ups and also mountain climbers.Not only do they help you tone up your body but they also help burn those extra little calories.', '2018-03-03 12:46:48'),
(32, 'Normal', 'Set reasonable limits on the amount of time you spend watching TV, playing video games, and using computers, phones, and tablets not related to school work..', '2018-03-03 12:49:34'),
(33, 'Normal', 'Watch out for portion distortion. Big portions pile on extra calories that cause weight gain. Sugary beverages, such as sodas, juice drinks, and sports drinks, are empty calories that also contribute to obesity. So choose smaller portions (or share restaurant portions) and go for water or low-fat milk instead of soda.', '2018-03-03 12:50:16'),
(34, 'Normal', 'Don\'t skip breakfast. Breakfast kickstarts your metabolism, burning calories from the get-go and giving you energy to do more during the day. People who skip breakfast often feel so hungry that they eat more later on.', '2018-03-03 12:51:16'),
(35, 'Normal', 'Water therapy is of great use to mantain weight it helps to flush out toxins quicker and also helps to keep the digestive system busy.Take a glass of water thirty minutes before and after a meal.', '2018-03-03 12:54:44'),
(36, 'Normal', 'Avoid taking water with you meals this solidifies the fats you are consuming and in a way slowing down your meals.', '2018-03-03 12:57:12'),
(37, 'Normal', 'Don\'t deprive yourself.Not eating enough calories in a day is a one-way ticket to overeating later in the week. You may have been on a strict diet that limited the amount of calories you consumed, but it will be next to impossible to maintain that level of commitment now that you\'ve reached your goal weight.', '2018-03-03 12:58:24'),
(38, 'Normal', 'Focus on whole foods.Trade packaged meals for more whole foods if you want to maintain a healthy weight. If you\'re not inspired, take a trip to your local farmers market to see the fresh bounty that\'s available â€“ likely much more appealing and colorful than what\'s in those boxes at your grocery store.', '2018-03-03 13:00:21'),
(39, 'Normal', 'Plan your meals in advance. A maintenance diet has a lot of the same components as a weight-loss diet. Having a meal-by-meal plan that you can stick to, although it has more calories than your diet plan did, can act as a guide to keep you on track.', '2018-03-03 13:01:50'),
(40, 'Normal', 'Keep a ahealthy journal:People who are successful at maintaining their weight monitor their progress and step on the scale regularly.[19] If you note that your weight has gone up or down, you can take steps to remedy it, such as increasing or decreasing portion sizes or modifying your exercise routine. ', '2018-03-03 13:07:14'),
(41, 'Normal', 'Get enough rest. On average, the less people sleep, the more they weigh.[21] Sleeping enough hours per night is an easy way to maintain your ideal weight, while also being a key part of an overall healthy lifestyle', '2018-03-03 13:11:07'),
(42, 'Normal', 'Follow a consistent diet. Eating the same types of food each day is better than eating more on weekends, holidays, or other special occasions.Donâ€™t skip meals. This can slow down your metabolism and youâ€™ll burn fewer calories at rest.Donâ€™t skip meals. This can slow down your metabolism and youâ€™ll burn fewer calories at rest', '2018-03-03 13:12:22'),
(43, 'Underweight', 'Hair loss. Low body weight can cause hair to thin and fall out easily. It also can cause dry, thin skin and health issues with teeth and gums. Spinach is a great source of iron, vitamin A and C and protein. Iron deficiency is the main cause of hair fall and spinach is not only iron-rich, it also contains sebum which acts as a natural conditioner for hair. It also provides us with omega-3 acid, magnesium, potassium, calcium and iron. These help in maintaining a healthy scalp and lustrous hair.', '2018-03-03 13:24:38'),
(44, 'Underweight', 'Carrots and Sweet Potatoes: Sneak carrots in your diet for those long and lustrous locks. Known to be good for the eyes, carrots contain Vitamin A that also improves hair growth.', '2018-03-03 13:26:23'),
(45, 'Underweight', ' Dairy products are also a great source of biotin (Vitamin B7) that is known to fight hair loss.  Milk, yogurt, cheese, eggs etc. are loaded with essential nutrients such as proteins, Vitamin B12, iron, zinc and Omega 6 fatty acids.', '2018-03-03 13:28:33'),
(46, 'Underweight', 'Anemia. T\r\n\r\n\r\n\r\nAnaemia this is a condition can be caused by not having enough of the vitamins iron, folate, and B12. This can cause dizziness, fatigue, and headaches.Eating foods high in iron can help prevent foods such as meat,chicken,turkey or pork', '2018-03-03 13:32:33'),
(47, 'Overweight', 'Gallstones the incidence of gallstones is significantly higher in those who are obese. A high-fiber, low-fat diet helps keep bile cholesterol in liquid form. However, don\'t cut out fats abruptly or eliminate them altogether, as too little fat can also result in gallstone formation.', '2018-03-03 13:36:43'),
(48, 'Overweight', 'Studies suggest that moderate consumption of alcohol and coffee may actually prevent gallstones.', '2018-03-03 13:38:05'),
(49, 'Overweight', 'Exercise getting regular exercise can help you keep your weight down, which may prevent gallstones but this is a more indirect approach', '2018-03-03 13:39:10'),
(50, 'Overweight', ' There are lots of reasons to eat these wonder foods, and here\'s one more: Consuming lots of fruits and vegetables may prevent gallstones', '2018-03-03 13:40:05'),
(51, 'Overweight', 'Menstrual Problems being overweight may cause a girl to reach puberty at an earlier age. Also, obesity may contribute to uterine fibroids or menstrual irregularities later in life.', '2018-03-03 13:41:57'),
(52, 'Overweight', 'High-Fat, Processed Meats. High-fat, processed meats are some of the worst food choices for women when it comes to fibroids. Foods high in unhealthy fats, like non-organic/processed meats or trans-fats (think hamburgers and processed breakfast sausages), can increase inflammation levels. Processed foods also often contain chemical additives and other ingredients that promote inflammation.', '2018-03-03 13:43:56'),
(53, 'Overweight', 'Cruciferous Vegetables. Cruciferous vegetables support detoxification of your liver and may help balance estrogen levels. Research has shown that high consumption of broccoli, cabbage,', '2018-03-03 13:44:58'),
(54, 'Overweight', 'Flaxseeds can help balance estrogen levels in the body, which can in turn work to shrink fibroids. You should aim for at least 2 tablespoons per day if you already have fibroids.', '2018-03-03 13:46:09'),
(55, 'Overweight', 'Whole Grains. Instead of eating refined grains, opt for healthier whole grains like millet, spelt, brown rice, buckwheat, rye and oats. These are higher in fiber, contain more minerals and tend to be much less processed.', '2018-03-03 13:46:44'),
(56, 'Overweight', 'Sip on Herbal teas may help soothe symptoms by decreasing inflammation and rebalancing certain hormones. Teas made with chasteberry, milk thistle, yellow dock, dandelion root, nettle and red raspberry all have systemic benefits for the uterus and reproductive system.', '2018-03-03 13:47:59'),
(57, 'Overweight', 'Beans and Lentils.Legumes, such as beans and lentils, are top fiber sources, making them prime choices for weight control. They also have a low glycemic index, or a mild impact on your blood sugar.', '2018-03-03 13:50:06'),
(58, 'Overweight', 'For soy, which also offers a lean protein alternative to fatty meats, consume soy milk, tofu or edamame -- steamed, podded soybeans. Add ground flaxseeds to smoothies, yogurt and cereals', '2018-03-03 13:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `time` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `day` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bmr` varchar(255) NOT NULL,
  `bmi` varchar(255) NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `time`, `message`, `day`, `created`, `bmr`, `bmi`, `weight`) VALUES
(1, 'Morning', 'Peanut butter is high in unsaturated fats, but it’s important to understand that these are healthy fats. Unsaturated fats help lower your cholesterol levels. This can reduce your risk for heart disease.', 1, '2018-05-05 21:46:14', 'Low BMR', 'Low', 5);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `height` mediumint(9) DEFAULT NULL,
  `weight` mediumint(9) DEFAULT NULL,
  `bmi` text,
  `obese` text,
  `race` varchar(255) DEFAULT NULL,
  `physical_activity` varchar(255) DEFAULT NULL,
  `age` mediumint(9) DEFAULT NULL,
  `waist_measurement` mediumint(9) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `risks` varchar(255) DEFAULT NULL,
  `bmr` mediumint(9) DEFAULT NULL,
  `uid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `height`, `weight`, `bmi`, `obese`, `race`, `physical_activity`, `age`, `waist_measurement`, `gender`, `risks`, `bmr`, `uid`) VALUES
(1, 176, 99, '31.960227272727', 'Yes', 'Indian', 'Yes', 32, 50, 'Male', 'Stroke', 1577, ''),
(2, 166, 81, '29.394687182465', 'Yes', 'Black', 'Yes', 41, 50, 'Female', 'Osteoarthritis', 1354, ''),
(3, 170, 102, '35.294117647059', 'Yes', 'White', 'No', 27, 48, 'Male', 'Breathing problems', 1439, ''),
(4, 163, 60, '22.582709172344', 'No', 'White', 'No', 50, 44, 'Female', 'Gallbladder disease', 1242, ''),
(5, 163, 79, '29.733900410253', 'Yes', 'White', 'Yes', 28, 44, 'Male', 'Stroke', 1677, ''),
(6, 181, 66, '20.145905192149', 'No', 'Indian', 'No', 21, 41, 'Male', 'Asthma', 1265, ''),
(7, 183, 72, '21.499596882558', 'No', 'Mixed', 'Yes', 65, 32, 'Male', 'Breathing problems', 1659, ''),
(8, 164, 82, '30.487804878049', 'Yes', 'Indian', 'No', 37, 35, 'Female', 'Cancer', 1370, ''),
(9, 170, 62, '21.453287197232', 'No', 'Mixed', 'No', 19, 32, 'Female', 'None', 1583, ''),
(10, 160, 106, '41.40625', 'Yes', 'Indian', 'Yes', 35, 30, 'Female', 'Gallbladder disease', 1229, ''),
(11, 167, 96, '34.422173616838', 'Yes', 'White', 'Yes', 56, 43, 'Male', 'Heart Disease', 1280, ''),
(12, 174, 84, '27.744748315497', 'Yes', 'Black', 'Yes', 19, 45, 'Female', 'Heart Disease', 1622, ''),
(13, 180, 66, '20.37037037037', 'No', 'Black', 'No', 53, 35, 'Male', 'Gallstones', 1260, ''),
(14, 178, 70, '22.093170054286', 'No', 'Black', 'Yes', 63, 40, 'Male', 'None', 1276, ''),
(15, 167, 88, '31.553659148768', 'Yes', 'Indian', 'No', 38, 49, 'Female', 'Gallstones', 1315, ''),
(16, 170, 65, '22.491349480969', 'No', 'Black', 'No', 55, 31, 'Male', 'Stroke', 1640, ''),
(17, 189, 88, '24.635368550712', 'No', 'Mixed', 'No', 38, 34, 'Female', 'Stroke', 1316, ''),
(18, 170, 108, '37.370242214533', 'Yes', 'Black', 'Yes', 29, 40, 'Male', 'Gallstones', 1256, ''),
(19, 169, 98, '34.312524071286', 'Yes', 'Black', 'No', 50, 33, 'Female', 'Osteoarthritis', 1273, ''),
(20, 161, 69, '26.61934338953', 'Yes', 'Mixed', 'No', 57, 34, 'Female', 'Diabetes', 1333, ''),
(21, 177, 97, '30.961728749721', 'Yes', 'Black', 'No', 55, 39, 'Female', 'Gallbladder disease', 1311, ''),
(22, 167, 109, '39.083509627452', 'Yes', 'Black', 'Yes', 45, 38, 'Male', 'Heart Disease', 1472, ''),
(23, 190, 65, '18.005540166205', 'No', 'Black', 'Yes', 49, 40, 'Male', 'Gallstones', 1297, ''),
(24, 179, 86, '26.840610467838', 'Yes', 'Mixed', 'Yes', 22, 47, 'Female', 'Gallbladder disease', 1601, ''),
(25, 168, 74, '26.218820861678', 'Yes', 'Mixed', 'Yes', 46, 35, 'Male', 'Gallstones', 1455, ''),
(26, 183, 88, '26.277285078683', 'Yes', 'Black', 'No', 23, 36, 'Male', 'Heart Disease', 1647, ''),
(27, 179, 92, '28.713211198152', 'Yes', 'Black', 'Yes', 67, 42, 'Female', 'Stroke', 1205, ''),
(28, 190, 109, '30.193905817175', 'Yes', 'White', 'No', 70, 31, 'Female', 'Osteoarthritis', 1606, ''),
(29, 160, 82, '32.03125', 'Yes', 'Mixed', 'No', 36, 47, 'Female', 'High Blood Pressure', 1599, ''),
(30, 165, 73, '26.813590449954', 'Yes', 'Black', 'Yes', 38, 30, 'Male', 'Osteoarthritis', 1648, ''),
(31, 178, 93, '29.352354500694', 'Yes', 'White', 'No', 30, 31, 'Female', 'Asthma', 1385, ''),
(32, 166, 69, '25.039918710989', 'Yes', 'Black', 'No', 58, 39, 'Male', 'Gout', 1659, ''),
(33, 166, 77, '27.943097691973', 'Yes', 'Mixed', 'Yes', 22, 48, 'Female', 'Heart Disease', 1571, ''),
(34, 172, 99, '33.464034613304', 'Yes', 'Black', 'Yes', 47, 50, 'Female', 'Breathing problems', 1448, ''),
(35, 172, 85, '28.731746890211', 'Yes', 'Mixed', 'Yes', 32, 44, 'Male', 'Gout', 1240, ''),
(36, 183, 104, '31.054973274807', 'Yes', 'White', 'Yes', 52, 46, 'Male', 'Gallstones', 1466, ''),
(37, 168, 103, '36.493764172336', 'Yes', 'Indian', 'Yes', 60, 41, 'Female', 'Cancer', 1329, ''),
(38, 162, 68, '25.910684346898', 'Yes', 'Black', 'Yes', 65, 40, 'Male', 'Osteoarthritis', 1469, ''),
(39, 182, 75, '22.642192971863', 'No', 'Mixed', 'No', 60, 36, 'Male', 'Gallstones', 1597, ''),
(40, 183, 110, '32.846606348353', 'Yes', 'Black', 'No', 25, 38, 'Female', 'High Blood Pressure', 1601, ''),
(41, 185, 81, '23.666910153397', 'No', 'Indian', 'No', 61, 43, 'Female', 'Breathing problems', 1437, ''),
(42, 170, 79, '27.335640138408', 'Yes', 'Indian', 'No', 68, 35, 'Male', 'Persistent Cough', 1473, ''),
(43, 188, 91, '25.746944318696', 'Yes', 'Black', 'Yes', 68, 31, 'Male', 'Cancer', 1622, ''),
(44, 168, 72, '25.510204081633', 'Yes', 'White', 'No', 38, 36, 'Male', 'Osteoarthritis', 1315, ''),
(45, 160, 98, '38.28125', 'Yes', 'Mixed', 'Yes', 21, 43, 'Male', 'None', 1282, ''),
(46, 184, 62, '18.312854442344', 'No', 'White', 'Yes', 21, 43, 'Male', 'Cancer', 1240, ''),
(47, 162, 62, '23.62444749276', 'No', 'Indian', 'Yes', 46, 34, 'Female', 'Diabetes', 1628, ''),
(48, 161, 63, '24.304617877397', 'No', 'Black', 'Yes', 35, 34, 'Male', 'Breathing problems', 1263, ''),
(49, 165, 107, '39.302112029385', 'Yes', 'Indian', 'Yes', 66, 47, 'Male', 'Gallbladder disease', 1222, ''),
(50, 172, 100, '33.802055164954', 'Yes', 'Indian', 'Yes', 62, 43, 'Female', 'Heart Disease', 1232, ''),
(51, 189, 91, '25.475210660396', 'Yes', 'Indian', 'No', 65, 40, 'Male', 'High Blood Pressure', 1403, ''),
(52, 166, 91, '33.023660908695', 'Yes', 'Mixed', 'Yes', 46, 42, 'Male', 'Asthma', 1255, ''),
(53, 180, 88, '27.16049382716', 'Yes', 'White', 'No', 40, 37, 'Male', 'Asthma', 1267, ''),
(54, 174, 66, '21.799445105034', 'No', 'Black', 'Yes', 29, 37, 'Female', 'Asthma', 1690, ''),
(55, 184, 104, '30.718336483932', 'Yes', 'Black', 'Yes', 18, 31, 'Male', 'Osteoarthritis', 1531, ''),
(56, 189, 63, '17.636684303351', 'No', 'White', 'Yes', 50, 44, 'Female', 'Heart Disease', 1542, ''),
(57, 170, 79, '27.335640138408', 'Yes', 'White', 'Yes', 35, 41, 'Male', 'None', 1269, ''),
(58, 161, 63, '24.304617877397', 'No', 'Black', 'No', 60, 38, 'Male', 'Heart Disease', 1254, ''),
(59, 183, 72, '21.499596882558', 'No', 'Black', 'Yes', 47, 33, 'Female', 'None', 1229, ''),
(60, 190, 106, '29.362880886427', 'Yes', 'Indian', 'Yes', 19, 34, 'Female', 'Cancer', 1619, ''),
(61, 172, 109, '36.8442401298', 'Yes', 'Black', 'No', 47, 36, 'Female', 'Breathing problems', 1259, ''),
(62, 177, 104, '33.196080308979', 'Yes', 'Indian', 'Yes', 41, 46, 'Male', 'High Blood Pressure', 1501, ''),
(63, 188, 102, '28.859212313264', 'Yes', 'Mixed', 'Yes', 28, 44, 'Male', 'Diabetes', 1260, ''),
(64, 172, 81, '27.379664683613', 'Yes', 'Indian', 'Yes', 61, 33, 'Female', 'None', 1259, ''),
(65, 184, 92, '27.173913043478', 'Yes', 'Black', 'Yes', 61, 48, 'Female', 'Cancer', 1533, ''),
(66, 185, 94, '27.465303140979', 'Yes', 'Mixed', 'No', 54, 36, 'Female', 'None', 1359, ''),
(67, 170, 97, '33.56401384083', 'Yes', 'Black', 'No', 61, 40, 'Female', 'Heart Disease', 1222, ''),
(68, 183, 83, '24.784257517394', 'No', 'Mixed', 'No', 68, 46, 'Female', 'Osteoarthritis', 1321, ''),
(69, 169, 109, '38.16392983439', 'Yes', 'Mixed', 'No', 42, 31, 'Male', 'Diabetes', 1283, ''),
(70, 177, 80, '25.535446391522', 'Yes', 'Mixed', 'No', 70, 40, 'Male', 'Gout', 1495, ''),
(71, 172, 87, '29.40778799351', 'Yes', 'Black', 'Yes', 43, 50, 'Male', 'None', 1576, ''),
(72, 178, 72, '22.724403484409', 'No', 'White', 'Yes', 58, 46, 'Male', 'Heart Disease', 1403, ''),
(73, 176, 76, '24.535123966942', 'No', 'Indian', 'Yes', 25, 33, 'Male', 'None', 1449, ''),
(74, 187, 83, '23.735308416026', 'No', 'Indian', 'No', 42, 41, 'Female', 'Cancer', 1364, ''),
(75, 164, 98, '36.436644854253', 'Yes', 'White', 'No', 50, 41, 'Female', 'Gallbladder disease', 1362, ''),
(76, 172, 82, '27.717685235262', 'Yes', 'Mixed', 'Yes', 33, 34, 'Male', 'Gout', 1462, ''),
(77, 187, 100, '28.596757127742', 'Yes', 'Mixed', 'Yes', 24, 49, 'Male', 'Gallstones', 1370, ''),
(78, 177, 73, '23.301094832264', 'No', 'Mixed', 'Yes', 56, 44, 'Female', 'Gallbladder disease', 1504, ''),
(79, 190, 84, '23.268698060942', 'No', 'Black', 'Yes', 65, 46, 'Female', 'Stroke', 1362, ''),
(80, 185, 73, '21.329437545654', 'No', 'Indian', 'Yes', 43, 47, 'Male', 'Diabetes', 1676, ''),
(81, 160, 76, '29.6875', 'Yes', 'Indian', 'No', 69, 33, 'Male', 'Gout', 1464, ''),
(82, 180, 110, '33.950617283951', 'Yes', 'White', 'No', 34, 30, 'Female', 'Breathing problems', 1302, ''),
(83, 172, 61, '20.619253650622', 'No', 'Black', 'Yes', 57, 38, 'Male', 'Stroke', 1476, ''),
(84, 176, 87, '28.086260330579', 'Yes', 'Black', 'Yes', 33, 30, 'Male', 'Stroke', 1210, ''),
(85, 163, 94, '35.379577703338', 'Yes', 'Indian', 'No', 56, 46, 'Male', 'None', 1388, ''),
(86, 183, 96, '28.666129176745', 'Yes', 'Indian', 'Yes', 36, 50, 'Male', 'Gallbladder disease', 1538, ''),
(87, 173, 101, '33.746533462528', 'Yes', 'Mixed', 'No', 19, 40, 'Male', 'Diabetes', 1382, ''),
(88, 175, 91, '29.714285714286', 'Yes', 'White', 'Yes', 28, 32, 'Male', 'High Blood Pressure', 1251, ''),
(89, 178, 92, '29.036737785633', 'Yes', 'White', 'Yes', 41, 43, 'Female', 'Heart Disease', 1442, ''),
(90, 174, 70, '23.120623596248', 'No', 'White', 'No', 57, 30, 'Male', 'Persistent Cough', 1533, ''),
(91, 171, 95, '32.488628979857', 'Yes', 'Black', 'Yes', 39, 34, 'Male', 'Osteoarthritis', 1248, ''),
(92, 167, 63, '22.58955143605', 'No', 'Black', 'Yes', 28, 38, 'Male', 'Heart Disease', 1234, ''),
(93, 161, 81, '31.248794413796', 'Yes', 'Mixed', 'Yes', 28, 33, 'Male', 'Breathing problems', 1626, ''),
(94, 164, 68, '25.28256989887', 'Yes', 'Black', 'Yes', 33, 50, 'Male', 'Gallstones', 1644, ''),
(95, 167, 91, '32.629352074295', 'Yes', 'White', 'Yes', 46, 37, 'Male', 'Breathing problems', 1259, ''),
(96, 164, 97, '36.064842355741', 'Yes', 'White', 'No', 45, 33, 'Female', 'Gout', 1694, ''),
(97, 183, 84, '25.082863029652', 'Yes', 'Black', 'Yes', 41, 30, 'Female', 'Gout', 1632, ''),
(98, 188, 72, '20.371208691716', 'No', 'White', 'Yes', 30, 37, 'Male', 'High Blood Pressure', 1343, ''),
(99, 181, 84, '25.640242971826', 'Yes', 'Indian', 'No', 46, 34, 'Male', 'Persistent Cough', 1464, ''),
(100, 183, 87, '25.978679566425', 'Yes', 'Mixed', 'No', 57, 44, 'Male', 'Asthma', 1509, ''),
(101, 188, 90, '25.464010864645', 'Yes', 'Mixed', 'No', 38, 42, 'Male', 'Heart Disease', 1433, ''),
(102, 163, 69, '25.970115548195', 'Yes', 'Indian', 'Yes', 43, 44, 'Male', 'Persistent Cough', 1539, ''),
(103, 163, 103, '38.76698407919', 'Yes', 'White', 'Yes', 21, 31, 'Male', 'Gallbladder disease', 1662, ''),
(104, 175, 95, '31.020408163265', 'Yes', 'Indian', 'No', 34, 48, 'Male', 'Gout', 1275, ''),
(105, 162, 61, '23.243408017071', 'No', 'Indian', 'No', 59, 31, 'Male', 'Heart Disease', 1521, ''),
(106, 173, 110, '36.753650305724', 'Yes', 'Mixed', 'No', 46, 41, 'Male', 'Breathing problems', 1580, ''),
(107, 186, 104, '30.06127876055', 'Yes', 'Mixed', 'No', 44, 40, 'Female', 'Asthma', 1323, ''),
(108, 168, 104, '36.848072562358', 'Yes', 'Black', 'Yes', 62, 48, 'Male', 'None', 1397, ''),
(109, 183, 107, '31.95078981158', 'Yes', 'Mixed', 'No', 65, 34, 'Male', 'Asthma', 1554, ''),
(110, 172, 73, '24.675500270416', 'No', 'Indian', 'No', 70, 34, 'Male', 'Osteoarthritis', 1254, ''),
(111, 162, 65, '24.767565919829', 'No', 'Black', 'Yes', 62, 48, 'Male', 'Cancer', 1295, ''),
(112, 167, 74, '26.533758829646', 'Yes', 'Indian', 'Yes', 40, 38, 'Male', 'Stroke', 1227, ''),
(113, 175, 108, '35.265306122449', 'Yes', 'Indian', 'Yes', 70, 42, 'Male', 'Gallstones', 1642, ''),
(114, 188, 67, '18.956541421458', 'No', 'Indian', 'No', 18, 32, 'Male', 'Gout', 1546, ''),
(115, 187, 92, '26.309016557522', 'Yes', 'White', 'Yes', 64, 43, 'Male', 'Gout', 1690, ''),
(116, 171, 81, '27.700831024931', 'Yes', 'Indian', 'Yes', 27, 30, 'Female', 'Diabetes', 1617, ''),
(117, 190, 89, '24.653739612188', 'No', 'Black', 'No', 58, 43, 'Male', 'Gallstones', 1511, ''),
(118, 164, 87, '32.346817370613', 'Yes', 'Mixed', 'No', 36, 44, 'Female', 'Gallstones', 1365, ''),
(119, 170, 97, '33.56401384083', 'Yes', 'Indian', 'No', 37, 49, 'Female', 'Gout', 1669, ''),
(120, 187, 97, '27.738854413909', 'Yes', 'Mixed', 'Yes', 52, 31, 'Female', 'Diabetes', 1462, ''),
(121, 177, 76, '24.258674071946', 'No', 'White', 'No', 23, 37, 'Female', 'Osteoarthritis', 1342, ''),
(122, 161, 60, '23.14725512133', 'No', 'Indian', 'Yes', 34, 38, 'Male', 'Gout', 1671, ''),
(123, 184, 100, '29.536862003781', 'Yes', 'Indian', 'Yes', 23, 48, 'Male', 'None', 1367, ''),
(124, 177, 97, '30.961728749721', 'Yes', 'White', 'No', 54, 44, 'Male', 'Gout', 1445, ''),
(125, 185, 67, '19.576333089847', 'No', 'Mixed', 'Yes', 59, 41, 'Male', 'Diabetes', 1587, ''),
(126, 162, 65, '24.767565919829', 'No', 'Black', 'Yes', 70, 46, 'Male', 'Osteoarthritis', 1498, ''),
(127, 187, 103, '29.454659841574', 'Yes', 'Indian', 'No', 54, 46, 'Female', 'None', 1524, ''),
(128, 183, 91, '27.173101615456', 'Yes', 'Indian', 'No', 34, 41, 'Female', 'None', 1513, ''),
(129, 189, 98, '27.434842249657', 'Yes', 'Mixed', 'No', 45, 40, 'Male', 'Gallbladder disease', 1542, ''),
(130, 168, 74, '26.218820861678', 'Yes', 'Indian', 'No', 39, 50, 'Male', 'Gout', 1416, ''),
(131, 172, 103, '34.816116819903', 'Yes', 'Indian', 'Yes', 22, 35, 'Male', 'Asthma', 1329, ''),
(132, 188, 102, '28.859212313264', 'Yes', 'Indian', 'Yes', 24, 38, 'Female', 'Gallstones', 1439, ''),
(133, 184, 106, '31.309073724008', 'Yes', 'White', 'Yes', 51, 31, 'Male', 'Breathing problems', 1411, ''),
(134, 181, 63, '19.23018222887', 'No', 'Mixed', 'Yes', 25, 43, 'Male', 'Gout', 1670, ''),
(135, 187, 102, '29.168692270297', 'Yes', 'Indian', 'Yes', 52, 48, 'Male', 'Gout', 1612, ''),
(136, 171, 77, '26.332888752095', 'Yes', 'White', 'No', 58, 31, 'Female', 'Heart Disease', 1561, ''),
(137, 183, 88, '26.277285078683', 'Yes', 'White', 'Yes', 35, 47, 'Female', 'Breathing problems', 1410, ''),
(138, 174, 74, '24.441802087462', 'No', 'Black', 'Yes', 46, 42, 'Female', 'Diabetes', 1412, ''),
(139, 172, 105, '35.492157923202', 'Yes', 'Mixed', 'No', 69, 48, 'Male', 'Breathing problems', 1303, ''),
(140, 161, 73, '28.162493730952', 'Yes', 'Mixed', 'Yes', 32, 39, 'Female', 'Gout', 1432, ''),
(141, 177, 96, '30.642535669827', 'Yes', 'White', 'No', 50, 46, 'Female', 'Gallbladder disease', 1334, ''),
(142, 163, 107, '40.272498024013', 'Yes', 'Mixed', 'No', 25, 30, 'Female', 'Diabetes', 1481, ''),
(143, 169, 102, '35.713035257869', 'Yes', 'White', 'Yes', 27, 36, 'Male', 'Heart Disease', 1465, ''),
(144, 184, 98, '28.946124763705', 'Yes', 'Black', 'Yes', 52, 38, 'Male', 'Cancer', 1476, ''),
(145, 178, 89, '28.089887640449', 'Yes', 'Indian', 'Yes', 26, 37, 'Male', 'Stroke', 1237, ''),
(146, 184, 71, '20.971172022684', 'No', 'Indian', 'No', 28, 45, 'Female', 'Breathing problems', 1320, ''),
(147, 184, 96, '28.355387523629', 'Yes', 'Mixed', 'No', 67, 42, 'Female', 'Persistent Cough', 1518, ''),
(148, 187, 71, '20.303697560697', 'No', 'Black', 'Yes', 60, 30, 'Female', 'Diabetes', 1327, ''),
(149, 160, 107, '41.796875', 'Yes', 'Black', 'Yes', 55, 37, 'Female', 'Heart Disease', 1340, ''),
(150, 161, 79, '30.477219243085', 'Yes', 'Black', 'No', 64, 33, 'Female', 'None', 1596, ''),
(151, 172, 87, '29.40778799351', 'Yes', 'Mixed', 'Yes', 41, 41, 'Male', 'Gout', 1449, ''),
(152, 165, 70, '25.711662075298', 'Yes', 'Black', 'Yes', 49, 33, 'Female', 'Cancer', 1649, ''),
(153, 173, 93, '31.073540713021', 'Yes', 'White', 'Yes', 70, 50, 'Female', 'Gallstones', 1372, ''),
(154, 173, 72, '24.056934745565', 'No', 'Black', 'No', 33, 50, 'Male', 'Cancer', 1400, ''),
(155, 184, 68, '20.085066162571', 'No', 'White', 'Yes', 69, 40, 'Female', 'Persistent Cough', 1663, ''),
(156, 180, 101, '31.172839506173', 'Yes', 'White', 'Yes', 68, 32, 'Male', 'Osteoarthritis', 1560, ''),
(157, 177, 69, '22.024322512688', 'No', 'Black', 'Yes', 20, 43, 'Male', 'Gallstones', 1286, ''),
(158, 186, 69, '19.944502254596', 'No', 'Black', 'Yes', 60, 41, 'Male', 'Asthma', 1515, ''),
(159, 163, 73, '27.475629493018', 'Yes', 'Mixed', 'No', 34, 45, 'Female', 'Breathing problems', 1569, ''),
(160, 175, 107, '34.938775510204', 'Yes', 'Mixed', 'Yes', 26, 39, 'Male', 'Stroke', 1420, ''),
(161, 187, 81, '23.163373273471', 'No', 'Black', 'Yes', 20, 50, 'Male', 'Breathing problems', 1593, ''),
(162, 181, 62, '18.92494124111', 'No', 'White', 'Yes', 25, 50, 'Female', 'Gout', 1558, ''),
(163, 188, 68, '19.239474875509', 'No', 'Black', 'No', 48, 36, 'Male', 'Gout', 1452, ''),
(164, 170, 86, '29.757785467128', 'Yes', 'Black', 'No', 68, 33, 'Male', 'Osteoarthritis', 1261, ''),
(165, 165, 76, '27.91551882461', 'Yes', 'Black', 'Yes', 54, 49, 'Female', 'Persistent Cough', 1200, ''),
(166, 170, 109, '37.716262975779', 'Yes', 'Mixed', 'No', 34, 37, 'Female', 'Breathing problems', 1365, ''),
(167, 181, 86, '26.250724947346', 'Yes', 'Indian', 'Yes', 27, 40, 'Male', 'Stroke', 1625, ''),
(168, 190, 67, '18.559556786704', 'No', 'Black', 'Yes', 20, 48, 'Male', 'Breathing problems', 1453, ''),
(169, 169, 68, '23.808690171913', 'No', 'White', 'Yes', 26, 35, 'Male', 'Stroke', 1469, ''),
(170, 188, 108, '30.556813037574', 'Yes', 'Black', 'Yes', 61, 32, 'Male', 'Breathing problems', 1437, ''),
(171, 162, 68, '25.910684346898', 'Yes', 'Black', 'No', 21, 34, 'Female', 'Asthma', 1239, ''),
(172, 169, 105, '36.763418647806', 'Yes', 'Mixed', 'No', 57, 42, 'Female', 'Stroke', 1249, ''),
(173, 186, 101, '29.194126488611', 'Yes', 'White', 'No', 27, 32, 'Male', 'Osteoarthritis', 1593, ''),
(174, 182, 66, '19.92512981524', 'No', 'Black', 'No', 28, 43, 'Female', 'Gallstones', 1394, ''),
(175, 174, 63, '20.808561236623', 'No', 'Black', 'No', 45, 38, 'Female', 'Osteoarthritis', 1390, ''),
(176, 168, 60, '21.258503401361', 'No', 'White', 'No', 39, 50, 'Female', 'Persistent Cough', 1651, ''),
(177, 190, 105, '29.085872576177', 'Yes', 'Mixed', 'Yes', 52, 48, 'Female', 'None', 1354, ''),
(178, 178, 60, '18.937002903674', 'No', 'Mixed', 'No', 38, 39, 'Male', 'Gallbladder disease', 1498, ''),
(179, 184, 70, '20.675803402647', 'No', 'Indian', 'No', 65, 47, 'Male', 'Gallstones', 1285, ''),
(180, 173, 104, '34.748905743593', 'Yes', 'Indian', 'Yes', 51, 32, 'Female', 'Gout', 1591, ''),
(181, 190, 96, '26.592797783934', 'Yes', 'Mixed', 'No', 25, 49, 'Male', 'None', 1476, ''),
(182, 164, 62, '23.051754907793', 'No', 'Indian', 'No', 67, 43, 'Male', 'Osteoarthritis', 1526, ''),
(183, 167, 98, '35.139302233856', 'Yes', 'Black', 'No', 35, 44, 'Female', 'Asthma', 1444, ''),
(184, 173, 60, '20.047445621304', 'No', 'Indian', 'Yes', 65, 50, 'Male', 'Gallbladder disease', 1341, ''),
(185, 178, 107, '33.770988511552', 'Yes', 'Black', 'No', 57, 40, 'Female', 'Asthma', 1330, ''),
(186, 187, 72, '20.589665131974', 'No', 'Mixed', 'No', 47, 45, 'Female', 'Gout', 1405, ''),
(187, 186, 65, '18.788299225344', 'No', 'Black', 'No', 53, 42, 'Female', 'Osteoarthritis', 1238, ''),
(188, 188, 78, '22.068809416025', 'No', 'Black', 'Yes', 42, 34, 'Female', 'Stroke', 1596, ''),
(189, 181, 86, '26.250724947346', 'Yes', 'Black', 'No', 55, 32, 'Female', 'Cancer', 1692, ''),
(190, 168, 84, '29.761904761905', 'Yes', 'White', 'Yes', 46, 45, 'Female', 'Gallstones', 1428, ''),
(191, 160, 69, '26.953125', 'Yes', 'Black', 'No', 43, 33, 'Male', 'Asthma', 1428, ''),
(192, 183, 110, '32.846606348353', 'Yes', 'Mixed', 'No', 68, 45, 'Female', 'Asthma', 1220, ''),
(193, 186, 90, '26.014568158169', 'Yes', 'Black', 'No', 59, 48, 'Male', 'Cancer', 1344, ''),
(194, 180, 87, '26.851851851852', 'Yes', 'Indian', 'Yes', 46, 40, 'Female', 'Gallstones', 1366, ''),
(195, 177, 86, '27.450604870886', 'Yes', 'Black', 'Yes', 65, 35, 'Female', 'Asthma', 1437, ''),
(196, 180, 75, '23.148148148148', 'No', 'Black', 'Yes', 39, 32, 'Female', 'High Blood Pressure', 1215, ''),
(197, 182, 102, '30.793382441734', 'Yes', 'Black', 'No', 38, 45, 'Female', 'Stroke', 1476, ''),
(198, 185, 83, '24.251278305332', 'No', 'Mixed', 'No', 53, 46, 'Female', 'Persistent Cough', 1610, ''),
(199, 177, 92, '29.365763350251', 'Yes', 'Indian', 'No', 43, 34, 'Male', 'Diabetes', 1272, ''),
(200, 169, 64, '22.40817898533', 'No', 'Mixed', 'Yes', 45, 30, 'Male', 'Cancer', 1598, ''),
(201, 177, 106, '33.834466468767', 'Yes', 'Mixed', 'No', 62, 44, 'Female', 'Cancer', 1669, ''),
(202, 163, 83, '31.239414355075', 'Yes', 'White', 'No', 70, 37, 'Female', 'Gout', 1369, ''),
(203, 188, 80, '22.634676324129', 'No', 'Black', 'No', 61, 42, 'Male', 'Stroke', 1411, ''),
(204, 173, 104, '34.748905743593', 'Yes', 'Mixed', 'Yes', 36, 40, 'Female', 'Gallbladder disease', 1311, ''),
(205, 185, 106, '30.971512052593', 'Yes', 'Mixed', 'Yes', 43, 49, 'Female', 'None', 1347, ''),
(206, 175, 73, '23.836734693878', 'No', 'Indian', 'No', 48, 36, 'Female', 'Cancer', 1399, ''),
(207, 185, 63, '18.407596785975', 'No', 'Indian', 'Yes', 33, 43, 'Male', 'Gallstones', 1661, ''),
(208, 160, 66, '25.78125', 'Yes', 'Indian', 'No', 45, 38, 'Male', 'Breathing problems', 1506, ''),
(209, 165, 89, '32.690541781451', 'Yes', 'Mixed', 'Yes', 43, 37, 'Male', 'Gout', 1213, ''),
(210, 185, 93, '27.173119065011', 'Yes', 'Mixed', 'Yes', 27, 35, 'Female', 'Diabetes', 1320, ''),
(211, 164, 103, '38.295657346817', 'Yes', 'White', 'No', 70, 32, 'Male', 'Stroke', 1503, ''),
(212, 170, 85, '29.411764705882', 'Yes', 'Indian', 'No', 49, 34, 'Female', 'Cancer', 1473, ''),
(213, 175, 67, '21.877551020408', 'No', 'White', 'No', 45, 31, 'Male', 'Cancer', 1638, ''),
(214, 177, 78, '24.897060231734', 'No', 'Black', 'Yes', 33, 41, 'Female', 'None', 1304, ''),
(215, 190, 88, '24.376731301939', 'No', 'White', 'Yes', 54, 31, 'Male', 'Breathing problems', 1656, ''),
(216, 169, 75, '26.259584748433', 'Yes', 'White', 'No', 56, 30, 'Male', 'Gallstones', 1586, ''),
(217, 162, 100, '38.103947568968', 'Yes', 'Black', 'Yes', 56, 41, 'Female', 'High Blood Pressure', 1433, ''),
(218, 161, 71, '27.390918560241', 'Yes', 'Black', 'No', 47, 32, 'Female', 'None', 1589, ''),
(219, 188, 74, '20.937075599819', 'No', 'White', 'Yes', 34, 32, 'Male', 'Osteoarthritis', 1446, ''),
(220, 174, 84, '27.744748315497', 'Yes', 'Black', 'No', 57, 47, 'Male', 'Heart Disease', 1516, ''),
(221, 190, 103, '28.531855955679', 'Yes', 'Indian', 'Yes', 25, 45, 'Male', 'None', 1557, ''),
(222, 172, 91, '30.759870200108', 'Yes', 'Mixed', 'No', 43, 35, 'Female', 'Gout', 1309, ''),
(223, 167, 63, '22.58955143605', 'No', 'Black', 'No', 32, 48, 'Female', 'Stroke', 1216, ''),
(224, 182, 99, '29.88769472286', 'Yes', 'Indian', 'No', 38, 33, 'Female', 'Persistent Cough', 1671, ''),
(225, 177, 110, '35.111238788343', 'Yes', 'Black', 'No', 29, 47, 'Male', 'Stroke', 1248, ''),
(226, 175, 97, '31.673469387755', 'Yes', 'Mixed', 'No', 27, 48, 'Female', 'None', 1223, ''),
(227, 184, 109, '32.195179584121', 'Yes', 'White', 'Yes', 50, 30, 'Female', 'Breathing problems', 1228, ''),
(228, 169, 63, '22.058051188684', 'No', 'Mixed', 'Yes', 35, 31, 'Female', 'Persistent Cough', 1633, ''),
(229, 163, 103, '38.76698407919', 'Yes', 'Black', 'No', 27, 36, 'Female', 'Gout', 1348, ''),
(230, 187, 64, '18.301924561755', 'No', 'Indian', 'No', 31, 38, 'Female', 'Cancer', 1348, ''),
(231, 181, 63, '19.23018222887', 'No', 'Indian', 'No', 34, 30, 'Female', 'Asthma', 1327, ''),
(232, 173, 63, '21.049817902369', 'No', 'Black', 'Yes', 32, 34, 'Female', 'Stroke', 1433, ''),
(233, 163, 72, '27.099251006812', 'Yes', 'White', 'Yes', 29, 39, 'Female', 'Heart Disease', 1305, ''),
(234, 177, 70, '22.343515592582', 'No', 'Indian', 'No', 37, 38, 'Male', 'Heart Disease', 1606, ''),
(235, 167, 103, '36.932123776399', 'Yes', 'Black', 'No', 28, 43, 'Female', 'None', 1353, ''),
(236, 170, 88, '30.449826989619', 'Yes', 'White', 'Yes', 59, 34, 'Male', 'Cancer', 1307, ''),
(237, 180, 99, '30.555555555556', 'Yes', 'Mixed', 'No', 51, 49, 'Female', 'Asthma', 1389, ''),
(238, 182, 70, '21.132713440406', 'No', 'White', 'No', 30, 34, 'Male', 'Stroke', 1342, ''),
(239, 183, 102, '30.457762250291', 'Yes', 'Indian', 'Yes', 20, 33, 'Female', 'None', 1584, ''),
(240, 173, 77, '25.727555214006', 'Yes', 'White', 'Yes', 33, 42, 'Female', 'Osteoarthritis', 1632, ''),
(241, 165, 87, '31.955922865014', 'Yes', 'White', 'No', 65, 32, 'Female', 'Gout', 1204, ''),
(242, 181, 64, '19.53542321663', 'No', 'Indian', 'Yes', 19, 46, 'Male', 'Persistent Cough', 1306, ''),
(243, 165, 60, '22.038567493113', 'No', 'Mixed', 'Yes', 44, 37, 'Female', 'Heart Disease', 1676, ''),
(244, 184, 95, '28.060018903592', 'Yes', 'Indian', 'No', 54, 44, 'Female', 'Osteoarthritis', 1386, ''),
(245, 168, 84, '29.761904761905', 'Yes', 'Black', 'Yes', 37, 37, 'Male', 'None', 1285, ''),
(246, 168, 65, '23.030045351474', 'No', 'Black', 'Yes', 44, 41, 'Female', 'Osteoarthritis', 1473, ''),
(247, 187, 94, '26.880951700077', 'Yes', 'Mixed', 'Yes', 47, 40, 'Female', 'Asthma', 1559, ''),
(248, 161, 62, '23.918830292041', 'No', 'Mixed', 'No', 62, 48, 'Male', 'Stroke', 1360, ''),
(249, 164, 78, '29.000594883998', 'Yes', 'Black', 'Yes', 53, 49, 'Male', 'High Blood Pressure', 1311, ''),
(250, 172, 94, '31.773931855057', 'Yes', 'Indian', 'No', 57, 31, 'Male', 'Gallbladder disease', 1537, ''),
(251, 190, 102, '28.254847645429', 'Yes', 'Mixed', 'No', 25, 30, 'Male', 'High Blood Pressure', 1641, ''),
(252, 166, 69, '25.039918710989', 'Yes', 'Mixed', 'No', 30, 42, 'Female', 'Asthma', 1627, ''),
(253, 170, 66, '22.837370242215', 'No', 'Black', 'Yes', 59, 47, 'Male', 'Persistent Cough', 1554, ''),
(254, 170, 77, '26.643598615917', 'Yes', 'Indian', 'No', 49, 46, 'Male', 'Gallbladder disease', 1447, ''),
(255, 167, 104, '37.290688084908', 'Yes', 'Mixed', 'Yes', 42, 44, 'Female', 'High Blood Pressure', 1654, ''),
(256, 166, 72, '26.128610828858', 'Yes', 'Black', 'No', 55, 48, 'Female', 'Breathing problems', 1478, ''),
(257, 172, 71, '23.999459167117', 'No', 'Indian', 'Yes', 36, 45, 'Male', 'None', 1374, ''),
(258, 164, 63, '23.423557406306', 'No', 'Black', 'Yes', 61, 36, 'Female', 'Gallstones', 1667, ''),
(259, 172, 99, '33.464034613304', 'Yes', 'Mixed', 'No', 61, 43, 'Male', 'High Blood Pressure', 1388, ''),
(260, 171, 97, '33.172600116275', 'Yes', 'White', 'Yes', 37, 32, 'Male', 'Gout', 1576, ''),
(261, 176, 100, '32.28305785124', 'Yes', 'Indian', 'No', 31, 37, 'Male', 'Diabetes', 1217, ''),
(262, 164, 73, '27.141582391434', 'Yes', 'White', 'No', 47, 49, 'Female', 'Heart Disease', 1652, ''),
(263, 170, 82, '28.373702422145', 'Yes', 'White', 'No', 32, 41, 'Male', 'Gout', 1286, ''),
(264, 162, 61, '23.243408017071', 'No', 'Indian', 'Yes', 39, 38, 'Male', 'Osteoarthritis', 1393, ''),
(265, 175, 64, '20.897959183673', 'No', 'Mixed', 'Yes', 48, 47, 'Male', 'Gallbladder disease', 1366, ''),
(266, 184, 86, '25.401701323251', 'Yes', 'Black', 'No', 18, 45, 'Male', 'Gallstones', 1678, ''),
(267, 184, 86, '25.401701323251', 'Yes', 'Black', 'Yes', 38, 46, 'Female', 'Breathing problems', 1678, ''),
(268, 161, 63, '24.304617877397', 'No', 'Black', 'Yes', 66, 36, 'Male', 'Gallstones', 1690, ''),
(269, 174, 104, '34.350640771568', 'Yes', 'Black', 'Yes', 24, 43, 'Male', 'High Blood Pressure', 1498, ''),
(270, 162, 108, '41.152263374486', 'Yes', 'Mixed', 'Yes', 26, 46, 'Male', 'Gallbladder disease', 1653, ''),
(271, 169, 68, '23.808690171913', 'No', 'Indian', 'Yes', 49, 43, 'Female', 'Cancer', 1657, ''),
(272, 165, 100, '36.730945821855', 'Yes', 'Black', 'No', 36, 31, 'Female', 'High Blood Pressure', 1356, ''),
(273, 179, 99, '30.897912050186', 'Yes', 'Black', 'Yes', 59, 45, 'Male', 'Gout', 1265, ''),
(274, 179, 86, '26.840610467838', 'Yes', 'Black', 'No', 63, 42, 'Female', 'None', 1251, ''),
(275, 180, 68, '20.987654320988', 'No', 'Indian', 'No', 25, 47, 'Male', 'Gout', 1444, ''),
(276, 161, 94, '36.264033023417', 'Yes', 'Black', 'No', 54, 35, 'Female', 'Gallbladder disease', 1505, ''),
(277, 166, 77, '27.943097691973', 'Yes', 'Mixed', 'No', 47, 37, 'Male', 'Persistent Cough', 1561, ''),
(278, 189, 93, '26.035105400185', 'Yes', 'Mixed', 'Yes', 47, 38, 'Male', 'Heart Disease', 1224, ''),
(279, 188, 76, '21.502942507922', 'No', 'Black', 'No', 53, 32, 'Male', 'Heart Disease', 1371, ''),
(280, 165, 76, '27.91551882461', 'Yes', 'Black', 'No', 45, 40, 'Female', 'Stroke', 1362, ''),
(281, 190, 77, '21.329639889197', 'No', 'Black', 'Yes', 20, 36, 'Female', 'Heart Disease', 1242, ''),
(282, 170, 84, '29.065743944637', 'Yes', 'Indian', 'Yes', 18, 43, 'Male', 'Asthma', 1352, ''),
(283, 184, 105, '31.01370510397', 'Yes', 'White', 'No', 62, 32, 'Male', 'Stroke', 1387, ''),
(284, 187, 60, '17.158054276645', 'No', 'White', 'Yes', 21, 42, 'Male', 'Osteoarthritis', 1223, ''),
(285, 164, 84, '31.231409875074', 'Yes', 'Black', 'No', 66, 48, 'Male', 'Asthma', 1479, ''),
(286, 187, 92, '26.309016557522', 'Yes', 'Mixed', 'No', 54, 44, 'Female', 'Osteoarthritis', 1428, ''),
(287, 162, 91, '34.674592287761', 'Yes', 'Mixed', 'Yes', 20, 47, 'Female', 'Stroke', 1231, ''),
(288, 160, 88, '34.375', 'Yes', 'Mixed', 'No', 23, 35, 'Female', 'Persistent Cough', 1494, ''),
(289, 190, 71, '19.667590027701', 'No', 'Mixed', 'No', 48, 32, 'Female', 'Cancer', 1677, ''),
(290, 173, 62, '20.715693808681', 'No', 'Mixed', 'No', 53, 43, 'Male', 'Heart Disease', 1249, ''),
(291, 181, 79, '24.114038033027', 'No', 'Indian', 'Yes', 68, 46, 'Male', 'Heart Disease', 1411, ''),
(292, 164, 79, '29.37239738251', 'Yes', 'White', 'Yes', 29, 34, 'Male', 'Diabetes', 1601, ''),
(293, 189, 62, '17.356736933457', 'No', 'Mixed', 'Yes', 24, 32, 'Male', 'Gallbladder disease', 1434, ''),
(294, 164, 90, '33.462224866151', 'Yes', 'White', 'Yes', 37, 37, 'Male', 'None', 1694, ''),
(295, 178, 96, '30.299204645878', 'Yes', 'Mixed', 'No', 33, 48, 'Female', 'Breathing problems', 1346, ''),
(296, 171, 97, '33.172600116275', 'Yes', 'Black', 'Yes', 43, 48, 'Female', 'Breathing problems', 1561, ''),
(297, 190, 103, '28.531855955679', 'Yes', 'Indian', 'Yes', 41, 33, 'Male', 'Gout', 1619, ''),
(298, 168, 70, '24.801587301587', 'No', 'Indian', 'No', 36, 37, 'Male', 'Persistent Cough', 1210, ''),
(299, 190, 101, '27.97783933518', 'Yes', 'Mixed', 'Yes', 67, 47, 'Male', 'Gallbladder disease', 1382, ''),
(300, 171, 63, '21.545090797168', 'No', 'Black', 'Yes', 52, 33, 'Female', 'Gallbladder disease', 1398, ''),
(301, 163, 109, '41.025254996424', 'Yes', 'White', 'No', 25, 49, 'Female', 'Breathing problems', 1676, ''),
(302, 162, 76, '28.959000152416', 'Yes', 'White', 'No', 40, 37, 'Female', 'Gout', 1551, ''),
(303, 188, 75, '21.220009053871', 'No', 'White', 'No', 28, 40, 'Male', 'Diabetes', 1547, ''),
(304, 167, 75, '26.892323138155', 'Yes', 'Indian', 'No', 57, 47, 'Male', 'Stroke', 1381, ''),
(305, 160, 83, '32.421875', 'Yes', 'Black', 'No', 69, 42, 'Female', 'Diabetes', 1600, ''),
(306, 160, 92, '35.9375', 'Yes', 'Indian', 'No', 21, 37, 'Male', 'High Blood Pressure', 1682, ''),
(307, 187, 107, '30.598530126684', 'Yes', 'Black', 'No', 63, 34, 'Male', 'Stroke', 1437, ''),
(308, 168, 82, '29.053287981859', 'Yes', 'Black', 'No', 24, 46, 'Female', 'Gallstones', 1472, ''),
(309, 175, 85, '27.755102040816', 'Yes', 'White', 'Yes', 36, 45, 'Male', 'Diabetes', 1600, ''),
(310, 180, 90, '27.777777777778', 'Yes', 'Indian', 'No', 36, 30, 'Female', 'None', 1426, ''),
(311, 189, 75, '20.996052742084', 'No', 'Indian', 'Yes', 65, 30, 'Male', 'Gallbladder disease', 1225, ''),
(312, 182, 93, '28.07631928511', 'Yes', 'White', 'No', 70, 50, 'Female', 'Breathing problems', 1620, ''),
(313, 186, 73, '21.100705283848', 'No', 'Indian', 'Yes', 48, 41, 'Female', 'Gallbladder disease', 1362, ''),
(314, 161, 87, '33.563519925929', 'Yes', 'White', 'Yes', 67, 33, 'Female', 'High Blood Pressure', 1412, ''),
(315, 162, 76, '28.959000152416', 'Yes', 'Mixed', 'Yes', 26, 42, 'Male', 'Gallbladder disease', 1580, ''),
(316, 182, 73, '22.03840115928', 'No', 'White', 'No', 43, 45, 'Female', 'Heart Disease', 1535, ''),
(317, 176, 65, '20.983987603306', 'No', 'Black', 'No', 33, 40, 'Male', 'None', 1388, ''),
(318, 176, 73, '23.566632231405', 'No', 'Black', 'Yes', 58, 36, 'Male', 'Heart Disease', 1274, ''),
(319, 183, 105, '31.353578787064', 'Yes', 'Black', 'No', 56, 45, 'Female', 'Persistent Cough', 1529, ''),
(320, 183, 73, '21.798202394816', 'No', 'Mixed', 'Yes', 19, 48, 'Female', 'Heart Disease', 1440, ''),
(321, 164, 97, '36.064842355741', 'Yes', 'White', 'No', 41, 50, 'Male', 'High Blood Pressure', 1688, ''),
(322, 176, 81, '26.149276859504', 'Yes', 'Indian', 'No', 66, 50, 'Female', 'Heart Disease', 1309, ''),
(323, 165, 78, '28.650137741047', 'Yes', 'Mixed', 'Yes', 64, 36, 'Female', 'Breathing problems', 1575, ''),
(324, 187, 60, '17.158054276645', 'No', 'Indian', 'Yes', 42, 37, 'Male', 'Heart Disease', 1328, ''),
(325, 185, 83, '24.251278305332', 'No', 'Mixed', 'No', 33, 50, 'Male', 'None', 1634, ''),
(326, 189, 65, '18.19657904314', 'No', 'Mixed', 'No', 56, 46, 'Male', 'Diabetes', 1377, ''),
(327, 168, 92, '32.596371882086', 'Yes', 'Mixed', 'Yes', 23, 42, 'Male', 'High Blood Pressure', 1339, ''),
(328, 166, 72, '26.128610828858', 'Yes', 'Mixed', 'Yes', 32, 50, 'Male', 'Gout', 1447, ''),
(329, 178, 81, '25.56495391996', 'Yes', 'Black', 'Yes', 19, 39, 'Male', 'Gout', 1573, ''),
(330, 185, 97, '28.341855368882', 'Yes', 'Black', 'No', 20, 46, 'Female', 'Stroke', 1602, ''),
(331, 181, 74, '22.587833094228', 'No', 'Indian', 'No', 49, 42, 'Female', 'Diabetes', 1209, ''),
(332, 165, 107, '39.302112029385', 'Yes', 'Indian', 'Yes', 60, 35, 'Male', 'High Blood Pressure', 1301, ''),
(333, 166, 73, '26.491508201481', 'Yes', 'Black', 'No', 26, 47, 'Female', 'Gallbladder disease', 1596, ''),
(334, 186, 88, '25.436466643543', 'Yes', 'Indian', 'Yes', 40, 45, 'Female', 'Stroke', 1623, ''),
(335, 169, 63, '22.058051188684', 'No', 'Mixed', 'Yes', 49, 34, 'Male', 'None', 1594, ''),
(336, 165, 74, '27.180899908173', 'Yes', 'Indian', 'Yes', 27, 34, 'Male', 'High Blood Pressure', 1244, ''),
(337, 174, 66, '21.799445105034', 'No', 'White', 'Yes', 45, 44, 'Male', 'Stroke', 1532, ''),
(338, 184, 92, '27.173913043478', 'Yes', 'Mixed', 'No', 33, 45, 'Female', 'Osteoarthritis', 1333, ''),
(339, 186, 107, '30.928431032489', 'Yes', 'White', 'Yes', 37, 48, 'Female', 'Breathing problems', 1660, ''),
(340, 160, 101, '39.453125', 'Yes', 'Black', 'No', 27, 43, 'Male', 'Osteoarthritis', 1333, ''),
(341, 184, 109, '32.195179584121', 'Yes', 'White', 'No', 31, 40, 'Male', 'Breathing problems', 1336, ''),
(342, 186, 67, '19.36640073997', 'No', 'Black', 'No', 51, 45, 'Female', 'Stroke', 1581, ''),
(343, 167, 99, '35.497866542364', 'Yes', 'Mixed', 'Yes', 65, 49, 'Female', 'None', 1658, ''),
(344, 167, 76, '27.250887446664', 'Yes', 'Mixed', 'Yes', 31, 42, 'Male', 'Persistent Cough', 1221, ''),
(345, 161, 80, '30.86300682844', 'Yes', 'Indian', 'No', 45, 42, 'Male', 'Breathing problems', 1651, ''),
(346, 190, 79, '21.883656509695', 'No', 'Indian', 'Yes', 26, 47, 'Male', 'Gallstones', 1539, ''),
(347, 164, 109, '40.526472337894', 'Yes', 'Mixed', 'Yes', 43, 41, 'Male', 'Diabetes', 1664, ''),
(348, 166, 62, '22.499637102627', 'No', 'White', 'Yes', 65, 39, 'Female', 'Heart Disease', 1670, ''),
(349, 170, 78, '26.989619377163', 'Yes', 'Mixed', 'No', 37, 33, 'Male', 'Cancer', 1523, ''),
(350, 160, 69, '26.953125', 'Yes', 'Indian', 'Yes', 43, 37, 'Female', 'Breathing problems', 1481, ''),
(351, 186, 68, '19.655451497283', 'No', 'Black', 'Yes', 70, 38, 'Female', 'Persistent Cough', 1236, ''),
(352, 167, 107, '38.366381010434', 'Yes', 'Indian', 'Yes', 48, 30, 'Male', 'Persistent Cough', 1572, ''),
(353, 163, 104, '39.143362565396', 'Yes', 'Indian', 'Yes', 47, 49, 'Female', 'Gallstones', 1700, ''),
(354, 167, 101, '36.214995159382', 'Yes', 'White', 'No', 68, 48, 'Male', 'None', 1549, ''),
(355, 173, 71, '23.722810651876', 'No', 'White', 'Yes', 20, 45, 'Female', 'Persistent Cough', 1516, ''),
(356, 165, 60, '22.038567493113', 'No', 'Black', 'Yes', 68, 41, 'Female', 'Persistent Cough', 1431, ''),
(357, 172, 63, '21.295294753921', 'No', 'White', 'No', 47, 50, 'Female', 'Diabetes', 1607, ''),
(358, 182, 61, '18.415650283782', 'No', 'White', 'Yes', 53, 32, 'Female', 'Persistent Cough', 1403, ''),
(359, 160, 73, '28.515625', 'Yes', 'Indian', 'No', 62, 48, 'Female', 'Gallstones', 1278, ''),
(360, 161, 79, '30.477219243085', 'Yes', 'White', 'No', 41, 47, 'Male', 'Heart Disease', 1415, ''),
(361, 190, 102, '28.254847645429', 'Yes', 'Black', 'Yes', 21, 39, 'Female', 'Heart Disease', 1695, ''),
(362, 175, 80, '26.122448979592', 'Yes', 'Black', 'No', 43, 48, 'Male', 'Asthma', 1288, ''),
(363, 173, 61, '20.381569714992', 'No', 'Indian', 'No', 65, 40, 'Female', 'None', 1255, ''),
(364, 175, 99, '32.326530612245', 'Yes', 'Indian', 'Yes', 61, 32, 'Male', 'Breathing problems', 1234, ''),
(365, 167, 82, '29.402273297716', 'Yes', 'Black', 'Yes', 32, 48, 'Female', 'Heart Disease', 1280, ''),
(366, 183, 92, '27.471707127714', 'Yes', 'Black', 'Yes', 49, 47, 'Female', 'None', 1362, ''),
(367, 175, 63, '20.571428571429', 'No', 'White', 'No', 52, 37, 'Female', 'Asthma', 1386, ''),
(368, 178, 82, '25.880570635021', 'Yes', 'White', 'No', 55, 37, 'Female', 'Breathing problems', 1552, ''),
(369, 180, 83, '25.617283950617', 'Yes', 'Black', 'No', 37, 42, 'Male', 'Gallstones', 1331, ''),
(370, 182, 74, '22.340297065572', 'No', 'Indian', 'No', 53, 48, 'Male', 'Diabetes', 1398, ''),
(371, 160, 103, '40.234375', 'Yes', 'White', 'Yes', 51, 34, 'Male', 'None', 1251, ''),
(372, 180, 83, '25.617283950617', 'Yes', 'Indian', 'No', 55, 38, 'Male', 'Gallstones', 1452, ''),
(373, 164, 83, '30.859607376562', 'Yes', 'Indian', 'Yes', 24, 34, 'Male', 'Breathing problems', 1568, ''),
(374, 179, 84, '26.2164102244', 'Yes', 'Black', 'Yes', 45, 48, 'Male', 'Stroke', 1242, ''),
(375, 180, 98, '30.246913580247', 'Yes', 'Black', 'No', 65, 40, 'Male', 'Stroke', 1610, ''),
(376, 173, 89, '29.737044338267', 'Yes', 'White', 'Yes', 39, 30, 'Female', 'Gallstones', 1318, ''),
(377, 185, 101, '29.510591672754', 'Yes', 'Indian', 'Yes', 26, 40, 'Female', 'Breathing problems', 1374, ''),
(378, 170, 61, '21.107266435986', 'No', 'Mixed', 'No', 61, 45, 'Male', 'None', 1667, ''),
(379, 189, 75, '20.996052742084', 'No', 'Black', 'No', 30, 40, 'Female', 'Gallstones', 1545, ''),
(380, 188, 85, '24.049343594387', 'No', 'Mixed', 'Yes', 30, 37, 'Female', 'Cancer', 1451, ''),
(381, 190, 65, '18.005540166205', 'No', 'White', 'Yes', 44, 41, 'Male', 'Gallbladder disease', 1688, ''),
(382, 178, 98, '30.930438076001', 'Yes', 'Mixed', 'No', 38, 47, 'Female', 'Stroke', 1386, ''),
(383, 177, 69, '22.024322512688', 'No', 'Indian', 'Yes', 39, 48, 'Male', 'Osteoarthritis', 1554, ''),
(384, 172, 110, '37.182260681449', 'Yes', 'Black', 'Yes', 41, 40, 'Male', 'Breathing problems', 1512, ''),
(385, 185, 81, '23.666910153397', 'No', 'White', 'No', 52, 43, 'Male', 'Gallbladder disease', 1531, ''),
(386, 185, 63, '18.407596785975', 'No', 'White', 'Yes', 44, 34, 'Female', 'Cancer', 1389, ''),
(387, 174, 91, '30.056810675122', 'Yes', 'White', 'Yes', 68, 40, 'Male', 'Asthma', 1273, ''),
(388, 173, 82, '27.398175682448', 'Yes', 'Indian', 'Yes', 20, 30, 'Male', 'Persistent Cough', 1590, ''),
(389, 180, 74, '22.83950617284', 'No', 'Indian', 'Yes', 57, 44, 'Female', 'Diabetes', 1318, ''),
(390, 173, 60, '20.047445621304', 'No', 'Black', 'Yes', 66, 32, 'Female', 'Persistent Cough', 1576, ''),
(391, 184, 87, '25.697069943289', 'Yes', 'Mixed', 'No', 50, 34, 'Male', 'Asthma', 1263, ''),
(392, 178, 98, '30.930438076001', 'Yes', 'Black', 'Yes', 58, 50, 'Male', 'Asthma', 1392, ''),
(393, 174, 96, '31.70828378914', 'Yes', 'Black', 'Yes', 57, 35, 'Female', 'Gallstones', 1439, ''),
(394, 164, 63, '23.423557406306', 'No', 'White', 'Yes', 20, 33, 'Female', 'Diabetes', 1486, ''),
(395, 171, 110, '37.618412502992', 'Yes', 'Mixed', 'No', 20, 50, 'Male', 'Stroke', 1598, ''),
(396, 180, 90, '27.777777777778', 'Yes', 'White', 'Yes', 25, 34, 'Male', 'Heart Disease', 1456, ''),
(397, 160, 88, '34.375', 'Yes', 'White', 'No', 30, 30, 'Female', 'Heart Disease', 1412, ''),
(398, 177, 79, '25.216253311628', 'Yes', 'Black', 'No', 69, 49, 'Female', 'High Blood Pressure', 1251, ''),
(399, 183, 64, '19.110752784496', 'No', 'Mixed', 'No', 46, 44, 'Male', 'Gallbladder disease', 1470, ''),
(400, 186, 100, '28.905075731298', 'Yes', 'Indian', 'No', 42, 35, 'Female', 'Diabetes', 1562, ''),
(401, 163, 72, '27.099251006812', 'Yes', 'White', 'No', 58, 35, 'Male', 'Asthma', 1551, ''),
(402, 180, 78, '24.074074074074', 'No', 'Indian', 'Yes', 63, 34, 'Male', 'Gallbladder disease', 1360, ''),
(403, 172, 89, '30.083829096809', 'Yes', 'White', 'Yes', 70, 41, 'Female', 'None', 1624, ''),
(404, 182, 72, '21.736505252989', 'No', 'Indian', 'No', 50, 50, 'Female', 'Gout', 1319, ''),
(405, 160, 84, '32.8125', 'Yes', 'Mixed', 'No', 56, 32, 'Female', 'Persistent Cough', 1422, ''),
(406, 174, 76, '25.102391333069', 'Yes', 'White', 'No', 45, 48, 'Male', 'Gallstones', 1407, ''),
(407, 183, 96, '28.666129176745', 'Yes', 'Black', 'No', 61, 42, 'Female', 'Stroke', 1637, ''),
(408, 161, 80, '30.86300682844', 'Yes', 'White', 'Yes', 67, 40, 'Male', 'Gallstones', 1593, ''),
(409, 172, 71, '23.999459167117', 'No', 'Black', 'Yes', 26, 48, 'Female', 'Asthma', 1417, ''),
(410, 185, 74, '21.621621621622', 'No', 'Mixed', 'No', 26, 42, 'Male', 'Heart Disease', 1469, ''),
(411, 169, 94, '32.912012884703', 'Yes', 'Black', 'No', 18, 42, 'Male', 'Diabetes', 1358, ''),
(412, 181, 65, '19.840664204389', 'No', 'White', 'Yes', 24, 42, 'Male', 'Gallstones', 1490, ''),
(413, 171, 86, '29.410758865976', 'Yes', 'Black', 'No', 46, 49, 'Female', 'Gallstones', 1341, ''),
(414, 184, 77, '22.743383742911', 'No', 'Black', 'No', 27, 34, 'Female', 'Gallstones', 1443, ''),
(415, 182, 65, '19.623233908948', 'No', 'Black', 'Yes', 20, 33, 'Female', 'Asthma', 1220, ''),
(416, 176, 105, '33.897210743802', 'Yes', 'Black', 'Yes', 54, 43, 'Male', 'Stroke', 1590, ''),
(417, 188, 60, '16.976007243096', 'No', 'Black', 'Yes', 57, 45, 'Male', 'Asthma', 1291, ''),
(418, 161, 104, '40.121908876972', 'Yes', 'Mixed', 'No', 34, 37, 'Female', 'Heart Disease', 1476, ''),
(419, 179, 105, '32.7705127805', 'Yes', 'Mixed', 'Yes', 19, 44, 'Male', 'Gallbladder disease', 1622, ''),
(420, 162, 65, '24.767565919829', 'No', 'Mixed', 'No', 42, 35, 'Male', 'Breathing problems', 1251, ''),
(421, 176, 81, '26.149276859504', 'Yes', 'Black', 'No', 58, 46, 'Male', 'Persistent Cough', 1368, ''),
(422, 187, 95, '27.166919271355', 'Yes', 'White', 'No', 24, 33, 'Male', 'Stroke', 1363, ''),
(423, 170, 94, '32.525951557093', 'Yes', 'Indian', 'Yes', 61, 35, 'Male', 'High Blood Pressure', 1360, ''),
(424, 168, 95, '33.659297052154', 'Yes', 'Indian', 'Yes', 46, 34, 'Male', 'None', 1350, ''),
(425, 178, 107, '33.770988511552', 'Yes', 'Mixed', 'Yes', 21, 42, 'Male', 'None', 1437, ''),
(426, 170, 65, '22.491349480969', 'No', 'Black', 'Yes', 55, 44, 'Male', 'Osteoarthritis', 1626, ''),
(427, 184, 72, '21.266540642722', 'No', 'Indian', 'Yes', 57, 42, 'Male', 'Asthma', 1693, ''),
(428, 187, 94, '26.880951700077', 'Yes', 'Indian', 'No', 64, 42, 'Male', 'Stroke', 1458, ''),
(429, 175, 68, '22.204081632653', 'No', 'Mixed', 'Yes', 35, 34, 'Male', 'Asthma', 1519, ''),
(430, 189, 92, '25.75515803029', 'Yes', 'Indian', 'No', 28, 43, 'Male', 'Heart Disease', 1546, ''),
(431, 167, 95, '34.063609308329', 'Yes', 'Black', 'No', 46, 41, 'Female', 'Diabetes', 1212, ''),
(432, 172, 79, '26.703623580314', 'Yes', 'Mixed', 'No', 19, 42, 'Male', 'Breathing problems', 1451, ''),
(433, 188, 72, '20.371208691716', 'No', 'Indian', 'Yes', 32, 48, 'Male', 'None', 1657, ''),
(434, 172, 71, '23.999459167117', 'No', 'Black', 'Yes', 64, 31, 'Male', 'Diabetes', 1522, ''),
(435, 176, 88, '28.409090909091', 'Yes', 'Black', 'No', 67, 30, 'Male', 'Gallstones', 1327, ''),
(436, 182, 86, '25.96304794107', 'Yes', 'Black', 'No', 45, 41, 'Female', 'Diabetes', 1581, ''),
(437, 167, 71, '25.45806590412', 'Yes', 'Mixed', 'Yes', 70, 36, 'Male', 'High Blood Pressure', 1296, ''),
(438, 184, 65, '19.198960302457', 'No', 'White', 'Yes', 39, 38, 'Female', 'Gallstones', 1467, ''),
(439, 172, 104, '35.154137371552', 'Yes', 'Black', 'Yes', 55, 38, 'Male', 'Gallbladder disease', 1670, ''),
(440, 161, 65, '25.076193048108', 'Yes', 'White', 'No', 65, 30, 'Female', 'Gallbladder disease', 1419, ''),
(441, 186, 66, '19.077349982657', 'No', 'Indian', 'No', 66, 49, 'Female', 'Gallbladder disease', 1531, ''),
(442, 190, 91, '25.207756232687', 'Yes', 'Mixed', 'No', 31, 33, 'Male', 'Gallbladder disease', 1556, ''),
(443, 173, 82, '27.398175682448', 'Yes', 'Black', 'No', 59, 41, 'Male', 'Gout', 1204, ''),
(444, 162, 82, '31.245237006554', 'Yes', 'Mixed', 'No', 68, 48, 'Female', 'Gout', 1669, ''),
(445, 190, 67, '18.559556786704', 'No', 'White', 'Yes', 56, 33, 'Male', 'High Blood Pressure', 1304, ''),
(446, 185, 104, '30.387143900657', 'Yes', 'Mixed', 'No', 29, 34, 'Male', 'Breathing problems', 1401, ''),
(447, 187, 69, '19.731762418142', 'No', 'Indian', 'No', 22, 46, 'Female', 'Gallstones', 1428, ''),
(448, 166, 76, '27.58020031935', 'Yes', 'Indian', 'Yes', 27, 46, 'Male', 'High Blood Pressure', 1673, ''),
(449, 167, 108, '38.724945318943', 'Yes', 'Mixed', 'Yes', 19, 39, 'Female', 'None', 1411, ''),
(450, 187, 84, '24.021275987303', 'No', 'Indian', 'Yes', 32, 39, 'Male', 'None', 1248, ''),
(451, 178, 100, '31.561671506123', 'Yes', 'White', 'Yes', 59, 33, 'Male', 'Asthma', 1684, ''),
(452, 167, 63, '22.58955143605', 'No', 'Indian', 'No', 37, 36, 'Female', 'Asthma', 1592, ''),
(453, 183, 76, '22.694018931589', 'No', 'White', 'Yes', 49, 33, 'Male', 'Osteoarthritis', 1675, ''),
(454, 179, 61, '19.038107424862', 'No', 'Mixed', 'Yes', 47, 31, 'Male', 'Asthma', 1221, ''),
(455, 186, 77, '22.2569083131', 'No', 'Black', 'No', 70, 34, 'Male', 'None', 1412, ''),
(456, 162, 79, '30.102118579485', 'Yes', 'White', 'Yes', 57, 44, 'Male', 'Gallstones', 1230, ''),
(457, 166, 103, '37.378429380171', 'Yes', 'Indian', 'No', 68, 31, 'Female', 'Osteoarthritis', 1235, ''),
(458, 162, 72, '27.434842249657', 'Yes', 'White', 'Yes', 57, 31, 'Male', 'Stroke', 1578, ''),
(459, 174, 78, '25.762980578676', 'Yes', 'Indian', 'Yes', 68, 33, 'Male', 'Gallstones', 1613, ''),
(460, 163, 88, '33.121306786104', 'Yes', 'Mixed', 'No', 30, 38, 'Female', 'Heart Disease', 1491, ''),
(461, 185, 99, '28.926223520818', 'Yes', 'White', 'Yes', 56, 39, 'Male', 'Gout', 1636, ''),
(462, 168, 70, '24.801587301587', 'No', 'White', 'No', 57, 42, 'Male', 'Osteoarthritis', 1432, ''),
(463, 181, 100, '30.524098775984', 'Yes', 'Indian', 'No', 55, 48, 'Female', 'Cancer', 1201, ''),
(464, 184, 89, '26.287807183365', 'Yes', 'Black', 'Yes', 20, 48, 'Female', 'Diabetes', 1651, ''),
(465, 171, 92, '31.46267227523', 'Yes', 'White', 'Yes', 36, 38, 'Female', 'Stroke', 1457, ''),
(466, 162, 73, '27.815881725347', 'Yes', 'Indian', 'Yes', 29, 30, 'Female', 'Osteoarthritis', 1405, ''),
(467, 173, 101, '33.746533462528', 'Yes', 'Indian', 'No', 70, 39, 'Female', 'Asthma', 1537, ''),
(468, 184, 100, '29.536862003781', 'Yes', 'Black', 'No', 57, 47, 'Male', 'Gallbladder disease', 1507, ''),
(469, 172, 94, '31.773931855057', 'Yes', 'White', 'No', 35, 43, 'Male', 'Osteoarthritis', 1678, ''),
(470, 176, 76, '24.535123966942', 'No', 'Mixed', 'Yes', 40, 49, 'Male', 'High Blood Pressure', 1292, ''),
(471, 188, 99, '28.010411951109', 'Yes', 'Mixed', 'Yes', 49, 40, 'Male', 'Osteoarthritis', 1613, ''),
(472, 171, 84, '28.726787729558', 'Yes', 'Black', 'No', 45, 38, 'Female', 'Gallstones', 1373, ''),
(473, 182, 102, '30.793382441734', 'Yes', 'Black', 'Yes', 32, 46, 'Male', 'Gallbladder disease', 1552, ''),
(474, 164, 92, '34.205829863177', 'Yes', 'Indian', 'No', 66, 37, 'Female', 'Stroke', 1669, ''),
(475, 176, 82, '26.472107438017', 'Yes', 'Black', 'No', 57, 33, 'Male', 'None', 1431, ''),
(476, 171, 95, '32.488628979857', 'Yes', 'White', 'No', 43, 48, 'Female', 'Gout', 1246, ''),
(477, 169, 61, '21.357795595392', 'No', 'White', 'No', 18, 33, 'Male', 'Heart Disease', 1453, ''),
(478, 160, 100, '39.0625', 'Yes', 'Black', 'No', 44, 50, 'Female', 'Gallbladder disease', 1492, ''),
(479, 170, 80, '27.681660899654', 'Yes', 'Indian', 'No', 59, 46, 'Female', 'Diabetes', 1573, ''),
(480, 177, 106, '33.834466468767', 'Yes', 'Mixed', 'Yes', 49, 50, 'Female', 'Heart Disease', 1461, ''),
(481, 189, 93, '26.035105400185', 'Yes', 'Mixed', 'No', 28, 36, 'Male', 'High Blood Pressure', 1472, ''),
(482, 176, 96, '30.99173553719', 'Yes', 'Mixed', 'Yes', 57, 46, 'Female', 'Gout', 1203, ''),
(483, 186, 70, '20.233553011909', 'No', 'Mixed', 'Yes', 29, 44, 'Female', 'Gout', 1261, ''),
(484, 183, 86, '25.680074054167', 'Yes', 'Black', 'Yes', 30, 46, 'Male', 'Diabetes', 1276, ''),
(485, 186, 61, '17.632096196092', 'No', 'Black', 'Yes', 37, 38, 'Male', 'Heart Disease', 1456, ''),
(486, 181, 105, '32.050303714783', 'Yes', 'Indian', 'Yes', 44, 35, 'Male', 'Asthma', 1549, ''),
(487, 168, 99, '35.076530612245', 'Yes', 'Mixed', 'Yes', 31, 30, 'Male', 'High Blood Pressure', 1391, ''),
(488, 163, 70, '26.346494034401', 'Yes', 'Mixed', 'No', 48, 49, 'Male', 'Diabetes', 1472, ''),
(489, 183, 102, '30.457762250291', 'Yes', 'Black', 'Yes', 32, 40, 'Female', 'Gallstones', 1512, ''),
(490, 189, 107, '29.954368578707', 'Yes', 'Mixed', 'No', 36, 45, 'Female', 'Cancer', 1502, ''),
(491, 183, 104, '31.054973274807', 'Yes', 'Indian', 'Yes', 22, 31, 'Female', 'Breathing problems', 1403, ''),
(492, 166, 91, '33.023660908695', 'Yes', 'Indian', 'No', 26, 36, 'Male', 'Cancer', 1300, ''),
(493, 185, 99, '28.926223520818', 'Yes', 'White', 'No', 34, 30, 'Male', 'Diabetes', 1664, ''),
(494, 182, 75, '22.642192971863', 'No', 'White', 'No', 34, 50, 'Male', 'Heart Disease', 1621, ''),
(495, 179, 75, '23.407509128929', 'No', 'Black', 'Yes', 56, 40, 'Male', 'Heart Disease', 1323, ''),
(496, 177, 103, '32.876887229085', 'Yes', 'Black', 'No', 30, 41, 'Female', 'Gallstones', 1440, ''),
(497, 188, 68, '19.239474875509', 'No', 'Black', 'Yes', 47, 39, 'Female', 'Asthma', 1353, ''),
(498, 166, 67, '24.314123965742', 'No', 'Indian', 'No', 20, 34, 'Female', 'Cancer', 1425, ''),
(499, 170, 73, '25.259515570934', 'Yes', 'Indian', 'Yes', 22, 45, 'Female', 'Stroke', 1301, ''),
(500, 180, 62, '19.135802469136', 'No', 'Black', 'No', 44, 36, 'Male', 'High Blood Pressure', 1475, ''),
(501, 187, 77, '22.019502988361', 'No', 'White', 'Yes', 40, 40, 'Female', 'Heart Disease', 1318, ''),
(502, 177, 88, '28.088991030674', 'Yes', 'Indian', 'No', 19, 30, 'Male', 'None', 1353, ''),
(503, 177, 87, '27.76979795078', 'Yes', 'White', 'Yes', 36, 50, 'Male', 'Persistent Cough', 1499, ''),
(504, 165, 76, '27.91551882461', 'Yes', 'Indian', 'No', 33, 47, 'Female', 'High Blood Pressure', 1228, ''),
(505, 179, 66, '20.598608033457', 'No', 'Indian', 'Yes', 27, 33, 'Female', 'Osteoarthritis', 1296, ''),
(506, 188, 90, '25.464010864645', 'Yes', 'Black', 'Yes', 64, 39, 'Female', 'Stroke', 1245, ''),
(507, 187, 98, '28.024821985187', 'Yes', 'White', 'Yes', 58, 41, 'Female', 'Gallstones', 1317, ''),
(508, 181, 76, '23.198315069748', 'No', 'Mixed', 'No', 33, 39, 'Male', 'Heart Disease', 1565, ''),
(509, 167, 65, '23.306680053068', 'No', 'White', 'Yes', 43, 44, 'Female', 'High Blood Pressure', 1430, ''),
(510, 167, 90, '32.270787765786', 'Yes', 'Indian', 'No', 20, 30, 'Male', 'Persistent Cough', 1381, ''),
(511, 185, 91, '26.588750913075', 'Yes', 'White', 'Yes', 49, 45, 'Male', 'Diabetes', 1337, ''),
(512, 178, 79, '24.933720489837', 'No', 'Indian', 'Yes', 23, 39, 'Female', 'Osteoarthritis', 1608, ''),
(513, 172, 75, '25.351541373716', 'Yes', 'Black', 'Yes', 33, 38, 'Male', 'None', 1519, ''),
(514, 162, 63, '24.00548696845', 'No', 'White', 'Yes', 70, 45, 'Female', 'Heart Disease', 1269, ''),
(515, 188, 103, '29.142145767316', 'Yes', 'White', 'No', 66, 41, 'Female', 'Persistent Cough', 1651, '');
INSERT INTO `history` (`id`, `height`, `weight`, `bmi`, `obese`, `race`, `physical_activity`, `age`, `waist_measurement`, `gender`, `risks`, `bmr`, `uid`) VALUES
(516, 166, 95, '34.475250399187', 'Yes', 'White', 'Yes', 24, 41, 'Male', 'None', 1296, ''),
(517, 169, 67, '23.458562375267', 'No', 'Mixed', 'No', 43, 44, 'Male', 'None', 1641, ''),
(518, 160, 99, '38.671875', 'Yes', 'Mixed', 'No', 38, 45, 'Male', 'Cancer', 1504, ''),
(519, 172, 77, '26.027582477015', 'Yes', 'Indian', 'No', 53, 38, 'Female', 'Cancer', 1472, ''),
(520, 168, 77, '27.281746031746', 'Yes', 'Mixed', 'Yes', 70, 38, 'Female', 'Diabetes', 1473, ''),
(521, 175, 108, '35.265306122449', 'Yes', 'Black', 'No', 59, 30, 'Male', 'High Blood Pressure', 1405, ''),
(522, 176, 69, '22.275309917355', 'No', 'White', 'Yes', 41, 50, 'Female', 'Stroke', 1528, ''),
(523, 189, 110, '30.794210688391', 'Yes', 'Black', 'Yes', 54, 41, 'Male', 'Heart Disease', 1344, ''),
(524, 163, 101, '38.014227106779', 'Yes', 'White', 'No', 45, 32, 'Male', 'Gallbladder disease', 1668, ''),
(525, 183, 91, '27.173101615456', 'Yes', 'White', 'No', 67, 39, 'Male', 'Cancer', 1298, ''),
(526, 172, 74, '25.013520822066', 'Yes', 'Mixed', 'No', 63, 32, 'Female', 'Breathing problems', 1623, ''),
(527, 185, 62, '18.115412710007', 'No', 'Indian', 'Yes', 64, 49, 'Male', 'Asthma', 1208, ''),
(528, 166, 92, '33.386558281318', 'Yes', 'White', 'No', 58, 48, 'Female', 'Gallstones', 1289, ''),
(529, 171, 72, '24.62296091105', 'No', 'White', 'No', 69, 32, 'Male', 'Gallbladder disease', 1480, ''),
(530, 162, 68, '25.910684346898', 'Yes', 'Black', 'Yes', 51, 35, 'Female', 'Diabetes', 1285, ''),
(531, 175, 88, '28.734693877551', 'Yes', 'Indian', 'No', 43, 32, 'Female', 'Diabetes', 1275, ''),
(532, 184, 99, '29.241493383743', 'Yes', 'Mixed', 'Yes', 59, 49, 'Male', 'Persistent Cough', 1622, ''),
(533, 167, 86, '30.836530531751', 'Yes', 'Black', 'Yes', 29, 37, 'Female', 'Breathing problems', 1234, ''),
(534, 174, 107, '35.341524639979', 'Yes', 'Mixed', 'Yes', 51, 30, 'Male', 'Breathing problems', 1577, ''),
(535, 190, 93, '25.761772853186', 'Yes', 'Mixed', 'No', 26, 46, 'Male', 'Breathing problems', 1662, ''),
(536, 185, 89, '26.00438276114', 'Yes', 'White', 'Yes', 18, 35, 'Female', 'None', 1695, ''),
(537, 189, 72, '20.156210632401', 'No', 'Black', 'Yes', 66, 48, 'Female', 'Persistent Cough', 1411, ''),
(538, 187, 88, '25.165146272413', 'Yes', 'Black', 'No', 19, 30, 'Male', 'Gallstones', 1324, ''),
(539, 183, 88, '26.277285078683', 'Yes', 'Mixed', 'No', 31, 34, 'Female', 'Persistent Cough', 1523, ''),
(540, 190, 96, '26.592797783934', 'Yes', 'White', 'Yes', 53, 45, 'Male', 'None', 1332, ''),
(541, 171, 63, '21.545090797168', 'No', 'Indian', 'Yes', 55, 45, 'Male', 'Gallstones', 1405, ''),
(542, 181, 87, '26.555965935106', 'Yes', 'White', 'Yes', 45, 39, 'Female', 'Gallbladder disease', 1499, ''),
(543, 165, 98, '35.996326905418', 'Yes', 'Black', 'Yes', 70, 35, 'Male', 'Asthma', 1292, ''),
(544, 179, 104, '32.458412658781', 'Yes', 'Indian', 'No', 69, 33, 'Male', 'Breathing problems', 1387, ''),
(545, 172, 81, '27.379664683613', 'Yes', 'White', 'Yes', 31, 36, 'Female', 'Stroke', 1482, ''),
(546, 163, 76, '28.604764951635', 'Yes', 'Mixed', 'No', 35, 42, 'Female', 'Gout', 1322, ''),
(547, 188, 63, '17.824807605251', 'No', 'Indian', 'Yes', 50, 33, 'Female', 'Gallbladder disease', 1542, ''),
(548, 181, 72, '21.977351118708', 'No', 'Black', 'Yes', 60, 49, 'Male', 'Gout', 1477, ''),
(549, 190, 63, '17.451523545706', 'No', 'Mixed', 'Yes', 57, 41, 'Female', 'Gallstones', 1301, ''),
(550, 181, 78, '23.808797045267', 'No', 'White', 'Yes', 63, 46, 'Male', 'Gallbladder disease', 1488, ''),
(551, 190, 65, '18.005540166205', 'No', 'Black', 'No', 35, 49, 'Female', 'Heart Disease', 1360, ''),
(552, 170, 110, '38.062283737024', 'Yes', 'Indian', 'Yes', 27, 34, 'Male', 'Diabetes', 1662, ''),
(553, 189, 62, '17.356736933457', 'No', 'Mixed', 'Yes', 25, 50, 'Female', 'Asthma', 1390, ''),
(554, 166, 68, '24.677021338366', 'No', 'Black', 'No', 62, 33, 'Female', 'Gallbladder disease', 1494, ''),
(555, 178, 67, '21.146319909102', 'No', 'Mixed', 'Yes', 30, 50, 'Female', 'High Blood Pressure', 1324, ''),
(556, 168, 96, '34.013605442177', 'Yes', 'Black', 'No', 52, 37, 'Female', 'Osteoarthritis', 1551, ''),
(557, 160, 89, '34.765625', 'Yes', 'White', 'Yes', 36, 49, 'Female', 'Heart Disease', 1305, ''),
(558, 164, 84, '31.231409875074', 'Yes', 'White', 'Yes', 58, 30, 'Male', 'Cancer', 1373, ''),
(559, 165, 83, '30.48668503214', 'Yes', 'Indian', 'No', 39, 35, 'Male', 'Gallstones', 1561, ''),
(560, 173, 77, '25.727555214006', 'Yes', 'Black', 'Yes', 69, 48, 'Female', 'Asthma', 1497, ''),
(561, 181, 91, '27.776929886145', 'Yes', 'White', 'Yes', 39, 37, 'Male', 'Breathing problems', 1257, ''),
(562, 165, 60, '22.038567493113', 'No', 'Indian', 'No', 56, 44, 'Male', 'Breathing problems', 1606, ''),
(563, 172, 110, '37.182260681449', 'Yes', 'White', 'Yes', 32, 31, 'Female', 'Asthma', 1583, ''),
(564, 186, 65, '18.788299225344', 'No', 'Mixed', 'Yes', 28, 41, 'Male', 'Cancer', 1614, ''),
(565, 176, 78, '25.180785123967', 'Yes', 'Mixed', 'No', 42, 45, 'Male', 'None', 1331, ''),
(566, 160, 78, '30.46875', 'Yes', 'Mixed', 'Yes', 22, 47, 'Male', 'Diabetes', 1645, ''),
(567, 170, 64, '22.145328719723', 'No', 'Black', 'Yes', 63, 31, 'Female', 'Cancer', 1335, ''),
(568, 190, 101, '27.97783933518', 'Yes', 'Indian', 'Yes', 50, 43, 'Male', 'None', 1433, ''),
(569, 181, 82, '25.029760996307', 'Yes', 'Black', 'Yes', 37, 49, 'Female', 'Gout', 1368, ''),
(570, 165, 77, '28.282828282828', 'Yes', 'Mixed', 'Yes', 38, 36, 'Male', 'Breathing problems', 1521, ''),
(571, 169, 90, '31.51150169812', 'Yes', 'Black', 'Yes', 29, 49, 'Female', 'None', 1274, ''),
(572, 186, 80, '23.124060585039', 'No', 'Indian', 'No', 60, 33, 'Male', 'Breathing problems', 1460, ''),
(573, 177, 65, '20.747550193112', 'No', 'White', 'Yes', 27, 30, 'Female', 'Asthma', 1504, ''),
(574, 174, 74, '24.441802087462', 'No', 'Black', 'No', 69, 44, 'Male', 'None', 1430, ''),
(575, 173, 85, '28.400547963514', 'Yes', 'Indian', 'Yes', 37, 45, 'Female', 'Gallstones', 1379, ''),
(576, 170, 105, '36.332179930796', 'Yes', 'White', 'No', 19, 35, 'Male', 'Diabetes', 1526, ''),
(577, 177, 100, '31.919307989403', 'Yes', 'Indian', 'No', 37, 35, 'Male', 'Cancer', 1334, ''),
(578, 178, 82, '25.880570635021', 'Yes', 'Indian', 'Yes', 23, 49, 'Male', 'Stroke', 1506, ''),
(579, 190, 84, '23.268698060942', 'No', 'Indian', 'Yes', 34, 34, 'Male', 'Stroke', 1352, ''),
(580, 167, 98, '35.139302233856', 'Yes', 'Indian', 'No', 43, 30, 'Female', 'Gallbladder disease', 1249, ''),
(581, 170, 66, '22.837370242215', 'No', 'White', 'No', 49, 39, 'Male', 'Gallstones', 1531, ''),
(582, 181, 102, '31.134580751503', 'Yes', 'White', 'Yes', 28, 49, 'Male', 'Persistent Cough', 1652, ''),
(583, 169, 84, '29.410734918245', 'Yes', 'Indian', 'No', 33, 33, 'Female', 'Cancer', 1313, ''),
(584, 174, 106, '35.011230017175', 'Yes', 'Black', 'Yes', 54, 44, 'Male', 'Persistent Cough', 1620, ''),
(585, 183, 101, '30.159156738033', 'Yes', 'White', 'Yes', 66, 46, 'Male', 'Gallstones', 1679, ''),
(586, 176, 91, '29.377582644628', 'Yes', 'Black', 'No', 53, 32, 'Male', 'Cancer', 1567, ''),
(587, 187, 77, '22.019502988361', 'No', 'Indian', 'Yes', 29, 41, 'Male', 'Osteoarthritis', 1615, ''),
(588, 165, 71, '26.078971533517', 'Yes', 'Indian', 'Yes', 26, 36, 'Female', 'Gallstones', 1574, ''),
(589, 176, 99, '31.960227272727', 'Yes', 'Black', 'No', 50, 35, 'Male', 'Diabetes', 1283, ''),
(590, 173, 110, '36.753650305724', 'Yes', 'Mixed', 'Yes', 24, 49, 'Female', 'Stroke', 1360, ''),
(591, 166, 106, '38.46712149804', 'Yes', 'Black', 'Yes', 36, 48, 'Male', 'Breathing problems', 1684, ''),
(592, 181, 85, '25.945483959586', 'Yes', 'White', 'Yes', 46, 50, 'Female', 'Osteoarthritis', 1616, ''),
(593, 172, 87, '29.40778799351', 'Yes', 'White', 'Yes', 68, 38, 'Male', 'Cancer', 1682, ''),
(594, 176, 96, '30.99173553719', 'Yes', 'White', 'Yes', 29, 41, 'Female', 'Cancer', 1356, ''),
(595, 189, 87, '24.355421180818', 'No', 'Indian', 'Yes', 41, 32, 'Female', 'Gout', 1608, ''),
(596, 173, 65, '21.718066089746', 'No', 'Black', 'No', 24, 38, 'Male', 'High Blood Pressure', 1631, ''),
(597, 174, 73, '24.111507464658', 'No', 'Indian', 'Yes', 66, 41, 'Male', 'Asthma', 1393, ''),
(598, 163, 75, '28.22838646543', 'Yes', 'Indian', 'No', 27, 33, 'Male', 'Cancer', 1418, ''),
(599, 181, 76, '23.198315069748', 'No', 'Mixed', 'No', 65, 46, 'Male', 'High Blood Pressure', 1608, ''),
(600, 160, 80, '31.25', 'Yes', 'Indian', 'Yes', 48, 45, 'Male', 'Diabetes', 1466, ''),
(601, 167, 78, '27.968016063681', 'Yes', 'White', 'Yes', 63, 37, 'Female', 'Persistent Cough', 1600, ''),
(602, 169, 82, '28.710479324954', 'Yes', 'Black', 'No', 29, 36, 'Female', 'Asthma', 1571, ''),
(603, 183, 85, '25.381468541909', 'Yes', 'Indian', 'No', 44, 44, 'Female', 'Cancer', 1386, ''),
(604, 175, 83, '27.102040816327', 'Yes', 'Indian', 'No', 27, 34, 'Female', 'Persistent Cough', 1551, ''),
(605, 174, 103, '34.020346148765', 'Yes', 'Black', 'Yes', 60, 40, 'Male', 'Asthma', 1691, ''),
(606, 181, 81, '24.724520008547', 'No', 'Indian', 'Yes', 25, 46, 'Female', 'Breathing problems', 1202, ''),
(607, 163, 97, '36.508713161956', 'Yes', 'Indian', 'No', 18, 30, 'Male', 'Persistent Cough', 1469, ''),
(608, 173, 76, '25.393431120318', 'Yes', 'Black', 'Yes', 62, 30, 'Female', 'Cancer', 1364, ''),
(609, 167, 63, '22.58955143605', 'No', 'Indian', 'No', 58, 32, 'Male', 'Breathing problems', 1678, ''),
(610, 186, 67, '19.36640073997', 'No', 'Black', 'No', 57, 37, 'Male', 'Gallbladder disease', 1426, ''),
(611, 170, 63, '21.799307958478', 'No', 'Indian', 'Yes', 65, 36, 'Female', 'Heart Disease', 1633, ''),
(612, 175, 74, '24.163265306122', 'No', 'Indian', 'Yes', 38, 49, 'Female', 'Gallstones', 1679, ''),
(613, 182, 100, '30.189590629151', 'Yes', 'Mixed', 'Yes', 44, 47, 'Male', 'Stroke', 1414, ''),
(614, 183, 62, '18.513541759981', 'No', 'Black', 'Yes', 25, 42, 'Male', 'Gallbladder disease', 1660, ''),
(615, 168, 69, '24.447278911565', 'No', 'Mixed', 'No', 34, 37, 'Male', 'High Blood Pressure', 1615, ''),
(616, 165, 75, '27.548209366391', 'Yes', 'Black', 'No', 21, 42, 'Male', 'Gallstones', 1226, ''),
(617, 179, 62, '19.350207546581', 'No', 'Mixed', 'Yes', 19, 42, 'Female', 'High Blood Pressure', 1372, ''),
(618, 185, 65, '18.991964937911', 'No', 'Indian', 'Yes', 50, 46, 'Male', 'Cancer', 1445, ''),
(619, 179, 60, '18.726007303143', 'No', 'Mixed', 'Yes', 43, 38, 'Male', 'Breathing problems', 1618, ''),
(620, 186, 103, '29.772228003237', 'Yes', 'Mixed', 'No', 68, 42, 'Female', 'Gallstones', 1413, ''),
(621, 175, 68, '22.204081632653', 'No', 'White', 'Yes', 25, 34, 'Female', 'Osteoarthritis', 1399, ''),
(622, 186, 103, '29.772228003237', 'Yes', 'Indian', 'No', 53, 31, 'Male', 'Gallbladder disease', 1332, ''),
(623, 179, 100, '31.210012171905', 'Yes', 'Indian', 'Yes', 23, 47, 'Male', 'Asthma', 1624, ''),
(624, 175, 79, '25.795918367347', 'Yes', 'Mixed', 'No', 27, 42, 'Female', 'None', 1592, ''),
(625, 164, 76, '28.256989886972', 'Yes', 'Mixed', 'No', 58, 33, 'Male', 'Gallbladder disease', 1282, ''),
(626, 164, 75, '27.885187388459', 'Yes', 'Indian', 'Yes', 60, 31, 'Female', 'Cancer', 1318, ''),
(627, 169, 85, '29.760862714891', 'Yes', 'Indian', 'No', 22, 43, 'Male', 'Diabetes', 1475, ''),
(628, 188, 72, '20.371208691716', 'No', 'White', 'Yes', 45, 47, 'Male', 'Gout', 1218, ''),
(629, 188, 71, '20.088275237664', 'No', 'Black', 'No', 23, 43, 'Female', 'Gallbladder disease', 1423, ''),
(630, 162, 90, '34.293552812071', 'Yes', 'Indian', 'No', 68, 32, 'Female', 'Asthma', 1479, ''),
(631, 171, 89, '30.436715570603', 'Yes', 'White', 'Yes', 67, 41, 'Female', 'Breathing problems', 1274, ''),
(632, 166, 99, '35.926839889679', 'Yes', 'Mixed', 'No', 64, 48, 'Female', 'High Blood Pressure', 1625, ''),
(633, 168, 75, '26.573129251701', 'Yes', 'Indian', 'No', 37, 44, 'Male', 'Osteoarthritis', 1313, ''),
(634, 165, 98, '35.996326905418', 'Yes', 'Mixed', 'No', 22, 45, 'Female', 'Osteoarthritis', 1376, ''),
(635, 178, 96, '30.299204645878', 'Yes', 'Indian', 'No', 18, 40, 'Female', 'Diabetes', 1396, ''),
(636, 167, 68, '24.382372978594', 'No', 'Indian', 'Yes', 18, 50, 'Female', 'Osteoarthritis', 1365, ''),
(637, 165, 83, '30.48668503214', 'Yes', 'Mixed', 'Yes', 26, 31, 'Male', 'Persistent Cough', 1493, ''),
(638, 174, 61, '20.147971991016', 'No', 'Indian', 'Yes', 61, 45, 'Female', 'Osteoarthritis', 1641, ''),
(639, 171, 100, '34.198556820902', 'Yes', 'Mixed', 'Yes', 52, 44, 'Female', 'Heart Disease', 1570, ''),
(640, 168, 97, '34.3679138322', 'Yes', 'Indian', 'Yes', 21, 37, 'Female', 'Asthma', 1358, ''),
(641, 180, 96, '29.62962962963', 'Yes', 'Indian', 'Yes', 61, 36, 'Male', 'Asthma', 1563, ''),
(642, 178, 92, '29.036737785633', 'Yes', 'White', 'No', 58, 45, 'Male', 'Cancer', 1310, ''),
(643, 176, 103, '33.251549586777', 'Yes', 'White', 'Yes', 48, 50, 'Female', 'High Blood Pressure', 1232, ''),
(644, 166, 91, '33.023660908695', 'Yes', 'Indian', 'Yes', 26, 38, 'Male', 'Gallstones', 1536, ''),
(645, 185, 89, '26.00438276114', 'Yes', 'Mixed', 'No', 49, 45, 'Female', 'Persistent Cough', 1646, ''),
(646, 184, 75, '22.152646502836', 'No', 'Mixed', 'Yes', 25, 32, 'Female', 'Diabetes', 1485, ''),
(647, 164, 73, '27.141582391434', 'Yes', 'White', 'No', 64, 49, 'Male', 'Asthma', 1259, ''),
(648, 164, 70, '26.026174895895', 'Yes', 'Indian', 'Yes', 42, 40, 'Male', 'None', 1270, ''),
(649, 186, 110, '31.795583304428', 'Yes', 'White', 'Yes', 30, 35, 'Female', 'Gout', 1575, ''),
(650, 184, 73, '21.56190926276', 'No', 'White', 'Yes', 64, 43, 'Female', 'Osteoarthritis', 1390, ''),
(651, 176, 95, '30.668904958678', 'Yes', 'Indian', 'Yes', 68, 45, 'Female', 'Gallbladder disease', 1489, ''),
(652, 168, 102, '36.139455782313', 'Yes', 'Mixed', 'Yes', 37, 38, 'Female', 'Diabetes', 1208, ''),
(653, 184, 84, '24.810964083176', 'No', 'White', 'Yes', 21, 31, 'Female', 'Osteoarthritis', 1366, ''),
(654, 165, 92, '33.792470156107', 'Yes', 'White', 'No', 61, 38, 'Male', 'High Blood Pressure', 1518, ''),
(655, 173, 101, '33.746533462528', 'Yes', 'Black', 'Yes', 55, 50, 'Female', 'Asthma', 1443, ''),
(656, 179, 105, '32.7705127805', 'Yes', 'Black', 'No', 48, 30, 'Male', 'Persistent Cough', 1504, ''),
(657, 185, 85, '24.835646457268', 'No', 'Indian', 'Yes', 19, 37, 'Female', 'Osteoarthritis', 1601, ''),
(658, 165, 81, '29.752066115702', 'Yes', 'Black', 'Yes', 35, 36, 'Female', 'Osteoarthritis', 1348, ''),
(659, 177, 98, '31.280921829615', 'Yes', 'White', 'Yes', 57, 46, 'Female', 'Gallbladder disease', 1263, ''),
(660, 168, 107, '37.910997732426', 'Yes', 'Indian', 'No', 23, 40, 'Male', 'None', 1358, ''),
(661, 184, 78, '23.038752362949', 'No', 'Mixed', 'Yes', 45, 38, 'Male', 'Asthma', 1432, ''),
(662, 185, 107, '31.263696128561', 'Yes', 'Mixed', 'No', 26, 34, 'Female', 'Heart Disease', 1219, ''),
(663, 190, 107, '29.639889196676', 'Yes', 'Mixed', 'No', 38, 43, 'Female', 'Stroke', 1615, ''),
(664, 172, 92, '31.097890751758', 'Yes', 'Mixed', 'Yes', 42, 46, 'Male', 'Osteoarthritis', 1402, ''),
(665, 190, 96, '26.592797783934', 'Yes', 'White', 'No', 36, 47, 'Female', 'Persistent Cough', 1553, ''),
(666, 161, 77, '29.705644072374', 'Yes', 'Mixed', 'Yes', 33, 33, 'Female', 'Osteoarthritis', 1367, ''),
(667, 165, 78, '28.650137741047', 'Yes', 'Black', 'No', 68, 45, 'Male', 'Cancer', 1207, ''),
(668, 185, 87, '25.420014609204', 'Yes', 'Indian', 'Yes', 43, 39, 'Male', 'Persistent Cough', 1280, ''),
(669, 169, 103, '36.063163054515', 'Yes', 'Black', 'No', 38, 32, 'Female', 'None', 1654, ''),
(670, 168, 66, '23.384353741497', 'No', 'Indian', 'Yes', 53, 44, 'Female', 'Gout', 1306, ''),
(671, 188, 99, '28.010411951109', 'Yes', 'Mixed', 'Yes', 30, 34, 'Female', 'Gout', 1584, ''),
(672, 166, 108, '39.192916243286', 'Yes', 'White', 'Yes', 29, 42, 'Male', 'Gallbladder disease', 1459, ''),
(673, 178, 65, '20.51508647898', 'No', 'White', 'Yes', 25, 46, 'Male', 'Gout', 1640, ''),
(674, 169, 74, '25.909456951787', 'Yes', 'Indian', 'No', 66, 45, 'Female', 'Heart Disease', 1550, ''),
(675, 171, 67, '22.913033070004', 'No', 'Mixed', 'No', 23, 50, 'Female', 'High Blood Pressure', 1551, ''),
(676, 177, 100, '31.919307989403', 'Yes', 'Indian', 'No', 25, 36, 'Male', 'Cancer', 1560, ''),
(677, 167, 100, '35.856430850873', 'Yes', 'Mixed', 'Yes', 30, 40, 'Male', 'Breathing problems', 1282, ''),
(678, 170, 71, '24.567474048443', 'No', 'White', 'Yes', 33, 47, 'Male', 'Cancer', 1557, ''),
(679, 183, 73, '21.798202394816', 'No', 'Black', 'Yes', 60, 45, 'Female', 'Stroke', 1510, ''),
(680, 180, 89, '27.469135802469', 'Yes', 'Black', 'Yes', 70, 39, 'Female', 'High Blood Pressure', 1552, ''),
(681, 168, 100, '35.430839002268', 'Yes', 'Mixed', 'No', 33, 44, 'Male', 'Breathing problems', 1206, ''),
(682, 180, 84, '25.925925925926', 'Yes', 'Indian', 'Yes', 32, 31, 'Female', 'Gallstones', 1571, ''),
(683, 160, 62, '24.21875', 'No', 'Indian', 'Yes', 57, 34, 'Female', 'Gout', 1429, ''),
(684, 182, 63, '19.019442096365', 'No', 'Mixed', 'Yes', 49, 50, 'Female', 'Gallstones', 1577, ''),
(685, 171, 108, '36.934441366574', 'Yes', 'Indian', 'No', 19, 31, 'Male', 'Asthma', 1493, ''),
(686, 171, 104, '35.566499093738', 'Yes', 'Black', 'Yes', 69, 30, 'Female', 'Gout', 1382, ''),
(687, 173, 103, '34.414781649905', 'Yes', 'White', 'No', 28, 35, 'Female', 'Persistent Cough', 1697, ''),
(688, 167, 81, '29.043708989207', 'Yes', 'Indian', 'No', 65, 31, 'Male', 'None', 1369, ''),
(689, 169, 86, '30.110990511537', 'Yes', 'Mixed', 'No', 31, 34, 'Female', 'Gallstones', 1589, ''),
(690, 185, 98, '28.63403944485', 'Yes', 'Indian', 'No', 37, 46, 'Male', 'Asthma', 1563, ''),
(691, 179, 64, '19.974407790019', 'No', 'Indian', 'No', 51, 31, 'Male', 'Diabetes', 1533, ''),
(692, 176, 109, '35.188533057851', 'Yes', 'Black', 'Yes', 37, 40, 'Male', 'Diabetes', 1200, ''),
(693, 172, 90, '30.421849648459', 'Yes', 'Mixed', 'Yes', 37, 34, 'Female', 'Osteoarthritis', 1628, ''),
(694, 173, 109, '36.419526212035', 'Yes', 'Black', 'No', 41, 31, 'Female', 'Gout', 1291, ''),
(695, 185, 93, '27.173119065011', 'Yes', 'Indian', 'No', 56, 46, 'Female', 'Breathing problems', 1361, ''),
(696, 164, 96, '35.693039857228', 'Yes', 'White', 'Yes', 65, 40, 'Female', 'Persistent Cough', 1261, ''),
(697, 185, 89, '26.00438276114', 'Yes', 'Black', 'Yes', 66, 49, 'Female', 'Osteoarthritis', 1657, ''),
(698, 163, 70, '26.346494034401', 'Yes', 'White', 'Yes', 57, 47, 'Male', 'Diabetes', 1541, ''),
(699, 173, 74, '24.725182932941', 'No', 'White', 'Yes', 32, 33, 'Male', 'Gallbladder disease', 1496, ''),
(700, 180, 100, '30.864197530864', 'Yes', 'Indian', 'No', 48, 46, 'Female', 'Cancer', 1398, ''),
(701, 171, 84, '28.726787729558', 'Yes', 'Mixed', 'Yes', 19, 50, 'Female', 'High Blood Pressure', 1527, ''),
(702, 182, 70, '21.132713440406', 'No', 'White', 'Yes', 69, 46, 'Female', 'Gallstones', 1209, ''),
(703, 162, 68, '25.910684346898', 'Yes', 'White', 'No', 60, 43, 'Male', 'Gallbladder disease', 1324, ''),
(704, 175, 88, '28.734693877551', 'Yes', 'White', 'No', 59, 42, 'Female', 'Asthma', 1682, ''),
(705, 181, 88, '26.861206922866', 'Yes', 'White', 'No', 18, 31, 'Female', 'Gallstones', 1274, ''),
(706, 163, 70, '26.346494034401', 'Yes', 'Mixed', 'Yes', 41, 40, 'Male', 'Breathing problems', 1400, ''),
(707, 184, 85, '25.106332703214', 'Yes', 'Mixed', 'Yes', 57, 39, 'Female', 'None', 1213, ''),
(708, 189, 89, '24.915315920607', 'No', 'Mixed', 'No', 55, 35, 'Male', 'Breathing problems', 1520, ''),
(709, 183, 86, '25.680074054167', 'Yes', 'Black', 'Yes', 36, 35, 'Female', 'Asthma', 1698, ''),
(710, 181, 66, '20.145905192149', 'No', 'Indian', 'No', 39, 43, 'Male', 'Gallstones', 1697, ''),
(711, 169, 106, '37.113546444452', 'Yes', 'Mixed', 'No', 57, 30, 'Male', 'Diabetes', 1225, ''),
(712, 168, 77, '27.281746031746', 'Yes', 'Black', 'No', 46, 36, 'Male', 'Heart Disease', 1693, ''),
(713, 190, 75, '20.775623268698', 'No', 'White', 'Yes', 62, 36, 'Male', 'Diabetes', 1286, ''),
(714, 168, 71, '25.15589569161', 'Yes', 'Black', 'No', 64, 32, 'Female', 'Gallstones', 1430, ''),
(715, 177, 66, '21.066743273006', 'No', 'Black', 'No', 42, 34, 'Female', 'Persistent Cough', 1221, ''),
(716, 164, 74, '27.513384889946', 'Yes', 'Black', 'Yes', 32, 42, 'Male', 'None', 1418, ''),
(717, 161, 87, '33.563519925929', 'Yes', 'Mixed', 'No', 52, 32, 'Female', 'Asthma', 1441, ''),
(718, 171, 107, '36.592455798365', 'Yes', 'Indian', 'Yes', 37, 46, 'Male', 'None', 1450, ''),
(719, 183, 60, '17.916330735465', 'No', 'White', 'Yes', 44, 48, 'Female', 'Osteoarthritis', 1547, ''),
(720, 171, 95, '32.488628979857', 'Yes', 'Indian', 'Yes', 52, 43, 'Female', 'High Blood Pressure', 1483, ''),
(721, 187, 69, '19.731762418142', 'No', 'Black', 'Yes', 32, 45, 'Male', 'Gallbladder disease', 1669, ''),
(722, 180, 74, '22.83950617284', 'No', 'Indian', 'No', 37, 47, 'Male', 'Cancer', 1220, ''),
(723, 177, 109, '34.792045708449', 'Yes', 'Mixed', 'No', 62, 38, 'Male', 'Diabetes', 1576, ''),
(724, 160, 77, '30.078125', 'Yes', 'White', 'Yes', 53, 36, 'Female', 'High Blood Pressure', 1441, ''),
(725, 180, 89, '27.469135802469', 'Yes', 'Mixed', 'Yes', 52, 32, 'Male', 'Gallbladder disease', 1299, ''),
(726, 164, 83, '30.859607376562', 'Yes', 'White', 'Yes', 65, 35, 'Female', 'Cancer', 1491, ''),
(727, 177, 100, '31.919307989403', 'Yes', 'Indian', 'No', 29, 32, 'Female', 'Gout', 1385, ''),
(728, 177, 89, '28.408184110568', 'Yes', 'White', 'Yes', 50, 43, 'Female', 'Asthma', 1403, ''),
(729, 175, 91, '29.714285714286', 'Yes', 'White', 'Yes', 67, 36, 'Female', 'High Blood Pressure', 1219, ''),
(730, 182, 100, '30.189590629151', 'Yes', 'Indian', 'No', 20, 33, 'Male', 'Cancer', 1285, ''),
(731, 176, 71, '22.92097107438', 'No', 'Mixed', 'No', 62, 30, 'Female', 'Diabetes', 1539, ''),
(732, 187, 84, '24.021275987303', 'No', 'Indian', 'No', 50, 34, 'Female', 'High Blood Pressure', 1273, ''),
(733, 174, 108, '35.671819262782', 'Yes', 'Mixed', 'No', 59, 44, 'Male', 'Gallstones', 1434, ''),
(734, 170, 87, '30.103806228374', 'Yes', 'Indian', 'Yes', 23, 40, 'Male', 'Diabetes', 1648, ''),
(735, 176, 62, '20.015495867769', 'No', 'Indian', 'No', 54, 47, 'Female', 'Gallstones', 1433, ''),
(736, 161, 110, '42.436634389105', 'Yes', 'White', 'No', 65, 42, 'Male', 'Persistent Cough', 1518, ''),
(737, 187, 105, '30.026594984129', 'Yes', 'Indian', 'Yes', 42, 44, 'Male', 'Gallstones', 1263, ''),
(738, 171, 91, '31.120686707021', 'Yes', 'Black', 'Yes', 45, 42, 'Female', 'Cancer', 1460, ''),
(739, 173, 90, '30.071168431956', 'Yes', 'Mixed', 'No', 60, 48, 'Female', 'Breathing problems', 1321, ''),
(740, 186, 70, '20.233553011909', 'No', 'White', 'Yes', 19, 36, 'Male', 'High Blood Pressure', 1539, ''),
(741, 177, 87, '27.76979795078', 'Yes', 'Black', 'Yes', 29, 35, 'Male', 'Diabetes', 1410, ''),
(742, 178, 103, '32.508521651307', 'Yes', 'Mixed', 'No', 60, 45, 'Male', 'Stroke', 1480, ''),
(743, 177, 99, '31.600114909509', 'Yes', 'Indian', 'No', 25, 35, 'Male', 'None', 1421, ''),
(744, 177, 76, '24.258674071946', 'No', 'White', 'No', 30, 36, 'Male', 'Heart Disease', 1272, ''),
(745, 184, 94, '27.764650283554', 'Yes', 'Indian', 'No', 69, 44, 'Female', 'Stroke', 1608, ''),
(746, 179, 73, '22.78330888549', 'No', 'Black', 'Yes', 31, 43, 'Male', 'Persistent Cough', 1621, ''),
(747, 176, 91, '29.377582644628', 'Yes', 'White', 'No', 68, 34, 'Male', 'Stroke', 1489, ''),
(748, 175, 109, '35.591836734694', 'Yes', 'White', 'Yes', 46, 42, 'Male', 'High Blood Pressure', 1439, ''),
(749, 171, 86, '29.410758865976', 'Yes', 'Indian', 'Yes', 27, 43, 'Male', 'Osteoarthritis', 1559, ''),
(750, 160, 97, '37.890625', 'Yes', 'White', 'Yes', 55, 37, 'Male', 'Persistent Cough', 1469, ''),
(751, 176, 77, '24.857954545455', 'No', 'Black', 'Yes', 57, 50, 'Female', 'Cancer', 1355, ''),
(752, 164, 77, '28.628792385485', 'Yes', 'White', 'Yes', 39, 42, 'Female', 'Asthma', 1549, ''),
(753, 168, 81, '28.698979591837', 'Yes', 'Indian', 'No', 41, 31, 'Male', 'Gout', 1297, ''),
(754, 163, 102, '38.390605592984', 'Yes', 'Black', 'Yes', 41, 37, 'Male', 'Stroke', 1394, ''),
(755, 166, 84, '30.483379300334', 'Yes', 'Indian', 'No', 70, 42, 'Male', 'Heart Disease', 1271, ''),
(756, 164, 74, '27.513384889946', 'Yes', 'White', 'Yes', 60, 35, 'Female', 'Gallstones', 1606, ''),
(757, 162, 64, '24.38652644414', 'No', 'Mixed', 'No', 38, 49, 'Male', 'Gallbladder disease', 1301, ''),
(758, 160, 66, '25.78125', 'Yes', 'Black', 'No', 57, 42, 'Male', 'Asthma', 1700, ''),
(759, 167, 84, '30.119401914733', 'Yes', 'Indian', 'Yes', 30, 32, 'Female', 'Cancer', 1307, ''),
(760, 169, 60, '21.007667798747', 'No', 'Indian', 'Yes', 62, 46, 'Female', 'Diabetes', 1636, ''),
(761, 180, 61, '18.827160493827', 'No', 'White', 'No', 55, 40, 'Female', 'Gallbladder disease', 1215, ''),
(762, 173, 98, '32.744161181463', 'Yes', 'Indian', 'No', 47, 44, 'Male', 'High Blood Pressure', 1601, ''),
(763, 172, 99, '33.464034613304', 'Yes', 'Mixed', 'Yes', 58, 39, 'Female', 'Cancer', 1213, ''),
(764, 182, 78, '23.547880690738', 'No', 'Mixed', 'No', 31, 43, 'Female', 'Asthma', 1244, ''),
(765, 182, 108, '32.604757879483', 'Yes', 'White', 'Yes', 43, 39, 'Male', 'Persistent Cough', 1531, ''),
(766, 188, 101, '28.576278859212', 'Yes', 'Mixed', 'No', 26, 37, 'Male', 'Cancer', 1540, ''),
(767, 185, 80, '23.374726077429', 'No', 'Mixed', 'Yes', 41, 30, 'Female', 'Persistent Cough', 1481, ''),
(768, 178, 91, '28.721121070572', 'Yes', 'Indian', 'Yes', 47, 37, 'Male', 'Stroke', 1448, ''),
(769, 189, 110, '30.794210688391', 'Yes', 'Black', 'No', 19, 34, 'Female', 'Persistent Cough', 1264, ''),
(770, 171, 75, '25.648917615677', 'Yes', 'White', 'Yes', 48, 42, 'Male', 'Heart Disease', 1634, ''),
(771, 163, 62, '23.335466144755', 'No', 'Mixed', 'No', 54, 42, 'Female', 'Osteoarthritis', 1443, ''),
(772, 186, 66, '19.077349982657', 'No', 'Mixed', 'Yes', 42, 45, 'Female', 'Cancer', 1231, ''),
(773, 179, 69, '21.534908398614', 'No', 'Mixed', 'Yes', 57, 34, 'Female', 'Asthma', 1368, ''),
(774, 189, 63, '17.636684303351', 'No', 'Indian', 'Yes', 54, 34, 'Female', 'Gallstones', 1364, ''),
(775, 179, 84, '26.2164102244', 'Yes', 'White', 'No', 19, 46, 'Male', 'Asthma', 1684, ''),
(776, 163, 80, '30.110278896458', 'Yes', 'Mixed', 'Yes', 57, 35, 'Female', 'Gout', 1309, ''),
(777, 178, 96, '30.299204645878', 'Yes', 'Indian', 'Yes', 28, 41, 'Female', 'Stroke', 1396, ''),
(778, 167, 63, '22.58955143605', 'No', 'Black', 'No', 59, 47, 'Male', 'Gout', 1327, ''),
(779, 177, 95, '30.323342589933', 'Yes', 'Indian', 'No', 36, 40, 'Female', 'Heart Disease', 1550, ''),
(780, 184, 72, '21.266540642722', 'No', 'Black', 'No', 59, 47, 'Female', 'Gallstones', 1354, ''),
(781, 184, 90, '26.583175803403', 'Yes', 'Black', 'Yes', 66, 42, 'Male', 'Stroke', 1402, ''),
(782, 166, 61, '22.136739730004', 'No', 'Mixed', 'No', 21, 36, 'Male', 'Persistent Cough', 1530, ''),
(783, 185, 95, '27.757487216947', 'Yes', 'White', 'No', 51, 46, 'Male', 'Heart Disease', 1209, ''),
(784, 168, 88, '31.179138321995', 'Yes', 'Mixed', 'Yes', 58, 42, 'Female', 'Cancer', 1427, ''),
(785, 175, 67, '21.877551020408', 'No', 'Indian', 'No', 45, 31, 'Male', 'Heart Disease', 1504, ''),
(786, 183, 84, '25.082863029652', 'Yes', 'Indian', 'Yes', 36, 50, 'Male', 'Gallbladder disease', 1570, ''),
(787, 186, 93, '26.881720430108', 'Yes', 'Indian', 'Yes', 38, 47, 'Male', 'Asthma', 1500, ''),
(788, 183, 82, '24.485652005136', 'No', 'Black', 'No', 30, 49, 'Female', 'None', 1542, ''),
(789, 177, 106, '33.834466468767', 'Yes', 'White', 'Yes', 25, 38, 'Male', 'None', 1675, ''),
(790, 167, 102, '36.573559467891', 'Yes', 'Black', 'Yes', 39, 41, 'Male', 'Cancer', 1444, ''),
(791, 182, 66, '19.92512981524', 'No', 'White', 'Yes', 37, 47, 'Female', 'Breathing problems', 1433, ''),
(792, 166, 106, '38.46712149804', 'Yes', 'Mixed', 'No', 51, 34, 'Female', 'High Blood Pressure', 1319, ''),
(793, 166, 110, '39.918710988532', 'Yes', 'White', 'Yes', 59, 35, 'Male', 'Gallstones', 1527, ''),
(794, 179, 67, '20.910708155176', 'No', 'Black', 'No', 61, 34, 'Female', 'Cancer', 1401, ''),
(795, 172, 102, '34.478096268253', 'Yes', 'Mixed', 'Yes', 27, 45, 'Male', 'Breathing problems', 1653, ''),
(796, 190, 64, '17.728531855956', 'No', 'Mixed', 'No', 25, 46, 'Female', 'Gallstones', 1209, ''),
(797, 166, 99, '35.926839889679', 'Yes', 'Mixed', 'No', 25, 45, 'Female', 'Stroke', 1593, ''),
(798, 185, 103, '30.09495982469', 'Yes', 'Black', 'No', 33, 43, 'Female', 'Cancer', 1346, ''),
(799, 168, 61, '21.612811791383', 'No', 'Black', 'Yes', 30, 33, 'Male', 'Asthma', 1601, ''),
(800, 189, 78, '21.835894851768', 'No', 'Black', 'Yes', 41, 50, 'Female', 'Gallstones', 1421, ''),
(801, 167, 97, '34.780737925347', 'Yes', 'White', 'Yes', 61, 43, 'Male', 'Gallbladder disease', 1211, ''),
(802, 173, 105, '35.083029837282', 'Yes', 'Mixed', 'No', 52, 45, 'Female', 'Heart Disease', 1546, ''),
(803, 161, 107, '41.279271633039', 'Yes', 'Black', 'Yes', 26, 37, 'Male', 'Cancer', 1667, ''),
(804, 167, 80, '28.685144680698', 'Yes', 'Mixed', 'No', 67, 33, 'Female', 'Asthma', 1486, ''),
(805, 175, 105, '34.285714285714', 'Yes', 'Indian', 'No', 20, 31, 'Male', 'High Blood Pressure', 1633, ''),
(806, 163, 91, '34.250442244721', 'Yes', 'Indian', 'No', 43, 44, 'Male', 'Gout', 1332, ''),
(807, 161, 85, '32.791944755218', 'Yes', 'White', 'No', 22, 40, 'Female', 'Breathing problems', 1501, ''),
(808, 175, 64, '20.897959183673', 'No', 'Mixed', 'No', 21, 47, 'Male', 'Gallstones', 1351, ''),
(809, 165, 101, '37.098255280073', 'Yes', 'Indian', 'No', 42, 31, 'Female', 'None', 1464, ''),
(810, 178, 104, '32.824138366368', 'Yes', 'White', 'Yes', 55, 50, 'Female', 'Gout', 1574, ''),
(811, 164, 65, '24.167162403331', 'No', 'Mixed', 'Yes', 37, 48, 'Female', 'Stroke', 1241, ''),
(812, 167, 73, '26.175194521137', 'Yes', 'Mixed', 'Yes', 39, 50, 'Female', 'High Blood Pressure', 1215, ''),
(813, 167, 109, '39.083509627452', 'Yes', 'White', 'Yes', 26, 47, 'Male', 'None', 1400, ''),
(814, 189, 66, '18.476526413034', 'No', 'Indian', 'No', 18, 39, 'Female', 'Diabetes', 1312, ''),
(815, 177, 60, '19.151584793642', 'No', 'White', 'No', 65, 34, 'Female', 'Gallstones', 1608, ''),
(816, 186, 106, '30.639380275176', 'Yes', 'Mixed', 'No', 22, 37, 'Male', 'Gallbladder disease', 1666, ''),
(817, 180, 85, '26.234567901235', 'Yes', 'Indian', 'No', 24, 35, 'Male', 'Gallbladder disease', 1675, ''),
(818, 183, 86, '25.680074054167', 'Yes', 'White', 'Yes', 68, 45, 'Female', 'High Blood Pressure', 1475, ''),
(819, 172, 103, '34.816116819903', 'Yes', 'Indian', 'No', 29, 44, 'Male', 'Cancer', 1652, ''),
(820, 183, 61, '18.214936247723', 'No', 'Mixed', 'No', 51, 45, 'Male', 'Heart Disease', 1448, ''),
(821, 171, 107, '36.592455798365', 'Yes', 'Mixed', 'Yes', 51, 46, 'Female', 'Gallbladder disease', 1623, ''),
(822, 177, 66, '21.066743273006', 'No', 'White', 'No', 66, 31, 'Female', 'High Blood Pressure', 1440, ''),
(823, 171, 70, '23.938989774632', 'No', 'Indian', 'Yes', 59, 30, 'Female', 'Diabetes', 1547, ''),
(824, 182, 85, '25.661152034778', 'Yes', 'Black', 'Yes', 43, 46, 'Male', 'High Blood Pressure', 1455, ''),
(825, 165, 102, '37.465564738292', 'Yes', 'White', 'No', 37, 31, 'Female', 'Asthma', 1545, ''),
(826, 166, 96, '34.83814777181', 'Yes', 'Black', 'No', 34, 30, 'Female', 'Asthma', 1313, ''),
(827, 177, 100, '31.919307989403', 'Yes', 'Black', 'No', 57, 46, 'Male', 'Heart Disease', 1337, ''),
(828, 165, 90, '33.057851239669', 'Yes', 'Mixed', 'Yes', 30, 31, 'Male', 'Gallbladder disease', 1463, ''),
(829, 175, 100, '32.65306122449', 'Yes', 'White', 'Yes', 20, 40, 'Male', 'Asthma', 1509, ''),
(830, 183, 72, '21.499596882558', 'No', 'Mixed', 'No', 65, 41, 'Female', 'Diabetes', 1614, ''),
(831, 180, 106, '32.716049382716', 'Yes', 'Indian', 'Yes', 70, 32, 'Male', 'Breathing problems', 1238, ''),
(832, 169, 82, '28.710479324954', 'Yes', 'Indian', 'Yes', 29, 38, 'Male', 'Asthma', 1252, ''),
(833, 167, 80, '28.685144680698', 'Yes', 'White', 'Yes', 58, 43, 'Female', 'Cancer', 1694, ''),
(834, 182, 107, '32.302861973192', 'Yes', 'White', 'Yes', 35, 32, 'Male', 'Gallbladder disease', 1323, ''),
(835, 178, 93, '29.352354500694', 'Yes', 'Mixed', 'No', 61, 40, 'Male', 'Stroke', 1234, ''),
(836, 176, 109, '35.188533057851', 'Yes', 'Indian', 'Yes', 31, 38, 'Male', 'Gout', 1453, ''),
(837, 185, 81, '23.666910153397', 'No', 'Indian', 'Yes', 35, 42, 'Female', 'Gallbladder disease', 1682, ''),
(838, 189, 76, '21.276000111979', 'No', 'Black', 'No', 30, 38, 'Male', 'Gallbladder disease', 1407, ''),
(839, 166, 82, '29.757584555088', 'Yes', 'Mixed', 'No', 54, 35, 'Male', 'Osteoarthritis', 1414, ''),
(840, 173, 71, '23.722810651876', 'No', 'Indian', 'No', 20, 36, 'Male', 'Persistent Cough', 1362, ''),
(841, 166, 96, '34.83814777181', 'Yes', 'Black', 'Yes', 27, 49, 'Male', 'Diabetes', 1606, ''),
(842, 167, 76, '27.250887446664', 'Yes', 'Black', 'Yes', 52, 50, 'Male', 'High Blood Pressure', 1263, ''),
(843, 179, 62, '19.350207546581', 'No', 'Mixed', 'No', 30, 36, 'Female', 'Asthma', 1518, ''),
(844, 181, 66, '20.145905192149', 'No', 'Mixed', 'No', 63, 32, 'Female', 'Asthma', 1509, ''),
(845, 165, 81, '29.752066115702', 'Yes', 'White', 'Yes', 55, 33, 'Female', 'Gallbladder disease', 1422, ''),
(846, 186, 65, '18.788299225344', 'No', 'Black', 'Yes', 23, 36, 'Female', 'Gallbladder disease', 1474, ''),
(847, 178, 110, '34.717838656735', 'Yes', 'White', 'No', 28, 43, 'Male', 'Cancer', 1639, ''),
(848, 185, 85, '24.835646457268', 'No', 'White', 'No', 35, 31, 'Male', 'Breathing problems', 1623, ''),
(849, 184, 75, '22.152646502836', 'No', 'Black', 'No', 33, 42, 'Female', 'None', 1584, ''),
(850, 175, 84, '27.428571428571', 'Yes', 'White', 'No', 32, 42, 'Female', 'Stroke', 1643, ''),
(851, 164, 79, '29.37239738251', 'Yes', 'Indian', 'No', 65, 41, 'Female', 'Osteoarthritis', 1686, ''),
(852, 184, 104, '30.718336483932', 'Yes', 'Indian', 'No', 64, 49, 'Female', 'Osteoarthritis', 1593, ''),
(853, 181, 83, '25.335001984066', 'Yes', 'Black', 'No', 20, 49, 'Female', 'Asthma', 1595, ''),
(854, 162, 100, '38.103947568968', 'Yes', 'Indian', 'No', 33, 35, 'Male', 'Stroke', 1535, ''),
(855, 186, 105, '30.350329517863', 'Yes', 'White', 'Yes', 44, 37, 'Female', 'High Blood Pressure', 1349, ''),
(856, 190, 77, '21.329639889197', 'No', 'Black', 'No', 19, 31, 'Female', 'None', 1304, ''),
(857, 178, 77, '24.302487059715', 'No', 'Mixed', 'No', 58, 30, 'Female', 'Asthma', 1301, ''),
(858, 167, 88, '31.553659148768', 'Yes', 'Mixed', 'No', 47, 40, 'Female', 'High Blood Pressure', 1569, ''),
(859, 163, 105, '39.519741051601', 'Yes', 'Black', 'No', 56, 48, 'Female', 'Asthma', 1231, ''),
(860, 162, 97, '36.960829141899', 'Yes', 'Indian', 'No', 54, 31, 'Male', 'Diabetes', 1516, ''),
(861, 168, 67, '23.738662131519', 'No', 'White', 'Yes', 33, 38, 'Female', 'Gallbladder disease', 1470, ''),
(862, 184, 91, '26.87854442344', 'Yes', 'White', 'No', 53, 50, 'Male', 'None', 1410, ''),
(863, 167, 60, '21.513858510524', 'No', 'Indian', 'No', 61, 34, 'Female', 'Heart Disease', 1211, ''),
(864, 188, 97, '27.444545043006', 'Yes', 'White', 'Yes', 66, 47, 'Male', 'Gout', 1585, ''),
(865, 165, 86, '31.588613406795', 'Yes', 'Black', 'Yes', 63, 43, 'Male', 'Gallstones', 1368, ''),
(866, 173, 61, '20.381569714992', 'No', 'Black', 'Yes', 41, 38, 'Male', 'Breathing problems', 1234, ''),
(867, 182, 84, '25.359256128487', 'Yes', 'Mixed', 'Yes', 63, 49, 'Female', 'Cancer', 1500, ''),
(868, 182, 80, '24.151672503321', 'No', 'Indian', 'No', 28, 32, 'Male', 'Stroke', 1496, ''),
(869, 167, 68, '24.382372978594', 'No', 'Mixed', 'Yes', 24, 42, 'Male', 'Cancer', 1544, ''),
(870, 164, 74, '27.513384889946', 'Yes', 'White', 'No', 25, 39, 'Female', 'Gallbladder disease', 1413, ''),
(871, 178, 105, '33.139755081429', 'Yes', 'Indian', 'Yes', 68, 39, 'Female', 'Heart Disease', 1385, ''),
(872, 168, 107, '37.910997732426', 'Yes', 'Indian', 'Yes', 47, 48, 'Male', 'Persistent Cough', 1503, ''),
(873, 173, 82, '27.398175682448', 'Yes', 'Indian', 'Yes', 33, 31, 'Male', 'Stroke', 1416, ''),
(874, 168, 87, '30.824829931973', 'Yes', 'Black', 'No', 66, 35, 'Female', 'Asthma', 1523, ''),
(875, 164, 97, '36.064842355741', 'Yes', 'Mixed', 'Yes', 30, 34, 'Female', 'High Blood Pressure', 1286, ''),
(876, 177, 87, '27.76979795078', 'Yes', 'White', 'Yes', 43, 38, 'Male', 'Diabetes', 1315, ''),
(877, 160, 96, '37.5', 'Yes', 'Mixed', 'No', 62, 32, 'Female', 'Diabetes', 1681, ''),
(878, 190, 83, '22.991689750693', 'No', 'Mixed', 'Yes', 18, 40, 'Female', 'Breathing problems', 1236, ''),
(879, 161, 95, '36.649820608773', 'Yes', 'Mixed', 'Yes', 69, 38, 'Male', 'High Blood Pressure', 1382, ''),
(880, 184, 60, '17.722117202268', 'No', 'White', 'Yes', 19, 39, 'Female', 'High Blood Pressure', 1473, ''),
(881, 162, 81, '30.864197530864', 'Yes', 'Mixed', 'Yes', 43, 41, 'Female', 'Heart Disease', 1676, ''),
(882, 183, 73, '21.798202394816', 'No', 'Black', 'No', 68, 50, 'Male', 'Diabetes', 1261, ''),
(883, 184, 82, '24.2202268431', 'No', 'White', 'No', 36, 33, 'Male', 'Gallstones', 1542, ''),
(884, 175, 91, '29.714285714286', 'Yes', 'White', 'No', 39, 41, 'Male', 'Osteoarthritis', 1241, ''),
(885, 178, 105, '33.139755081429', 'Yes', 'White', 'No', 53, 49, 'Female', 'Diabetes', 1303, ''),
(886, 188, 95, '26.878678134903', 'Yes', 'White', 'No', 65, 31, 'Male', 'High Blood Pressure', 1237, ''),
(887, 176, 105, '33.897210743802', 'Yes', 'Mixed', 'Yes', 44, 38, 'Male', 'Osteoarthritis', 1675, ''),
(888, 167, 68, '24.382372978594', 'No', 'Indian', 'No', 23, 30, 'Female', 'None', 1386, ''),
(889, 169, 72, '25.209201358496', 'Yes', 'Mixed', 'Yes', 31, 49, 'Female', 'Stroke', 1655, ''),
(890, 182, 91, '27.472527472527', 'Yes', 'White', 'No', 50, 45, 'Male', 'Osteoarthritis', 1575, ''),
(891, 189, 75, '20.996052742084', 'No', 'Black', 'Yes', 30, 50, 'Male', 'Persistent Cough', 1338, ''),
(892, 163, 79, '29.733900410253', 'Yes', 'Mixed', 'Yes', 43, 48, 'Male', 'Gout', 1453, ''),
(893, 167, 67, '24.023808670085', 'No', 'Black', 'Yes', 50, 31, 'Male', 'Diabetes', 1651, ''),
(894, 171, 96, '32.830614548066', 'Yes', 'White', 'Yes', 19, 41, 'Female', 'Breathing problems', 1523, ''),
(895, 178, 96, '30.299204645878', 'Yes', 'Mixed', 'No', 29, 38, 'Female', 'Heart Disease', 1423, ''),
(896, 182, 93, '28.07631928511', 'Yes', 'Black', 'Yes', 47, 46, 'Female', 'Persistent Cough', 1674, ''),
(897, 169, 102, '35.713035257869', 'Yes', 'White', 'Yes', 61, 48, 'Male', 'Gout', 1500, ''),
(898, 172, 72, '24.337479718767', 'No', 'Indian', 'Yes', 58, 38, 'Female', 'Persistent Cough', 1625, ''),
(899, 178, 85, '26.827420780205', 'Yes', 'Black', 'No', 57, 44, 'Female', 'High Blood Pressure', 1309, ''),
(900, 162, 78, '29.721079103795', 'Yes', 'Indian', 'Yes', 48, 46, 'Female', 'Asthma', 1670, ''),
(901, 182, 95, '28.680111097694', 'Yes', 'Indian', 'Yes', 18, 39, 'Female', 'Breathing problems', 1652, ''),
(902, 168, 73, '25.864512471655', 'Yes', 'White', 'Yes', 50, 47, 'Female', 'Asthma', 1257, ''),
(903, 171, 67, '22.913033070004', 'No', 'White', 'No', 59, 48, 'Male', 'Gout', 1489, ''),
(904, 189, 78, '21.835894851768', 'No', 'White', 'Yes', 59, 47, 'Female', 'Gout', 1625, ''),
(905, 165, 70, '25.711662075298', 'Yes', 'Mixed', 'Yes', 24, 36, 'Male', 'Asthma', 1389, ''),
(906, 189, 61, '17.076789563562', 'No', 'White', 'No', 52, 35, 'Male', 'Cancer', 1458, ''),
(907, 187, 110, '31.456432840516', 'Yes', 'Black', 'No', 43, 35, 'Female', 'Osteoarthritis', 1669, ''),
(908, 172, 79, '26.703623580314', 'Yes', 'Mixed', 'No', 48, 32, 'Male', 'Heart Disease', 1261, ''),
(909, 170, 83, '28.719723183391', 'Yes', 'Black', 'No', 26, 36, 'Female', 'Osteoarthritis', 1264, ''),
(910, 166, 76, '27.58020031935', 'Yes', 'White', 'Yes', 41, 44, 'Female', 'Gallstones', 1238, ''),
(911, 178, 97, '30.614821360939', 'Yes', 'Indian', 'No', 32, 48, 'Female', 'Cancer', 1354, ''),
(912, 188, 72, '20.371208691716', 'No', 'Indian', 'Yes', 23, 32, 'Female', 'Breathing problems', 1370, ''),
(913, 181, 89, '27.166447910625', 'Yes', 'Indian', 'Yes', 21, 43, 'Male', 'Gallbladder disease', 1694, ''),
(914, 167, 83, '29.760837606225', 'Yes', 'Mixed', 'Yes', 31, 34, 'Female', 'Persistent Cough', 1632, ''),
(915, 167, 91, '32.629352074295', 'Yes', 'Mixed', 'No', 50, 50, 'Female', 'High Blood Pressure', 1592, ''),
(916, 183, 91, '27.173101615456', 'Yes', 'Indian', 'No', 56, 46, 'Female', 'Breathing problems', 1442, ''),
(917, 186, 82, '23.702162099665', 'No', 'Mixed', 'Yes', 51, 33, 'Male', 'Osteoarthritis', 1683, ''),
(918, 186, 87, '25.14741588623', 'Yes', 'Mixed', 'Yes', 61, 43, 'Male', 'Gout', 1359, ''),
(919, 175, 80, '26.122448979592', 'Yes', 'Black', 'No', 47, 50, 'Male', 'Heart Disease', 1499, ''),
(920, 170, 80, '27.681660899654', 'Yes', 'Mixed', 'Yes', 44, 33, 'Female', 'Gallstones', 1479, ''),
(921, 189, 88, '24.635368550712', 'No', 'Black', 'Yes', 27, 50, 'Female', 'Gallbladder disease', 1639, ''),
(922, 173, 70, '23.388686558188', 'No', 'White', 'Yes', 26, 32, 'Male', 'None', 1681, ''),
(923, 169, 65, '22.758306781975', 'No', 'White', 'Yes', 52, 41, 'Female', 'Gallbladder disease', 1223, ''),
(924, 169, 86, '30.110990511537', 'Yes', 'Mixed', 'No', 62, 33, 'Male', 'Heart Disease', 1434, ''),
(925, 188, 88, '24.898143956541', 'No', 'Black', 'No', 24, 36, 'Male', 'Cancer', 1577, ''),
(926, 170, 105, '36.332179930796', 'Yes', 'Mixed', 'No', 66, 30, 'Male', 'High Blood Pressure', 1683, ''),
(927, 165, 100, '36.730945821855', 'Yes', 'Indian', 'Yes', 50, 31, 'Female', 'Osteoarthritis', 1325, ''),
(928, 176, 89, '28.731921487603', 'Yes', 'White', 'Yes', 19, 30, 'Female', 'Gallbladder disease', 1260, ''),
(929, 180, 99, '30.555555555556', 'Yes', 'Indian', 'Yes', 45, 49, 'Male', 'Gout', 1595, ''),
(930, 177, 64, '20.428357113218', 'No', 'White', 'Yes', 38, 46, 'Male', 'Gallstones', 1601, ''),
(931, 163, 102, '38.390605592984', 'Yes', 'White', 'No', 58, 46, 'Male', 'High Blood Pressure', 1499, ''),
(932, 173, 110, '36.753650305724', 'Yes', 'Indian', 'Yes', 28, 30, 'Male', 'High Blood Pressure', 1468, ''),
(933, 162, 60, '22.862368541381', 'No', 'Indian', 'Yes', 52, 31, 'Male', 'Gout', 1277, ''),
(934, 174, 68, '22.460034350641', 'No', 'Indian', 'Yes', 40, 33, 'Male', 'Gout', 1321, ''),
(935, 165, 61, '22.405876951331', 'No', 'White', 'Yes', 64, 38, 'Female', 'Cancer', 1484, ''),
(936, 181, 66, '20.145905192149', 'No', 'Mixed', 'No', 19, 30, 'Male', 'Diabetes', 1465, ''),
(937, 165, 67, '24.609733700643', 'No', 'White', 'No', 63, 38, 'Female', 'Asthma', 1609, ''),
(938, 167, 65, '23.306680053068', 'No', 'White', 'Yes', 56, 49, 'Male', 'Heart Disease', 1259, ''),
(939, 170, 77, '26.643598615917', 'Yes', 'Indian', 'No', 60, 40, 'Male', 'Cancer', 1696, ''),
(940, 165, 67, '24.609733700643', 'No', 'Indian', 'Yes', 48, 40, 'Male', 'Gout', 1588, ''),
(941, 183, 63, '18.812147272239', 'No', 'Indian', 'No', 47, 45, 'Male', 'Gallbladder disease', 1589, ''),
(942, 182, 92, '27.774423378819', 'Yes', 'Mixed', 'No', 65, 32, 'Female', 'Stroke', 1575, ''),
(943, 163, 60, '22.582709172344', 'No', 'White', 'No', 30, 41, 'Female', 'Asthma', 1251, ''),
(944, 163, 91, '34.250442244721', 'Yes', 'White', 'No', 25, 30, 'Male', 'Gout', 1493, ''),
(945, 185, 85, '24.835646457268', 'No', 'Mixed', 'No', 39, 44, 'Female', 'Diabetes', 1271, ''),
(946, 166, 84, '30.483379300334', 'Yes', 'Black', 'No', 41, 30, 'Female', 'Diabetes', 1308, ''),
(947, 165, 90, '33.057851239669', 'Yes', 'White', 'Yes', 64, 31, 'Male', 'None', 1437, ''),
(948, 176, 103, '33.251549586777', 'Yes', 'White', 'Yes', 52, 45, 'Male', 'Asthma', 1560, ''),
(949, 162, 103, '39.247065996037', 'Yes', 'White', 'No', 47, 32, 'Female', 'Asthma', 1294, ''),
(950, 171, 108, '36.934441366574', 'Yes', 'Indian', 'No', 28, 31, 'Male', 'Gallstones', 1289, ''),
(951, 172, 108, '36.50621957815', 'Yes', 'White', 'No', 59, 44, 'Male', 'High Blood Pressure', 1391, ''),
(952, 170, 83, '28.719723183391', 'Yes', 'Indian', 'Yes', 34, 50, 'Male', 'Osteoarthritis', 1280, ''),
(953, 173, 108, '36.085402118347', 'Yes', 'Black', 'Yes', 23, 48, 'Male', 'Osteoarthritis', 1330, ''),
(954, 169, 93, '32.561885088057', 'Yes', 'Mixed', 'No', 28, 34, 'Male', 'Breathing problems', 1343, ''),
(955, 176, 104, '33.574380165289', 'Yes', 'Black', 'No', 32, 44, 'Female', 'None', 1342, ''),
(956, 170, 109, '37.716262975779', 'Yes', 'Black', 'Yes', 23, 36, 'Female', 'Breathing problems', 1223, ''),
(957, 182, 110, '33.208549692066', 'Yes', 'White', 'No', 69, 39, 'Female', 'Diabetes', 1499, ''),
(958, 178, 104, '32.824138366368', 'Yes', 'White', 'No', 57, 35, 'Female', 'Diabetes', 1398, ''),
(959, 178, 78, '24.618103774776', 'No', 'Black', 'No', 51, 32, 'Female', 'Heart Disease', 1437, ''),
(960, 182, 85, '25.661152034778', 'Yes', 'Black', 'No', 58, 30, 'Female', 'None', 1230, ''),
(961, 170, 80, '27.681660899654', 'Yes', 'Mixed', 'No', 53, 34, 'Female', 'Osteoarthritis', 1201, ''),
(962, 170, 93, '32.179930795848', 'Yes', 'Mixed', 'Yes', 54, 35, 'Female', 'Breathing problems', 1245, ''),
(963, 186, 106, '30.639380275176', 'Yes', 'Mixed', 'Yes', 33, 44, 'Male', 'Gallbladder disease', 1473, ''),
(964, 184, 66, '19.494328922495', 'No', 'White', 'No', 28, 49, 'Female', 'Cancer', 1286, ''),
(965, 186, 102, '29.483177245924', 'Yes', 'Black', 'Yes', 56, 44, 'Male', 'Cancer', 1688, ''),
(966, 161, 67, '25.847768218819', 'Yes', 'Mixed', 'Yes', 29, 45, 'Female', 'Stroke', 1327, ''),
(967, 161, 99, '38.192970950195', 'Yes', 'Mixed', 'Yes', 56, 33, 'Female', 'Gallstones', 1230, ''),
(968, 174, 110, '36.332408508389', 'Yes', 'Black', 'Yes', 45, 41, 'Male', 'Diabetes', 1587, ''),
(969, 189, 71, '19.876263262507', 'No', 'White', 'No', 60, 36, 'Female', 'Gallbladder disease', 1521, ''),
(970, 186, 72, '20.811654526535', 'No', 'White', 'No', 39, 50, 'Male', 'Diabetes', 1284, ''),
(971, 163, 101, '38.014227106779', 'Yes', 'Mixed', 'Yes', 57, 40, 'Male', 'Gallstones', 1688, ''),
(972, 161, 91, '35.106670267351', 'Yes', 'Indian', 'Yes', 44, 30, 'Female', 'Gallstones', 1636, ''),
(973, 175, 105, '34.285714285714', 'Yes', 'Black', 'No', 47, 50, 'Male', 'Asthma', 1700, ''),
(974, 163, 99, '37.261470134367', 'Yes', 'Mixed', 'No', 25, 38, 'Male', 'High Blood Pressure', 1673, ''),
(975, 188, 72, '20.371208691716', 'No', 'Indian', 'No', 26, 50, 'Female', 'Cancer', 1332, ''),
(976, 161, 78, '30.091431657729', 'Yes', 'White', 'No', 35, 41, 'Female', 'High Blood Pressure', 1318, ''),
(977, 185, 96, '28.049671292915', 'Yes', 'Black', 'No', 42, 33, 'Female', 'Gallstones', 1631, ''),
(978, 161, 90, '34.720882681995', 'Yes', 'White', 'No', 30, 43, 'Male', 'Persistent Cough', 1418, ''),
(979, 183, 62, '18.513541759981', 'No', 'Black', 'Yes', 57, 48, 'Male', 'Osteoarthritis', 1349, ''),
(980, 189, 64, '17.916631673245', 'No', 'Mixed', 'Yes', 49, 39, 'Female', 'Breathing problems', 1298, ''),
(981, 180, 87, '26.851851851852', 'Yes', 'White', 'No', 47, 41, 'Female', 'Asthma', 1592, ''),
(982, 170, 104, '35.98615916955', 'Yes', 'White', 'Yes', 51, 44, 'Female', 'Osteoarthritis', 1680, ''),
(983, 173, 64, '21.383941996057', 'No', 'Black', 'Yes', 29, 48, 'Male', 'Asthma', 1496, ''),
(984, 166, 101, '36.652634634925', 'Yes', 'Mixed', 'No', 57, 32, 'Female', 'None', 1633, ''),
(985, 176, 104, '33.574380165289', 'Yes', 'Black', 'Yes', 34, 50, 'Female', 'Breathing problems', 1345, ''),
(986, 183, 84, '25.082863029652', 'Yes', 'White', 'No', 34, 33, 'Female', 'Gallstones', 1301, ''),
(987, 188, 108, '30.556813037574', 'Yes', 'White', 'No', 51, 46, 'Female', 'None', 1242, ''),
(988, 179, 102, '31.834212415343', 'Yes', 'Black', 'Yes', 61, 43, 'Male', 'Asthma', 1454, ''),
(989, 161, 87, '33.563519925929', 'Yes', 'Indian', 'No', 57, 30, 'Male', 'Persistent Cough', 1238, ''),
(990, 186, 66, '19.077349982657', 'No', 'Indian', 'No', 54, 40, 'Female', 'Gallbladder disease', 1436, ''),
(991, 162, 66, '25.148605395519', 'Yes', 'Mixed', 'Yes', 27, 37, 'Male', 'Heart Disease', 1566, ''),
(992, 175, 74, '24.163265306122', 'No', 'White', 'No', 46, 37, 'Male', 'High Blood Pressure', 1234, ''),
(993, 189, 62, '17.356736933457', 'No', 'Mixed', 'No', 54, 38, 'Male', 'Gallstones', 1372, ''),
(994, 171, 73, '24.964946479259', 'No', 'Black', 'No', 40, 31, 'Male', 'Gallstones', 1288, ''),
(995, 186, 80, '23.124060585039', 'No', 'Indian', 'Yes', 41, 47, 'Female', 'Heart Disease', 1436, ''),
(996, 160, 86, '33.59375', 'Yes', 'Mixed', 'Yes', 36, 35, 'Male', 'Gallstones', 1695, ''),
(997, 171, 102, '34.88252795732', 'Yes', 'Indian', 'Yes', 51, 48, 'Female', 'Gout', 1333, ''),
(998, 189, 74, '20.71610537219', 'No', 'Mixed', 'Yes', 57, 43, 'Male', 'Gout', 1326, ''),
(999, 169, 78, '27.309968138371', 'Yes', 'Black', 'No', 18, 39, 'Female', 'Stroke', 1444, ''),
(1000, 175, 93, '30.367346938776', 'Yes', 'Black', 'Yes', 50, 50, 'Male', 'Asthma', 1366, ''),
(1001, 167, 0, '23', 'No', 'Black', 'No', 23, 34, 'Female', 'Asthma', 1654, ''),
(1002, 178, 76, '24', 'No', 'Black', 'Yes', 18, 34, 'Male', 'None', 1875, ''),
(1003, 176, 56, '18', 'No', 'Black', 'No', 18, 34, 'Male', 'None', 1591, ''),
(1004, 167, 0, '23', 'No', 'Black', 'No', 23, 34, 'Female', 'Asthma', 1654, ''),
(1005, 167, 0, '23', 'No', 'Black', 'No', 23, 34, 'Female', 'Asthma', 1654, 'cdetakesure@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `message`, `created`) VALUES
(1, 'New advice added', '2016-12-18 00:00:13'),
(2, 'New advice added', '2016-12-18 00:22:37'),
(3, 'New system user was added.', '2016-12-18 00:37:27'),
(4, '0773553312 logged in', '2018-03-15 16:57:57'),
(5, '0773553311 logged in', '2018-03-25 16:35:00'),
(6, '0773553311 logged in', '2018-03-25 16:35:05'),
(7, '0773553310 logged in', '2018-03-25 16:35:10'),
(8, '0773553312 logged in', '2018-03-25 16:38:15'),
(9, 'New activity added', '2018-03-25 16:59:48'),
(10, 'Advice updated', '2018-03-25 17:31:54'),
(11, 'New activity added', '2018-03-25 17:36:02'),
(12, 'Advice deleted', '2018-03-25 17:36:09'),
(13, '0773553312 logged in', '2018-03-27 16:42:27'),
(14, 'New activity added', '2018-03-27 20:09:12'),
(15, '0773553312 logged in', '2018-04-04 07:52:41'),
(16, 'New activity added', '2018-04-04 09:06:53'),
(17, 'kuku@drugs.com logged in', '2018-05-01 20:21:57'),
(18, 'kuku@drugs.com logged in', '2018-05-01 20:23:05'),
(19, 'kuku@drugs.com logged in', '2018-05-01 20:23:53'),
(20, '0773553312 logged in', '2018-05-01 20:28:23'),
(21, 'New activity added', '2018-05-01 20:44:07'),
(22, 'delon@afrodeb.com logged in', '2018-05-05 17:01:18'),
(23, '0773553310 logged in', '2018-05-05 17:01:46'),
(24, '0773553312 logged in', '2018-05-05 18:38:25'),
(25, 'New system user was added.', '2018-05-05 18:41:06'),
(26, '0773553312 logged in', '2018-05-05 18:51:22'),
(27, '0773553312 logged in', '2018-05-05 18:51:23'),
(28, 'tendai@afrodeb.com logged in', '2018-05-05 19:29:00'),
(29, 'tendai@afrodeb.com logged in', '2018-05-05 19:29:37'),
(30, 'tendai@afrodeb.com logged in', '2018-05-05 19:29:38'),
(31, 'tendai@afrodeb.com logged in', '2018-05-05 19:29:54'),
(32, 'tendai@afrodeb.com logged in', '2018-05-05 19:30:36'),
(33, 'tendai@afrodeb.com logged in', '2018-05-05 19:30:53'),
(34, 'tendai@afrodeb.com logged in', '2018-05-05 19:31:04'),
(35, 'tendai@afrodeb.com logged in', '2018-05-05 19:31:16'),
(36, 'tendai@afrodeb.com logged in', '2018-05-05 19:32:27'),
(37, 'tendai@afrodeb.com logged in', '2018-05-05 19:32:59'),
(38, 'tendai@afrodeb.com logged in', '2018-05-05 19:33:21'),
(39, 'tendai@afrodeb.com logged in', '2018-05-05 19:33:56'),
(40, 'tendai@afrodeb.com logged in', '2018-05-05 19:39:25'),
(41, 'tendai@afrodeb.com logged in', '2018-05-05 19:40:10'),
(42, 'tendai@afrodeb.com logged in', '2018-05-05 19:40:10'),
(43, 'tendai@afrodeb.com logged in', '2018-05-05 19:40:10'),
(44, 'tendai@afrodeb.com logged in', '2018-05-05 19:44:42'),
(45, 'tendai@afrodeb.com logged in', '2018-05-05 19:44:42'),
(46, 'tendai@afrodeb.com logged in', '2018-05-05 19:44:42'),
(47, 'tendai@afrodeb.com logged in', '2018-05-05 19:45:17'),
(48, 'tendai@afrodeb.com logged in', '2018-05-05 19:45:17'),
(49, 'tendai@afrodeb.com logged in', '2018-05-05 19:45:17'),
(50, 'tendai@afrodeb.com logged in', '2018-05-05 19:45:28'),
(51, 'tendai@afrodeb.com logged in', '2018-05-05 19:45:28'),
(52, 'tendai@afrodeb.com logged in', '2018-05-05 19:45:28'),
(53, 'tendai@afrodeb.com logged in', '2018-05-05 19:45:39'),
(54, 'tendai@afrodeb.com logged in', '2018-05-05 19:45:39'),
(55, 'tendai@afrodeb.com logged in', '2018-05-05 19:45:39'),
(56, 'tendai@afrodeb.com logged in', '2018-05-05 20:25:02'),
(57, 'tendai@afrodeb.com logged in', '2018-05-05 20:25:04'),
(58, 'delon@afrodeb.com logged in', '2018-05-05 20:29:38'),
(59, 'deedza@gmail.com logged in', '2018-05-05 20:31:48'),
(60, 'deedza@gmail.com logged in', '2018-05-05 20:31:48'),
(61, 'deedza@gmail.com logged in', '2018-05-05 20:31:53'),
(62, 'deedza@gmail.com logged in', '2018-05-05 20:31:53'),
(63, 'cdetakesure@gmail.com logged in', '2018-05-05 20:36:58'),
(64, 'cdetakesure@gmail.com logged in', '2018-05-05 20:36:58'),
(65, 'cdetakesure@gmail.com logged in', '2018-05-05 20:36:58'),
(66, 'tendai@afrodeb.com logged in', '2018-05-05 20:46:44'),
(67, 'tendai@afrodeb.com logged in', '2018-05-05 20:46:46'),
(68, 'cdetakesure@gmail.com logged in', '2018-05-05 20:47:12'),
(69, 'cdetakesure@gmail.com logged in', '2018-05-05 20:47:12'),
(70, 'cdetakesure@gmail.com logged in', '2018-05-05 20:47:12'),
(71, ' cdetakesure@gmail.com logged in', '2018-05-05 21:11:39'),
(72, ' cdetakesure@gmail.com logged in', '2018-05-05 21:12:16'),
(73, ' cdetakesure@gmail.com logged in', '2018-05-05 21:12:24'),
(74, ' cdetakesure@gmail.com logged in', '2018-05-05 21:13:01'),
(75, ' cdetakesure@gmail.com logged in', '2018-05-05 21:13:08'),
(76, ' cdetakesure@gmail.com logged in', '2018-05-05 21:13:39'),
(77, ' logged in', '2018-05-05 21:13:54'),
(78, 'cdetakesure@gmail.com logged in', '2018-05-05 21:16:38'),
(79, 'cdetakesure@gmail.com logged in', '2018-05-05 21:16:38'),
(80, 'cdetakesure@gmail.com logged in', '2018-05-05 21:16:38'),
(81, 'cdetakesure@gmail.com logged in', '2018-05-05 21:16:47'),
(82, 'cdetakesure@gmail.com logged in', '2018-05-05 21:16:47'),
(83, 'cdetakesure@gmail.com logged in', '2018-05-05 21:16:47'),
(84, 'cdetakesure@gmail.com logged in', '2018-05-05 21:20:15'),
(85, 'cdetakesure@gmail.com logged in', '2018-05-05 21:20:15'),
(86, 'cdetakesure@gmail.com logged in', '2018-05-05 21:20:15'),
(87, 'bbb@hhh.com logged in', '2018-05-05 21:22:55'),
(88, 'cdetakesure@hmail.com logged in', '2018-05-05 21:27:47'),
(89, 'cdetakesure@gmail.com logged in', '2018-05-05 21:27:59'),
(90, 'cdetakesure@gmail.com logged in', '2018-05-05 21:27:59'),
(91, 'cdetakesure@gmail.com logged in', '2018-05-05 21:27:59'),
(92, 'New activity added', '2018-05-05 21:44:12'),
(93, 'New activity added', '2018-05-05 21:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `preference`
--

CREATE TABLE `preference` (
  `id` int(11) NOT NULL,
  `one` varchar(255) NOT NULL,
  `two` varchar(255) NOT NULL,
  `three` varchar(255) NOT NULL,
  `four` varchar(255) NOT NULL,
  `five` varchar(255) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preference`
--

INSERT INTO `preference` (`id`, `one`, `two`, `three`, `four`, `five`, `uid`, `created`) VALUES
(4, 'Pescatarian (eats white meat)', 'Dairy foods (cheese, yoghurt milk)', 'Gluten free', 'Protein', 'Low', 'tendai@afrodeb.com', '2018-05-05 18:06:57');

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE `system` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(510) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`id`, `name`, `logo`) VALUES
(1, 'Diabetes Monitoring System', 'assets/uploads/ahhh.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `phone`, `created`) VALUES
(1, 'ggggg', 'vbvvvnmnh', '6667888633', '0000-00-00 00:00:00'),
(2, 'Delon Savanhu', 'delontakesure', '0773553310', '2016-12-18 12:53:09'),
(3, 'Tinaye', 'bdhshsjshs', '07746672847', '2016-12-18 13:19:25'),
(4, 'Delon', 'deedza', 'deedza@gmail.com', '2018-04-22 15:51:43'),
(5, 'Delon Savanhu', 'deedza', 'delon@afrodeb.com', '2018-04-22 15:52:44'),
(6, 'Delon Savanhu', 'deedza', 'cdetakesure@gmail.com', '2018-04-22 16:10:13'),
(7, 'Delon', 'deedza', 'deedza@gmail.com', '2018-04-22 16:10:59'),
(8, 'Takesure Mbombo', 'deedza', 'delon@afrodeb.com', '2018-04-22 16:15:57'),
(9, 'Tendai Mwarumba', 'deedza', 'tendai@afrodeb.com', '2018-04-22 16:24:54'),
(10, 'Delon', 'deedza', 'cdetakesure@gmail.com', '2018-05-02 06:26:34'),
(11, 'Tendai Mwarumba', 'tendai', 'tendai@afrodeb.com', '2018-05-03 13:17:24'),
(12, 'Delon', 'fd66f2430b663ad4d63a00df7f27a049', 'deedza@gmail.com', '2018-05-05 20:24:58'),
(13, 'Delon Mukupe', '63f5939783bb082b0a7cdb286045dc3b', 'delon@afrodeb.com', '2018-05-05 20:26:57'),
(14, 'Deedza Dollar', 'fd66f2430b663ad4d63a00df7f27a049', 'cdetakesure@gmail.com', '2018-05-05 20:35:22'),
(15, 'Delon', 'fd66f2430b663ad4d63a00df7f27a049', 'deedza@gmail.com', '2018-05-05 20:36:10'),
(16, 'Delon', 'fd66f2430b663ad4d63a00df7f27a049', 'deedza@gmail.com', '2018-05-05 20:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `user_disease`
--

CREATE TABLE `user_disease` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advice`
--
ALTER TABLE `advice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preference`
--
ALTER TABLE `preference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_disease`
--
ALTER TABLE `user_disease`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `advice`
--
ALTER TABLE `advice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `preference`
--
ALTER TABLE `preference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system`
--
ALTER TABLE `system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
