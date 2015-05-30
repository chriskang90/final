Festival.delete_all
Location.delete_all
Artist.delete_all
Genre.delete_all
Performance.delete_all

Genre.create([
	{
		name: 'Music', 
		description: "A music festival is a festival oriented towards music that is sometimes presented with a theme such as musical genre, nationality or locality of musicians, or holiday. They are commonly held outdoors, and are often inclusive of other attractions such as food and merchandise vending, performance art, and social activities. Many festivals are annual, or repeat at some other interval. Some, including many rock festivals, are held only once. Some festivals are organized as for-profit concerts and others are benefits for a specific cause. Another type of music festival is the educative type, organized annually in local communities, regionally or nationally, for the benefit of amateur musicians of all ages and grades of achievement. (Source: Wikipedia)"
	},
	{
		name: 'Food', 
		description: "A food festival is a festival, usually held annually, that uses food, often produce, as its central theme. These festivals have always been a means of uniting communities through celebrations of harvests and giving thanks for a plentiful growing season. They can be traced back thousands of years to celebrating the arrival of harvest time, the autumnal equinox, and the honoring of earth gods. (Source: Wikipedia)"
	},
	{
		name: 'Arts', 
		description: "An arts festival is a festival that features the arts in a wide sense of the word, not just visual arts. Festivals of visual arts are not to be confused with the commercial art fair. Artists participate in the most important of such festival exhibitions by invitation, and these exhibitions (e.g. the Venice Biennale) are organised by internationally recognized curators chosen by a committee of peers. These international exhibitions must also be distinguished from art fairs, market-oriented gatherings of art dealers and their wares, which have recently emerged as among the most important art-world venues for promoting artists and sales of contemporary art in the present-day super-heated art market. (Source: Wikipedia)"
	}])

Location.create([
	{
		name: 'Grant Park', 
		address: '337 E Randolph St. Chicago, IL 60601',
		photo_url: 'http://media-cdn.tripadvisor.com/media/photo-s/01/20/45/66/vista-with-lawn-fountain.jpg',
		description: "Grant Park is a large urban park (319 acres or 1.29 km²) in the Loop community area of Chicago. Located in Chicago's central business district, the park's most notable features are Millennium Park, Buckingham Fountain, the Art Institute of Chicago and the Museum Campus. Originally known as Lake Park, and dating from the city's founding, it was renamed in 1901 to honor Ulysses S. Grant. The park's area has been expanded several times through land reclamation, and was the focus of several disputes in the late 1800s and early 1900s over open space use. It is bordered on the north by Randolph Street, on the south by Roosevelt Road and McFetridge Drive, on the west by Michigan Avenue and on the east by Lake Michigan. The park contains performance venues, gardens, art work, sporting, and harbor facilities. It hosts public gatherings, and several large annual events.
The park is often called 'Chicago's front yard'. It is governed by the Chicago Park District. (Source: Wikipedia)"
	},
	{
		name: 'Highland Park', 
		address: 'Highland Park, IL',
		photo_url: 'http://upload.wikimedia.org/wikipedia/commons/f/f3/20080706_Ravinia_Festival.JPG',
		description: "Highland Park is an affluent suburban municipality in Lake County, Illinois, United States, about 26 miles (42 km) north of downtown Chicago. As of the 2010 census, the population was 29,763. Highland Park is one of several municipalities located on the North Shore of the Chicago Metropolitan Area. (Source: Wikipedia)"
	},
	{
		name: 'Bucktown', 
		address: 'Bucktown, Chicago, IL',
		photo_url: 'http://chicago-househunter.com/wp-content/uploads/2013/10/Bucktown2.jpg',
		description: "Bucktown is a neighborhood located in the east of the Logan Square community area in Chicago, directly north of Wicker Park, and northwest of the Loop. Bucktown gets its name from the large number of goats raised in the neighborhood during the 19th century when it was an integral part of the city's famed Polish Downtown. The original Polish term for the neighborhood was Kozie Prery (Goat Prairie). Its boundaries are Fullerton Ave. to the north, Western Avenue to the west, Bloomingdale or North Avenue to the south, and the Kennedy Expressway to the east. Bucktown's original boundaries were Fullerton Avenue, Damen Avenue (formerly Robey Street), Armitage Avenue and Western Avenue."
	}])

