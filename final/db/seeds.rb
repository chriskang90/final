Festival.delete_all
Location.delete_all
Artist.delete_all
Genre.delete_all
Performer.delete_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Genre.create([
	{
		name: 'Music', 
		description: "A music festival is a festival oriented towards music that is sometimes presented with a theme such as musical genre, nationality or locality of musicians, or holiday. They are commonly held outdoors, and are often inclusive of other attractions such as food and merchandise vending, performance art, and social activities. Many festivals are annual, or repeat at some other interval. Some, including many rock festivals, are held only once. Some festivals are organized as for-profit concerts and others are benefits for a specific cause. Another type of music festival is the educative type, organized annually in local communities, regionally or nationally, for the benefit of amateur musicians of all ages and grades of achievement. (Source: Wikipedia)"
	}])

Location.create([
	{
		name: 'Grant Park', 
		photo_url: 'http://media-cdn.tripadvisor.com/media/photo-s/01/20/45/66/vista-with-lawn-fountain.jpg',
		description: "Grant Park is a large urban park (319 acres or 1.29 km²) in the Loop community area of Chicago. Located in Chicago's central business district, the park's most notable features are Millennium Park, Buckingham Fountain, the Art Institute of Chicago and the Museum Campus. Originally known as Lake Park, and dating from the city's founding, it was renamed in 1901 to honor Ulysses S. Grant. The park's area has been expanded several times through land reclamation, and was the focus of several disputes in the late 1800s and early 1900s over open space use. It is bordered on the north by Randolph Street, on the south by Roosevelt Road and McFetridge Drive, on the west by Michigan Avenue and on the east by Lake Michigan. The park contains performance venues, gardens, art work, sporting, and harbor facilities. It hosts public gatherings, and several large annual events.
The park is often called 'Chicago's front yard'. It is governed by the Chicago Park District. (Source: Wikipedia)"
	},
	{
		name: 'Highland Park', 
		photo_url: 'http://upload.wikimedia.org/wikipedia/commons/f/f3/20080706_Ravinia_Festival.JPG',
		description: "Highland Park is an affluent suburban municipality in Lake County, Illinois, United States, about 26 miles (42 km) north of downtown Chicago. As of the 2010 census, the population was 29,763. Highland Park is one of several municipalities located on the North Shore of the Chicago Metropolitan Area. (Source: Wikipedia)"
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
	}])

Artist.create([
	{
		name: 'Katy Perry',
		age: 30,
		birthplace: 'Santa Barbara, California',
		years_active: '15',
		website: 'katyperry.com'
	}])

Performer.create([
	{
		festival_id: Festival.find_by(name:'Lollapalooza').id,
		artist_id: Artist.find_by(name:'Katy Perry').id
	}])

puts "Seeded successfully."