-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 02, 2023 at 09:51 PM
-- Server version: 10.3.37-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noni_caption`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_cats`
--

CREATE TABLE `blog_cats` (
  `catID` int(11) NOT NULL,
  `catTitle` varchar(200) NOT NULL,
  `catSlug` varchar(200) NOT NULL,
  `image` text NOT NULL,
  `birthday` date NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `linkdin` text NOT NULL,
  `youtube` text NOT NULL,
  `about` text NOT NULL,
  `birthplace` text NOT NULL,
  `deathdate` date NOT NULL,
  `profession` text NOT NULL,
  `nationality` text NOT NULL,
  `zodiac` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blog_cats`
--

INSERT INTO `blog_cats` (`catID`, `catTitle`, `catSlug`, `image`, `birthday`, `facebook`, `twitter`, `linkdin`, `youtube`, `about`, `birthplace`, `deathdate`, `profession`, `nationality`, `zodiac`) VALUES
(142, 'Al Mahmud', 'Bangladeshi novelist', 'Al Mahmud.jpg', '1936-07-11', '', '', '', '', 'Mir Abdus Shukur Al Mahmud was a Bangladeshi poet, novelist, and short-story writer. He is considered one of the greatest Bengali poets to have emerged in the 20th century. His work in Bengali poetry is dominated by his frequent use of regional diale', 'Brahmanbaria District', '2019-01-15', 'Poet', 'Bangladeshi', 'Capricorn'),
(143, 'Kazi Nazrul Islam', 'Bangladeshi novelist', 'kazi.jpg', '2023-02-27', '', '', '', '', 'Kazi Nazrul Islam was a Bengali poet, writer, musician, and is the national poet of Bangladesh. Nazrul is regarded as one of the greatest poets in Bengali literature.', 'Churulia, India', '1976-08-29', 'Poet', 'Bangladeshi', 'Capricorn'),
(144, 'Shamsur Rahman', 'Bangladeshi Journalist', 'Shamsur Rahman.jpeg', '1929-10-23', '', '', '', '', 'Shamsur Rahman was a Bangladeshi poet, columnist and journalist. A prolific writer, Rahman produced more than sixty books of poetry collection and is considered a key figure in Bengali literature from the latter half of the 20th century. He was regar', 'Dhaka', '2006-08-17', 'Poet', 'Bangladeshi', 'Capricorn'),
(145, 'Jasimuddin', 'Bangladeshi litterateur', 'jasim.jpg', '2023-02-27', '', '', '', '', 'Jasimuddin, popularly called Palli Kabi, was a Bengali poet, lyricist, composer and writer widely celebrated for his modern ballad sagas in the pastoral mode. Although his full name is Jasim Uddin Mollah, he is known as Jasim Uddin.', 'Tambulkhana', '1976-03-13', 'Poet', 'Bangladeshi', 'Capricorn'),
(146, 'Humayun Azad', 'Poet, Novelist', 'Humayun Azad.jpeg', '1947-04-29', '', '', '', '', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¹à§à¦®à¦¾à¦¯à¦¼à§à¦¨ à¦†à¦œà¦¾à¦¦ à¦›à¦¿à¦²à§‡à¦¨ à¦à¦•à¦œà¦¨ à¦ªà§à¦°à¦¥à¦¾à¦¬à¦¿à¦°à§‹à¦§à§€ à¦“ à¦¬à¦¹à§à¦®à¦¾à¦¤à§à¦°à¦¿à¦• à¦®à¦¨à¦¨à¦¶à§€à¦² à¦²à§‡à¦–à¦•à¥¤ à¦¤à¦¾à¦à¦° à¦ªà§à¦°à¦•à¦¾à¦¶à¦¿à¦¤ à¦—à§à¦°à¦¨à§à¦¥à§‡à¦° à¦¸à¦‚à¦–à§à¦¯à¦¾ à§­à§¦ à¦Ÿà¦¿à¦° à¦¬à§‡à¦¶à§€à¥¤ à¦¹à§à¦®à¦¾à¦¯à¦¼à§à¦¨ à¦†à¦œà¦¾à¦¦à§‡à¦° à§§à§¦à¦Ÿà¦¿ à¦•à¦¾à¦¬à§à¦¯à¦—à§à¦°à¦¨à§à¦¥, à§§à§©à¦Ÿà¦¿ à¦‰à¦ªà¦¨à§à¦¯à¦¾à¦¸, à§¨à§¨à¦Ÿà¦¿ à¦¸à¦®à¦¾à¦²à§‹à¦šà¦¨à¦¾ à¦—à§à¦°à¦¨à§à¦¥, à§®à¦Ÿà¦¿ à¦•à¦¿à¦¶à§‹à¦°à¦¸à¦¾à¦¹à¦¿à¦¤à§à¦¯, à§­à¦Ÿà¦¿ à¦­à¦¾à¦·à¦¾à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦¬à¦¿à¦·à¦¯à¦¼à¦• à¦—à§à¦°à¦¨à§à¦¥ à¦¤à¦¾à¦à¦° à¦œà§€à¦¬à¦¦à§à¦¦à¦¶à¦¾à¦¯à¦¼ à¦¬à¦¾', 'Munshiganj District', '0000-00-00', 'poet, novelist, short-story writer, critic, linguist, columnist and professor', 'Bangladeshi', ''),
(147, 'Humayun Ahmed', 'Bangladeshi novelist', 'download.jpg', '1948-11-13', '', '', '', '', 'Humayun Ahmed was a Bangladeshi novelist, dramatist, screenwriter, filmmaker, songwriter, scholar, and professor.His breakthrough was his debut novel Nondito Noroke published in 1972.He wrote over 200 fiction and non-fiction books, many of which were', 'Netrokona. Moymonshingh', '2012-07-19', 'Writer, film director, academic, dramatist', 'Bangladeshi', 'Scorpio'),
(148, 'Sufia Kamal', 'poet', 'Sufia_Kamal.jpg', '1911-07-20', '', '', '', '', 'Begum Sufia Kamal was a Bangladeshi poet, feminist leader, and political activist. She took part in the Bengali nationalist movement of the 1950s and civil society leader in independent Bangladesh. She led feminist activism and was a president of Ban', 'Shayestabad, Backergunge District, Eastern Bengal and Assam', '1919-11-20', 'poet, writer', 'Bangladeshi', '	Capricorn'),
(149, 'Michael Madhusudan Dutt', 'Poet', 'michael-madhusudan-dutt-1611570527673.jpg', '1824-01-25', '', '', '', '', 'Michael Madhusudan Dutt was a Bengali poet and playwright. He is considered one of the pioneers of Bengali literature.', 'Sagardari, Jessore District, Bangladesh', '1873-06-29', 'poet and playwright', 'British Indian', 'Aquarius'),
(150, 'Begum Rokeya', 'Writer', 'images (12).jfif', '1880-12-09', '', '', '', '', 'Rokeya Sakhawat Hossain, commonly known as Begum Rokeya, was a prominent Bengali feminist thinker, writer, educator, professor, teacher, writer and women empowerment and political activist for Muslim girls from East Bengal, undivided Bengal in presen', 'Pairaband, Rangpur District, Bangladesh (Bengal Presidency,', '1932-12-09', 'Woman empower, Writer, Feminist Thinker, Educator, Activist', 'Bangladeshi', '	Capricorn'),
(151, 'Jahanara Imam', ' writer', 'Jahanara_Imam_1993.jpg', '1929-05-31', '', '', '', '', '', 'Murshidabad, Bengal Presidency, British India', '1994-06-26', ' writer', 'Bangladeshi', ''),
(152, 'Lalon', 'Philosopher', '', '1772-10-14', '', '', '', '', 'Lalon, also known as Lalon Shah, Lalon Fakir, Shahji and titled Fakir, Shah, was a prominent Bengali spiritual leader, philosopher, mystic poet and social reformer.', 'Harishpur, Jhenaidah, British Raj (present-day Bangladesh)', '1890-10-17', 'Bengali spiritual leader, philosopher, mystic poet and social reformer.', 'Bangladeshi', 'Taurus'),
(153, 'Ahmed Sofa', 'Bangladeshi writer', 'images.jpg', '1943-06-30', '', '', '', '', '', 'Gachbaria, Chandanish, Chittagong', '2001-07-28', 'writer, novelist, poet, thinker and public intellectual .', 'Bangladeshi', ''),
(154, 'Shamsur Rahman', ' writer', '1502909717_2.jpg', '1929-10-23', '', '', '', '', 'Shamsur Rahman was a Bangladeshi poet, columnist and journalist. A prolific writer, Rahman produced more than sixty books of poetry collection and is considered a key figure in Bengali literature from the latter half of the 20th century. He was regar', 'Dhaka, British Bengal (now Bangladesh)', '2006-08-17', 'Poet, journalist, columnist', 'Bangladeshi', 'Scorpio'),
(155, 'Sukumar Ray', ' writer', 'Sukumar_Ray.jpg', '1887-10-30', '', '', '', '', 'Sukumar Ray FRPS was a Bengali writer and poet from the Indian subcontinent. He is remembered mainly for his writings for children. He was the son of children\'s story writer Upendrakishore Ray Chowdhury and the father of Indian filmmaker Satyajit Ray', 'Katiadi, Mymensingh, Bengal Presidency, British India (present-day Kishoreganj, Dhaka, Bangladesh)', '1923-09-10', 'Writer, poet, editor', 'Bangladeshi', 'Scorpio'),
(156, 'Helal Hafiz', 'Bangladeshi poet', '1200px-Helal_Hafiz_at_Dhaka_Lit_Fest_2017_01_(cropped).jpg', '2023-03-29', '', '', '', '', 'Helal Hafiz is a Bangladeshi poet. He is considered a true representative of poets of his generation having certain creative traits in an age when his nation and countries in the neighbourhood witnessed dramatic transitions particularly in the arena ', ' Netrokona, East Bengal, Dominion of Pakistan', '2023-04-03', 'Writer', 'Bangladeshi', 'Libra'),
(157, 'Ahsan Habib ', ' writer', 'Ahsan_Habib_(poet).jpg', '1917-02-01', '', '', '', '', 'Ahsan Habib is a Bangladeshi cartoonist, writer and editor of Unmad, a satire magazine.', 'Shankarpasha , Pirojpur, East Bengal (now Bangladesh)', '1985-07-10', 'poet, writer', 'Bangladeshi', 'Scorpio'),
(158, 'Kamal Ahmed Majumder', 'Politician', 'Kamal_Ahmed_Majumder_by_Rezowan_(cropped).jpg', '1950-03-03', '', '', '', '', 'Kamal Ahmed Majumder is a Bangladesh Awami League politician and the incumbent Jatiya Sangsad member from Dhaka-15 since its inception in 2009.', 'Feni, East Bengal, Dominion of Pakistan {present-day Bangladesh)', '0000-00-00', '	Politician. party	Bangladesh Awami League', 'Bangladeshi ', 'Pisces'),
(159, 'Mahbuba Rahman', 'Singer', '1583177717_0.jpg', '1935-03-03', '', '', '', '', 'Mahbuba Rahman is a Bangladeshi singer. She worked in the film industry during 1950s and 1960s. She was the playback singer of Mukh O Mukhosh, the first Bengali language feature film produced in erstwhile East Pakistan.', '', '0000-00-00', 'singer', 'Bangladeshi ', ''),
(160, 'Nixon Chowdhury', 'Politician', 'images.jpeg', '1978-03-03', '', '', '', '', 'Mujibur Rahman Chowdhury is a Bangladeshi politician and the incumbent Jatiya Sangsad member representing the Faridpur-4 constituency.', ' Dhaka, Bangladesh.', '0000-00-00', '	Politician. party	Bangladesh Awami League', 'Bangladeshi ', 'Pisces'),
(161, 'Munier Choudhury', 'Famous Bangladeshi Writers', 'Munier_Chowdhury.jpg', '1925-11-27', '', '', '', '', 'Munier Choudhury was a Bangladeshi educationist, playwright, literary critic and political dissident. He was a victim of the mass killing of Bangladeshi intellectuals in 1971. He was awarded Independence Day Award in 1980, by the then president Ziaur', 'Manikganj District, Bengal Presidency, British India', '1971-12-14', 'educationist, playwright, literary critic and political dissident.', 'Bangladeshi ', 'Sagittarius'),
(162, 'Rudra Mohammad Shahidullah', 'Bangladeshi poet', '183669_115.jpg', '1956-10-16', '', '', '', '', '', 'Mongla, Bagerhat district, East Pakistan, (Present-day Bangladesh)', '1991-06-21', 'Bangladeshi poet', 'Bangladeshi ', 'Libra'),
(163, 'Shahidullah Kaiser', 'Bangladeshi novelist', 'art04.jpg', '1927-02-16', '', '', '', '', 'Shahidullah Kaiser was a Bangladeshi novelist and writer. He was awarded Bangla Academy Literary Award in 1969, Ekushey Padak in 1983 and Independence Day Award in 1998.', 'Mazupur, Feni, Bangladesh', '1971-12-14', 'novelist and writer', 'Bangladeshi ', 'Aquarius'),
(164, 'Jibanananda Das', ' poet', 'Jibanananda_Das_(1899â€“1954).jpg', '1899-02-17', '', '', '', '', 'Jibanananda Das was an Indian poet, writer, novelist and essayist in the Bengali language. Popularly called \"Rupashi Banglar Kabi\'\', Das is the most read poet after Rabindranath Tagore and Kazi Nazrul Islam in Bangladesh and West Bengal.', 'Barisal, Bengal Presidency, British India', '1954-10-22', ' poet, writer, novelist and essayist in the Bengali language', '	British Indian', 'Aquarius'),
(165, 'Tauquir Ahmed', 'Actor', '1200px-Towkir_Ahmed,_Dhaka_2018_(1)_(cropped).jpg', '1996-03-05', '', '', '', '', 'auquir Ahmed is a Bangladeshi architect and actor, turned director in both television and cinema. His films won many international and national awards including Bangladesh National Film Awards in the Best Director, Best Screenplay and Best Story cate', 'Jhenidah. Bangladesh', '0000-00-00', 'Bangladeshi architect and actor', 'Bangladeshi ', ''),
(166, 'William Beveridge', 'British economist ', 'William-Henry-Beveridge-1st-Baron-Beveridge.jpg', '2023-03-29', '', '', '', '', 'William Henry Beveridge, 1st Baron Beveridge, KCB was a British economist and Liberal politician who was a progressive and social reformer who played a central role in designing the British welfare state.', 'Rangpur City, Bengal, India (now Bangladesh)', '2023-04-03', 'Politician', 'British ', 'Pisces'),
(167, 'Al Mahmud', 'Bangladeshi poet', 'download.jfif', '1936-07-11', '', '', '', '', 'Mir Abdus Shukur Al Mahmud was a Bangladeshi poet, novelist, and short-story writer. He is considered one of the greatest Bengali poets to have emerged in the 20th century. His work in Bengali poetry is dominated by his frequent use of regional diale', 'Brahmanbaria District, Bengal Presidency, ( Present day Bangladesh)', '2019-02-15', 'Bangladeshi poet, novelist, and short-story writer', 'Bangladeshi ', 'Cancer'),
(168, 'Muhammed Zafar Iqbal', 'Bangladeshi author', 'Muhammed_Zafar_Iqbal_by_NKS(3).jpg', '1952-02-23', '', '', '', '', 'Muhammed Zafar Iqbal is a Bangladeshi science fiction author, physicist, academic, activist and former professor of computer science and engineering and former head of the department of Electrical and Electronic Engineering at Shahjalal University of', 'Syhlet', '0000-00-00', 'Bangladeshi science fiction author, physicist, academic, activist and former professor of computer science and engineering and former head of the department of Electrical and Electronic Engineering at Shahjalal University of Science and Technology (SUST).', 'Bangladeshi ', 'Capricorn'),
(169, 'Syed Mujtaba Ali', 'writer', 'Mujtaba_Ali.jpg', '1904-09-13', '', '', '', '', 'Syed Mujtaba Ali was a Bengali writer, journalist, travel enthusiast, academic, scholar and linguist. He lived in Bangladesh, India, Germany, Afghanistan and Egypt.', ' Karimganj, India', '1974-02-11', 'Bengali writer, journalist, travel enthusiast, academic, scholar and linguist', 'British Indian (1904â€“1947) Pakistani(1947â€“1949) Indian (1949â€“1972) Bangladeshi (1972â€“1974', 'Virgo'),
(170, 'Bankim Chandra Chatterjee', 'Indian novelist', 'Bankim_Chattapadhyay.jpg', '1838-06-26', '', '', '', '', 'Bankim Chandra Chatterjee CIE was an Indian novelist, poet, Essayist and journalist. He was the author of the 1882 Bengali language novel Anandamath, which is one of the landmarks of modern Bengali and Indian literature.', 'Naihati, India', '1894-04-08', 'Indian novelist, poet, Essayist and journalist', 'British Indian', 'Cancer'),
(171, 'Ataur Rahman Khan', 'Politician, Writer', 'Ataur Rahman Khan.jpg', '1905-03-06', '', '', '', '', 'Ataur Rahman Khan was a Bangladeshi lawyer, politician and writer, and served as Chief Minister of East Pakistan from 1 September 1956 â€“ March 1958, and as the Prime Minister of Bangladesh from 30 March 1984 to 9 July 1986.', 'Dhaka District', '1991-12-07', 'Bangladeshi lawyer', 'Pakistan, Bangladesh', ''),
(172, 'Taslima Nasrin', 'Writer', 'Taslima_Nasrin_2019.jpg', '1962-04-03', '', '', '', '', 'Taslima Nasrin is a Bangladeshi-Swedish writer, physician, feminist, secular humanist, and activist. She is known for her writing on women\'s oppression and criticism of religion; some of her books are banned in Bangladesh', 'Mymensingh, East Pakistan (now Bangladesh)', '1996-03-31', 'Bangladeshi-Swedish writer, physician, feminist, secular humanist, and activist.', 'Bangladeshi ', 'Virgo'),
(173, 'Zahir Raihan', 'Bangladeshi novelist', 'zahir.jpg', '2023-03-31', '', '', '', '', 'Mohammad Zahirullah, known as Zahir Raihan, was a Bangladeshi novelist, writer and filmmaker. He is most notable for his documentary Stop Genocide, made during the Bangladesh Liberation War. He was posthumously awarded Ekushey Padak in 1977 and IndepMohammad Zahirullah, known as Zahir Raihan, was a Bangladeshi novelist, writer and filmmaker. He is most notable for his documentary Stop Genocide, made during the Bangladesh Liberation War. He was posthumously awarded Ekushey Padak in 1977 and IndepMohammad Zahirullah, known as Zahir Raihan, was a Bangladeshi novelist, writer and filmmaker. He is most notable for his documentary Stop Genocide, made during the Bangladesh Liberation War. He was posthumously awarded Ekushey Padak in 1977 and IndepMohammad Zahirullah, known as Zahir Raihan, was a Bangladeshi novelist, writer and filmmaker. He is most notable for his documentary Stop Genocide, made during the Bangladesh Liberation War. He was posthumously awarded Ekushey Padak in 1977 and IndepMohammad Zahirullah, known as Zahir Raihan, was a Bangladeshi novelist, writer and filmmaker. He is most notable for his documentary Stop Genocide, made during the Bangladesh Liberation War. He was posthumously awarded Ekushey Padak in 1977 and IndepMohammad Zahirullah, known as Zahir Raihan, was a Bangladeshi novelist, writer and filmmaker. He is most notable for his documentary Stop Genocide, made during the Bangladesh Liberation War. He was posthumously awarded Ekushey Padak in 1977 and IndepMohammad Zahirullah, known as Zahir Raihan, was a Bangladeshi novelist, writer and filmmaker. He is most notable for his documentary Stop Genocide, made during the Bangladesh Liberation War. He was posthumously awarded Ekushey Padak in 1977 and IndepMohammad Zahirullah, known as Zahir Raihan, was a Bangladeshi novelist, writer and filmmaker. He is most notable for his documentary Stop Genocide, made during the Bangladesh Liberation War. He was posthumously awarded Ekushey Padak in 1977 and IndepMohammad Zahirullah, known as Zahir Raihan, was a Bangladeshi novelist, writer and filmmaker. He is most notable for his documentary Stop Genocide, made during the Bangladesh Liberation War. He was posthumously awarded Ekushey Padak in 1977 and IndepMohammad Zahirullah, known as Zahir Raihan, was a Bangladeshi novelist, writer and filmmaker. He is most notable for his documentary Stop Genocide, made during the Bangladesh Liberation War. He was posthumously awarded Ekushey Padak in 1977 and Indep', 'Feni District, Bangladesh', '2023-04-03', 'Writer', 'Bangladeshi ', 'Leo'),
(174, 'Mohiuddin Jahangir', 'Military personne', 'jaha.jpg', '1949-04-03', '', '', '', '', 'Captain Mohiuddin Jahangir was a Pakistan Army officer who joined the Mukti Bahini during the 1971 Liberation War. He was born on 7 March 1949 in the village of Rahimgonj under Babugonj Upazila of Barisal district, East Pakistan', 'Barisal', '1971-03-31', 'Army', 'Bangladeshi ', 'Pisces'),
(175, 'Shawkat Akbar', 'Film actor', 'sak.jpg', '1937-04-03', '', '', '', '', 'Enamul Haque, sometimes Enamul Huq, was a Bangladeshi actor, academician and playwright. He acted in stage, television and film mediums. He was a professor at the Department of Chemistry of Bangladesh University of Engineering and Technology.', 'Bardhaman district, Kolkata, British India (Now India)', '2000-06-23', 'Bangladeshi film actor', 'Indian', 'Pisces');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(11) NOT NULL,
  `tags` text NOT NULL,
  `postTitle` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `auther` varchar(25) NOT NULL,
  `catinfo` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `tags`, `postTitle`, `description`, `post_date`, `auther`, `catinfo`) VALUES
(36, '', '', 'â€œà¦•à¦¬à¦¿à¦¤à¦¾ à¦šà¦°à§‡à¦° à¦ªà¦¾à¦–à¦¿, à¦•à§à§œà¦¾à¦¨à§‹ à¦¹à¦¾à¦à¦¸à§‡à¦° à¦¡à¦¿à¦®, à¦—à¦¨à§à¦§à¦­à¦°à¦¾ à¦˜à¦¾à¦¸\r\nà¦®à§à¦²à¦¾à¦¨ à¦®à§à¦– à¦¬à¦‰à¦Ÿà¦¿à¦° à¦¦à§œà¦¿ à¦›à§‡à¦à§œà¦¾ à¦¹à¦¾à¦°à¦¾à¦¨à§‹ à¦¬à¦¾à¦›à§à¦°\r\nà¦—à§‹à¦ªà¦¨ à¦šà¦¿à¦ à¦¿à¦° à¦ªà§à¦¯à¦¾à¦¡à§‡ à¦¨à§€à¦² à¦–à¦¾à¦®à§‡ à¦¸à¦¾à¦œà¦¾à¦¨à§‹ à¦…à¦•à§à¦·à¦°\r\nà¦•à¦¬à¦¿à¦¤à¦¾ à¦¤à§‹ à¦®à¦•à§à¦¤à¦¬à§‡à¦° à¦®à§‡à§Ÿà§‡ à¦šà§à¦²à¦–à§‹à¦²à¦¾ à¦†à§Ÿà§‡à¦¶à¦¾ à¦†à¦•à§à¦¤à¦¾à¦°à¥¤â€\r\nâ€• Al Mahmud', '2023-02-27 13:43:28', 'Admin', '142'),
(37, '', '', 'â€œà¦•à¦¬à¦¿à¦¤à¦¾ à¦¤à§‹ à¦•à§ˆà¦¶à¦¾à§‡à¦°à§‡à¦° à¦¸à§à¦®à§ƒà¦¤à¦¿à¥¤ à¦¸à§‡ à¦¤à§‹ à¦­à§‡à¦¸à§‡ à¦“à¦ à¦¾ à¦®à§à¦²à¦¾à¦¨\r\nà¦†à¦®à¦¾à¦° à¦®à¦¾à¦¯à¦¼à§‡à¦° à¦®à§à¦–à§‡; à¦¨à¦¿à¦® à¦¡à¦¾à¦²à§‡ à¦¬à¦¸à§‡ à¦¥à¦¾à¦•à¦¾ à¦¹à¦²à¦¦à§‡ à¦ªà¦¾à¦–à¦¿à¦Ÿà¦¿\r\nà¦ªà¦¾à¦¤à¦¾à¦° à¦†à¦—à§à¦¨ à¦˜à¦¿à¦°à§‡ à¦°à¦¾à¦¤à¦œà¦¾à¦—à¦¾ à¦›à¦¾à§‡à¦Ÿ à¦­à¦¾à¦‡à¦¬à¦¾à§‡à¦¨\r\nà¦†à¦¬à§à¦¬à¦¾à¦° à¦«à¦¿à¦°à§‡ à¦†à¦¸à¦¾, à¦¸à¦¾à¦‡à¦•à§‡à¦²à§‡à¦° à¦˜à¦¨à§à¦Ÿà¦¾à¦§à¦¨à¦¿ - à¦°à¦¾à¦¬à§‡à¦¯à¦¼à¦¾ à¦°à¦¾à¦¬à§‡à¦¯à¦¼à¦¾\r\n\r\nà¦†à¦®à¦¾à¦° à¦®à¦¾à¦¯à¦¼à§‡à¦° à¦¨à¦¾à¦®à§‡ à¦–à§à¦²à§‡ à¦¯à¦¾à¦“à¦¯à¦¼à¦¾ à¦¦à¦•à§à¦·à¦¿à¦£à§‡à¦° à¦­à§‡à¦œà¦¾à¦¨à¦¾à§‡ à¦•à¦ªà¦¾à¦Ÿ!â€\r\nâ€• Al Mahmu', '2023-02-27 13:44:22', 'Admin', '142'),
(38, '', '', 'â€œà¦¤à§‹à¦®à¦¾à¦° à¦®à¦®à¦¤à¦¾-à¦®à¦¾à¦¨à¦¿à¦• à¦†à¦²à§‹à¦•à§‡ à¦šà¦¿à¦¨à¦¿à¦¨à§ â€¦\r\nà¦®à¦¾à¦¤à¦¾ à¦¤à§à¦®à¦¿ à¦²à¦¾à¦žà§à¦›à¦¿à¦¤à¦¾ à¦¬à¦¿à¦¶à§à¦¬-à¦œà¦¨à¦¨à§€à¥¤\r\nà¦¤à§‹à¦®à¦¾à¦° à¦†à¦à¦šà¦² à¦ªà¦¾à¦¤à¦¾ à¦¨à¦¿à¦–à¦¿à¦² à¦¦à§à¦ƒà¦–à§€-à¦¨à¦¿à¦ªà§€à§œà¦¿à¦¤ à¦¤à¦¬à§‡,\r\nà¦¬à¦¿à¦· à¦¶à§à¦§à§ à¦¤à§‹à¦®à¦¾ à¦¦à¦¹à§‡ à¦¯à¦¥à¦¾ à¦¤à¦¬ à¦®à¦¾à¦—à§‹ à¦ªà§€à§œà¦¿à¦¤ à¦¨à¦¿à¦–à¦¿à¦² à¦§à¦°à¦£à§€à¦° à¦­à¦¾à¦° à¦¬à¦¹à§‡à¥¤â€œ\r\n_ Kazi Nazrul Islam', '2023-02-27 14:00:26', 'Admin', '143'),
(39, '', '', '.â€œà¦­à¦—à¦¬à¦¾à¦¨! à¦¤à§à¦®à¦¿ à¦šà¦¾à¦¹à¦¿à¦¤à§‡ à¦ªà¦¾à¦° à¦•à¦¿ à¦ à¦¦à§à¦Ÿà¦¿ à¦¨à¦¾à¦°à§€à¦° à¦ªà¦¾à¦¨à§‡?\r\nà¦œà¦¾à¦¨à¦¿ à¦¨à¦¾, à¦¤à§‹à¦®à¦¾à§Ÿ à¦¬à¦¾à¦à¦šà¦¾à¦¬à§‡ à¦•à§‡ à¦¯à¦¦à¦¿ à¦“à¦°à¦¾ à¦…à¦­à¦¿à¦¶à¦¾à¦ª à¦¹à¦¾à¦¨à§‡!â€\r\nâ€• Kazi Nazrul Islam', '2023-02-27 13:47:40', 'Admin', '143'),
(40, '', '', 'â€œà¦–à§‡à¦²à§‡ à¦šà¦žà§à¦šà¦²à¦¾ à¦¬à¦°à¦·à¦¾-à¦¬à¦¾à¦²à¦¿à¦•à¦¾\r\nà¦®à§‡à¦˜à§‡à¦° à¦à¦²à§‹à¦•à§‡à¦¶à§‡ à¦“à§œà§‡ à¦ªà§à¦¬à¦¾à¦²à¦¿ à¦¬à¦¾à§Ÿ\r\nà¦¦à§‹à¦²à§‡ à¦—à¦²à¦¾à§Ÿ à¦¬à¦²à¦¾à¦•à¦¾à¦° à¦®à¦¾à¦²à¦¿à¦•à¦¾à¥¤â€\r\n__ Kazi Nazrul Islam', '2023-02-27 13:53:19', 'Admin', '143'),
(41, '', '', 'â€œà¦•à¦¾à¦¨à§à¦¨à¦¾ à¦¹à¦¾à¦¸à¦¿à¦° à¦–à§‡à¦²à¦¾à¦° à¦®à§‹à¦¹à§‡ à¦…à¦¨à§‡à¦• à¦†à¦®à¦¾à¦° à¦•à¦¾à¦Ÿà¦² à¦¬à§‡à¦²à¦¾\r\nà¦•à¦–à¦¨ à¦¤à§à¦®à¦¿ à¦¡à¦¾à¦• à¦¦à§‡à¦¬à§‡ à¦®à¦¾, à¦•à¦–à¦¨ à¦†à¦®à¦¿ à¦­à¦¾à¦™à¦¬ à¦–à§‡à¦²à¦¾ ?â€\r\nâ€• Kazi Nazrul Islam', '2023-02-27 13:56:58', 'Admin', '143'),
(42, '', '', 'â€œà¦¨à¦¾à¦®à¦¾à¦œ à¦ªà¦¡à¦¼, à¦°à§‹à¦œà¦¾ à¦°à¦¾à¦–, à¦•à¦²à¦®à¦¾ à¦ªà¦¡à¦¼ à¦­à¦¾à¦‡,à¦¤à§‹à¦° à¦†à¦–à§‡à¦°à§‡à¦° à¦•à¦¾à¦œ à¦•à¦°à§‡ à¦¨à§‡ à¦¸à¦®à¦¯à¦¼ à¦¯à§‡ à¦†à¦° à¦¨à¦¾à¦‡à¥¤â€\r\nâ€• Kazi Nazrul Islam', '2023-02-27 13:59:12', 'Admin', '143'),
(43, '', '', 'â€œà¦®à§Œ-à¦²à§‹à¦­à§€ à¦¯à¦¤ à¦®à§Œà¦²à¦¬à¦¿ à¦†à¦° à¦®à§‹à¦²-à¦²à¦¾â€™à¦°à¦¾ à¦•à¦¨ à¦¹à¦¾à¦¤ à¦¨à§‡à§œà§‡\r\nà¦¦à§‡à¦¬-à¦¦à§‡à¦¬à§€ à¦¨à¦¾à¦® à¦®à§à¦–à§‡ à¦†à¦¨à§‡ à¦¸à¦¬à§‡ à¦¦à¦¾à¦“ à¦ªà¦¾à¦œà¦¿à¦Ÿà¦¾à¦° à¦œà¦¾à¦¤ à¦®à§‡à¦°à§‡\r\nà¦«à¦¤à§‹à§Ÿà¦¾ à¦¦à¦¿à¦²à¦¾à¦® à¦•à¦¾à¦«à§‡à¦° à¦•à¦¾à¦œà§€ à¦“\r\nà¦¯à¦¦à¦¿à¦“ à¦¶à¦¹à§€à¦¦ à¦¹à¦‡à¦¤à§‡ à¦°à¦¾à¦œà¦¿ à¦“\r\nà¦†à¦®à¦ªà¦¾à¦°à¦¾ à¦ªà§œà¦¾ à¦¹à¦¾à¦®à¦¬à§œà¦¾ à¦®à§‹à¦°à¦¾ à¦à¦–à¦¨à¦“ à¦¬à§‡à§œà¦¾à¦‡ à¦­à¦¾à¦¤ à¦®à§‡à¦°à§‡\r\nà¦¹à¦¿à¦¨à§à¦¦à§à¦°à¦¾ à¦­à¦¾à¦¬à§‡ à¦ªà¦¾à¦°à§à¦¶à§€ à¦¶à¦¬à§à¦¦à§‡ à¦•à¦¬à¦¿à¦¤à¦¾ à¦²à§‡à¦–à§‡ à¦“ à¦ªà¦¾â€™à¦¤ à¦¨à§‡à§œà§‡à¥¤â€\r\nâ€• Kazi Nazrul Isla', '2023-02-27 14:02:33', 'Admin', '143'),
(44, '', '', 'â€à¦ªà§à¦à¦¥à¦¿à¦° à¦¬à¦¿à¦§à¦¾à¦¨ à¦¯à¦¾à¦• à¦ªà§à§œà§‡ à¦¤à§‹à¦°\r\nà¦¬à¦¿à¦§à¦¿à¦° à¦¬à¦¿à¦§à¦¾à¦¨ à¦¸à¦¤à§à¦¯ à¦¹à§‹à¦•à¥¤â€\r\nâ€• Kazi Nazrul Islam', '2023-02-27 14:03:49', 'Admin', '143'),
(45, '', '', 'â€œà¦¯à§à¦—à§‡à¦° à¦§à¦°à§à¦® à¦à¦‡- à¦ªà§€à§œà¦¨ à¦•à¦°à¦¿à¦²à§‡ à¦¸à§‡ à¦ªà§€à§œà¦¨ à¦à¦¸à§‡ à¦ªà§€à§œà¦¾ à¦¦à§‡à¦¬à§‡ à¦¤à§‹à¦®à¦¾à¦•à§‡à¦‡!â€\r\nâ€• Kazi Nazrul Islam', '2023-02-27 14:04:12', 'Admin', '143'),
(46, '', '', 'â€œà¦—à¦¾à¦¹à¦¿ à¦¸à¦¾à¦®à§à¦¯à§‡à¦° à¦—à¦¾à¦¨ â€“\r\nà¦®à¦¾à¦¨à§à¦·à§‡à¦° à¦šà§‡à§Ÿà§‡ à¦¬à§œ à¦•à¦¿à¦›à§ à¦¨à¦¾à¦‡ , à¦¨à¦¹à§‡ à¦®à¦¹à§€à§Ÿà¦¾à¦¨à¥¤â€\r\nâ€• Kazi Nazrul Islam', '2023-02-27 14:04:50', 'Admin', '143'),
(47, '', '', 'â€œà¦…à¦¸à§à¦¨à§à¦¦à¦° à¦ªà§ƒà¦¥à¦¿à¦¬à§€à¦•à§‡ à¦¸à§à¦¨à§à¦¦à¦° à¦•à¦°à¦¤à§‡; à¦¸à¦°à§à¦¬à¦¨à¦¿à¦°à§à¦¯à¦¾à¦¤à¦¨ à¦¥à§‡à¦•à§‡ à¦®à§à¦•à§à¦¤ à¦•à¦°à¦¤à§‡à¦‡ à¦®à¦¾à¦¨à§à¦·à§‡à¦° à¦œà¦¨à§à¦®à¥¤â€\r\nâ€• Kazi Nazrul Islam', '2023-02-27 14:05:08', 'Admin', '143'),
(48, '', '', 'â€œ à¦¹à¦¿à¦¨à§à¦¦à§ à¦¨à¦¾ à¦“à¦°à¦¾ à¦®à§à¦¸à¦²à¦¿à¦® à¦à¦‡ à¦œà¦¿à¦œà§à¦žà¦¾à¦¸à§‡ à¦•à§‹à¦¨ à¦œà¦¨ à¦¹à§‡, à¦•à¦¾à¦£à§à¦¡à¦¾à¦°à¦¿ à¦¬à¦² à¦¡à§à¦¬à¦¿à¦›à§‡ à¦®à¦¾à¦¨à§à¦· à¦¸à¦¨à§à¦¤à¦¾à¦¨ à¦®à§‹à¦° à¦®à¦¾â€™à¦° à¥¤â€œ\r\nâ€• Kazi Nazrul Islam', '2023-02-27 14:05:32', 'Admin', '143'),
(49, '', '', 'â€à¦œà¦¾à¦¨à¦¿à¦¸ à¦¨à¦¾à¦•à¦¿ à¦§à¦°à§à¦® à¦¸à§‡ à¦¯à§‡ à¦¬à¦°à§à¦®à¦¸à¦® à¦¸à¦¹à¦¨à¦¶à§€à¦²\r\nà¦¤à¦¾à¦‡ à¦•à¦¿ à¦­à¦¾à¦‡ à¦­à¦¾à¦™à¦¤à§‡ à¦ªà¦¾à¦°à§‡ à¦›à§‡à¦¾à¦à¦“à§Ÿà¦¾ à¦›à§à¦à§Ÿà¦¿à¦° à¦›à§‹à¦Ÿà§à¦Ÿ à¦¢à¦¿à¦² ?\r\nà¦¯à§‡ à¦œà¦¾à¦¤-à¦§à¦°à§à¦® à¦ à§à¦¨à¦•à§‹ à¦à¦¤ à¦†à¦œ à¦¨à¦¾ à¦¹à§Ÿ à¦•à¦¾à¦² à¦­à¦¾à¦™à¦¬à§‡ à¦¸à§‡ à¦¤à¥¤\r\nà¦¯à¦¾à¦• à¦¨à¦¾ à¦¸à§‡ à¦œà¦¾à¦¤ à¦œà¦¾à¦¹à¦¾à¦¨à§à¦¨à¦¾à¦®à§‡ à¦°à¦‡à¦¬à§‡ à¦®à¦¾à¦¨à§à¦· à¦¨à¦¾à¦‡ à¦ªà¦°à§‹à§Ÿà¦¾à¥¤â€\r\nâ€• Kazi Nazrul Islam', '2023-02-27 14:05:51', 'Admin', '143'),
(50, '', '', 'â€œ à¦¯à§‡à¦¥à¦¾ à¦¸à¦¬à§‡-à¦¸à¦®-à¦ªà¦¾à¦ªà§€\r\nà¦†à¦ªà¦¨ à¦ªà¦¾à¦ªà§‡à¦° à¦¬à¦¾à¦Ÿà¦–à¦¾à¦°à¦¾ à¦¦à¦¿à§Ÿà§‡ à¦…à¦¨à§à¦¯à§‡à¦° à¦ªà¦¾à¦ª à¦®à¦¾à¦ªà¦¿\r\nà¦œà¦¬à¦¾à¦¬à¦¦à¦¿à¦¹à¦¿à¦° à¦•à§‡à¦¨ à¦à¦¤ à¦˜à¦Ÿà¦¾ à¦¯à¦¦à¦¿ à¦¦à§‡à¦¬à¦¤à¦¾à¦‡ à¦¹à¦“\r\nà¦Ÿà§à¦ªà¦¿ à¦ªà§œà§‡ à¦Ÿà¦¿à¦•à¦¿ à¦°à§‡à¦–à§‡ à¦¸à¦¦à¦¾ à¦¬à¦²à§‹ à¦¯à§‡à¦¨ à¦¤à§à¦®à¦¿ à¦ªà¦¾à¦ªà§€ à¦¨à¦“\r\nà¦ªà¦¾à¦ªà§€ à¦¨à¦“ à¦¯à¦¦à¦¿ à¦•à§‡à¦¨ à¦ à¦­à§œà¦‚ à¦Ÿà§à¦°à§‡à¦¡à¦®à¦¾à¦°à§à¦•à¦¾à¦° à¦§à§à¦®\r\nà¦ªà§à¦²à¦¿à¦¶à¦¿ à¦ªà§‹à¦¶à¦¾à¦• à¦ªà¦°à¦¿à§Ÿà¦¾ à¦¹à§Ÿà§‡à¦› à¦ªà¦¾à¦ªà§‡à¦° à¦†à¦¸à¦¾à¦®à§€ à¦—à§à¦®à¥¤ â€\r\nâ€• Kazi Nazrul Islam', '2023-02-27 14:06:17', 'Admin', '143'),
(51, '', '', 'â€œ à¦®à¦¸à¦œà¦¿à¦¦à§‡à¦°à¦‡ à¦ªà¦¾à¦¶à§‡ à¦†à¦®à¦¾à¦° à¦•à¦¬à¦° à¦¦à¦¿à¦“ à¦­à¦¾à¦‡\r\nà¦¯à§‡à¦¨ à¦—à§‹à¦°à§‡ à¦¥à§‡à¦•à§‡à¦“ à¦®à§‹à§Ÿà¦¾à¦œà§à¦œà¦¿à¦¨à§‡à¦° à¦†à¦œà¦¾à¦¨ à¦¶à§à¦¨à¦¤à§‡ à¦ªà¦¾à¦‡à¥¤ â€\r\nâ€• Kazi Nazrul Islam', '2023-02-27 14:06:44', 'Admin', '143'),
(52, '', '', 'â€œà¦–à§‡à¦²à¦¿à¦› à¦ à¦¬à¦¿à¦¶à§à¦¬ à¦²à¦¯à¦¼à§‡\r\nà¦¬à¦¿à¦°à¦¾à¦Ÿ à¦¶à¦¿à¦¶à§ à¦†à¦¨à¦®à¦¨à§‡à¥¤\r\nà¦ªà§à¦°à¦²à¦¯à¦¼ à¦¸à§ƒà¦·à§à¦Ÿà¦¿ à¦¤à¦¬ à¦ªà§à¦¤à§à¦² à¦–à§‡à¦²à¦¾\r\nà¦¨à¦¿à¦°à¦œà¦¨à§‡ à¦ªà§à¦°à¦­à§ à¦¨à¦¿à¦°à¦œà¦¨à§‡à¥¤à¥¤ â€\r\nâ€• Kazi Nazrul Islam', '2023-02-27 14:07:02', 'Admin', '143'),
(53, '', '', 'â€œà¦¦à§‚à¦° à¦†à¦œà¦¾à¦¨à§‡à¦° à¦®à¦§à§à¦° à¦§à§à¦¬à¦¨à¦¿, à¦¬à¦¾à¦œà§‡, à¦¬à¦¾à¦œà§‡ à¦®à¦¸à¦œà¦¿à¦¦à§‡à¦°-à¦‡ à¦®à¦¿à¦¨à¦¾à¦°à§‡à¥¤\r\nà¦®à¦¨à§‡à¦¤à§‡ à¦œà¦¾à¦—à§‡, à¦¹à¦¾à¦œà¦¾à¦° à¦¬à¦›à¦° à¦†à¦—à§‡, à¦¹à¦œà¦°à¦¤ à¦¬à§‡à¦²à¦¾à¦²à§‡à¦° à¦…à¦¨à§à¦°à¦¾à¦—à§‡à¥¤\r\nà¦¤à¦¾à¦° à¦–à¦¾à¦¸ à¦à¦²à¦¾à¦¹à¦¾à¦¨, à¦®à¦¾à¦¤à¦¾à¦‡à¦¤à§‹ à¦ªà§à¦°à¦¾à¦£à¥¤\r\nà¦­à¦¾à¦™à§à¦—à¦¾à¦‡à¦¤à§‹ à¦ªà¦¾à¦·à¦¾à¦¨, à¦œà¦¾à¦—à¦¾à¦‡à¦¤à§‹ à¦®à¦¹à¦¿à¦®à¦¾à¦°à§‡à¥¤\r\nà¦¦à§‚à¦° à¦†à¦œà¦¾à¦¨à§‡à¦° à¦®à¦§à§à¦° à¦§à§à¦¬à¦¨à¦¿, à¦¬à¦¾à¦œà§‡, à¦¬à¦¾à¦œà§‡ à¦®à¦¸à¦œà¦¿à¦¦à§‡à¦°-à¦‡ à¦®à¦¿à¦¨à¦¾à¦°à§‡à¥¤â€œ\r\nâ€• Kazi Nazrul Islam', '2023-02-27 14:07:25', 'Admin', '143'),
(54, '', '', 'â€œà¦¬à¦¿à¦¶à§à¦¬ à¦¯à¦–à¦¨ à¦à¦—à¦¿à§Ÿà§‡ à¦šà¦²à§‡à¦›à§‡, à¦†à¦®à¦°à¦¾ à¦¤à¦–à¦¨à¦“ à¦¬à¦¸à§‡- à¦¬à¦¿à¦¬à¦¿ à¦¤à¦¾à¦²à¦¾à¦•à§‡à¦° à¦«à¦¤à§‡à¦¾à§Ÿà¦¾ à¦–à§à¦à¦œà§‡à¦›à¦¿, à¦«à¦¿à¦•à¦¾à¦¹ à¦“ à¦¹à¦¾à¦¦à¦¿à¦¸ à¦šà¦·à§‡à¥¤â€œ\r\nâ€• Kazi Nazrul Islam', '2023-02-27 14:07:45', 'Admin', '143'),
(55, '', '', 'â€à¦®à¦°à¦¿à¦›à§‡ à¦¹à¦¿à¦¨à§à¦¦à§, à¦®à¦°à§‡ à¦®à§à¦¸à¦²à¦¿à¦® à¦ à¦‰à¦¹à¦¾à¦° à¦˜à¦¾à§Ÿà§‡ à¦†à¦œ,\r\nà¦¬à§‡à¦à¦šà§‡ à¦†à¦›à§‡ à¦¯à¦¾à¦°à¦¾ à¦®à¦°à¦¿à¦¤à§‡à¦›à§‡ à¦¤à¦¾à¦°à¦¾, à¦-à¦®à¦°à¦£à§‡ à¦¨à¦¾à¦¹à¦¿ à¦²à¦¾à¦œ!\r\nà¦œà§‡à¦—à§‡à¦›à§‡ à¦¶à¦•à§à¦¤à¦¿ à¦¤à¦¾à¦‡ à¦¹à¦¾à¦¨à¦¾à¦¹à¦¾à¦¨à¦¿,\r\nà¦…à¦¸à§à¦¤à§à¦°à§‡ à¦…à¦¸à§à¦¤à§à¦°à§‡ à¦¨à¦¬ à¦œà¦¾à¦¨à¦¾à¦œà¦¾à¦¨à¦¿!\r\nà¦†à¦œà¦¿ à¦ªà¦°à§€à¦•à§à¦·à¦¾-à¦•à¦¾à¦¹à¦¾à¦° à¦¦à¦¸à§à¦¤ à¦¹à§Ÿà§‡à¦›à§‡, à¦•à¦¤ à¦¦à¦°à¦¾à¦œ!\r\nà¦•à§‡ à¦®à¦°à¦¿à¦¬à§‡ à¦•à¦¾à¦² à¦¸à¦®à§à¦®à§à¦–-à¦°à¦£à§‡, à¦®à¦°à¦¿à¦¤à§‡ à¦•à¦¾â€™à¦°à¦¾ à¦¨à¦¾à¦°à¦¾à¦œ!â€\r\nâ€• Kazi Nazrul Islam', '2023-02-27 14:12:48', 'Admin', '143'),
(56, '', '', 'â€œà¦¬à¦¾à¦¹à¦¿à¦°à§‡à¦° à¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾ à¦—à¦¿à§Ÿà¦¾à¦›à§‡ à¦¬à¦²à¦¿à§Ÿà¦¾ à¦…à¦¨à§à¦¤à¦°à§‡à¦° à¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾à¦•à§‡à¦“ à¦†à¦®à¦°à¦¾ à¦¯à§‡à¦¨ à¦¬à¦¿à¦¸à¦°à§à¦œà¦¨ à¦¨à¦¾ à¦¦à¦¿à¦‡à¥¤â€\r\nâ€• Kazi Nazrul Islam', '2023-02-27 14:13:08', 'Admin', '143'),
(57, '', '', 'â€œà¦†à¦®à¦¾à¦•à§‡ à¦ªà¦¾à¦ à¦¾à¦²à§‡ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦¸à¦¨à§‡, à¦¦à¦¿à¦²à§‡ à¦¦à¦¨à§à¦¡ à¦­à§Ÿà¦‚à¦•à¦°à¥¤\r\nà¦¤à§‹à¦®à¦¾à¦° à¦¸à¦¾à¦¨à§à¦¨à¦¿à¦§à§à¦¯ à¦¥à§‡à¦•à§‡, à¦…à¦®à¦¨ à¦¦à§ƒà¦·à§à¦Ÿà¦¿à¦° à¦¥à§‡à¦•à§‡ à¦¦à§‚à¦°à§‡,\r\nà¦¬à¦¹à§à¦¦à§à¦°à§‡ à¦šà¦•à¦¿à¦¤à§‡ à¦¸à¦°à¦¿à§Ÿà§‡ à¦¦à¦¿à¦²à§‡- à¦à¦‡ à¦¶à¦¾à¦¸à§à¦¤à¦¿, à¦¬à¦²à§‹,\r\nà¦®à§ƒà¦¤à§à¦¯à§à¦° à¦šà§‡à§Ÿà§‡à¦“ à¦¬à§‡à¦¶à¦¿, à¦¢à§‡à¦° à¦¬à§‡à¦¶à¦¿ à¦¨à§Ÿ à¦•à¦¿ à¦•à¦ à§‹à¦°?â€\r\nâ€• Shamsur Rahman', '2023-02-27 14:14:35', 'Admin', '144'),
(58, '', '', 'â€œà¦†à¦®à¦°à¦¾ à¦¯à¦–à¦¨ à¦˜à§œà¦¿à¦° à¦¦à§à¦Ÿà§‹ à¦•à¦¾à¦à¦Ÿà¦¾à¦° à¦®à¦¤à§‹\r\nà¦®à¦¿à¦²à¦¬à§‹ à¦°à¦¾à¦¤à§‡à¦° à¦—à¦­à§€à¦° à¦¯à¦¾à¦®à§‡\r\nà¦¤à¦–à¦¨ à¦œà¦¾à¦¨à¦¿ à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸à§‡à¦° à¦˜à§à¦°à¦›à§‡ à¦•à¦¾à¦à¦Ÿà¦¾,\r\nà¦ªà§œà¦›à§‡ à¦¬à§‹à¦®à¦¾ à¦­à¦¿à§Ÿà§‡à¦¤à¦¨à¦¾à¦®à§‡â€\r\nâ€• Shamsur Rahman', '2023-02-27 14:14:56', 'Admin', '144'),
(59, '', '', 'â€œà¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾ à¦¤à§à¦®à¦¿ â€“ à¦¶à¦¹à§€à¦¦ à¦®à¦¿à¦¨à¦¾à¦°à§‡ à¦…à¦®à¦° à¦à¦•à§à¦¶à§‡ à¦«à§‡à¦¬à§à¦°à§à§Ÿà¦¾à¦°à¦¿à¦° à¦‰à¦œà§à¦œà§à¦¬à¦² à¦¸à¦­à¦¾à¥¤â€\r\nâ€• Shamsur Rahman', '2023-02-27 14:17:45', 'Admin', '144'),
(60, '', '', 'â€œà¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾ à¦¤à§à¦®à¦¿\r\nà¦¬à¦Ÿà§‡à¦° à¦›à¦¾à§Ÿà¦¾à§Ÿ à¦¤à¦°à§à¦£ à¦®à§‡à¦§à¦¾à¦¬à§€ à¦¶à¦¿à¦•à§à¦·à¦¾à¦°à§à¦¥à§€à¦°\r\nà¦¶à¦¾à¦£à¦¿à¦¤ à¦•à¦¥à¦¾à¦° à¦à¦²à¦¸à¦¾à¦¨à¦¿-à¦²à¦¾à¦—à¦¾ à¦¸à¦¤à§‡à¦œ à¦­à¦¾à¦·à¦£à¥¤â€\r\nâ€• Shamsur Rahman', '2023-02-27 14:18:20', 'Admin', '144'),
(61, '', '', 'â€œà¦ªà¦¾à¦°à§à¦¥à¦•à§à¦¯à§‡à¦° à¦œà¦¨à§à¦¯à¦‡ à¦®à¦¾à¦¨à§à¦· à¦®à¦¾à¦¨à§à¦·à§‡à¦° à¦¬à¦¨à§à¦§à§ à¦¹à§Ÿà¥¤ à¦†à¦®à¦¾à¦° à¦­à¦¿à¦¤à¦°à§‡ à¦¯à¦¾à¦¹à¦¾ à¦¨à¦¾à¦‡ à¦¤à¦¾à¦‡ à¦†à¦®à¦°à¦¾ à¦…à¦ªà¦°à§‡à¦° à¦¨à¦¿à¦•à¦Ÿà§‡ à¦ªà¦¾à¦‡à§Ÿà¦¾ à¦¤à¦¾à¦¹à¦¾à¦° à¦¸à¦™à§à¦—à§‡ à¦¬à¦¨à§à¦§à§à¦¤à§à¦¬ à¦•à¦°à¦¿à¥¤â€\r\nâ€• Jasim Uddin', '2023-02-27 14:19:40', 'Admin', '145'),
(62, '', '', 'â€œà¦•à¦¿à¦¨à§à¦¤à§ à¦¸à¦¬ à¦­à¦¾à¦²à§‹ à¦²à¦¾à¦—à¦¾à¦‡ à¦¤à§‹ à¦œà§€à¦¬à¦¨à§‡ à¦šà¦¿à¦°à¦¸à§à¦¥à¦¾à§Ÿà§€ à¦¹à¦‡à§Ÿà¦¾ à¦¥à¦¾à¦•à§‡ à¦¨à¦¾à¥¤ à¦¶à§à¦§à§à¦®à¦¾à¦¤à§à¦° à¦•à¦²à§à¦ªà¦¨à¦¾à¦° à¦œà¦—à¦¤à§‡ à¦¸à§‡à¦‡à¦¸à¦¬ à¦˜à¦Ÿà¦¨à¦¾à¦•à§‡ à¦®à§‡à¦²à¦¿à§Ÿà¦¾ à¦§à¦°à¦¿à§Ÿà¦¾ à¦•à¦¿à¦žà§à¦šà¦¿à§Ž à¦¸à§à¦– à¦…à¦¨à§à¦­à¦¬ à¦•à¦°à¦¾ à¦¯à¦¾à§Ÿà¥¤ à¦‡à¦¹à¦¾à¦‡ à¦•à¦¿ à¦•à¦® à¦¸à§Œà¦­à¦¾à¦—à§à¦¯!â€\r\nâ€• Jasim Uddin', '2023-02-27 14:19:55', 'Admin', '145'),
(63, '', '', 'â€œà¦§à¦°à§à¦® à¦¯à¦–à¦¨ à¦°à¦Ÿà¦¿à¦¨à¦®à¦¾à¦«à¦¿à¦• à¦ªà§à¦°à¦¥à¦¾ à¦¹à¦‡à§Ÿà¦¾ à¦œà§€à¦¬à¦¨à§‡ à¦…à¦­à§à¦¯à¦¸à§à¦¤ à¦¹à¦‡à§Ÿà¦¾ à¦¯à¦¾à§Ÿ à¦¤à¦–à¦¨ à¦¤à¦¾à¦¹à¦¾ à¦¹à¦‡à¦¤à§‡ à¦•à§‹à¦¨à§‹ à¦‰à¦ªà¦•à¦¾à¦°à¦‡ à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿ à¦¨à¦¾à¥¤â€\r\nâ€• Jasim Uddin', '2023-02-27 14:20:12', 'Admin', '145'),
(64, '', '', 'â€œà¦à¦‡ à¦¯à§‡ à¦¤à§‹à¦®à¦¾à¦•à§‡ à¦¦à§‡à¦–à¦¿à§Ÿà¦¾ à¦†à¦®à¦¾à¦° à¦­à¦¾à¦²à§‹ à¦²à¦¾à¦—à§‡, à¦à¦Ÿà¦¾à¦‡ à¦•à¦¿ à¦•à¦® à¦²à¦¾à¦­? à¦œà§€à¦¬à¦¨à§‡ à¦­à¦¾à¦²à§‹ à¦²à¦¾à¦—à¦¿à¦¬à¦¾à¦° à¦²à§‹à¦• à¦•à§‹à¦Ÿà¦¿à¦¤à§‡ à¦—à§à¦Ÿà¦¿à¦• à¦®à§‡à¦²à§‡à¥¤â€\r\nâ€• Jasim Uddin', '2023-02-27 14:20:34', 'Admin', '145'),
(65, '', '', 'â€œà¦†à¦®à¦¾à¦°à§‡ à¦›à¦¾à§œà¦¿à§Ÿà¦¾ à¦à¦¤ à¦¬à§à¦¯à¦¥à¦¾ à¦¯à¦¾à¦° à¦•à§‡à¦®à¦¨ à¦•à¦°à¦¿à§Ÿà¦¾ à¦¹à¦¾à§Ÿ,\r\nà¦•à¦¬à¦° à¦¦à§‡à¦¶à§‡à¦¤à§‡ à¦˜à§à¦®à¦¾à§Ÿà§‡ à¦°à§Ÿà§‡à¦›à§‡ à¦¨à¦¿à¦à¦à§à¦® à¦¨à¦¿à¦°à¦¾à¦²à¦¾à§Ÿ!â€\r\nâ€• Jasim Uddin', '2023-02-27 14:20:50', 'Admin', '145'),
(66, '', '', 'â€œà¦à¦¦à¦¿à¦•à§‡ à¦¦à¦¿à¦—à¦¨à§à¦¤à§‡ à¦¯à¦¤à¦¦à§‚à¦° à¦šà¦¾à¦¹à¦¿, à¦ªà¦¾à¦‚à¦¶à§ à¦®à§‡à¦˜à§‡à¦° à¦œà¦¾à¦²-\r\nà¦ªà¦¾à¦¯à¦¼à§‡ à¦œà¦¡à¦¼à¦¾à¦‡à¦¯à¦¼à¦¾ à¦ªà¦¥à§‡ à¦¦à¦¾à¦¡à¦¼à¦¾à¦¯à¦¼à§‡à¦›à§‡, à¦†à¦œà¦¿à¦•à¦¾à¦° à¦®à¦¹à¦¾à¦•à¦¾à¦²à¥¤â€\r\nâ€• Jasim Uddin', '2023-02-27 14:21:07', 'Admin', '145'),
(67, '', '', 'â€œà¦¹à¦¿à¦œà¦²à§‡à¦° à¦¬à¦¨à§‡, à¦«à§à¦²à§‡à¦° à¦†à¦–à¦°à§‡, à¦²à¦¿à¦–à¦¿à¦¯à¦¼à¦¾ à¦°à¦™à¦¿à¦¨ à¦šà¦¿à¦ à¦¿,\r\nà¦¨à¦¿à¦°à¦¾à¦²à¦¾ à¦¬à¦¾à¦¦à¦²à§‡ à¦­à¦¾à¦¸à¦¾à¦‡à¦¯à¦¼à¦¾ à¦¦à¦¿à¦¯à¦¼à¦¾à¦›à§‡, à¦¨à¦¾ à¦œà¦¾à¦¨à¦¿ à¦•à§‹à¦¨ à¦¦à¦¿à¦ à¦¿à¥¤â€\r\nâ€• Jasim Uddin', '2023-02-27 14:21:40', 'Admin', '145'),
(68, '', '', 'â€œà¦®à¦¿à¦¥à§à¦¯à¦¾ à¦¹à§Œà¦• - à¦¸à¦¤à§à¦¯ à¦¹à§Œà¦• à¦®à¦¾à¦¨à§à¦· à¦¯à§‡-à¦•à§‹à¦¨à§‹ à¦¬à¦¸à§à¦¤à§ à¦²à¦‡à§Ÿà¦¾à¦‡ à¦¬à¦¿à¦¶à§à¦¬à¦¾à¦¸ à¦¸à§à¦¥à¦¾à¦ªà¦¨ à¦•à¦°à§à¦£ à¦¨à¦¾ à¦•à§‡à¦¨, à¦…à¦¤à§à¦¯à¦¾à¦šà¦¾à¦° à¦•à¦°à¦¿à§Ÿà¦¾, à¦ªà§€à§œà¦¨ à¦•à¦°à¦¿à§Ÿà¦¾ à¦•à§‡à¦¹ à¦¤à¦¾à¦¹à¦¾à¦•à§‡ à¦¸à¦¿ à¦¬à¦¿à¦¶à§à¦¬à¦¾à¦¸ à¦¹à¦‡à¦¤à§‡ à¦Ÿà¦²à¦¾à¦‡à¦¤à§‡ à¦ªà¦¾à¦°à§‡ à¦¨à¦¾à¥¤â€\r\nâ€• Jasim Uddin', '2023-02-27 14:21:57', 'Admin', '145'),
(69, '', '', 'â€œà¦¸à¦•à¦² à¦¦à§à¦ƒà¦–à§‡à¦°à¦‡ à¦¶à§‡à¦· à¦¹à§Ÿà¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦¤à¦¾à¦¹à¦¾à¦° à¦¦à¦¾à¦— à¦…à¦¨à§à¦¤à¦° à¦¹à¦‡à¦¤à§‡ à¦®à§‹à¦›à§‡ à¦¨à¦¾à¥¤â€\r\nâ€• Jasim Uddin', '2023-02-27 14:22:52', 'Admin', '145'),
(70, '', '', 'â€œ à¦ªà§à¦à¦œà¦¿à¦¬à¦¾à¦¦à§‡à¦° à¦†à¦²à§à¦²à¦¾à¦° à¦¨à¦¾à¦® à¦Ÿà¦¾à¦•à¦¾, à¦®à¦¸à¦œà¦¿à¦¦à§‡à¦° à¦¨à¦¾à¦® à¦¬à§à¦¯à¦¾à¦‚à¦• â€\r\n\r\nà¦¹à§à¦®à¦¾à§Ÿà§‚à¦¨ à¦†à¦œà¦¾à¦¦', '2023-02-27 20:22:59', 'Admin', '146'),
(71, '', '', 'â€à¦œà§€à¦¬à¦¨à§‡ à¦•à¦–à¦¨à§‹ à¦•à¦¾à¦‰à¦•à§‡ à¦¬à¦¿à¦¶à§à¦¬à¦¾à¦¸ à¦•à¦°à¦¤à§‡ à¦¯à§‡à¦“ à¦¨à¦¾à¥¤ à¦•à¦¾à¦°à¦¨,à¦¯à¦¾à¦•à§‡à¦‡ à¦¤à§à¦®à¦¿ à¦¬à¦¿à¦¶à§à¦¬à¦¾à¦¸ à¦•à¦°à¦¬à§‡ à¦¸à§‡à¦‡ à¦¤à§‹à¦®à¦¾à¦•à§‡ à¦ à¦•à¦¾à¦¬à§‡à¥¤â€', '2023-03-03 14:10:02', 'Admin', '147'),
(72, '', '', 'â€à¦°à§‚à¦ªà¦¬à¦¤à§€ à¦¨à¦¾à¦°à§€à¦¦à§‡à¦° à¦…à¦¨à§à¦°à§‹à¦§ à¦ªà§à¦°à¦¤à§à¦¯à¦¾à¦–à§à¦¯à¦¾à¦¨ à¦•à¦°à¦¤à§‡ à¦¨à§‡à¦‡ à¥¤ à¦ªà§à¦°à¦¤à§à¦¯à¦¾à¦–à§à¦¯à¦¾à¦¨ à¦•à¦°à¦²à§‡ à¦…à¦­à¦¿à¦¶à¦¾à¦ª à¦²à¦¾à¦—à§‡à¥¤ à¦°à§‚à¦ªà§‡à¦° à¦…à¦­à¦¿à¦¶à¦¾à¦ª à¥¤ à¦°à§‚à¦ª à¦¤à¦–à¦¨ à¦§à¦°à¦¾ à¦¦à§‡à§Ÿ à¦¨à¦¾ à¥¤ à¦°à§‚à¦ªà§‡à¦° à¦…à¦­à¦¿à¦¶à¦¾à¦ªà§‡ à¦ªà¦°à¦¾ à¦­à§Ÿà¦¾à¦¬à¦¹ à¦¬à§à¦¯à¦¾à¦ªà¦¾à¦°à¥¤â€', '2023-03-03 14:11:03', 'Admin', '147'),
(73, '', '', 'â€à¦•à¦¿à¦›à§ à¦•à¦¿à¦›à§ à¦®à¦¾à¦¨à§à¦· à¦­à¦¾à¦—à§à¦¯à¦•à§‡ à¦¨à¦¿à¦œà§‡à¦° à¦¹à¦¾à¦¤à§‡ à¦—à§œà§‡, à¦†à¦¬à¦¾à¦° à¦•à¦¾à¦°à§‹ à¦•à¦¾à¦°à§‹ à¦•à¦¾à¦›à§‡ à¦­à¦¾à¦—à§à¦¯ à¦†à¦ªà¦¨à¦¿ à¦à¦¸à§‡ à¦§à¦°à¦¾ à¦¦à§‡à§Ÿà¥¤â€œ', '2023-03-03 14:11:43', 'Admin', '147'),
(74, '', '', 'â€à¦®à¦¾à¦¨à§à¦· à¦¶à§à¦§à§ à¦¯à§‡ à¦®à¦¾à¦¨à§à¦·à§‡à¦° à¦•à¦¾à¦› à¦¥à§‡à¦•à§‡ à¦¶à¦¿à¦–à¦¬à§‡ à¦¤à¦¾ à¦¨à¦¾à¥¤ à¦ªà¦¶à§ à¦ªà¦¾à¦–à¦¿à¦° à¦•à¦¾à¦› à¦¥à§‡à¦•à§‡ à¦…à¦¨à§‡à¦• à¦•à¦¿à¦›à§ à¦¶à§‡à¦–à¦¾ à¦¯à¦¾à§Ÿà¥¤â€œ', '2023-03-03 14:12:15', 'Admin', '147'),
(75, '', '', 'à¦…à¦¶à¦¿à¦•à§à¦·à¦¿à¦¤ à¦¸à§à¦¤à§à¦°à§€à¦²à§‹à¦•à§‡à¦° à¦¶à¦¤ à¦¦à§‹à¦· à¦¸à¦®à¦¾à¦œ à¦…à¦®à§à¦²à¦¾à¦¨ à¦¬à¦¦à¦¨à§‡ à¦•à§à¦·à¦®à¦¾ à¦•à¦°à¦¿à§Ÿà¦¾ à¦¥à¦¾à¦•à§‡à¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦¸à¦¾à¦®à¦¾à¦¨à§à¦¯\r\n', '2023-03-03 14:17:40', 'Admin', '150'),
(76, '', '', 'à¦¶à¦¿à¦•à§à¦·à¦¾à¦ªà§à¦°à¦¾à¦ªà§à¦¤ à¦®à¦¹à¦¿à¦²à¦¾ à¦¦à§‹à¦· à¦¨à¦¾ à¦•à¦°à¦¿à¦²à§‡à¦“ à¦¸à¦®à¦¾à¦œ à¦•à§‹à¦¨à§‹ à¦•à¦²à§à¦ªà¦¿à¦¤ à¦¦à§‹à¦· à¦¶à¦¤à¦—à§à¦£ à¦¬à¦¾à§œà¦¾à¦‡à§Ÿà¦¾ à¦¸à§‡ à¦¬à§‡à¦šà¦¾à¦°à¦¿à¦° à¦¦à§‹à¦· à¦ à¦¶à¦¿à¦•à§à¦·à¦¾à¦° à¦˜à¦¾à§œà§‡ à¦šà¦¾à¦ªà¦¾à¦‡à§Ÿà¦¾ à¦¦à§‡à§Ÿ à¦à¦¬à¦‚ à¦¶à¦¤ à¦•à¦¨à§à¦ à§‡ à¦¸à¦®à¦¸à§à¦¬à¦°à§‡ à¦¬à¦²à¦¿à§Ÿà¦¾ à¦¥à¦¾à¦•à§‡ à¦¸à§à¦¤à§à¦°à§€ à¦¶à¦¿à¦•à§à¦·à¦¾à¦•à§‡ à¦¨à¦®à¦¸à§à¦•à¦¾à¦°!\r\n', '2023-03-03 14:18:06', 'Admin', '150'),
(77, '', '', 'à¦¸à¦°à§à¦¬ à¦…à¦™à§à¦—à§‡ à¦¬à§à¦¯à¦¥à¦¾, à¦“à¦·à§à¦§ à¦¦à¦¿à¦¬ à¦•à§‹à¦¥à¦¾?\r\n', '2023-03-03 14:18:29', 'Admin', '150'),
(78, '', '', 'à¦­à¦—à¦¿à¦¨à§€! à¦šà§à¦² à¦°à¦—à§œà¦¾à¦‡à§Ÿà¦¾ à¦œà¦¾à¦—à¦¿à§Ÿà¦¾ à¦‰à¦ à§à¦¨, à¦…à¦—à§à¦°à¦¸à¦° à¦¹à¦‰à¦¨! à¦®à¦¾à¦¥à¦¾ à¦ à§à¦•à¦¿à§Ÿà¦¾ à¦¬à¦²à§‹ à¦®à¦¾! à¦†à¦®à¦°à¦¾ à¦ªà¦¶à§ à¦¨à¦‡; à¦¬à¦²à§‹ à¦­à¦—à¦¿à¦¨à§€! à¦†à¦®à¦°à¦¾ à¦†à¦¸à¦¬à¦¾à¦¬ à¦¨à¦‡; à¦¬à¦²à§‹ à¦•à¦¨à§à¦¯à§‡ à¦†à¦®à¦°à¦¾ à¦œà§œà§‹à§Ÿà¦¾ à¦…à¦²à¦™à§à¦•à¦¾à¦°à¦°à§‚à¦ªà§‡ à¦²à§‹à¦¹à¦¾à¦° à¦¸à¦¿à¦¨à§à¦§à§à¦•à§‡ à¦†à¦¬à¦¦à§à¦§ à¦¥à¦¾à¦•à¦¿à¦¬à¦¾à¦° à¦¬à¦¸à§à¦¤à§ à¦¨à¦‡; à¦¸à¦•à¦²à§‡ à¦¸à¦®à¦¸à§à¦¬à¦°à§‡ à¦¬à¦²à§‹ à¦†à¦®à¦°à¦¾ à¦®à¦¾à¦¨à§à¦·à¥¤', '2023-03-03 14:18:51', 'Admin', '150'),
(79, '', '', 'à¦¨à¦¾ à¦œà¦¾à¦—à¦¿à¦²à§‡ à¦­à¦¾à¦°à¦¤ à¦²à¦²à¦¨à¦¾, à¦ à¦­à¦¾à¦°à¦¤ à¦†à¦° à¦œà¦¾à¦—à¦¿à¦¬à§‡ à¦¨à¦¾à¥¤', '2023-03-03 14:19:14', 'Admin', '150'),
(80, '', '', 'à¦†à¦®à¦°à¦¾ à¦ªà§à¦°à§à¦·à§‡à¦° à¦¨à§à¦¯à¦¾à§Ÿ à¦¸à¦¾à¦®à§à¦¯à¦• à¦¸à§à¦¬à¦¿à¦§à¦¾ à¦¨à¦¾ à¦ªà¦¾à¦‡à§Ÿà¦¾ à¦ªà¦¶à§à¦šà¦¾à¦¤à§‡ à¦ªà§œà¦¿à§Ÿà¦¾ à¦†à¦›à¦¿à¥¤\r\n', '2023-03-03 14:19:54', 'Admin', '150'),
(81, '', '', 'à¦•à¦¨à§à¦¯à¦¾à¦°à¦¾ à¦œà¦¾à¦—à§à¦°à¦¤ à¦¨à¦¾ à¦¹à¦“à§Ÿà¦¾ à¦ªà¦°à§à¦¯à¦¨à§à¦¤ à¦¦à§‡à¦¶à¦®à¦¾à¦¤à§ƒà¦•à¦¾à¦° à¦®à§à¦•à§à¦¤à¦¿ à¦…à¦¸à¦®à§à¦­à¦¬à¥¤ (à¦®à§à¦•à§à¦¤à¦¿à¦«à¦² à¦—à¦²à§à¦ª)', '2023-03-03 14:20:23', 'Admin', '150'),
(82, '', '', 'à¦¯à§‡ à¦¶à¦•à¦Ÿà§‡à¦° à¦à¦• à¦šà¦•à§à¦° à¦¬à§œ (à¦ªà¦¤à¦¿) à¦à¦¬à¦‚ à¦à¦• à¦šà¦•à§à¦° à¦›à§‹à¦Ÿ (à¦ªà¦¤à§à¦¨à§€) à¦¹à§Ÿ, à¦¸à§‡ à¦¶à¦•à¦Ÿ à¦…à¦§à¦¿à¦• à¦¦à§‚à¦°à§‡ à¦…à¦—à§à¦°à¦¸à¦° à¦¹à¦‡à¦¤à§‡ à¦ªà¦¾à¦°à§‡ à¦¨à¦¾; à¦¸à§‡ à¦•à§‡à¦¬à¦² à¦à¦•à¦‡ à¦¸à§à¦¥à¦¾à¦¨à§‡ (à¦—à§ƒà¦¹à¦•à§‹à¦£à§‡à¦‡) à¦˜à§à¦°à¦¿à¦¤à§‡ à¦¥à¦¾à¦•à¦¿à¦¬à§‡à¥¤ à¦¤à¦¾à¦‡ à¦­à¦¾à¦°à¦¤à¦¬à¦¾à¦¸à§€ à¦‰à¦¨à§à¦¨à¦¤à¦¿à¦° à¦ªà¦¥à§‡ à¦…à¦—à§à¦°à¦¸à¦° à¦¹à¦‡à¦¤à§‡ à¦ªà¦¾à¦°à¦¿à¦¤à§‡à¦›à§‡ à¦¨à¦¾à¥¤ (à¦®à¦¤à¦¿à¦šà§‚à¦° à¦ªà§à¦°à¦¬à¦¨à§à¦§à¦—à§à¦°à¦¨à§à¦¥à§‡ à¦¨à¦¾à¦°à§€ à¦“ à¦ªà§à¦°à§à¦·à¦•à§‡ à¦à¦• à¦—à¦¾à§œà¦¿à¦° à¦¦à§à¦‡ à¦šà¦¾à¦•à¦¾à¦° à¦¸à¦¾à¦¥à§‡ à¦¤', '2023-03-03 14:20:45', 'Admin', '150'),
(83, '', '', 'à¦®à§‡à§Ÿà§‡à¦¦à§‡à¦° à¦à¦®à¦¨ à¦¶à¦¿à¦•à§à¦·à¦¾à§Ÿ à¦¶à¦¿à¦•à§à¦·à¦¿à¦¤ à¦•à¦°à¦¿à§Ÿà¦¾ à¦¤à§à¦²à¦¿à¦¤à§‡ à¦¹à¦‡à¦¬à§‡, à¦¯à¦¾à¦¹à¦¾à¦¤à§‡ à¦¤à¦¾à¦¹à¦¾à¦°à¦¾ à¦­à¦¬à¦¿à¦·à§à¦¯à§Ž à¦œà§€à¦¬à¦¨à§‡ à¦†à¦¦à¦°à§à¦¶ à¦—à§ƒà¦¹à¦¿à¦£à§€, à¦†à¦¦à¦°à§à¦¶ à¦œà¦¨à¦¨à§€ à¦à¦¬à¦‚ à¦†à¦¦à¦°à§à¦¶ à¦¨à¦¾à¦°à§€à¦°à§‚à¦ªà§‡ à¦ªà¦°à¦¿à¦šà¦¿à¦¤ à¦¹à¦‡à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¥¤', '2023-03-03 14:21:37', 'Admin', '150'),
(84, '', '', 'à¦†à¦®à¦°à¦¾ à¦¸à¦®à¦¾à¦œà§‡à¦° à¦…à¦°à§à¦§à¦¾à¦™à§à¦—, à¦†à¦®à¦°à¦¾ à¦ªà§œà¦¿à§Ÿà¦¾ à¦¥à¦¾à¦•à¦¿à¦²à§‡ à¦¸à¦®à¦¾à¦œ à¦‰à¦ à¦¿à¦¬à§‡ à¦•à§€à¦°à§‚à¦ª? à¦•à§‹à¦¨à§‹ à¦¬à§à¦¯à¦•à§à¦¤à¦¿ à¦à¦• à¦ªà¦¾ à¦¬à¦¾à¦à¦§à¦¿à§Ÿà¦¾ à¦°à¦¾à¦–à¦¿à¦²à§‡ à¦¸à§‡ à¦–à§‹à¦à§œà¦¾à¦‡à§Ÿà¦¾ à¦–à§‹à¦à§œà¦¾à¦‡à§Ÿà¦¾ à¦•à¦¤à¦¦à§‚à¦° à¦šà¦²à¦¿à¦¬à§‡? à¦ªà§à¦°à§à¦·à§‡à¦° à¦¸à§à¦¬à¦¾à¦°à§à¦¥ à¦à¦¬à¦‚ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦¸à§à¦¬à¦¾à¦°à§à¦¥ à¦­à¦¿à¦¨à§à¦¨ à¦¨à¦¹à§‡à¥¤ à¦¤à¦¾à¦¹à¦¾à¦¦à§‡à¦° à¦œà§€à¦¬à¦¨à§‡à¦° à¦‰à¦¦à§à¦¦à§‡à¦¶à§à¦¯ à¦¬à¦¾ à¦²à¦•à§à¦·à§à¦¯ à¦¯à¦¾à¦¹à¦¾ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦²à¦•à§à¦·à§à¦¯ à¦¤à¦¾à¦¹à¦¾à¦‡à¥¤', '2023-03-03 14:21:56', 'Admin', '150'),
(85, '', '', 'à¦•à¦¾à¦°à§à¦œà¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦ªà§à¦°à§à¦·à§‡à¦° à¦ªà¦°à¦¿à¦¶à§à¦°à¦®à§‡à¦° à¦®à§à¦²à§à¦¯ à¦¬à§‡à¦¶à¦¿, à¦¨à¦¾à¦°à§€à¦° à¦•à¦¾à¦œ à¦¸à¦¸à§à¦¤à¦¾à§Ÿ à¦¬à¦¿à¦•à§à¦°à§Ÿ à¦¹à§Ÿà¥¤ à¦¨à¦¿à¦®à§à¦¨à¦¶à§à¦°à§‡à¦£à§€à¦° à¦ªà§à¦°à§à¦· à¦¯à§‡ à¦•à¦¾à¦œ à¦•à¦°à¦¿à¦²à§‡ à¦®à¦¾à¦¸à§‡ à§¨ à¦Ÿà¦¾à¦•à¦¾ à¦¬à§‡à¦¤à¦¨ à¦ªà¦¾à§Ÿ à¦ à¦¿à¦• à¦¸à§‡à¦‡ à¦•à¦¾à¦œ à¦¸à§à¦¤à§à¦°à§€à¦²à§‹à¦•à§‡ à¦•à¦°à¦¿à¦²à§‡ à§§ à¦Ÿà¦¾à¦•à¦¾ à¦ªà¦¾à§Ÿà¥¤ à¦šà¦¾à¦•à¦°à§‡à¦° à¦–à§‹à¦°à¦¾à¦•à§€ à¦®à¦¾à¦¸à¦¿à¦• à§© à¦Ÿà¦¾à¦•à¦¾ à¦†à¦° à¦šà¦¾à¦•à¦°à¦¾à¦¨à§€à¦° à¦–à§‹à¦°à¦¾à¦•à§€ à§© à¦Ÿà¦¾à¦•à¦¾à¥¤', '2023-03-03 14:22:14', 'Admin', '150'),
(86, '', '', 'à¦¦à§‡à¦¹à§‡à¦° à¦¦à§â€™à¦Ÿà¦¿ à¦šà¦•à§à¦·à§à¦¸à§à¦¬à¦°à§‚à¦ª, à¦®à¦¾à¦¨à§à¦·à§‡à¦° à¦¸à¦¬à¦°à¦•à¦®à§‡à¦° à¦•à¦¾à¦œà¦•à¦°à§à¦®à§‡à¦° à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨à§‡ à¦¦à§â€™à¦Ÿà¦¿ à¦šà¦•à§à¦·à§à¦° à¦—à§à¦°à§à¦¤à§à¦¬ à¦¸à¦®à¦¾à¦¨à¥¤', '2023-03-03 14:22:32', 'Admin', '150'),
(87, '', '', 'à¦¶à¦¿à¦•à§à¦·à¦¾ à¦²à¦¾à¦­ à¦•à¦°à¦¾ à¦¸à¦¬ à¦¨à¦°-à¦¨à¦¾à¦°à§€à¦° à¦…à¦¬à¦¶à§à¦¯ à¦•à¦°à§à¦¤à¦¬à§à¦¯à¥¤â€™ à¦•à¦¿à¦¨à§à¦¤à§ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦¸à¦®à¦¾à¦œ à¦¸à¦°à§à¦¬à¦¦à¦¾ à¦¤à¦¾à¦¹à¦¾ à¦…à¦®à¦¾à¦¨à§à¦¯ à¦•à¦°à§‡à¦›à§‡à¥¤', '2023-03-03 14:22:54', 'Admin', '150'),
(88, '', '', 'à¦…à¦§à¦¿à¦•à¦¾à¦‚à¦¶ à¦®à¦¾à¦¨à§à¦· à¦•à¦²à§à¦ªà¦¨à¦¾à¦¯à¦¼ à¦¸à§à¦¨à§à¦¦à¦°, à¦…à¦¥à¦¬à¦¾ à¦¸à§à¦¨à§à¦¦à¦° à¦¦à§à¦° à¦¥à§‡à¦•à§‡à¥¤ à¦•à¦¾à¦›à§‡ à¦à¦²à§‡à¦‡ à¦†à¦•à¦°à§à¦·à¦£ à¦•à¦®à§‡ à¦¯à¦¾à¦¯à¦¼à¥¤ à¦®à¦¾à¦¨à§à¦·à¦‡ à¦à¦•à¦‡à¥¤ à¦•à¦¾à¦°à§‹ à¦¸à¦®à§à¦ªà¦°à§à¦•à§‡ à¦¯à¦¤ à¦•à¦® à¦œà¦¾à¦¨à¦¾ à¦¯à¦¾à¦¯à¦¼, à¦¸à§‡ à¦¤à¦¤ à¦­à¦¾à¦² à¦®à¦¾à¦¨à§à¦·à¥¤\r\n\r\n\'\'à¦¹à§à¦®à¦¾à¦¯à¦¼à§‚à¦¨ à¦†à¦¹à¦®à§‡à¦¦\'\'', '2023-03-03 14:23:10', 'Admin', '147'),
(89, '', '', 'à¦†à¦®à¦°à¦¾ à¦¯à¦¦à¦¿ à¦°à¦¾à¦œà¦•à§€à§Ÿ à¦•à¦¾à¦œà¦•à¦°à§à¦®à§‡ à¦ªà§à¦°à¦¬à§‡à¦¶ à¦•à¦°à¦¿à¦¤à§‡ à¦¨à¦¾ à¦ªà¦¾à¦°à¦¿, à¦¤à¦¬à§‡ à¦•à§ƒà¦·à¦¿à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦ªà§à¦°à¦¬à§‡à¦¶ à¦•à¦°à¦¿à¦¬à¥¤ à¦­à¦¾à¦°à¦¤à§‡ à¦¬à¦° à¦¦à§à¦°à§à¦²à¦­ à¦¹à¦‡à§Ÿà¦¾à¦›à§‡ à¦¬à¦²à¦¿à§Ÿà¦¾ à¦•à¦¨à§à¦¯à¦¾à¦¦à¦¾à§Ÿà§‡ à¦•à¦¾à¦à¦¦à¦¿à§Ÿà¦¾ à¦®à¦°à¦¿ à¦•à§‡à¦¨? à¦•à¦¨à§à¦¯à¦¾à¦—à§à¦²à¦¿à¦•à§‡ à¦¸à§à¦¶à¦¿à¦•à§à¦·à¦¿à¦¤ à¦•à¦°à¦¿à§Ÿà¦¾ à¦•à¦¾à¦°à§à¦œà¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦›à¦¾à§œà¦¿à§Ÿà¦¾ à¦¦à¦¾à¦“, à¦¨à¦¿à¦œà§‡à¦° à¦…à¦¨à§à¦¨à¦¬à¦¸à§à¦¤à§à¦° à¦‰à¦ªà¦¾à¦°à§à¦œà¦¨ à¦•à¦°à§à¦•à¥¤\r\n', '2023-03-03 14:23:12', 'Admin', '150'),
(90, '', '', 'à¦®à§à¦¸à¦²à¦®à¦¾à¦¨ à¦®à¦¤à§‡ à¦†à¦®à¦°à¦¾ à¦ªà§à¦°à§à¦·à§‡à¦° à¦…à¦°à§à¦§à§‡à¦•à¥¤ à¦…à¦°à§à¦¥à¦¾à§Ž à¦¦à§à¦‡à¦œà¦¨ à¦¨à¦¾à¦°à§€ à¦à¦•à¦œà¦¨ à¦ªà§à¦°à§à¦·à§‡à¦° à¦¸à¦®à¦¤à§à¦²à§à¦¯à¥¤ à¦…à¦¥à¦¬à¦¾ à¦¦à§à¦‡à¦Ÿà¦¿ à¦­à§à¦°à¦¾à¦¤à¦¾ à¦“ à¦à¦•à¦œà¦¨ à¦­à¦—à¦¿à¦¨à§€ à¦à¦•à¦¤à§à¦° à¦¹à¦‡à¦²à§‡ à¦†à¦®à¦°à¦¾ à¦†à§œà¦¾à¦‡ à¦œà¦¨ à¦¹à¦‡à¥¤', '2023-03-03 14:23:51', 'Admin', '150'),
(91, '', '', 'à¦¶à¦¿à¦¶à§à¦•à§‡ à¦®à¦¾à¦¤à¦¾ à¦¬à¦²à¦ªà§à¦°à§à¦¬à¦• à¦˜à§à¦® à¦ªà¦¾à§œà¦¾à¦‡à¦¤à§‡ à¦¬à¦¸à¦¿à¦²à§‡ à¦˜à§à¦® à¦¨à¦¾ à¦ªà¦¾à¦“à§Ÿà¦¾à§Ÿ à¦¶à¦¿à¦¶à§ à¦¯à¦–à¦¨ à¦®à¦¾à¦¥à¦¾ à¦¤à§à¦²à¦¿à§Ÿà¦¾ à¦‡à¦¤à¦¸à§à¦¤à¦¤à¦ƒ à¦¦à§‡à¦–à§‡ à¦¤à¦–à¦¨à¦‡ à¦®à¦¾à¦¤à¦¾ à¦¬à¦²à§‡à¦¨, à¦˜à§à¦®à¦¾ à¦¶à¦¿à¦—à¦—à¦¿à¦°à¦‡ à¦˜à§à¦®à¦¾! à¦ à¦¦à§‡à¦– à¦œà§à¦œà§! à¦˜à§à¦® à¦¨à¦¾ à¦ªà¦¾à¦‡à¦²à§‡à¦“ à¦¶à¦¿à¦¶à§ à¦…à¦¨à§à¦¤à¦¤ à¦šà§‹à¦– à¦¬à§à¦œà¦¿à§Ÿà¦¾ à¦ªà§œà¦¿à§Ÿà¦¾ à¦¥à¦¾à¦•à§‡à¥¤ à¦¸à§‡à¦‡ à¦°à§‚à¦ª à¦†à¦®à¦°à¦¾ à¦¯à¦–à¦¨ à¦‰à¦¨à§à¦¨à¦¤ à¦®à¦¸à§à¦¤à¦•à§‡ à¦…à¦¤à§€à¦¤ à¦“ à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨à§‡à¦° à¦ªà§à¦°à¦¤à¦¿ à¦¦à§ƒà¦·à§à¦Ÿà¦¿à¦ªà¦¾à¦¤ à¦•à¦°à¦¿, ', '2023-03-03 14:24:08', 'Admin', '150'),
(92, '', '', 'à¦ªà§ƒà¦¥à¦¿à¦¬à§€à¦¤à§‡ à¦•à¦¿à¦›à§ à¦•à¦¿à¦›à§ à¦®à¦¾à¦¨à§à¦· à¦¸à¦®à§à¦­à¦¬à¦¤ à¦•à¦·à§à¦Ÿ à¦ªà¦¾à¦¬à¦¾à¦° à¦œà¦¨à§à¦¯à¦‡ à¦œà¦¨à§à¦®à¦¾à¦¯à¦¼à¥¤ à¦Ÿà¦¾à¦•à¦¾ à¦ªà¦¯à¦¼à¦¸à¦¾à¦° à¦•à¦·à§à¦Ÿ à¦¨à¦¯à¦¼, à¦®à¦¾à¦¨à¦¸à¦¿à¦• à¦•à¦·à§à¦Ÿà¥¤\r\n\r\n\'\'à¦¹à§à¦®à¦¾à¦¯à¦¼à§‚à¦¨ à¦†à¦¹à¦®à§‡à¦¦\'\'', '2023-03-03 14:24:43', 'Admin', '147'),
(93, '', '', 'à¦†à¦®à¦°à¦¾ à¦ªà§à¦°à§à¦·à§‡à¦° à¦¨à§à¦¯à¦¾à§Ÿ à¦¸à¦¾à¦®à§à¦¯à¦• à¦¸à§à¦¬à¦¿à¦§à¦¾ à¦¨à¦¾ à¦ªà¦¾à¦‡à§Ÿà¦¾ à¦ªà¦¶à§à¦šà¦¾à¦¤à§‡ à¦ªà§œà¦¿à§Ÿà¦¾ à¦†à¦›à¦¿à¥¤', '2023-03-03 14:27:30', 'Admin', '150'),
(94, '', '', 'à¦¨à¦¾ à¦œà¦¾à¦—à¦¿à¦²à§‡ à¦­à¦¾à¦°à¦¤ à¦²à¦²à¦¨à¦¾, à¦ à¦­à¦¾à¦°à¦¤ à¦†à¦° à¦œà¦¾à¦—à¦¿à¦¬à§‡ à¦¨à¦¾à¥¤', '2023-03-03 14:27:56', 'Admin', '150'),
(95, '', '', ' à¦†à¦®à¦°à¦¾ à¦ªà§à¦°à§à¦·à§‡à¦° à¦¨à§à¦¯à¦¾à§Ÿ à¦¸à¦¾à¦®à§à¦¯à¦• à¦¸à§à¦¬à¦¿à¦§à¦¾ à¦¨à¦¾ à¦ªà¦¾à¦‡à§Ÿà¦¾ à¦ªà¦¶à§à¦šà¦¾à¦¤à§‡ à¦ªà§œà¦¿à§Ÿà¦¾ à¦†à¦›à¦¿à¥¤\r\n\r\n', '2023-03-03 14:34:56', 'Admin', '150'),
(96, '', '', ' à¦†à¦®à¦°à¦¾ à¦ªà§à¦°à§à¦·à§‡à¦° à¦¨à§à¦¯à¦¾à§Ÿ à¦¸à¦¾à¦®à§à¦¯à¦• à¦¸à§à¦¬à¦¿à¦§à¦¾ à¦¨à¦¾ à¦ªà¦¾à¦‡à§Ÿà¦¾ à¦ªà¦¶à§à¦šà¦¾à¦¤à§‡ à¦ªà§œà¦¿à§Ÿà¦¾ à¦†à¦›à¦¿à¥¤\r\n\r\n', '2023-03-03 14:35:12', 'Admin', '150'),
(97, '', '', 'à¦®à§‡à§Ÿà§‡à¦¦à§‡à¦° à¦à¦®à¦¨ à¦¶à¦¿à¦•à§à¦·à¦¾à§Ÿ à¦¶à¦¿à¦•à§à¦·à¦¿à¦¤ à¦•à¦°à¦¿à§Ÿà¦¾ à¦¤à§à¦²à¦¿à¦¤à§‡ à¦¹à¦‡à¦¬à§‡, à¦¯à¦¾à¦¹à¦¾à¦¤à§‡ à¦¤à¦¾à¦¹à¦¾à¦°à¦¾ à¦­à¦¬à¦¿à¦·à§à¦¯à§Ž à¦œà§€à¦¬à¦¨à§‡ à¦†à¦¦à¦°à§à¦¶ à¦—à§ƒà¦¹à¦¿à¦£à§€, à¦†à¦¦à¦°à§à¦¶ à¦œà¦¨à¦¨à§€ à¦à¦¬à¦‚ à¦†à¦¦à¦°à§à¦¶ à¦¨à¦¾à¦°à§€à¦°à§‚à¦ªà§‡ à¦ªà¦°à¦¿à¦šà¦¿à¦¤ à¦¹à¦‡à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¥¤\r\n\r\n', '2023-03-03 14:37:25', 'Admin', '150'),
(98, '', '', 'â€œ à¦¤à¦°à§€ à¦¤à¦¾à¦° à¦à¦¸à§‡à¦›à§‡ à¦•à¦¿? à¦¬à§‡à¦œà§‡à¦›à§‡ à¦•à¦¿ à¦†à¦—à¦®à¦¨à§€ à¦—à¦¾à¦¨?\r\nà¦¡à§‡à¦•à§‡à¦›à§‡ à¦•à¦¿ à¦¸à§‡ à¦†à¦®à¦¾à¦°à§‡? -à¦¶à§à¦¨à¦¿ à¦¨à¦¾à¦‡,à¦°à¦¾à¦–à¦¿à¦¨à¦¿ à¦¸à¦¨à§à¦§à¦¾à¦¨ â€', '2023-03-03 14:47:13', 'Admin', '148'),
(99, '', '', 'â€œ à¦¹à§‡ à¦•à¦¬à¦¿! à¦¨à§€à¦°à¦¬ à¦•à§‡à¦¨-à¦«à¦¾à¦²à§à¦—à§à¦¨ à¦¯à§‡ à¦à¦¸à§‡à¦›à§‡ à¦§à¦°à¦¾à¦¯à¦¼,\r\nà¦¬à¦¸à¦¨à§à¦¤à§‡ à¦¬à¦°à¦¿à¦¯à¦¼à¦¾ à¦¤à§à¦®à¦¿ à¦²à¦¬à§‡ à¦¨à¦¾ à¦•à¦¿ à¦¤à¦¬ à¦¬à¦¨à§à¦¦à¦¨à¦¾à¦¯à¦¼? â€', '2023-03-03 14:48:08', 'Admin', '148'),
(100, '', '', 'â€œ à¦à¦–à¦¨à§‹ à¦¦à§‡à¦–à¦¨à¦¿ à¦¤à§à¦®à¦¿?â€ à¦•à¦¹à¦¿à¦²à¦¾à¦® â€œà¦•à§‡à¦¨ à¦•à¦¬à¦¿ à¦†à¦œ\r\nà¦à¦®à¦¨ à¦‰à¦¨à§à¦®à¦¨à¦¾ à¦¤à§à¦®à¦¿? à¦•à§‹à¦¥à¦¾ à¦¤à¦¬ à¦¨à¦¬ à¦ªà§à¦·à§à¦ªà¦¸à¦¾à¦œ? â€', '2023-03-03 14:48:44', 'Admin', '148'),
(101, '', '', '\r\nâ€œ à¦•à¦¹à¦¿à¦²à¦¾à¦® â€œà¦“à¦—à§‹ à¦•à¦¬à¦¿, à¦…à¦­à¦¿à¦®à¦¾à¦¨ à¦•à¦°à§‡à¦› à¦•à¦¿ à¦¤à¦¾à¦‡?\r\nà¦¯à¦¦à¦¿à¦“ à¦à¦¸à§‡à¦›à§‡ à¦¤à¦¬à§ à¦¤à§à¦®à¦¿ à¦¤à¦¾à¦°à§‡ à¦•à¦°à¦¿à¦²à§‡ à¦¬à§ƒà¦¥à¦¾à¦‡à¥¤â€', '2023-03-03 14:50:59', 'Admin', '148'),
(103, '', '', 'à¦•à¦¹à¦¿à¦² à¦¸à§‡ à¦®à§ƒà¦¦à§ à¦®à¦§à§à¦¸à§à¦¬à¦°à§‡-\r\nâ€œà¦¨à¦¾à¦‡ à¦¹â€™à¦², à¦¨à¦¾ à¦¹à§‹à¦• à¦à¦¬à¦¾à¦°à§‡-\r\nà¦†à¦®à¦¾à¦° à¦—à¦¾à¦¹à¦¿à¦¤à§‡ à¦—à¦¾à¦¨! à¦¬à¦¸à¦¨à§à¦¤à¦°à§‡ à¦†à¦¨à¦¿à¦¤à§‡ à¦§à¦°à¦¿à¦¯à¦¼à¦¾-\r\nà¦°à¦¹à§‡à¦¨à¦¿,à¦¸à§‡ à¦­à§à¦²à§‡à¦¨à¦¿ à¦¤à§‹, à¦à¦¸à§‡à¦›à§‡ à¦¤à§‹ à¦«à¦¾à¦²à§à¦—à§à¦¨ à¦¸à§à¦®à¦°à¦¿à¦¯à¦¼à¦¾ â€', '2023-03-03 14:52:21', 'Admin', '148'),
(104, '', '', 'â€œà¦¤à¦¬à§ à¦¬à¦¸à¦¨à§à¦¤à§‡à¦° à¦ªà§à¦°à¦¤à¦¿ à¦•à§‡à¦¨ à¦à¦‡ à¦¤à¦¬ à¦¤à§€à¦¬à§à¦° à¦¬à¦¿à¦®à§à¦–à¦¤à¦¾ ?â€ à¦•à¦¹à¦¿à¦²à¦¾à¦®\r\nâ€œà¦‰à¦ªà§‡à¦•à§à¦·à¦¾à§Ÿ à¦‹à¦¤à§à¦°à¦¾à¦œà§‡ à¦•à§‡à¦¨ à¦•à¦¬à¦¿ à¦¦à¦¾à¦“ à¦¤à§à¦®à¦¿ à¦¬à§à¦¯à¦¥à¦¾?â€', '2023-03-03 14:52:53', 'Admin', '148'),
(105, '', '', 'à¦•à¦–à¦¨à§‹ à¦•à¦–à¦¨à§‹ à¦¤à§‹à¦®à¦¾à¦° à¦®à§à¦–à¦Ÿà¦¾ à¦¬à¦¨à§à¦§ à¦°à¦¾à¦–à¦¤à§‡ à¦¹à¦¬à§‡à¥¤ à¦—à¦°à§à¦¬à¦¿à¦¤ à¦®à¦¾à¦¥à¦¾à¦Ÿà¦¾ à¦¨à¦¤ à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡ à¦à¦¬à¦‚ à¦¸à§à¦¬à§€à¦•à¦¾à¦° à¦•à¦°à§‡ à¦¨à¦¿à¦¤à§‡ à¦¹à¦¬à§‡ à¦¯à§‡ à¦¤à§à¦®à¦¿ à¦­à§à¦²à¥¤ à¦à¦° à¦…à¦°à§à¦¥ à¦¤à§à¦®à¦¿ à¦ªà¦°à¦¾à¦œà¦¿à¦¤ à¦¨à¦¾à¦“, à¦à¦° à¦…à¦°à§à¦¥ à¦¤à§à¦®à¦¿ à¦ªà¦°à¦¿à¦£à¦¤ à¦à¦¬à¦‚ à¦¶à§‡à¦· à¦¬à§‡à¦²à¦¾à¦¯à¦¼ à¦œà¦¯à¦¼à§‡à¦° à¦¹à¦¾à¦¸à¦¿à¦Ÿà¦¾ à¦¹à¦¾à¦¸à¦¾à¦° à¦¨à§à¦¯ à¦¤à§à¦¯à¦¾à¦— à¦¸à§à¦¬à§€à¦•à¦¾à¦°à§‡ à¦¦à§ƒà¦¢à¦¼ à¦ªà§à¦°à¦¤à¦¿à¦œà§à¦žà¥¤\r\n\r\n\'\'à¦¹à§à¦®à¦¾à¦¯à¦¼à§‚à¦¨ à¦†à¦¹à¦®à§‡à¦¦\'\'', '2023-03-03 14:53:07', 'Admin', '147'),
(106, '', '', 'â€œà¦œà¦¨à§à¦®à§‡à¦›à¦¿ à¦®à¦¾à¦—à§‹ à¦¤à§‹à¦®à¦¾à¦° à¦•à§‹à¦²à§‡à¦¤à§‡ à¦®à¦°à¦¿ à¦¯à§‡à¦¨ à¦à¦‡ à¦¦à§‡à¦¶à§‡à¥¤â€', '2023-03-03 14:53:49', 'Admin', '148'),
(107, '', '', 'â€œ à¦•à¦¹à¦¿à¦² à¦¸à§‡ à¦¸à§à¦¨à¦¿à¦—à§à¦§ à¦†à¦à¦–à¦¿ à¦¤à§à¦²à¦¿-\r\nà¦¦à¦–à¦¿à¦¨ à¦¦à§à¦¯à¦¼à¦¾à¦° à¦—à§‡à¦›à§‡ à¦–à§à¦²à¦¿?\r\nà¦¬à¦¾à¦¤à¦¾à¦¬à§€ à¦¨à§‡à¦¬à§à¦° à¦«à§à¦² à¦«à§à¦Ÿà§‡à¦›à§‡ à¦•à¦¿? à¦«à§à¦Ÿà§‡à¦›à§‡ à¦•à¦¿ à¦†à¦®à§‡à¦° à¦®à§à¦•à§à¦²?\r\nà¦¦à¦–à¦¿à¦¨à¦¾ à¦¸à¦®à§€à¦° à¦¤à¦¾à¦° à¦—à¦¨à§à¦§à§‡ à¦—à¦¨à§à¦§à§‡ à¦¹à¦¯à¦¼à§‡à¦›à§‡ à¦•à¦¿ à¦…à¦§à§€à¦° à¦†à¦•à§à¦²? â€', '2023-03-03 14:54:15', 'Admin', '148'),
(108, '', '', 'â€œ à¦à¦–à¦¨à§‹ à¦¦à§‡à¦–à¦¨à¦¿ à¦¤à§à¦®à¦¿?â€ à¦•à¦¹à¦¿à¦²à¦¾à¦® â€œà¦•à§‡à¦¨ à¦•à¦¬à¦¿ à¦†à¦œ\r\nà¦à¦®à¦¨ à¦‰à¦¨à§à¦®à¦¨à¦¾ à¦¤à§à¦®à¦¿? à¦•à§‹à¦¥à¦¾ à¦¤à¦¬ à¦¨à¦¬ à¦ªà§à¦·à§à¦ªà¦¸à¦¾à¦œ? â€', '2023-03-03 14:56:06', 'Admin', '148'),
(109, '', '', 'â€œ à¦•à¦¹à¦¿à¦²à¦¾à¦® â€œà¦“à¦—à§‹ à¦•à¦¬à¦¿, à¦…à¦­à¦¿à¦®à¦¾à¦¨ à¦•à¦°à§‡à¦› à¦•à¦¿ à¦¤à¦¾à¦‡?\r\nà¦¯à¦¦à¦¿à¦“ à¦à¦¸à§‡à¦›à§‡ à¦¤à¦¬à§ à¦¤à§à¦®à¦¿ à¦¤à¦¾à¦°à§‡ à¦•à¦°à¦¿à¦²à§‡ à¦¬à§ƒà¦¥à¦¾à¦‡à¥¤â€\r\nà¦•à¦¹à¦¿à¦² à¦¸à§‡ à¦ªà¦°à¦® à¦¹à§‡à¦²à¦¾à¦¯à¦¼-\r\nâ€œà¦¬à§ƒà¦¥à¦¾ à¦•à§‡à¦¨? à¦«à¦¾à¦—à§à¦¨ à¦¬à§‡à¦²à¦¾à¦¯à¦¼\r\nà¦«à§à¦² à¦•à¦¿ à¦«à§‹à¦Ÿà§‡ à¦¨à¦¿ à¦¶à¦¾à¦–à§‡? à¦ªà§à¦·à§à¦ªà¦¾à¦°à¦¤à¦¿ à¦²à¦­à§‡à¦¨à¦¿ à¦•à¦¿ à¦‹à¦¤à§à¦° à¦°à¦¾à¦œà¦¨?\r\nà¦®à¦¾à¦§à¦¬à§€ à¦•à§à¦à¦¡à¦¼à¦¿à¦° à¦¬à§à¦•à§‡ à¦—à¦¨à§à¦§ à¦¨à¦¾à¦¹à¦¿? à¦•à¦°à§‡ à¦¨à¦¿ à¦¸à§‡ à¦…à¦°à§à¦˜à§à¦¯ à¦¬à¦¿à¦°à¦šà¦¨? â€', '2023-03-03 14:56:42', 'Admin', '148'),
(111, '', '', 'à¦…à¦®à§à¦²à§€à¦² à¦®à¦¾à¦¨à§à¦·à§‡à¦° à¦¶à¦°à§€à¦°à§‡à¦° à¦•à§‹à¦¨à§‹ à¦œà¦¿à¦¨à¦¿à¦¸à¦‡ à¦¨à¦¾à§· à¦“à¦Ÿà¦¾ à¦•à§€à¦­à¦¾à¦¬à§‡ à¦¬à§à¦¯à¦¬à¦¹à§ƒà¦¤ à¦¹à¦¬à§‡ à¦¸à§‡à¦Ÿà¦¾ à¦¹à¦²à§‹ à¦…à¦¶à§à¦²à§€à¦²à¥¤', '2023-03-03 15:02:22', 'Admin', '144'),
(112, '', '', 'à¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾ à¦¤à§à¦®à¦¿\r\nà¦°à§‹à¦¦à§‡à¦²à¦¾ à¦¦à§à¦ªà§à¦°à§‡ à¦®à¦§à§à¦¯à¦ªà§à¦•à§à¦°à§‡ à¦—à§à¦°à¦¾à¦®à§à¦¯ à¦®à§‡à¦¯à¦¼à§‡à¦° à¦…à¦¬à¦¾à¦§ à¦¸à¦¾à¦à¦¤à¦¾à¦°à¥¤\r\nà¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾ à¦¤à§à¦®à¦¿\r\nà¦®à¦œà§à¦° à¦¯à§à¦¬à¦¾à¦° à¦°à§‹à¦¦à§‡ à¦à¦²à¦¸à¦¿à¦¤ à¦¦à¦•à§à¦· à¦¬à¦¾à¦¹à§à¦° à¦—à§à¦°à¦¨à§à¦¥à¦¿à¦² à¦ªà§‡à¦¶à§€à¥¤\r\nà¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾ à¦¤à§à¦®à¦¿\r\nà¦…à¦¨à§à¦§à¦•à¦¾à¦°à§‡à¦° à¦–à¦¾à¦ à¦–à¦¾à¦ à¦¸à§€à¦®à¦¾à¦¨à§à¦¤à§‡ à¦®à§à¦•à§à¦¤à¦¿à¦¸à§‡à¦¨à¦¾à¦° à¦šà§‹à¦–à§‡à¦° à¦à¦¿à¦²à¦¿à¦•à¥¤\r\nà¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾ à¦¤à§à¦®à¦¿\r\nà¦¬à¦Ÿà§‡à¦° à¦›à¦¾à¦¯à¦¼à¦¾à¦¯à¦¼ à¦¤à¦°à§à¦£ à¦®à§‡à¦§à¦¾à¦¬à§€ à¦¶à¦¿à¦•à§à¦·à¦¾à¦°à§à¦¥à§€à¦° ', '2023-03-03 15:02:48', 'Admin', '144'),
(113, '', '', 'à¦†à¦®à¦¾à¦¦à§‡à¦° à¦¦à§à¦°à§à¦¬à¦²à¦¤à¦¾, à¦­à§€à¦°à§à¦¤à¦¾ à¦•à¦²à§à¦· à¦†à¦° à¦²à¦œà§à¦œà¦¾ à¦¸à¦®à¦¸à§à¦¤ à¦¦à¦¿à¦¯à¦¼à§‡à¦›à§‡ à¦¢à§‡à¦•à§‡ à¦à¦•à¦–à¦£à§à¦¡ à¦¬à¦¸à§à¦¤à§à¦° à¦®à¦¾à¦¨à¦¬à¦¿à¦• ;\r\nà¦†à¦¸à¦¾à¦¦à§‡à¦° à¦¶à¦¾à¦°à§à¦Ÿ à¦†à¦œ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦ªà§à¦°à¦¾à¦£à§‡à¦° à¦ªà¦¤à¦¾à¦•à¦¾à¥¤', '2023-03-03 15:03:32', 'Admin', '144'),
(114, '', '', 'à¦¤à¦¾à¦°à¦¾à§Ÿ à¦¤à¦¾à¦°à¦¾à§Ÿ à¦°à¦Ÿà¦¿à§Ÿà§‡ à¦¦à§‡à¦¬à§‹, â€˜à¦†à¦®à¦¿ à¦¤à§‹à¦®à¦¾à¦°, à¦¤à¦®à¦¿ à¦†à¦®à¦¾à¦°â€™à¥¤', '2023-03-03 15:04:02', 'Admin', '144'),
(115, '', '', 'à¦†à¦®à¦¿ à¦¯à¦¾à¦šà§à¦›à¦¿ à¦šà¦²à§‡,\r\n           à¦•à§‹à¦¨à§‹ à¦¦à¦¿à¦¨ à¦¹à¦¯à¦¼à¦¤à§‹ à¦†à¦° à¦†à¦¸à¦¬à§‹ à¦¨à¦¾à¥¤\r\nà¦¤à¦¬à§‡ à¦¯à§‡à¦Ÿà§à¦•à§ à¦¨à¦¿à¦¯à¦¼à§‡ à¦—à§‡à¦²à¦¾à¦®,\r\n            à¦¤à¦¾à¦° à¦ªà§à¦°à¦¤à¦¿à¦¦à¦¾à¦¨ à¦†à¦®à¦¿ à¦¦à¦¿à¦¤à§‡ à¦ªà¦¾à¦°à¦¬à§‹ à¦¨à¦¾à¥¤', '2023-03-03 15:05:07', 'Admin', '144'),
(116, '', '', 'à¦¯à¦¾à¦°à¦¾ à¦—à¦£à¦¹à¦¤à§à¦¯à¦¾ à¦•à¦°à§‡à¦›à§‡ à¦¶à¦¹à¦°à§‡ à¦—à§à¦°à¦¾à¦®à§‡ à¦Ÿà¦¿à¦²à¦¾à¦¯à¦¼ à¦¨à¦¦à§€à¦¤à§‡ à¦•à§à¦·à§‡à¦¤ à¦“ à¦–à¦¾à¦®à¦¾à¦°à§‡\r\nà¦†à¦®à¦¿ à¦…à¦­à¦¿à¦¶à¦¾à¦ª à¦¦à¦¿à¦šà§à¦›à¦¿ à¦¨à§‡à¦•à¦¡à¦¼à§‡à¦° à¦šà§‡à¦¯à¦¼à§‡à¦“ à¦…à¦§à¦¿à¦• à¦ªà¦¶à§ à¦¸à§‡à¦‡ à¦¸à¦¬ à¦ªà¦¶à§à¦¦à§‡à¦°à¥¤', '2023-03-03 15:05:40', 'Admin', '144'),
(117, '', '', 'à¦¯à§à¦¦à§à¦§à§‡à¦° à¦¬à¦¿à¦ªà¦•à§à¦·à§‡ à¦†à¦®à¦¿, à¦†à¦œà§€à¦¬à¦¨ à¦¶à¦¾à¦¨à§à¦¤à¦¿à¦ªà§à¦°à¦¿à§Ÿ |\r\nà¦†à¦œà¦¨à§à¦® à¦¯à§à¦¦à§à¦§à¦•à§‡ à¦•à¦°à¦¿ à¦˜à§ƒà¦£à¦¾ |', '2023-03-03 15:06:12', 'Admin', '144'),
(118, '', '', 'à¦œà§€à¦°à§à¦£ à¦¦à§‡à§Ÿà¦¾à¦²à§‡à¦° à¦•à¦¾à¦¨à§‡ à¦¬à¦²à¦¿ ;\r\nà¦¦à§‡à§Ÿà¦¾à¦² à¦†à¦®à¦¾à¦•à§‡ à¦¤à§à¦®à¦¿ à¦à¦•à¦Ÿà¦¿ à¦•à¦¬à¦¿à¦¤à¦¾ à¦¦à¦¿à¦¤à§‡ à¦ªà¦¾à¦°à§‹ ?\r\nà¦ªà§à¦°à§‹à¦¨à§‹ à¦¦à§‡à§Ÿà¦¾à¦² à¦¬à¦²à§‡ à¦¶à§à¦¯à¦¾à¦“à¦²à¦¾-à¦¢à¦¾à¦•à¦¾ à¦¸à§à¦¬à¦°à§‡,\r\nà¦à¦‡ à¦‡à¦à¦Ÿ à¦¸à§à¦°à¦•à¦¿à¦° à¦­à§‡à¦¤à¦° à¦¯à¦¦à¦¿ à¦¨à¦¿à¦œà§‡à¦•à§‡ à¦—à§à¦à¦¡à¦¼à¦¿à§Ÿà§‡ à¦¦à¦¾à¦“, à¦¤à¦¬à§‡\r\nà¦¹à§Ÿà¦¤à§‹ à¦¬à¦¾ à¦ªà§‡à§Ÿà§‡ à¦¯à¦¾à¦¬à§‡ à¦à¦•à¦Ÿà¦¿ à¦•à¦¬à¦¿à¦¤à¦¾ !', '2023-03-03 15:06:39', 'Admin', '144'),
(119, '', '', 'à¦•à¦–à¦¨à§‹ à¦†à¦®à¦¾à¦° à¦®à¦¾à¦•à§‡ à¦•à§‹à¦¨à§‹ à¦—à¦¾à¦¨ à¦—à¦¾à¦‡à¦¤à§‡ à¦¶à§à¦¨à¦¿à¦¨à¦¿à¥¤\r\nà¦¸à§‡à¦‡ à¦•à¦¬à§‡ à¦¶à¦¿à¦¶à§ à¦°à¦¾à¦¤à§‡ à¦˜à§à¦® à¦ªà¦¾à§œà¦¾à¦¨à¦¿à§Ÿà¦¾ à¦—à¦¾à¦¨ à¦—à§‡à§Ÿà§‡\r\nà¦†à¦®à¦¾à¦•à§‡ à¦•à¦–à¦¨à§‹ à¦˜à§à¦® à¦ªà¦¾à§œà¦¾à¦¤à§‡à¦¨ à¦•à¦¿ à¦¨à¦¾ à¦†à¦œ à¦®à¦¨à§‡à¦‡ à¦ªà§œà§‡ à¦¨à¦¾à¥¤', '2023-03-03 15:07:16', 'Admin', '144'),
(120, '', '', 'à¦¯à¦–à¦¨ à¦•à§ƒà¦·à¦• à¦•à¦¾à¦¸à§à¦¤à§‡ à¦¹à¦¾à¦¤à§‡\r\nà¦«à¦¸à¦²à§‡à¦° à¦¯à§Œà¦¬à¦¨à§‡à¦° à¦‰à¦¦à§à¦­à¦¿à¦¨à§à¦¨ à¦‰à¦²à§à¦²à¦¾à¦¸ à¦¦à§‡à¦–à§‡ à¦®à¦¾à¦¤à§‡,\r\nà¦¤à¦–à¦¨ à¦®à¦¹à¦¾à¦¨ à¦¸à§‡à¦‡ à¦ªà§à¦°à§à¦·à§‡à¦° à¦¬à¦¿à¦ªà§à¦² à¦†à¦¨à¦¨à§à¦¦à¦§à§à¦¬à¦¨à¦¿ à¦à¦°à§‡\r\nà¦«à¦¸à¦²à§‡à¦° à¦®à¦¾à¦ à§‡à¥¤', '2023-03-03 15:07:55', 'Admin', '144'),
(121, '', '', 'à¦†à¦®à¦¾à¦•à§‡ à¦²à§à¦•à¦¿à§Ÿà§‡ à¦«à§‡à¦²à§‹ à¦šà§‹à¦–à§‡à¦° à¦ªà¦¾à¦¤à¦¾à§Ÿ\r\nà¦¬à§à¦•à§‡à¦° à¦…à¦¤à¦²à§‡ à¦•à¦¿à¦‚à¦¬à¦¾ à¦à¦•à¦¾à¦¨à§à¦¤ à¦ªà¦¾à¦à¦œà¦°à§‡\r\nà¦†à¦®à¦¾à¦•à§‡ à¦¨à¦¿à¦®à§‡à¦·à§‡ à¦¶à§à¦·à§‡ à¦¨à¦¾à¦“\r\nà¦šà§à¦®à§à¦¬à¦¨à§‡ à¦šà§à¦®à§à¦¬à¦¨à§‡à¥¤', '2023-03-03 15:08:31', 'Admin', '144'),
(122, '', '', 'à¦¤à§‹à¦®à¦¾à¦•à§‡ à¦ªà¦¾à¦“à§Ÿà¦¾à¦° à¦œà¦¨à§à¦¯à§‡, à¦¹à§‡ à¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾,\r\nà¦¤à§‹à¦®à¦¾à¦•à§‡ à¦ªà¦¾à¦“à§Ÿà¦¾à¦° à¦œà¦¨à§à¦¯à§‡\r\nà¦†à¦° à¦•à¦¤à¦¬à¦¾à¦° à¦­à¦¾à¦¸à¦¤à§‡ à¦¹à¦¬à§‡ à¦°à¦•à§à¦¤à¦—à¦™à§à¦—à¦¾à§Ÿ ?\r\nà¦†à¦° à¦•à¦¤à¦¬à¦¾à¦° à¦¦à§‡à¦–à¦¤à§‡ à¦¹à¦¬à§‡ à¦–à¦¾à¦£à§à¦¡à¦¬à¦¦à¦¾à¦¹à¦¨ ?', '2023-03-03 15:10:01', 'Admin', '144'),
(123, '', '', 'à¦¤à§à¦®à¦¿ à¦†à¦¸à¦¬à§‡ à¦¬â€™à¦²à§‡, à¦¹à§‡ à¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾,\r\nà¦…à¦¬à§à¦ à¦¶à¦¿à¦¶à§ à¦¹à¦¾à¦®à¦¾à¦—à§à¦¡à¦¼à¦¿ à¦¦à¦¿à¦²à§‹ à¦ªà¦¿à¦¤à¦¾à¦®à¦¾à¦¤à¦¾à¦° à¦²à¦¾à¦¶à§‡à¦° à¦‰à¦ªà¦°à¥¤', '2023-03-03 15:11:13', 'Admin', '144'),
(124, '', '', 'à¦ªà§à¦°à¦¤à§à¦¯à¦¾à¦¶à¦¾à¦° à¦¬à¦¾à¦‡à¦°à§‡à¦‡ à¦›à¦¿à¦² à¦¬à§à¦¯à¦¾à¦ªà¦¾à¦°à¦Ÿà¦¿à¥¤ à¦°à§‹à¦œà¦•à¦¾à¦°\r\nà¦®à¦¤à§‹à¦‡ à¦Ÿà§‡à¦¬à¦¿à¦² à¦˜à§‡à¦à¦·à§‡ à¦ªà§à¦°à§‹à¦¨à§‹ à¦šà§‡à§Ÿà¦¾à¦°à§‡\r\nà¦†à¦°à¦¾à¦®à§‡ à¦›à¦¿à¦²à¦¾à¦® à¦¬à¦¸à§‡, à¦˜à§œà¦¿à¦¤à§‡ à¦¤à¦–à¦¨\r\nà¦†à¦®à¦¿ à¦•à¦¿ à¦¨à¦¾-à¦²à§‡à¦–à¦¾ à¦•à§‹à¦¨à¦“ à¦•à¦¬à¦¿à¦¤à¦¾à¦° à¦ªà¦™à§â€Œà¦•à§à¦¤à¦¿ à¦®à¦¨à§‡-à¦®à¦¨à§‡\r\nà¦¸à§ƒà¦œà¦¨à§‡ à¦›à¦¿à¦²à¦¾à¦® à¦®à¦—à§à¦¨? à¦à¦•à¦Ÿà¦¿ à¦•à¦¿ à¦¦à§à¦Ÿà¦¿ à¦¶à¦¬à§à¦¦ à¦¹à§Ÿà¦¤à§‹-à¦¬à¦¾ à¦­à§‡à¦¸à§‡\r\nà¦‰à¦ à¦›à¦¿à¦² à¦†à¦®à¦¾à¦° à¦®à¦¾à¦¨à¦¸-à¦¹à§à¦°à¦¦à§‡à¥¤ à¦†à¦šà¦®à¦•à¦¾\r\nà¦šà§‹à¦–à§‡ à¦ªà§œà§‡ à¦˜à¦°à§‡ à¦à¦•à¦Ÿà¦¿ à¦ªà§à¦°à¦œà¦¾à¦ªà¦¤à¦¿à¦° à¦šà¦ž', '2023-03-03 15:12:45', 'Admin', '144'),
(125, '', '', 'à¦ˆà¦°à§à¦·à¦¾à¦¤à§à¦° à¦¨à¦‡, à¦¤à¦¬à§ à¦†à¦®à¦¿\r\nà¦¤à§‹à¦®à¦¾à¦¦à§‡à¦° à¦†à¦œ à¦¬à¦¡à¦¼à§‹ à¦ˆà¦°à§à¦·à¦¾ à¦•à¦°à¦¿ | à¦¤à§‹à¦®à¦°à¦¾ à¦¸à§à¦¨à§à¦¦à¦°\r\nà¦œà¦¾à¦®à¦¾ à¦ªà¦°à§‹, à¦ªà¦¾à¦°à§à¦•à§‡à¦° à¦¬à§‡à¦žà§à¦šà¦¿à¦¤à§‡ à¦¬à¦¸à§‡ à¦†à¦²à¦¾à¦ª à¦œà¦®à¦¾à¦“,\r\nà¦•à¦–à¦¨à§‹ à¦¸à§‡à¦œà¦¨à§à¦¯ à¦¨à§Ÿ | à¦­à¦¾à¦²à§‹ à¦–à¦¾à¦“à¦¦à¦¾à¦“\r\nà¦«à§à¦°à§à¦¤à¦¿ à¦•à¦°à§‹ à¦¸à¦¬à¦¾à¦¨à§à¦§à¦¬, à¦¸à§‡à¦œà¦¨à§à¦¯à§‡à¦“ à¦¨à§Ÿà¥¤', '2023-03-03 15:13:40', 'Admin', '144'),
(126, '', '', 'à¦¬à¦¨à§à¦§à§à¦°à¦¾ à¦¤à§‹à¦®à¦°à¦¾ à¦¯à¦¾à¦°à¦¾ à¦•à¦¬à¦¿,\r\nà¦¸à§à¦¬à¦¾à¦§à§€à¦¨ à¦¦à§‡à¦¶à§‡à¦° à¦•à¦¬à¦¿, à¦¤à¦¾à¦¦à§‡à¦° à¦¸à§Œà¦­à¦¾à¦—à§à¦¯à§‡\r\nà¦†à¦®à¦¿ à¦¬à¦¡à¦¼à§‹ à¦ˆà¦°à§à¦·à¦¾à¦¨à§à¦¬à¦¿à¦¤ à¦†à¦œà¥¤', '2023-03-03 15:14:24', 'Admin', '144'),
(127, '', '', 'à¦¶à¦¹à¦°à§‡à¦° à¦†à¦¨à¦¾à¦šà§‡ à¦•à¦¾à¦¨à¦¾à¦šà§‡\r\nà¦ªà§à¦°à¦¤à¦¿à¦Ÿà¦¿ à¦°à¦¾à¦¸à§à¦¤à¦¾à§Ÿ\r\nà¦…à¦²à¦¿à¦¤à§‡ à¦—à¦²à¦¿à¦¤à§‡\r\nà¦°à¦™à¦¿à¦¨ à¦¸à¦¾à¦‡à¦¨à¦¬à§‹à¦°à§à¦¡à§‡, à¦ªà§à¦°à¦¤à§à¦¯à§‡à¦• à¦¬à¦¾à¦¡à¦¼à¦¿à¦¤à§‡\r\nà¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾ à¦¨à¦¾à¦®à¦• à¦¶à¦¬à§à¦¦à¦Ÿà¦¿\r\nà¦²à¦¿à¦–à§‡ à¦¦à¦¿à¦¤à§‡ à¦šà¦¾à¦‡\r\nà¦¬à¦¿à¦¶à¦¾à¦² à¦…à¦•à§à¦·à¦°à§‡\r\nà¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾ à¦¶à¦¬à§à¦¦ à¦à¦¤ à¦ªà§à¦°à¦¿à§Ÿ à¦¯à§‡ à¦†à¦®à¦¾à¦°\r\nà¦•à¦–à¦¨à§‹ à¦œà¦¾à¦¨à¦¿ à¦¨à¦¿ à¦†à¦—à§‡à¥¤', '2023-03-03 15:14:50', 'Admin', '144'),
(128, '', '', 'à¦•à¦¤à§‹ à¦¨à§‹à¦‚à¦°à¦¾ à¦¹à¦¾à¦¤à§‡à¦° à¦¹à¦¿à¦‚à¦¶à§à¦°à¦¤à¦¾ à¦§à§‡à§Ÿà§‡ à¦†à¦¸à§‡à¥¤\r\nà¦à¦–à¦¨ à¦¤à§‹à¦®à¦¾à¦•à§‡ à¦¨à¦¿à§Ÿà§‡ à¦–à§‡à¦™à¦°à¦¾à¦° à¦¨à§‹à¦‚à¦°à¦¾à¦®à¦¿,\r\nà¦à¦–à¦¨ à¦¤à§‹à¦®à¦¾à¦•à§‡ à¦˜à¦¿à¦°à§‡ à¦–à¦¿à¦¸à§à¦¤à¦¿-à¦–à§‡à¦‰à¦¡à¦¼à§‡à¦° à¦ªà§Œà¦·à¦®à¦¾à¦¸ !\r\nà¦¤à§‹à¦®à¦¾à¦° à¦®à§à¦–à§‡à¦° à¦¦à¦¿à¦•à§‡ à¦†à¦œ à¦†à¦° à¦¯à¦¾à§Ÿ à¦¨à¦¾ à¦¤à¦¾à¦•à¦¾à¦¨à§‹,\r\nà¦¬à¦°à§à¦£à¦®à¦¾à¦²à¦¾, à¦†à¦®à¦¾à¦° à¦¦à§à¦ƒà¦–à¦¿à¦¨à§€ à¦¬à¦°à§à¦£à¦®à¦¾à¦²à¦¾à¥¤', '2023-03-03 15:15:37', 'Admin', '144'),
(129, '', '', 'à¦®à¦¾à¦¸à§à¦Ÿà¦¾à¦°à¦¦à¦¾, à¦†à¦ªà¦¨à¦¿ à¦•à¦–à¦¨à§‹\r\nà¦¹à¦¾à¦¤à¦˜à§œà¦¿ à¦ªà¦°à¦¤à§‡à¦¨ à¦•à¦¿à¦¨à¦¾ à¦œà¦¾à¦¨à¦¿ à¦¨à¦¾; à¦œà¦¾à¦¨à¦¬à¦¾à¦°\r\nà¦ªà§à¦°à§Ÿà§‹à¦œà¦¨à¦“ à¦¨à§‡à¦‡ à¦¤à§‡à¦®à¦¨à¥¤ à¦…à¦®à¦°à¦¤à¦¾\r\nà¦œà§à¦¯à§‹à¦¤à¦¿à¦°à§à¦¬à¦²à§Ÿà§‡à¦° à¦®à¦¤à§‹ à¦°à¦¾à¦–à§€ à¦ªà¦°à¦¿à§Ÿà§‡ à¦¦à¦¿à§Ÿà§‡à¦›à§‡\r\nà¦†à¦ªà¦¨à¦¾à¦° à¦•à¦¬à§à¦œà¦¿à¦¤à§‡à¥¤', '2023-03-03 15:15:56', 'Admin', '144'),
(130, '', '', 'à¦«à§à¦°à§‡à¦®à§‡à¦° à¦­à§‡à¦¤à¦° à¦¥à§‡à¦•à§‡ à¦†à¦®à¦¾à¦° à¦¸à¦¨à§à¦¤à¦¾à¦¨\r\nà¦šà§‡à§Ÿà§‡ à¦¥à¦¾à¦•à§‡ à¦¨à¦¿à¦·à§à¦ªà¦²à¦•,à¦¤à¦¾à¦° à¦šà§‹à¦–à§‡ à¦¨à§‡à¦‡ à¦°à¦¾à¦— à¦•à¦¿à¦‚à¦¬à¦¾ à¦…à¦­à¦¿à¦®à¦¾à¦¨à¥¤', '2023-03-03 15:16:21', 'Admin', '144'),
(131, '', '', 'â€œà¦“à¦°à§‡ à¦¬à¦¾à¦›à¦¾, à¦®à¦¾à¦¤à§ƒà¦•à§‹à¦·à§‡ à¦°à¦¤à¦¨à§‡à¦° à¦°à¦¾à¦œà¦¿,à¦ à¦­à¦¿à¦–à¦¾à¦°à§€-à¦¦à¦¶à¦¾ à¦¤à¦¬à§‡ à¦•à§‡à¦¨ à¦¤à§‹à¦° à¦†à¦œà¦¿? à¦¯à¦¾ à¦«à¦¿à¦°à¦¿, à¦…à¦œà§à¦žà¦¾à¦¨ à¦¤à§à¦‡, à¦¯à¦¾ à¦°à§‡ à¦«à¦¿à¦°à¦¿ à¦˜à¦°à§‡!â€', '2023-03-07 09:59:02', 'Admin', '149'),
(132, '', '', 'à¦¬à¦¹à§ à¦¦à§‡à¦¶à§‡ à¦¦à§‡à¦–à¦¿à§Ÿà¦¾à¦›à¦¿ à¦¬à¦¹à§ à¦¨à¦¦ â€“ à¦¦à¦²à§‡,à¦•à¦¿à¦¨à§à¦¤à§ à¦ à¦¸à§à¦¨à§‡à¦¹à§‡à¦° à¦¤à§ƒà¦·à§à¦£à¦¾ à¦®à¦¿à¦Ÿà§‡ à¦•à¦¾à¦° à¦œà¦²à§‡?â€', '2023-03-07 09:59:35', 'Admin', '149'),
(133, '', '', 'â€œà¦¦à¦¿à¦¨ à¦¦à¦¿à¦¨ à¦†à§Ÿà§à¦¹à§€à¦¨, à¦¹à§€à¦¨à¦¬à¦² à¦¦à¦¿à¦¨ à¦¦à¦¿à¦¨à¥¤â€', '2023-03-07 09:59:55', 'Admin', '149'),
(134, '', '', 'â€œà¦ªà§à¦¤à¦™à§à¦— à¦¯à§‡ à¦°à¦™à§à¦—à§‡ à¦§à¦¾à§Ÿ à¦§à¦¾à¦‡à¦²à¦¿, à¦…à¦¦à§‹à¦§ à¦¹à¦¾à§Ÿ à¦¨à¦¾ à¦¦à§‡à¦–à¦²à¦¿ à¦¨à¦¾ à¦¶à§à¦¨à¦²à¦¿ à¦à¦¬à§‡ à¦°à§‡ à¦ªà§à¦°à¦¾à¦£ à¦•à¦¾à¦à¦¦à§‡à¥¤â€', '2023-03-07 10:00:13', 'Admin', '149'),
(135, '', '', 'â€œà¦—à¦¤à¦¿ à¦¯à¦¾à¦° à¦¨à§€à¦š à¦¸à¦¹ à¦¨à§€à¦š à¦¸à§‡ à¦¦à§à¦°à§à¦®à¦¤à¦¿à¥¤â€', '2023-03-07 10:00:37', 'Admin', '149'),
(136, '', '', 'â€œà¦œà¦®à§à¦®à¦¿à¦²à§‡ à¦®à¦°à¦¿à¦¤à§‡ à¦¹à¦¬à§‡ à¦…à¦®à¦° à¦•à§‡ à¦•à§‹à¦¥à¦¾ à¦•à¦¬à§‡? à¦šà¦¿à¦°à¦¸à§à¦¥à¦¿à¦° à¦•à¦¬à§‡ à¦¨à§€à¦° à¦¹à¦¾à§Ÿà¦°à§‡ à¦œà§€à¦¬à¦¨ à¦¨à¦¦à§‡? â€', '2023-03-07 10:01:05', 'Admin', '149'),
(137, '', '', 'â€œà¦ªà¦¾à¦²à¦¿à¦²à¦¾à¦® à¦†à¦œà§à¦žà¦¾ à¦¸à§à¦–à§‡; à¦ªà¦¾à¦‡à¦²à¦¾à¦® à¦•à¦¾à¦²à§‡à¦®à¦¾à¦¤à§ƒ-à¦­à¦¾à¦·à¦¾-à¦°à§‚à¦ªà§‡ à¦–à¦¨à¦¿, à¦ªà§‚à¦°à§à¦£ à¦®à¦£à¦¿à¦œà¦¾à¦²à§‡à¥¤â€', '2023-03-07 10:01:20', 'Admin', '149'),
(138, '', '', 'â€œà¦¨à¦¿à¦¶à¦¾à¦° à¦¸à§à¦¬à¦ªà¦¨-à¦¸à§à¦–à§‡ à¦¸à§à¦–à§€ à¦¯à§‡ à¦•à§€ à¦¸à§à¦– à¦¤à¦¾à¦°, à¦œà¦¾à¦—à§‡ à¦¸à§‡ à¦•à¦¾à¦¦à¦¿à¦¤à§‡à¥¤â€', '2023-03-07 10:02:00', 'Admin', '149'),
(139, '', '', 'â€œà¦¹à§‡ à¦¬à¦™à§à¦—, à¦­à¦¾à¦£à§à¦¡à¦¾à¦°à§‡ à¦¤à¦¬ à¦¬à¦¿à¦¬à¦¿à¦§ à¦°à¦¤à¦¨à¥¤â€', '2023-03-07 10:02:17', 'Admin', '149'),
(140, '', '', 'à¦¬à¦¿à¦¦à§à¦¯à¦¾ à¦¶à¦¿à¦•à§à¦·à¦¾à¦° à¦¡à¦¿à¦—à§à¦°à¦¿ à¦†à¦›à§‡, à¦œà§à¦žà¦¾à¦¨à§‡à¦° à¦•à§‹à¦¨à§‹ à¦¡à¦¿à¦—à§à¦°à¦¿ à¦¨à§‡à¦‡: à¦œà§à¦žà¦¾à¦¨ à¦¡à¦¿à¦—à§à¦°à¦¿à¦¬à¦¿à¦¹à§€à¦¨ à¦“ à¦¸à§€à¦®à¦¾à¦¹à§€à¦¨à¥¤', '2023-03-07 10:03:02', 'Admin', '149'),
(141, '', '', 'à¦œà§à¦žà¦¾à¦¨à¦šà¦°à§à¦šà¦¾à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦¶à§à¦§à§ à¦†à¦ªà¦¨ à¦¬à¦¿à¦¶à§à¦¬à¦¾à¦¸à¦‡ à¦¨à¦¯à¦¼, à¦¸à¦•à¦² à¦®à¦¤à¦¾à¦®à¦¤à§‡à¦° à¦ªà§à¦°à¦¤à¦¿ à¦¶à§à¦°à¦¦à§à¦§à¦¾à¦¶à§€à¦² à¦¹à¦“à¦¯à¦¼à¦¾ à¦‰à¦šà¦¿à¦¤à¥¤ à¦¸à¦•à¦² à¦§à§à¦¯à¦¾à¦¨-à¦§à¦¾à¦°à¦£à¦¾ à¦¸à¦®à§à¦ªà¦°à§à¦•à§‡ à¦¸à¦®à§à¦¯à¦• à¦œà§à¦žà¦¾à¦¨ à¦²à¦¾à¦­ à¦•à¦°à¦¾ à¦¦à¦°à¦•à¦¾à¦° à¦ªà§à¦°à¦¤à¦¿à¦Ÿà¦¿ à¦œà§à¦žà¦¾à¦¨ à¦ªà¦¿à¦ªà¦¾à¦¸à§ à¦®à¦¾à¦¨à§à¦·à§‡à¦°à¥¤ à¦¶à§à¦§à§ à¦¸à§€à¦®à¦¾à¦¬à¦¦à§à¦§ à¦ªà¦°à¦¿à¦®à¦¨à§à¦¡à¦²à§‡ à¦†à¦¬à¦¦à§à¦§ à¦¹à¦²à§‡ à¦šà¦²à§‡à¦¨à¦¾à¥¤ à¦¸à§€à¦®à¦¾à¦¨à¦¾à¦•à§‡ à¦…à¦¤à¦¿à¦•à§à¦°à¦® à¦•à¦°à§‡ à¦¯à§‡à¦¤à§‡ à¦¹à¦¬à§‡ à¦•à§à¦°à¦®à¦¾à¦¨à§à¦¬à¦¯à¦¼à§‡à¥¤ ', '2023-03-07 10:03:19', 'Admin', '149'),
(142, '', '', 'à¦²à¦¾à¦‡à¦¬à§à¦°à§‡à¦°à§€à¦‡ à¦†à¦®à¦¾à¦° à¦¤à§€à¦°à§à¦¥à¦¸à§à¦¥à¦¾à¦¨à¥¤ à¦†à¦®à¦¾à¦° à¦®à¦¤à§‡ à¦®à¦¨à§à¦¦à¦¿à¦°, à¦®à¦¸à¦œà¦¿à¦¦, à¦—à¦¿à¦°à§à¦œà¦¾ à¦¥à§‡à¦•à§‡ à¦²à¦¾à¦‡à¦¬à§à¦°à§‡à¦°à§€ à¦¬à¦¹à§ à¦—à§à¦£à§‡ à¦¶à§à¦°à§‡à¦·à§à¦ à¥¤', '2023-03-07 10:03:33', 'Admin', '149'),
(143, '', '', 'à¦•à§‹à¦¨ à¦¬à§à¦¯à¦•à§à¦¤à¦¿ à¦¯à¦¦à¦¿ à¦à¦•à¦œà¦¨ à¦•à§à¦·à§à¦¦à¦¾à¦°à§à¦¥à¦•à§‡ à¦…à¦¨à§à¦¨à¦¦à¦¾à¦¨ à¦“ à¦à¦•à¦œà¦¨ à¦ªà¦¥à¦¿à¦•à§‡à¦° à¦®à¦¾à¦² à¦²à§à¦¨à§à¦ à¦¨ à¦•à¦°à§‡ à¦“ à¦…à¦¨à§à¦¯ à¦•à¦¾à¦‰à¦•à§‡ à¦¹à¦¤à§à¦¯à¦¾ à¦•à¦°à§‡ à¦…à¦¥à¦¬à¦¾ à¦à¦•à¦œà¦¨ à¦—à§ƒà¦¹à¦¹à§€à¦¨à¦•à§‡ à¦—à§ƒà¦¹à¦¦à¦¾à¦¨ à¦•à¦°à§‡ à¦à¦¬à¦‚ à¦…à¦ªà¦°à§‡à¦° à¦—à§ƒà¦¹ à¦•à¦°à§‡ à¦…à¦—à§à¦¨à¦¿à¦¦à¦¾à¦¹, à¦¤à¦¬à§‡ à¦¤à¦¾à¦¹à¦¾à¦•à§‡ â€˜à¦¦à¦¯à¦¼à¦¾à¦®à¦¯à¦¼ â€˜à¦¬à¦²à¦¾ à¦¯à¦¾à¦¯à¦¼ à¦¨à¦¾à¥¤', '2023-03-07 10:03:58', 'Admin', '149'),
(144, '', '', 'à¦¬à¦¿à¦¶à§à¦¬ à¦®à¦¾à¦¨à¦¬à¦¤à¦¾à¦¬à¦¾à¦¦ à¦¹à§‹à¦• à¦®à¦¾à¦¨à¦¬ à¦§à¦°à§à¦®à¥¤', '2023-03-07 10:04:17', 'Admin', '149'),
(145, '', '', 'à¦œà§à¦žà¦¾à¦¨à§‡à¦° à¦•à§‹à¦¨ à¦¡à¦¿à¦—à§à¦°à§€ à¦¨à¦¾à¦‡à¥¤ à¦œà§à¦žà¦¾à¦¨ à¦¡à¦¿à¦—à§à¦°à§€ à¦¬à¦¿à¦¹à§€à¦¨ à¦“ à¦¸à§€à¦®à¦¾à¦¹à§€à¦¨à¥¤ à¦¸à§‡à¦‡ à¦…à¦¸à§€à¦® à¦œà§à¦žà¦¾à¦¨à¦¾à¦°à§à¦œà¦¨à§‡à¦° à¦®à¦¾à¦§à§à¦¯à¦® à¦¸à§à¦•à§à¦²-à¦•à¦²à§‡à¦œ à¦•à¦¿à¦‚à¦¬à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à¦¯à¦¼ à¦¨à¦¯à¦¼, à¦¤à¦¾ à¦¹à¦šà§à¦›à§‡ à¦²à¦¾à¦‡à¦¬à§à¦°à§‡à¦°à§€à¥¤', '2023-03-07 10:04:33', 'Admin', '149'),
(146, '', '', 'à¦…à¦¨à§à¦§ à¦¬à¦¿à¦¶à§à¦¬à¦¾à¦¸ à¦“ à¦•à§à¦¸à¦‚à¦¸à§à¦•à¦¾à¦°à¦•à§‡ à¦†à¦®à¦¿ à¦˜à§ƒà¦¨à¦¾ à¦•à¦°à¦¿ à¦ªà§à¦°à§€à¦·à§‡à¦°à¦®à¦¤, à¦†à¦¦à¦° à¦•à¦°à¦¿ à¦®à¦¾à¦¨à¦¬à¦¤à¦¾à¦°â€à¥¤', '2023-03-07 10:04:50', 'Admin', '149'),
(147, '', '', 'à¦²à¦¾à¦‡à¦¬à§à¦°à§‡à¦°à§€ à¦…-à¦®à¦¾à¦¨à§à¦·à¦•à§‡ à¦®à¦¾à¦¨à§à¦· à¦¬à¦¾à¦¨à¦¾à¦¤à§‡ à¦ªà¦¾à¦°à§‡, à¦ªà¦¾à¦°à§‡ à¦…à¦¨à§à¦§à¦¬à¦¿à¦¶à§à¦¬à¦¾à¦¸ à¦“ à¦•à§-à¦¸à¦‚à¦¸à§à¦•à¦¾à¦° à¦¦à§‚à¦° à¦•à¦°à¦¤à§‡à¥¤', '2023-03-07 10:05:06', 'Admin', '149'),
(148, '', '', 'à¦à¦•à¦Ÿà¦¾ à¦¦à§‡à¦¶à§‡à¦° à¦¸à¦®à¦¾à¦œ à¦…à¦¶à¦¿à¦•à§à¦·à¦¾ à¦“ à¦•à§à¦¸à¦‚à¦¸à§à¦•à¦¾à¦° à¦¥à§‡à¦•à§‡ à¦®à§à¦•à§à¦¤ à¦¹à¦²à§‡ à¦¸à§‡ à¦¦à§‡à¦¶à§‡à¦° à¦°à¦¾à¦œà¦¨à§€à¦¤à¦¿à¦“ à¦¸à§à¦¬à¦šà§à¦› à¦¹à¦¬à§‡à¥¤', '2023-03-07 10:05:30', 'Admin', '149'),
(149, '', '', 'à¦¯à¦¾ à¦•à¦¿à¦›à§ à¦¦à§à¦°à§à¦­à§‡à¦¯à¦¼ à¦à¦¬à¦‚ à¦°à¦¹à¦¸à§à¦¯à¦®à¦¯à¦¼, à¦¤à¦¾ à¦¸à¦¤à§à¦¯ à¦¨à¦¾à¦“ à¦¹à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¥¤', '2023-03-07 10:05:42', 'Admin', '149'),
(150, '', '', 'à¦¸à¦•à¦²à§‡à¦‡ à¦¬à¦²à¦¿à¦¯à¦¼à¦¾ à¦¥à¦¾à¦•à§‡à¦¨ à¦¯à§‡, à¦¤à¦¾à¦à¦¹à¦¾à¦¦à§‡à¦° à¦†à¦ªà¦¨ à¦†à¦ªà¦¨ à¦§à¦°à§à¦®à¦‡ à¦à¦•à¦®à¦¾à¦¤à§à¦° à¦¸à¦¤à§à¦¯à¦§à¦°à§à¦®, à¦…à¦¨à§à¦¯ à¦•à§‹à¦¨ à¦§à¦°à§à¦®à¦‡ à¦¸à¦¤à§à¦¯ à¦¨à¦¹à§‡à¥¤ à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯ à¦§à¦°à§à¦®à¦¾à¦¬à¦²à¦®à§à¦¬à§€à¦¦à§‡à¦° à¦¸à§à¦¬à¦°à§à¦—à¦ªà§à¦°à¦¾à¦ªà§à¦¤à¦¿, à¦ªà¦°à¦¿à¦¤à§à¦°à¦¾à¦£, à¦¨à¦¿à¦°à§à¦¬à¦¾à¦£ à¦¬à¦¾ à¦®à§‹à¦•à§à¦·à¦²à¦¾à¦­ à¦˜à¦Ÿà¦¿à¦¬à§‡ à¦¨à¦¾à¥¤ à¦ à¦¯à§‡à¦¨ à¦¬à¦¾à¦œà¦¾à¦°à§‡à¦° à¦—à§‹à¦¯à¦¼à¦¾à¦²à¦¾à¦¦à§‡à¦° à¦¨à§à¦¯à¦¾à¦¯à¦¼ à¦¸à¦•à¦²à§‡à¦‡ à¦†à¦ªà¦¨ à¦†à¦ªà¦¨ à¦¦à¦§à¦¿ à¦®à¦¿à¦·à§à¦Ÿ à¦¬à¦²à§‡à¥¤', '2023-03-07 10:05:55', 'Admin', '149'),
(151, '', '', 'â€œà¦“à¦°à§‡ à¦¬à¦¾à¦›à¦¾, à¦®à¦¾à¦¤à§ƒà¦•à§‹à¦·à§‡ à¦°à¦¤à¦¨à§‡à¦° à¦°à¦¾à¦œà¦¿,à¦ à¦­à¦¿à¦–à¦¾à¦°à§€-à¦¦à¦¶à¦¾ à¦¤à¦¬à§‡ à¦•à§‡à¦¨ à¦¤à§‹à¦° à¦†à¦œà¦¿? à¦¯à¦¾ à¦«à¦¿à¦°à¦¿, à¦…à¦œà§à¦žà¦¾à¦¨ à¦¤à§à¦‡, à¦¯à¦¾ à¦°à§‡ à¦«à¦¿à¦°à¦¿ à¦˜à¦°à§‡!â€', '2023-03-07 10:06:32', 'Admin', '149'),
(152, '', '', 'à¦¬à¦¹à§ à¦¦à§‡à¦¶à§‡ à¦¦à§‡à¦–à¦¿à§Ÿà¦¾à¦›à¦¿ à¦¬à¦¹à§ à¦¨à¦¦ â€“ à¦¦à¦²à§‡,à¦•à¦¿à¦¨à§à¦¤à§ à¦ à¦¸à§à¦¨à§‡à¦¹à§‡à¦° à¦¤à§ƒà¦·à§à¦£à¦¾ à¦®à¦¿à¦Ÿà§‡ à¦•à¦¾à¦° à¦œà¦²à§‡?â€\r\n~ à¦®à¦¾à¦‡à¦•à§‡à¦² à¦®à¦§à§à¦¸à§‚à¦¦à¦¨ à¦¦à¦¤à§à¦¤', '2023-03-07 10:06:47', 'Admin', '149'),
(153, '', '', 'â€œà¦¦à¦¿à¦¨ à¦¦à¦¿à¦¨ à¦†à§Ÿà§à¦¹à§€à¦¨, à¦¹à§€à¦¨à¦¬à¦² à¦¦à¦¿à¦¨ à¦¦à¦¿à¦¨à¥¤â€\r\n~ à¦®à¦¾à¦‡à¦•à§‡à¦² à¦®à¦§à§à¦¸à§‚à¦¦à¦¨ à¦¦à¦¤à§à¦¤', '2023-03-07 10:07:02', 'Admin', '149'),
(157, 'à¦ªà¦¾à¦–à¦¿, à¦¡à¦¿à¦®, à¦•à¦¬à¦¿à¦¤à¦¾ ', '', 'â€œà¦•à¦¬à¦¿à¦¤à¦¾ à¦šà¦°à§‡à¦° à¦ªà¦¾à¦–à¦¿, à¦•à§à§œà¦¾à¦¨à§‹ à¦¹à¦¾à¦à¦¸à§‡à¦° à¦¡à¦¿à¦®, à¦—à¦¨à§à¦§à¦­à¦°à¦¾ à¦˜à¦¾à¦¸ à¦®à§à¦²à¦¾à¦¨ à¦®à§à¦– à¦¬à¦‰à¦Ÿà¦¿à¦° à¦¦à§œà¦¿ à¦›à§‡à¦à§œà¦¾ à¦¹à¦¾à¦°à¦¾à¦¨à§‹ à¦¬à¦¾à¦›à§à¦° à¦—à§‹à¦ªà¦¨ à¦šà¦¿à¦ à¦¿à¦° à¦ªà§à¦¯à¦¾à¦¡à§‡ à¦¨à§€à¦² à¦–à¦¾à¦®à§‡ à¦¸à¦¾à¦œà¦¾à¦¨à§‹ à¦…à¦•à§à¦·à¦° à¦•à¦¬à¦¿à¦¤à¦¾ à¦¤à§‹ à¦®à¦•à§à¦¤à¦¬à§‡à¦° à¦®à§‡à§Ÿà§‡ à¦šà§à¦²à¦–à§‹à¦²à¦¾ à¦†à§Ÿà§‡à¦¶à¦¾ à¦†à¦•à§à¦¤à¦¾à¦°à¥¤â€', '2023-03-27 18:04:30', 'Admin', '177'),
(158, 'à¦•à¦¬à¦¿à¦¤à¦¾, à¦®à¦¾à¦¨à§à¦·', '', 'à¦®à¦¾à¦¨à§à¦· à¦“ à¦•à¦¬à¦¿à¦¤à¦¾ à¦…à¦¬à¦¿à¦šà§à¦›à§‡à¦¦à§à¦¯à¥¤ à¦®à¦¾à¦¨à§à¦· à¦¥à¦¾à¦•à¦²à§‡ à¦¬à§à¦à¦¤à§‡ à¦¹à¦¬à§‡ à¦•à¦¬à¦¿à¦¤à¦¾ à¦†à¦›à§‡ : à¦•à¦¬à¦¿à¦¤à¦¾ à¦¥à¦¾à¦•à¦²à§‡ à¦¬à§à¦à¦¤à§‡ à¦¹à¦¬à§‡ à¦®à¦¾à¦¨à§à¦· à¦†à¦›à§‡à¥¤\r\n- à¦¹à§à¦®à¦¾à§Ÿà§‚à¦¨ à¦†à¦œà¦¾à¦¦', '2023-03-27 18:06:40', 'Admin', '146');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `id` int(11) NOT NULL,
  `query` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webabout`
--

CREATE TABLE `webabout` (
  `id` int(11) NOT NULL,
  `about` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webcontact`
--

CREATE TABLE `webcontact` (
  `id` int(11) NOT NULL,
  `contact` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `webcontact`
--

INSERT INTO `webcontact` (`id`, `contact`) VALUES
(0, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `webprivacy`
--

CREATE TABLE `webprivacy` (
  `id` int(11) NOT NULL,
  `privacy` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `webprivacy`
--

INSERT INTO `webprivacy` (`id`, `privacy`) VALUES
(0, 'At Lyricsbn, accessible from https://caption.com.bd/, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by caption and how we use it.\r\n\r\nIf you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us through email at hello@caption.com.bd\r\n\r\nLog Files\r\nLyricsbn follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting servicesâ€™ analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking usersâ€™ movement on the website, and gathering demographic information.\r\n\r\nGoogle DoubleClick DART Cookie\r\nGoogle is one of a third-party vendor on our site. It also uses cookies, known as DART cookies, to serve ads to our site visitors based upon their visit to www.website.com and other sites on the internet. However, visitors may choose to decline the use of DART cookies by visiting the Google ad and content network Privacy Policy at the following URL â€“ https://policies.google.com/technologies/ads\r\n\r\nOur Advertising Partners\r\nSome of the advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.\r\n\r\nGoogle\r\nhttps://policies.google.com/technologies/ads\r\n\r\nPrivacy Policies\r\nYou may consult this list to find the Privacy Policy for each of the advertising partners of Lyricsbn. Our Privacy Policy was created with the help of the Privacy Policy Generator.\r\n\r\nThird-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on Lyricsbn, which are sent directly to usersâ€™ browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.\r\n\r\nNote that Lyricsbn has no access to or control over these cookies that are used by third-party advertisers.\r\n\r\nThird Party Privacy Policies\r\nLyricsbnâ€™s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options. You may find a complete list of these Privacy Policies and their links here: Privacy Policy Links.\r\n\r\nYou can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsersâ€™ respective websites. What Are Cookies?\r\n\r\nChildrenâ€™s Information\r\nAnother part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.\r\n\r\nLyricsbn does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.\r\n\r\nOnline Privacy Policy Only\r\nThis Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Lyricsbn. This policy is not applicable to any information collected offline or via channels other than this website.\r\n\r\nConsent\r\nBy using our website, you hereby consent to our Privacy Policy and agree to its Terms and Conditions.');

-- --------------------------------------------------------

--
-- Table structure for table `webterms`
--

CREATE TABLE `webterms` (
  `id` int(11) NOT NULL,
  `terms` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `webterms`
--

INSERT INTO `webterms` (`id`, `terms`) VALUES
(0, 'Welcome to Bangla Caption!\r\n\r\nThese terms and conditions outline the rules and regulations for the use of Lyricsbnâ€™s Website, located at https://Caption.com.bd.\r\n\r\nBy accessing this website we assume you accept these terms and conditions. Do not continue to use Lyricsbn if you do not agree to take all of the terms and conditions stated on this page. Our Terms and Conditions were created with the help of the Terms And Conditions Generator.\r\n\r\nThe following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: â€œClientâ€, â€œYouâ€ and â€œYourâ€ refers to you, the person log on this website and compliant to the Companyâ€™s terms and conditions. â€œThe Companyâ€, â€œOurselvesâ€, â€œWeâ€, â€œOurâ€ and â€œUsâ€, refers to our Company. â€œPartyâ€, â€œPartiesâ€, or â€œUsâ€, refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Clientâ€™s needs in respect of provision of the Companyâ€™s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.\r\n\r\nCookies\r\nWe employ the use of cookies. By accessing Lyricsbn, you agreed to use cookies in agreement with the Lyricsbnâ€™s Privacy Policy.\r\n\r\nMost interactive websites use cookies to let us retrieve the userâ€™s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.\r\n\r\nLicense\r\nUnless otherwise stated, Lyricsbn and/or its licensors own the intellectual property rights for all material on Lyricsbn. All intellectual property rights are reserved. You may access this from Lyricsbn for your own personal use subjected to restrictions set in these terms and conditions.\r\n\r\nYou must not:\r\n\r\nRepublish material from Lyricsbn\r\nSell, rent or sub-license material from Lyricsbn\r\nReproduce, duplicate or copy material from Lyricsbn\r\nRedistribute content from Lyricsbn\r\nThis Agreement shall begin on the date hereof.\r\n\r\nParts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Lyricsbn does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Lyricsbn,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Lyricsbn shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.\r\n\r\nLyricsbn reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.\r\n\r\nYou warrant and represent that:\r\n\r\nYou are entitled to post the Comments on our website and have all necessary licenses and consents to do so;\r\nThe Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;\r\nThe Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy\r\nComments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.\r\nYou hereby grant Lyricsbn a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.\r\n\r\nHyperlinking to our Content\r\nThe following organizations may link to our Website without prior written approval:\r\n\r\nGovernment agencies;\r\nSearch engines;\r\nNews organizations;\r\nOnline directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and\r\nSystemwide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.\r\nThese organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking partyâ€™s site.\r\n\r\nWe may consider and approve other link requests from the following types of organizations:\r\n\r\ncommonly-known consumer and/or business information sources;\r\ndot.com community sites;\r\nassociations or other groups representing charities;\r\nonline directory distributors;\r\ninternet portals;\r\naccounting, law and consulting firms; and\r\neducational institutions and trade associations.\r\nWe will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Lyricsbn; and (d) the link is in the context of general resource information.\r\n\r\nThese organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking partyâ€™s site.\r\n\r\nIf you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to Lyricsbn. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.\r\n\r\nApproved organizations may hyperlink to our Website as follows:\r\n\r\nBy use of our corporate name; or\r\nBy use of the uniform resource locator being linked to; or\r\nBy use of any other description of our Website being linked to that makes sense within the context and format of content on the linking partyâ€™s site.\r\nNo use of Lyricsbnâ€™s logo or other artwork will be allowed for linking absent a trademark license agreement.\r\n\r\niFrames\r\nWithout prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.\r\n\r\nContent Liability\r\nWe shall not be held responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.\r\n\r\nYour Privacy\r\nPlease read Privacy Policy\r\n\r\nReservation of Rights\r\nWe reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and itâ€™s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.\r\n\r\nRemoval of links from our website\r\nIf you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.\r\n\r\nWe do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_cats`
--
ALTER TABLE `blog_cats`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `webabout`
--
ALTER TABLE `webabout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webcontact`
--
ALTER TABLE `webcontact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webprivacy`
--
ALTER TABLE `webprivacy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webterms`
--
ALTER TABLE `webterms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_cats`
--
ALTER TABLE `blog_cats`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