Festival.create([
	{
		name: 'Lollapalooza', 
		price: 110, 
		website: 'http://www.lollapalooza.com/',
		date_start: DateTime.new(2015, 7, 31),
		date_end: DateTime.new(2015, 8, 2),
		description: "An annual music festival featuring popular alternative rock,heavy metal, punk rock and hip hop bands, dance and comedy performances and craft booths. It has also provided a platform for non-profit and political groups and various visual artists.
Conceived and created in 1991 by Jane's Addiction singer Perry Farrell as a farewell tour for his band, Lollapalooza ran annually until 1997, and was revived in 2003. From its inception through 1997 and its revival in 2003, the festival toured North America. In 2004, the festival organizers decided to expand the dates to two days per city, but poor ticket sales forced the 2004 tour to be canceled. In 2005, Farrell and the William Morris Agency partnered with Austin, Texas–based company Capital Sports Entertainment (now C3 Presents) and retooled it into its current format as a weekend destination festival in Grant Park, Chicago, Illinois. (Source: Wikipedia)
",
		logo_url: 'http://lolp1.c3cdn.com/wp/wp-content/uploads/2013/12/logo.png',
		location_id: Location.find_by(name:'Grant Park').id,
		genre_id: Genre.find_by(name: 'Music').id
	},
	{
		name: 'Taste of Chicago', 
		price: 30, 
		website: 'http://tasteofchicago.com',
		date_start: DateTime.new(2015, 7, 8),
		date_end: DateTime.new(2015, 7, 15),
		description: "The Taste of Chicago (mostly known as The Taste) is the world's largest food festival, held annually in mid-July in Chicago in Grant Park. The event is the largest festival in Chicago. Non-food-related events include live music on multiple stages, including the Petrillo Music Shell, pavilions, and film performances. Musical acts vary from local artists to nationally known artists like Carlos Santana, Moby, Kenny Rogers or Robert Plant. Since 2008, The Chicago Country Music Festival no longer occurs simultaneously with Taste of Chicago as it departed the Taste of Chicago for its own two-day festival typically held in the fall. Rides are also present, such as a Ferris wheel and the Jump to Be Fit.",
		logo_url: 'http://www.cityofchicago.org/content/dam/city/depts/dca/Taste%20of%20Chicago/TasteBanner2.jpg',
		location_id: Location.find_by(name: 'Grant Park').id,
		genre_id: Genre.find_by(name: 'Food').id
	},
	{
		name: 'Ravinia', 
		price: 60, 
		website: 'https://www.ravinia.org/',
		date_start: DateTime.new(2015, 5, 16),
		date_end: DateTime.new(2015, 9, 12),
		description: "The Ravinia Festival is the oldest outdoor music festival in the United States, with a series of outdoor concerts and performances held every summer from June to September. It has been the summer home of the Chicago Symphony Orchestra since 1936. Located in Highland Park, IL, the festival operates on the grounds of Ravinia Park, with a variety of outdoor and indoor performing arts facilities.
The Ravinia neighborhood, once an incorporated village before annexation in 1899, is known as Ravinia, and retained its own post office until autumn 2010. The business district on Roger Williams Ave., within walking distance from the Ravinia Festival grounds, includes neighborhood service businesses and restaurants. Ravinia takes its name from the ravines found nearby along the shoreline of Lake Michigan. (Source: Wikipedia)
",
		logo_url: 'https://www.ravinia.org/Content/Images/RaviniaLogo.jpg',
		location_id: Location.find_by(name: 'Highland Park').id,
		genre_id: Genre.find_by(name: 'Music').id
	},
	{
		name: 'Bucktown Arts Fest', 
		price: 5, 
		website: 'http://bucktownartsfest.com/',
		date_start: DateTime.new(2015, 8, 29),
		date_end: DateTime.new(2015, 8, 30),
		description: "The Bucktown Arts Fest is a non-profit, all-volunteer run, neighborhood celebration of the arts. All proceeds from the fest go to fund, develop and support arts education programming at Holstein Park and in the Bucktown/Wicker Park neighborhoods. Going strong for more than 30 years. What began as four artists showing their work in the park has grown into a community tradition that hosts an estimated 40,000 people each year. We were thrilled to be voted 2013 “Best Art Sale” in the Chicago Reader Readers’ Pick Poll. Our fest is free to the public. We have no gates and no donation request. True to our roots, we are an arts fest put together by the community, for our community. If you wish to support our mission, we do have donation boxes at the Info Tent and the Beer Tent or you can join our Buck Up Club.",
		logo_url: 'http://bucktownartsfest.com/wp-content/uploads/2015/05/Screenshot-2015-04-30-20.33.17.png',
		location_id: Location.find_by(name: 'Bucktown').id,
		genre_id: Genre.find_by(name: 'Arts').id
	}])

Artist.create([
	{
		name: 'Katy Perry',
		website: 'http://katyperry.com'
	},
	{
		name: 'Kid Cudi',
		website: 'http://www.kidcudi.com/'
	},
	{
		name: 'Beat Kitchen',
		website: 'http://www.beatkitchen.com/'

	},
	{
		name: 'Gold Coast Dogs',
		website: 'http://www.goldcoastdogs.net/site/index.html'

	},
	{
		name: 'Carla Bank',
		website: 'http://www.carlabank.com'
	},
	{
		name: 'Bremer Matthew',
		website: 'http://www.colouroutofspaceworkshop.com'
	}])

Performance.create([
	{
		festival_id: Festival.find_by(name:'Lollapalooza').id,
		artist_id: Artist.find_by(name:'Katy Perry').id
	},
	{
		festival_id: Festival.find_by(name:'Lollapalooza').id,
		artist_id: Artist.find_by(name:'Kid Cudi').id
	},
	{
		festival_id: Festival.find_by(name:'Taste of Chicago').id,
		artist_id: Artist.find_by(name:'Beat Kitchen').id
	},
	{
		festival_id: Festival.find_by(name:'Taste of Chicago').id,
		artist_id: Artist.find_by(name:'Gold Coast Dogs').id
	},
	{
		festival_id: Festival.find_by(name:'Bucktown Arts Fest').id,
		artist_id: Artist.find_by(name:'Carla Bank').id
	},
	{
		festival_id: Festival.find_by(name:'Bucktown Arts Fest').id,
		artist_id: Artist.find_by(name:'Bremer Matthew').id
	}])

puts "Seeded successfully."