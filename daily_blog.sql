-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 03:15 PM
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
-- Database: `daily blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `slno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `mes` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`slno`, `name`, `email`, `phone_num`, `mes`, `date`) VALUES
(1, 'first post', 'first@gmail.com', '12345678820', 'dSETNSxfhfhshsrhxjgjx', '2024-11-20 16:07:25'),
(2, 'rdhdhdr', 'dfhzdrjhr', '53535', 'tumftutmurtu\r\n', NULL),
(3, 'rdhdhdr', 'dfhzdrjhr', '53535', 'tumftutmurtu\r\n', '2024-11-20 16:21:11'),
(4, 'Ampita Das', 'trojanik003@gmail.com', '8445554', 'ryrdheh', '2024-11-20 16:21:19'),
(5, 'fgdh', 'dfhzdf', 'dfhzd', 'dfhzd', '2024-11-20 16:58:46'),
(6, 'dgsdg', 'dgsgs', 'shsh', 'sfhf', '2024-11-20 16:59:22'),
(7, 'dgsdg', 'dgsgs', 'shsh', 'sfhf', '2024-11-20 16:59:24'),
(8, 'dgsdg', 'dgsgs', 'shsh', 'sfhf', '2024-11-20 17:00:57'),
(9, 'dgsdg', 'dgsgs', 'shsh', 'sfhf', '2024-11-20 17:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `slno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `name` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(25) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`slno`, `title`, `tagline`, `name`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'The Wonders of the Milky Way', 'The Wonders of the Milky Way', 'Anik ', 'wonders-of-the-milky-way', 'The Milky Way is more than just a collection of stars. It is an immense, complex system that has fascinated astronomers and scientists for centuries. As the galaxy in which our solar system resides, it has earned its place as one of the most studied and explored areas of space. This spiral galaxy, which is just one of billions in the universe, is home to over 100 billion stars, as well as countless planets, moons, asteroids, and nebulae. Each of these celestial objects plays a part in shaping the Milky Way and contributes to its unique structure and phenomena.\r\nThe structure of the Milky Way itself is a thing of beauty. Its spiral arms, including the Orion Arm where our solar system is located, wind outward from the dense core. These arms are dotted with young, hot stars, nebulae, and other objects that glow brightly in the visible spectrum. But it’s not just the arms that make the Milky Way interesting. The galactic center is a region of intense gravitational pull, and it is believed that a supermassive black hole sits at its heart. This black hole, known as Sagittarius A*, is about 4 million times the mass of our Sun, yet it remains hidden behind thick clouds of gas and dust.\r\n\r\nDespite being so distant, the study of the Milky Way has revealed much about the history of galaxies and their formation. The Milky Way, like all galaxies, was formed billions of years ago from the collapse of a large gas cloud. Over time, this cloud began to spin and contract, eventually leading to the creation of stars, planets, and other stellar systems. As our galaxy grew, it collided with smaller galaxies, merging their stars and creating the rich, complex structure we see today. Understanding these processes can help astronomers unlock secrets about the origins of the universe itself.\r\n\r\nOne of the most fascinating aspects of the Milky Way is its ongoing evolution. Stars within the galaxy are constantly being born, living, and dying. Nebulae, which are vast clouds of gas and dust, are often the birthplaces of new stars. These nebulae are the interstellar nurseries that provide the raw material for star formation. One famous example is the Eagle Nebula, where the iconic “Pillars of Creation” exist. These massive structures of gas and dust are home to new stars, and they have become one of the most photographed regions of space.\r\n\r\nHowever, stars don’t live forever. As stars age, they eventually die, often in spectacular ways. Massive stars may end their lives as supernovae, exploding in violent bursts of energy and scattering elements into space. These explosions play a crucial role in the formation of new stars, as the elements they release are used to create the next generation of stellar bodies. On the other hand, smaller stars like our Sun will eventually shed their outer layers and become white dwarfs, gradually cooling and fading away.\r\n\r\nThe Milky Way is also home to a variety of interesting objects, including star clusters, planets, and even exotic phenomena like pulsars and neutron stars. Some of these objects are located in the outskirts of the galaxy, while others lie in the dense regions of the spiral arms. For example, the globular clusters that are found in the Milky Way’s halo are dense collections of ancient stars that offer clues about the early universe. These star clusters have been around for billions of years, and studying them can reveal valuable information about the conditions that existed when the galaxy was first forming.\r\n\r\nThe Milky Way is an essential piece of the cosmic puzzle, and its study continues to yield new insights about the universe. Whether it’s the mystery of dark matter, the formation of stars, or the role of black holes in shaping galaxies, the Milky Way offers endless opportunities for discovery. As technology advances and we develop more powerful telescopes, our understanding of this magnificent galaxy will only continue to grow. Exploring the Milky Way is more than just looking at the stars—it is a journey to uncover the secrets of the universe itself.\r\n\r\n', 'milky-bg.jpg', '2024-12-11 17:58:31'),
(2, 'The Future of Space Exploration', 'The Future of Space Exploration', 'Adams', 'future-of-space-explorati', 'The future of space exploration is an exciting frontier. Human curiosity and technological advances are pushing the boundaries of what was once considered impossible. As we look ahead to the next few decades, there are countless opportunities for discovery in space, some of which will transform the way we understand the universe. One of the most thrilling aspects of this future is the possibility of sending humans to Mars. SpaceX, led by Elon Musk, is already working on the Starship program, with plans for interplanetary travel that could include trips to Mars. NASA’s Artemis program is also paving the way for a return to the Moon, with plans to establish a sustainable presence there by the late 2020s.\r\nBut Mars and the Moon are just the beginning. Space agencies around the world are also setting their sights on more distant destinations, including the moons of Jupiter and Saturn, which are believed to hold the potential for life beneath their icy surfaces. Europa, one of Jupiter’s moons, is a prime candidate for future missions due to its subsurface ocean, while Saturn’s moon Titan is rich in organic compounds, making it a target for future exploration. These celestial bodies could hold clues about life beyond Earth, and upcoming missions such as NASA’s Europa Clipper and the Dragonfly mission to Titan could provide us with invaluable information.\r\n\r\nPrivate companies are also playing a key role in the future of space exploration. Beyond SpaceX, companies like Blue Origin and Virgin Galactic are working to make space tourism a reality. While space tourism is currently a luxury for the elite, in the future, it could become more accessible to the general public, opening up new frontiers for ordinary people to explore. Commercial space stations may also become a regular part of life in orbit, serving as platforms for research, manufacturing, and even vacationing in space.\r\n\r\nSpace exploration is no longer just about visiting distant planets or moons—it’s also about expanding our presence in orbit. The International Space Station (ISS) has been a hub for scientific research in microgravity, and new space stations may be built to continue this work. As we develop new propulsion technologies, space travel will become faster and more efficient. Concepts like nuclear fusion and ion drives could make travel to distant planets more feasible, and even the idea of reaching beyond our solar system is becoming more realistic with the concept of interstellar probes.\r\n\r\nIn addition to physical exploration, space agencies and scientists are also focusing on understanding the fundamental nature of the universe. Missions like the James Webb Space Telescope, set to launch in the coming years, will allow scientists to peer deeper into space than ever before, providing insights into the early universe, the formation of galaxies, and the potential for habitable planets in other star systems.\r\n\r\nThe future of space exploration is filled with promise, and the next few decades could bring humanity closer to becoming an interplanetary species. As new technologies emerge, the unknowns of space become more manageable, and the mysteries of the cosmos unfold before us.', 'future.jpg', '2024-12-11 17:08:17'),
(3, 'Black Holes: Nature’s Most Mysterious Objects', 'Unlocking the secrets of the universe’s most enigmatic phenomena.', 'Ellie ', 'black-holes-natures-myste', 'Black holes are among the most intriguing and mysterious objects in the universe. These cosmic anomalies are defined by a gravitational pull so intense that nothing, not even light, can escape their grasp. Black holes form when massive stars collapse under their own gravity, resulting in an infinitely dense point called a singularity. Surrounding the singularity is the event horizon, a boundary beyond which nothing can escape. Anything that crosses this point is pulled inexorably toward the center of the black hole.\r\nThe concept of black holes was first proposed by physicist John Michell in the 18th century, but it wasn’t until the early 20th century, with Albert Einstein’s theory of general relativity, that the concept gained scientific validity. According to general relativity, massive objects cause space-time to curve, and when this curvature becomes steep enough, it creates a point where nothing can escape, effectively trapping matter and energy inside.\r\n\r\nDespite their name, black holes are not “holes” in space; they are extremely dense objects that warp the fabric of space-time itself. There are several types of black holes, including stellar black holes, which form from the collapse of massive stars, and supermassive black holes, which reside at the centers of galaxies. The most famous example of the latter is the supermassive black hole at the center of our Milky Way galaxy, known as Sagittarius A*. This black hole, with a mass equivalent to millions of times that of our Sun, influences the movement of stars in the galaxy’s core.\r\n\r\nOne of the most captivating aspects of black holes is the fact that we can’t directly observe them. Since they do not emit light, they remain invisible. However, scientists can study them by observing the effects they have on their surroundings. For example, when matter is drawn toward a black hole, it accelerates and heats up, emitting powerful X-rays that can be detected by telescopes. Additionally, the warping of space-time caused by a black hole can influence the orbits of nearby stars, providing indirect evidence of their existence.\r\n\r\nIn 2019, scientists achieved a major breakthrough by capturing the first-ever image of a black hole. Using a network of radio telescopes known as the Event Horizon Telescope, they were able to create an image of the supermassive black hole at the center of the galaxy M87. This historic image provided the first direct visual evidence of a black hole and was a major step forward in our understanding of these mysterious objects.\r\n\r\nThe study of black holes also has implications for the fundamental laws of physics. The singularity at the heart of a black hole represents a point where our current understanding of physics breaks down. It is a region where quantum mechanics and general relativity, two pillars of modern physics, collide. Understanding the nature of black holes may ultimately lead to new insights into the nature of space, time, and the fundamental forces of the universe.\r\n\r\nDespite their mysterious nature, black holes play a crucial role in the universe’s structure and evolution. They are thought to be responsible for the formation of galaxies, as their immense gravitational forces can pull in gas and dust, triggering the birth of new stars. The study of black holes, though still in its early stages, continues to be one of the most exciting frontiers in modern astrophysics.\r\n\r\n', 'black.png', '2024-12-11 17:09:33'),
(4, 'Space-Time: The Fabric of the Universe', 'Understanding how the fabric of the cosmos works.', 'Amos', 'space-time-fabric-of-the-', 'Space-time is a concept that revolutionized our understanding of the universe. It is the four-dimensional continuum that combines the three dimensions of space with the fourth dimension of time. Instead of viewing space and time as separate entities, Einstein’s theory of general relativity suggests that they are interconnected, forming a unified fabric that can bend and warp in response to the presence of mass and energy.\r\nOne of the key insights of general relativity is that objects with mass, such as planets and stars, cause space-time to curve around them. This curvature is what we perceive as gravity. For example, Earth orbits the Sun not because it is being “pulled” by the Sun, but because the Sun’s mass creates a curvature in space-time that Earth follows. This effect is analogous to placing a heavy ball on a stretched rubber sheet—just as the ball causes the sheet to curve, massive objects warp the fabric of space-time.\r\n\r\nThe concept of space-time is not just an abstract theory; it has real-world implications. One of the most striking predictions of general relativity is that time is experienced differently depending on the strength of the gravitational field. This effect, known as time dilation, has been confirmed through experiments using highly accurate atomic clocks. Clocks on satellites in orbit run slightly faster than those on the Earth’s surface due to the weaker gravitational field in space. This phenomenon has practical applications in technologies such as GPS, which must account for the effects of both general and special relativity in order to provide accurate location data.\r\n\r\nSpace-time is also a key element in understanding black holes. When a star collapses to form a black hole, it warps space-time to such an extreme degree that it creates a region where the curvature becomes infinite—the singularity. This warping of space-time also leads to phenomena such as gravitational waves, ripples in space-time caused by the acceleration of massive objects. In 2015, the detection of gravitational waves by the LIGO observatory provided the first direct evidence of this phenomenon and opened up a new way of observing the universe.\r\n\r\nThe study of space-time continues to be one of the most profound areas of research in modern physics. By understanding how space-time works, scientists hope to unlock the mysteries of the universe, including the nature of black holes, the origins of the Big Bang, and even the possibility of time travel. The fabric of the universe is more than just a backdrop to the events we observe—it is a dynamic, ever-changing medium that shapes the very nature of reality itself.\r\n\r\n', 'fabric.png', '2024-12-11 17:10:09'),
(5, 'The Search for Extraterrestrial Life', 'Are we alone in the universe?', 'Joel', 'search-for-extraterrestri', 'One of the most profound questions that humanity has pondered throughout history is whether we are alone in the universe. With billions of stars and potentially habitable planets in our galaxy alone, the search for extraterrestrial life has become one of the most exciting frontiers of modern science. Scientists have focused their efforts on a few key strategies to search for signs of life beyond Earth.\r\nThe first step in the search for extraterrestrial life is identifying planets that may be capable of supporting life. One of the most promising areas of study is exoplanets—planets that orbit stars outside our solar system. Using advanced telescopes like the Kepler Space Telescope and the James Webb Space Telescope, astronomers have identified thousands of exoplanets, many of which are located in the “habitable zone” of their stars. This is the region where conditions are just right for liquid water to exist—considered one of the key ingredients for life as we know it.\r\n\r\nIn addition to studying exoplanets, scientists are also looking for signs of microbial life on nearby planets and moons in our own solar system. Mars, for example, has long been a target of exploration due to evidence of ancient riverbeds and minerals that suggest the planet may have once had conditions conducive to life. NASA’s Perseverance rover is currently exploring Mars to search for signs of ancient microbial life, and upcoming missions will continue to investigate the planet’s potential for past or present life.\r\n\r\nAnother promising location for life in our solar system is Europa, one of Jupiter’s moons. Europa is covered in a thick layer of ice, beneath which scientists believe there is a liquid ocean. This ocean may harbor microbial life, and missions such as NASA’s Europa Clipper will be launched to explore this intriguing possibility. Saturn’s moon Titan is also a target for exploration. Titan has lakes of liquid methane on its surface, and while life here would be very different from life on Earth, it could offer insights into the diverse forms life could take in the universe.\r\n\r\nWhile the search for life within our solar system is ongoing, scientists are also looking for signals from extraterrestrial civilizations. Programs like SETI (Search for Extraterrestrial Intelligence) use radio telescopes to scan the sky for signals that might indicate the presence of intelligent civilizations. While no definitive signals have been found yet, the search continues, and each year brings new opportunities for discovery.\r\n\r\nThe discovery of extraterrestrial life, whether microbial or intelligent, would be one of the most groundbreaking discoveries in history. It would raise profound questions about the nature of life, our place in the universe, and the potential for contact with other civilizations. Though we have not yet found definitive evidence of extraterrestrial life, the search continues to push the boundaries of science and expand our understanding of the cosmos.\r\n\r\n', 'alien.jpg', '2024-12-11 17:10:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`slno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `slno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
