-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:4306
-- Generation Time: Sep 16, 2025 at 07:43 PM
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
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(3, 'Art', 'This is the art category description.'),
(4, 'Science &amp; Technology', 'This is the description for Science &amp; Technology Category'),
(5, 'Uncategorized', 'This is the description for uncategorized category.'),
(6, 'Food', 'An author can share his experiences about food related topics.'),
(7, 'Wild Life', 'This is the description for wild life category.'),
(8, 'Music', 'This is the category where one can talk about music.'),
(9, 'Travel', 'Here an author can share their travel tips and experiences.');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(4, 'Life unfolds through a myriad of interconnected experiences', 'In the mosaic of existence, life unfolds through a myriad of interconnected experiences and subjects, each contributing to the rich fabric of human understanding and discovery. Let us embark on a captivating exploration of diverse topics that touch upon aspects of culture, science, philosophy, and everyday life, revealing the intricate tapestry of our world.\r\n\r\nThe Art of Storytelling\r\nStorytelling transcends time and culture, weaving narratives that entertain, educate, and inspire. Whether through ancient myths, classic literature, or contemporary films, storytelling reflects universal themes of heroism, love, and transformation. Stories connect us to our collective heritage and illuminate the human condition.\r\n\r\nThe Wonders of Scientific Inquiry\r\nScience unveils the mysteries of the universe, from the microscopic realms of cells to the vast expanse of galaxies. Exploring topics such as genetics, cosmology, and climate science broadens our understanding of natural phenomena and empowers us to make informed decisions in an increasingly complex world.\r\n\r\nNurturing the Mind and Body\r\nWellness encompasses holistic practices that promote physical, mental, and emotional health. From yoga and meditation to nutrition and mindfulness, nurturing our well-being fosters resilience and vitality. Exploring topics in wellness empowers individuals to prioritize self-care and cultivate balanced lifestyles.\r\n\r\nCultivating Creative Expression\r\nCreativity thrives in diverse forms&mdash;art, music, dance, and design&mdash;enriching our lives with beauty and innovation. Engaging with creative topics sparks inspiration and fosters imagination, encouraging exploration of new ideas and artistic endeavors that celebrate individuality and cultural diversity.\r\n\r\nExploring Cultural Diversity\r\nCulture is a tapestry woven from traditions, languages, and customs passed down through generations. Delving into topics of cultural heritage and identity fosters appreciation for global perspectives and promotes mutual respect among diverse communities.\r\n\r\nTechnology and Innovation\r\nAdvancements in technology shape our world, driving innovation and transforming industries. Topics in artificial intelligence, robotics, and sustainable energy solutions offer insights into the cutting-edge developments shaping the future of humanity.\r\n\r\nEnvironmental Stewardship\r\nPreserving our planet is paramount for future generations. Topics related to conservation, biodiversity, and sustainable practices highlight the urgent need to protect natural resources and mitigate the impacts of climate change.', '1714219446blog32.jpg', '2024-04-27 10:34:46', 5, 1, 0),
(7, 'Artistry Unveiled: Exploring the Depths of Human Creativity', 'Art, in all its forms, serves as a gateway to the soul&mdash;an exquisite tapestry woven from the threads of human imagination, emotion, and expression. From the stroke of a brush on canvas to the chisel&#039;s delicate touch on marble, artistry transcends boundaries, inviting us into realms of beauty, meaning, and contemplation. Let us embark on a journey through the enchanting world of art, where creativity knows no bounds and every creation tells a story.\r\n\r\nA Canvas of Possibilities\r\nArt is a boundless realm where imagination takes flight and dreams find expression. In the hands of artists, ordinary materials become vessels for extraordinary visions, transforming the mundane into the sublime. Whether painting, sculpture, literature, music, or dance, each medium offers a unique avenue for exploration, inviting both creators and audiences to embark on a voyage of discovery.\r\n\r\nThe Language of the Heart\r\nAt its core, art is a language&mdash;a universal means of communication that transcends linguistic barriers and cultural divides. Through their creations, artists convey emotions, ideas, and experiences that resonate with the human spirit. A painting may capture the essence of a fleeting moment, a melody may evoke profound emotions, and a sculpture may embody the essence of a timeless truth. In the silence of artistic expression, hearts find solace, understanding, and connection.\r\n\r\nReflections of the Human Experience\r\nArt serves as a mirror, reflecting the complexities of the human experience in all its splendor and fragility. Through art, we confront our joys and sorrows, our triumphs and tribulations, our hopes and fears. Artists offer glimpses into the depths of the human psyche, inviting us to explore the realms of memory, imagination, and introspection. Each creation becomes a mirror through which we see ourselves reflected, fostering empathy, compassion, and understanding.\r\n\r\nCatalyst for Change\r\nThroughout history, art has been a catalyst for change&mdash;a powerful force for social, political, and cultural transformation. From the stirring brushstrokes of revolutionaries to the impassioned verses of poets, artists have sparked movements, challenged norms, and ignited the flames of revolution. Art has the power to provoke thought, challenge assumptions, and inspire action, empowering individuals to envision a world of possibility and strive for a brighter future.\r\n\r\nCelebration of Diversity\r\nArt celebrates the rich tapestry of human diversity, embracing a multitude of voices, perspectives, and experiences. Through art, we celebrate the beauty of cultural heritage, the resilience of marginalized communities, and the myriad expressions of identity and belonging. From indigenous traditions passed down through generations to contemporary innovations that push the boundaries of convention, artistry celebrates the kaleidoscope of human expression that enriches our world.', '1714223317blog17.jpg', '2024-04-27 13:08:37', 3, 1, 1),
(8, 'Animals are in Danger! From Humans', 'Wildlife is a term used to describe all animals and plants that live in the natural world, without being domesticated by humans. Wildlife can be found in all ecosystems, from the deserts to the rainforests, and from the mountains to the oceans.\r\nWildlife plays an important role in the balance of nature. Animals help to control the populations of other animals, and plants help to provide food and shelter for animals. Wildlife also helps to keep the environment clean and healthy.\r\nHowever, wildlife is facing many threats today. Habitat loss, pollution, and climate change are all having a negative impact on wildlife populations. As a result, many species of animals are now endangered or extinct.\r\nThe beauty of wildlife lies in its adaptability and resilience to various habitats and environmental conditions. Whether roaming the savannahs of Africa, soaring through the skies of remote forests, or navigating the depths of oceans, wildlife has evolved unique adaptations that allow them to thrive in their respective ecosystems. These adaptations are a testament to the wonders of evolution and highlight the intricate balance that sustains life on Earth.\r\n\r\nMoreover, wildlife plays a critical role in maintaining ecological balance and biodiversity. Many species serve as keystone organisms, influencing the structure and function of entire ecosystems. From pollinating plants to controlling pest populations, wildlife contributes to essential ecological processes that support human livelihoods and well-being.\r\n\r\nDespite their importance, wildlife faces numerous threats due to human activities such as habitat destruction, poaching, pollution, and climate change. As human populations expand and natural habitats shrink, many species are pushed to the brink of extinction. Conservation efforts are essential to protect endangered wildlife and preserve the delicate balance of nature.\r\n\r\nAppreciating and protecting wildlife is not only a matter of environmental responsibility but also a source of inspiration and wonder. Observing wildlife in its natural habitat fosters a sense of connection with the natural world and instills a desire to safeguard these precious resources. Through education, advocacy, and sustainable practices, we can ensure that future generations inherit a world where wildlife continues to thrive and enchant us with its beauty and resilience.', '1714223645blog97.jpg', '2024-04-27 13:14:05', 7, 1, 0),
(9, 'The Culinary Canvas: Exploring the Artistry and Nourishment of Food', 'Italian Cuisines &ndash; Italian cuisines is one of the most popular cuisines around the world. Moreover, it is widely available in our India too. Dishes like pizza, pasta, and lasagna own a special place in the hearts&rsquo; of people.\r\n\r\nFurthermore, restaurants like Dominos and Pizza hut are available all over the country. People of every age love the taste of these Italian dishes. Also, Italian dishes are famous for their&rsquo; cheese filling. Every dish is load with cheese. Which enhances the taste of these Italian dishes.\r\n\r\nIndian cuisine &ndash; Indian cuisine is always filled with a lot of herbs and spices. Furthermore, the specialty of Indian dishes is, it is always filled with curries. Whether veg or non-veg the dishes are in curry form. Moreover, Indian cuisine has so many varieties of food that has further branches. The Branch consists of Mughal cuisine which is mostly of non-vegetarian dishes. Also, almost every Indian love Muglia dishes.\r\n\r\nChinese Cuisine &ndash; Chinese cuisine in India is also very popular. There are many Chinese theme-based restaurants here. Moreover, in these restaurants Chinese are preferable chefs because they can only give the perfect Chinese blend. Chinese cuisines have a wide variety of dishes. Some of them are Chinese noodles, fried rice, Dumplings, etc. Dumplings have a different name here. They go by the name of momos in India and people love the taste of it.\r\nThe Art of Creation\r\nCooking is an art form&mdash;an alchemical process that transforms raw ingredients into flavorful masterpieces. Chefs, both professional and amateur, wield their knives like paintbrushes, crafting dishes that appeal not only to taste buds but also to the eyes and soul. The culinary canvas is diverse and boundless, encompassing a spectrum of cuisines, techniques, and presentations that reflect regional identities and personal inspirations.\r\n\r\nA Cultural Tapestry\r\nFood is a powerful medium for cultural expression, preserving traditions and sharing heritage across generations. Each dish tells a story of place and history, embodying the flavors and ingredients unique to its origins. Whether it&#039;s the spice-laden curries of India, the delicate sushi of Japan, or the hearty stews of Europe, culinary traditions serve as windows into the soul of a culture, inviting exploration and appreciation.\r\n\r\nNourishment for Body and Soul\r\nBeyond its sensory allure, food nourishes both body and soul. The act of sharing a meal fosters connections and strengthens bonds among friends and family. Food rituals&mdash;whether it&#039;s a festive feast or a simple gathering around a table&mdash;create cherished memories and reinforce social ties. Moreover, the nutritional value of food sustains life, providing the essential nutrients that fuel our daily activities and support overall well-being.', '1714223797blog13.jpg', '2024-04-27 13:16:37', 6, 10, 0),
(10, 'Urbanization and Its Effects on Wildlife: Adapting to the Concrete Jungle', 'Urbanization poses significant challenges to wildlife, forcing them to adapt to a rapidly changing environment. As cities expand, conservation efforts become crucial in preserving habitats and promoting coexistence with urban wildlife.Wildlife encompasses the vast array of animal species that inhabit our planet, each contributing to the intricate web of life on Earth. From majestic mammals to vibrant birds, elusive reptiles, and diverse marine creatures, wildlife represents the remarkable diversity of living organisms that coexist with humans. Observing and understanding wildlife not only enriches our appreciation for nature but also underscores the importance of conservation efforts to preserve these invaluable species for future generations.\r\n\r\nThe beauty of wildlife lies in its adaptability and resilience to various habitats and environmental conditions. Whether roaming the savannahs of Africa, soaring through the skies of remote forests, or navigating the depths of oceans, wildlife has evolved unique adaptations that allow them to thrive in their respective ecosystems. These adaptations are a testament to the wonders of evolution and highlight the intricate balance that sustains life on Earth.\r\n\r\nMoreover, wildlife plays a critical role in maintaining ecological balance and biodiversity. Many species serve as keystone organisms, influencing the structure and function of entire ecosystems. From pollinating plants to controlling pest populations, wildlife contributes to essential ecological processes that support human livelihoods and well-being.\r\n\r\nDespite their importance, wildlife faces numerous threats due to human activities such as habitat destruction, poaching, pollution, and climate change. As human populations expand and natural habitats shrink, many species are pushed to the brink of extinction. Conservation efforts are essential to protect endangered wildlife and preserve the delicate balance of nature.', '1714224350blog76.jpg', '2024-04-27 13:25:50', 7, 1, 0),
(11, 'The Transformative Power of Music: A Universal Language', 'Music is a transcendent force that speaks to the depths of human experience. Across cultures, continents, and centuries, it has served as a profound expression of emotion, identity, and creativity. From the rhythmic beats of African drums to the intricate melodies of classical symphonies, music is a universal language that resonates with all.\r\n\r\nThe Emotional Impact of Music\r\n\r\nOne of the most compelling aspects of music is its ability to evoke powerful emotions. Whether it&#039;s the uplifting chords of a favorite song that brings joy, or the melancholic notes of a poignant melody that stir introspection, music has a unique capacity to connect with our innermost feelings. It can comfort us in times of sorrow, inspire us during moments of challenge, and uplift our spirits when we need motivation.\r\n\r\nMoreover, music has been scientifically proven to have therapeutic effects on mental health. Studies have shown that listening to music can reduce stress, anxiety, and depression, while also improving cognitive function and overall well-being. This therapeutic potential has led to the development of music therapy as a recognized form of treatment for various psychological and neurological conditions.\r\n\r\nCultural Identity and Diversity\r\n\r\nMusic is intricately woven into the fabric of cultural identity. Every society has its own musical traditions, instruments, and genres that reflect its unique history and values. From the haunting melodies of Native American flutes to the energetic rhythms of Brazilian samba, music encapsulates the diversity of human expression.\r\n\r\nMoreover, music serves as a bridge between different cultures, fostering understanding and appreciation across borders. In today&#039;s globalized world, we can instantly access and enjoy music from any corner of the globe, allowing us to celebrate diversity and cultivate empathy through shared musical experiences.\r\nThe Artistry of Music\r\n\r\nAt its core, music is a form of artistic expression that requires skill, creativity, and passion. Musicians, composers, and performers dedicate their lives to mastering their craft and pushing the boundaries of artistic innovation. Whether it&#039;s a virtuoso violin concerto or an experimental electronic composition, music continually evolves as artists experiment with new sounds and techniques.', '1714232135blog49.jpg', '2024-04-27 15:35:35', 8, 1, 0),
(12, 'Rediscovering the World: The Joys of Travel', 'In a world filled with routine and familiarity, there exists an undeniable allure to wander, explore, and experience the wonders beyond our immediate surroundings. Travel is more than just a change of scenery; it&#039;s a transformative journey that broadens perspectives, enriches lives, and reminds us of the beauty and diversity that exist beyond our daily routines. Whether it&#039;s a spontaneous road trip, an exotic overseas adventure, or a quiet retreat to a natural oasis, the act of traveling holds a unique power to rejuvenate our spirits and ignite our sense of wonder.\r\n\r\nEmbracing New Perspectives\r\nOne of the most profound gifts of travel is the opportunity to encounter different cultures, people, and landscapes. Stepping outside our comfort zones allows us to see the world through fresh eyes, gaining insight into ways of life that may be vastly different from our own. Each destination offers a tapestry of traditions, flavors, and customs waiting to be explored, fostering a deeper understanding and appreciation for the rich diversity of humanity.\r\n\r\nMoments of Connection\r\nTravel has an extraordinary way of forging connections&mdash;both with the world around us and with ourselves. Whether sharing stories with fellow travelers in a bustling cafe, learning local dances, or simply admiring the grandeur of a natural wonder, these moments create lasting memories and meaningful interactions that transcend borders and languages. In these shared experiences, we find common threads that unite us as global citizens.\r\n\r\nNourishing the Soul\r\nIn our fast-paced lives, moments of stillness and reflection can be rare. Travel offers the space to pause, disconnect from the noise of everyday life, and reconnect with our inner selves. Whether meditating on a serene beach at sunrise or hiking through ancient forests, the serenity of natural beauty has a profound way of restoring balance and grounding our spirits.', '1714237566blog32.jpg', '2024-04-27 17:06:06', 9, 11, 0),
(13, 'Exploring the Therapeutic Benefits of Music: Harmony for the Mind and Soul', 'In the symphony of life, few elements possess the innate ability to heal, uplift, and inspire quite like music. Beyond its role as entertainment, music holds profound therapeutic potential, offering a harmonious refuge for the mind and soul. From ancient civilizations to modern therapies, the healing power of music has been revered and harnessed, providing solace and promoting wellness in profound ways.\r\n\r\nA Gateway to Emotional Wellness\r\nMusic serves as a gateway to emotional expression, allowing listeners to navigate and process complex feelings. Whether it&#039;s the emotive strains of a melancholic melody or the upbeat tempo of a celebratory anthem, music has the capacity to mirror our emotions and provide a cathartic release. This emotional resonance can be especially valuable in times of stress, grief, or uncertainty, offering a comforting embrace through sound.\r\n\r\nHarnessing the Power of Music Therapy\r\nFormalized music therapy practices have gained recognition for their therapeutic efficacy in various settings, from hospitals to rehabilitation centers. Trained therapists use music interventions to address physical, emotional, cognitive, and social needs. Whether through active engagement in music-making or passive listening, patients experience benefits such as reduced anxiety, enhanced mood, improved communication, and even pain relief.\r\n\r\nRhythms for Relaxation\r\nCertain musical compositions, characterized by slower tempos and soothing melodies, possess inherent calming effects. These &quot;relaxation music&quot; pieces are often used in meditation, yoga, and mindfulness practices to promote relaxation and mental clarity. By syncing with the body&#039;s natural rhythms, such music can induce a state of tranquility, encouraging deep breathing and stress reduction.', '1714237762blog67.jpg', '2024-04-27 17:09:22', 8, 11, 0),
(14, 'The Enduring Beauty of Art: A Journey Through Creativity', 'Art is a profound expression of human creativity, imagination, and emotion that transcends time and culture. From ancient cave paintings to contemporary installations, art serves as a universal language that communicates the depths of the human experience. It encompasses a diverse range of mediums, styles, and techniques, each contributing to the rich tapestry of artistic expression that shapes our understanding of the world. Let us embark on a journey through the enchanting realm of art, exploring its significance and enduring beauty.\r\n\r\nThe Essence of Artistic Expression\r\nAt its core, art is about capturing moments, emotions, and ideas in tangible forms. Artists channel their inner visions through various mediums&mdash;paint, sculpture, photography, music, dance, and more&mdash;to evoke feelings and provoke thought. Whether abstract or representational, art invites us to contemplate the mysteries of existence and engage with the depths of our humanity.\r\n\r\nReflections of Culture and Society\r\nArt serves as a mirror of society, reflecting its values, beliefs, and aspirations across different epochs. Through art, we glimpse into the past and present of civilizations, witnessing the evolution of ideas and the interplay of diverse cultures. Each brushstroke, sculpted form, or melodic composition embodies a narrative that speaks volumes about the collective consciousness of humanity.\r\n\r\nInspiration and Imagination\r\nArt fuels inspiration and stimulates imagination. It encourages us to see the world through fresh perspectives, challenging preconceived notions and expanding our horizons. By engaging with art, whether as creators or admirers, we tap into reservoirs of creativity that transcend conventional boundaries, paving the way for innovation and discovery.\r\n\r\nArt as a Catalyst for Change\r\nThroughout history, art has played a pivotal role in driving social change and sparking revolutions of thought. Artists have used their craft to challenge norms, advocate for justice, and amplify marginalized voices. Art has the power to ignite passions, awaken empathy, and foster solidarity among communities striving for a better world.', '1714238271blog46.jpg', '2024-04-27 17:17:51', 3, 10, 0),
(15, 'A Culinary Journey: Exploring the Vibrant Flavors of Indian Cuisine', 'India&#039;s culinary landscape is a tantalizing tapestry of flavors, spices, and regional specialties that reflect its rich cultural heritage and diverse traditions. From aromatic curries to savory street snacks and sweet indulgences, Indian cuisine is celebrated worldwide for its complexity and depth. Join us on a flavorful exploration of the diverse and vibrant foods that define the culinary heritage of India.\r\n\r\nA Tapestry of Regional Diversity\r\nIndian cuisine is as diverse as its landscape, with each region boasting its own unique culinary traditions and specialties. From the fiery dishes of the South to the rich Mughlai delicacies of the North, and the coastal flavors of the West to the hearty meals of the East, every corner of India offers a distinct gastronomic experience rooted in local ingredients and cooking techniques.\r\n\r\nSpices: The Heart of Indian Cooking\r\nSpices are the soul of Indian cuisine, infusing dishes with layers of flavor and aroma. From earthy turmeric and pungent cumin to fiery chili peppers and fragrant cardamom, Indian spices create a symphony of tastes that tantalize the palate. Each spice blend, or masala, is meticulously crafted to enhance dishes with a balance of heat, sweetness, and depth.\r\n\r\nThe Legacy of Vegetarianism\r\nIndia has a rich tradition of vegetarian cuisine influenced by religious and cultural practices. Lentils, chickpeas, vegetables, and dairy products form the foundation of many vegetarian dishes, celebrated for their nutritional value and intricate flavors. Staples like paneer (Indian cottage cheese) and dal (lentil curry) showcase the artistry of vegetarian cooking.\r\n\r\nStreet Food: The Soul of Indian Snacking\r\nIndian street food is a vibrant reflection of everyday life, offering a kaleidoscope of flavors in convenient, handheld bites. From spicy chaat (savory snacks) to crispy samosas and fluffy dosas, street vendors across India serve up an array of tantalizing treats that captivate locals and tourists alike.\r\n\r\nTandoori and Grilled Delicacies\r\nTandoori cooking, popularized by the use of clay ovens called tandoors, brings forth succulent kebabs, marinated meats, and naan breads with a distinct smoky flavor. Tandoori chicken and paneer tikka are beloved classics that showcase the art of grilling and marinating in Indian cuisine.\r\n\r\nSweet Endings: Indian Desserts\r\nIndian desserts are a celebration of sweetness and indulgence. From creamy kheer (rice pudding) and decadent gulab jamun (deep-fried dough balls in syrup) to delicate rasgullas (spongy cheese balls) and flaky jalebis (syrup-soaked spirals), Indian sweets offer a delightful conclusion to any meal.\r\n\r\nCulinary Traditions and Festivals\r\nIndian festivals and celebrations are marked by elaborate feasts and culinary rituals that honor cultural heritage. Diwali, Holi, and Eid are just a few occasions where families come together to prepare traditional dishes, share meals, and strengthen bonds over food.', '1714238983blog52.jpg', '2024-04-27 17:29:43', 6, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(12, 'Kamir', 'khan', 'Kamir', 'kamir6155@gmail.com', '$2y$10$xXuckDe6MdMm1i34wqKsXOrKzijjp1NeQYi92cDSRTM45BzjLT6u.', '1758041898avatar15.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
