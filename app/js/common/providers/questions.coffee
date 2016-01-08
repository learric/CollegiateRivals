angular.module("ionicstarter")

.provider 'QuestionProvider', ->
  questions = [
    {
      category: ''
      firstLine: 'A raised, level piece of land:'
      lastLine: ''
      answers: ['canyon', 'plain', 'valley', 'plateau']
    },

    {
      category: ''
      firstLine: 'A long, low place between hills or mountains:'
      lastLine: ''
      answers: ['canyon', 'gorge', 'trough', 'valley']
    },

    {
      category: ''
      firstLine: 'A way of showing size or distance on a map is with a:'
      lastLine: ''
      answers: ['score', 'key', 'grid', 'scale']
    },

    {
      category: ''
      firstLine: 'Distance above sea level:'
      lastLine: ''
      answers: ['contour', 'depression', 'topography', 'elevation']
    },

    {
      category: ''
      firstLine: 'A group of people joined by a common interest:'
      lastLine: ''
      answers: ['pack', 'gathering', 'flock', 'clan']
    },

    {
      category: ''
      firstLine: 'A long period with little or no rainfall is a:'
      lastLine: ''
      answers: ['season', 'mix-up', 'flood', 'drought']
    },

    {
      category: ''
      firstLine: 'A very great shortage of food:'
      lastLine: ''
      answers: ['surplus', 'feast', 'bounty', 'famine']
    },

    {
      category: ''
      firstLine: 'The largest bodies of salt water on the earth’s surface is:'
      lastLine: ''
      answers: ['streams', 'rivers', 'lakes', 'oceans']
    },

    {
      category: ''
      firstLine: 'About how many miles is it around the earth?'
      lastLine: ''
      answers: ['10,000', '5,000', '25,000', '60,000']
    },

    {
      category: ''
      firstLine: 'The largest bodies of land on the earth’s surface:'
      lastLine: ''
      answers: ['islands', 'countries', 'counties', 'continents']
    },

    {
      category: ''
      firstLine: 'The Sahara Desert is on what continent?'
      lastLine: ''
      answers: ['Asia', 'North America', 'South America', 'Africa']
    },

    {
      category: ''
      firstLine: 'A deep valley with very steep sides:'
      lastLine: ''
      answers: ['mountain', 'slope', 'plain', 'canyon']
    },

    {
      category: ''
      firstLine: 'The largest river in Alaska is the:'
      lastLine: ''
      answers: ['Hudson River', 'Chattahoochee River', 'Mississippi River', 'Yukon River']
    },

    {
      category: ''
      firstLine: 'The lines on a map made from meridians and parallels:'
      lastLine: ''
      answers: ['axis', 'longitude', 'latitude', 'grids']
    },

    {
      category: ''
      firstLine: 'The zero north – south line on the globe is the:'
      lastLine: ''
      answers: ['line of latitude', 'line of longitude', 'equator', 'prime meridian']
    },

    {
      category: ''
      firstLine: 'Land built up in the sea by a river:'
      lastLine: ''
      answers: ['region', 'delta', 'bay', 'peninsula']
    },

    {
      category: ''
      firstLine: 'The place where a river begins is called the:'
      lastLine: ''
      answers: ['river basin', 'river system', 'tributary', 'river source']
    },

    {
      category: ''
      firstLine: 'A Native American game:'
      lastLine: ''
      answers: ['tennis', 'basketball', 'soccer', 'lacrosse']
    },

    {
      category: ''
      firstLine: 'The northern end of the earth’s axis is the:'
      lastLine: ''
      answers: ['south pole', 'equator', 'international date line', 'north pole']
    },

    {
      category: ''
      firstLine: 'The explorer that searched for the Fountain of Youth:'
      lastLine: ''
      answers: ['Balboa', 'DeSoto', 'Magellan', 'Ponce de Leon']
    },

    {
      category: ''
      firstLine: 'The number of Senators from each state in the U.S.:'
      lastLine: ''
      answers: ['1', '3', '4', '2']
    },

    {
      category: ''
      firstLine: 'The explorer that discovered the Pacific Ocean was:'
      lastLine: ''
      answers: ['DeSoto', 'Magellan', 'DeGama', 'Balboa']
    },

    {
      category: ''
      firstLine: 'A lack of jobs:'
      lastLine: ''
      answers: ['application', 'trade', 'chore', 'unemployment']
    },

    {
      category: ''
      firstLine: 'The explorer that discovered the Mississippi River was:'
      lastLine: ''
      answers: ['Cortez', 'Columbus', 'Ponce de Leon', 'DeSoto']
    },

    {
      category: ''
      firstLine: 'A graph that shows information through symbols is a:'
      lastLine: ''
      answers: ['pie graph', 'bar graph', 'line graph', 'picture graph']
    },

    {
      category: ''
      firstLine: 'A person traveling for religious reasons is called a:'
      lastLine: ''
      answers: ['voyager', 'sightseer', 'tourist', 'pilgrim']
    },

    {
      category: ''
      firstLine: 'The state of Iowa’s most important crop is:'
      lastLine: ''
      answers: ['tobacco', 'rice', 'watermelons', 'corn']
    },

    {
      category: ''
      firstLine: 'A student of a master crafts worker is called:'
      lastLine: ''
      answers: ['an expert', 'a professional', 'a master', 'an apprentice']
    },

    {
      category: ''
      firstLine: 'The last of the original 13 colonies was:'
      lastLine: ''
      answers: ['North Carolina', 'Virginia', 'West Virginia', 'Georgia']
    },

    {
      category: ''
      firstLine: 'Sugar beets are grown for the sugar in their:'
      lastLine: ''
      answers: ['leaves', 'stems', 'berries', 'roots']
    },

    {
      category: ''
      firstLine: 'The publisher of “Poor Richard’s Almanac” was:'
      lastLine: ''
      answers: ['Patrick Henry', 'John Jacobs', 'James Owen', 'Benjamin Franklin']
    },

    {
      category: ''
      firstLine: 'The word Parliament refers to the:'
      lastLine: ''
      answers: ['American lawmaking body', 'French lawmaking body', 'Spanish lawmaking body', 'British lawmaking body']
    },

    {
      category: ''
      firstLine: 'A person who helps free a country is a:'
      lastLine: ''
      answers: ['representative', 'dictator', 'king', 'liberator']
    },

    {
      category: ''
      firstLine: 'How many states border Mexico?'
      lastLine: ''
      answers: ['5', '3', '2', '4']
    },

    {
      category: ''
      firstLine: 'The state that borders only one other state is:'
      lastLine: ''
      answers: ['Michigan', 'Alaska', 'Washington', 'Maine']
    },

    {
      category: ''
      firstLine: 'The state that is completely surrounded by water is:'
      lastLine: ''
      answers: ['Alaska', 'Florida', 'California', 'Hawaii']
    },

    {
      category: ''
      firstLine: 'What famous person was called “Old Hickory”?'
      lastLine: ''
      answers: ['Abe Lincoln', 'Robert E. Lee', 'John Q. Adams', 'Andrew Jackson']
    },

    {
      category: ''
      firstLine: 'The President of the United States during most of the “Great Depression” was:'
      lastLine: ''
      answers: ['Dwight Eisenhower', 'John F. Kennedy', 'Harry S. Truman', 'Franklin D. Roosevelt']
    },

    {
      category: ''
      firstLine: 'Stone tools or other remains of a culture are called:'
      lastLine: ''
      answers: ['implements', 'leftovers', 'habitat', 'artifacts']
    },

    {
      category: ''
      firstLine: 'A train that runs underground in large cities is a(n):'
      lastLine: ''
      answers: ['bus line', 'moleway', 'airport', 'subway']
    },

    {
      category: ''
      firstLine: 'A family of rulers is called a:'
      lastLine: ''
      answers: ['society', 'culture', 'yardstick', 'dynasty']
    },

    {
      category: ''
      firstLine: 'This word means half the earth:'
      lastLine: ''
      answers: ['stratosphere', 'troposphere', 'lithosphere', 'hemisphere']
    },

    {
      category: ''
      firstLine: 'Rich soil carried in water:'
      lastLine: ''
      answers: ['grime', 'soot', 'humus', 'silt']
    },

    {
      category: ''
      firstLine: 'How many hemispheres are there on earth?'
      lastLine: ''
      answers: ['4', '3', '1', '2']
    },

    {
      category: ''
      firstLine: 'What kind of metal is made by mixing tin and copper?'
      lastLine: ''
      answers: ['aluminum', 'gold', 'silver', 'bronze']
    },

    {
      category: ''
      firstLine: 'What is the capital of the United States?'
      lastLine: ''
      answers: ['Philadelphia', 'Boston', 'New York City', 'Washington D.C.']
    },

    {
      category: ''
      firstLine: 'A scientist who studies remains of the past is an:'
      lastLine: ''
      answers: ['archenemy', 'arbitrator', 'architect', 'archaeologist']
    },

    {
      category: ''
      firstLine: 'Poems that tell the adventure of great heroes are:'
      lastLine: ''
      answers: ['musicals', 'songs', 'rhymes', 'epics']
    },

    {
      category: ''
      firstLine: 'Which came first?'
      lastLine: ''
      answers: ['10,000 A.D.', '5,000 B.C.', '5,000 A.D.', '30,000 B.C.']
    },

    {
      category: ''
      firstLine: 'Who is given credit for inventing the telephone?'
      lastLine: ''
      answers: ['Eli Whitney', 'Thomas Edison', 'Wilbur Wright', 'Alexander Graham Bell']
    },

    {
      category: ''
      firstLine: 'A charge for the use of borrowed money is called:'
      lastLine: ''
      answers: ['cash', 'credit', 'budget', 'interest']
    },

    {
      category: ''
      firstLine: 'Who invented the light bulb?'
      lastLine: ''
      answers: ['Ben Franklin', 'Orville Wright', 'Alexander Graham Bell', 'Thomas Edison']
    },

    {
      category: ''
      firstLine: 'A long-established way of doing things is a:'
      lastLine: ''
      answers: ['beginning', 'set up', 'colony', 'custom']
    },

    {
      category: ''
      firstLine: 'Where did the Industrial Revolution begin?'
      lastLine: ''
      answers: ['America', 'France', 'Germany', 'England']
    },

    {
      category: ''
      firstLine: 'A refusal to buy and use goods is a:'
      lastLine: ''
      answers: ['walkout', 'strike', 'pickett', 'boycott']
    },

    {
      category: ''
      firstLine: 'Another word for ore is:'
      lastLine: ''
      answers: ['mine', 'vein', 'blasting', 'metal']
    },

    {
      category: ''
      firstLine: 'A cave is usually made by water wearing away__?:'
      lastLine: ''
      answers: ['plants', 'animals', 'icicles', 'rocks']
    },

    {
      category: ''
      firstLine: 'A written language is a characteristic of:'
      lastLine: ''
      answers: ['the wilderness', 'the Stone Age', 'the prehistoric ages', 'a civilization']
    },

    {
      category: ''
      firstLine: 'The icicle shapes which hang from cave ceilings are:'
      lastLine: ''
      answers: ['stalagmites', 'ice cubes', 'branches', 'stalactites']
    },

    {
      category: ''
      firstLine: 'The name given to the Egyptian god of the sun was:'
      lastLine: ''
      answers: ['Ro', 'Rom', 'Re', 'Ra']
    },

    {
      category: ''
      firstLine: 'The name of a famous cave in Kentucky:'
      lastLine: ''
      answers: ['Mouth Cave', 'Manual Cave', 'Mantua Cave', 'Mammoth Cave']
    },

    {
      category: ''
      firstLine: 'The first emperor of Rome was:'
      lastLine: ''
      answers: ['Homer', 'Julius Caesar', 'Circus Maximus', 'Augustus']
    },

    {
      category: ''
      firstLine: 'What is “Old Faithful”?'
      lastLine: ''
      answers: ['a car', 'an airplane', 'a large evergreen tree', 'a geyser']
    },

    {
      category: ''
      firstLine: 'People who move from place to place to find food and water:'
      lastLine: ''
      answers: ['pilgrims', 'clergy', 'caliphs', 'nomads']
    },

    {
      category: ''
      firstLine: 'The wearing away of soil is called:'
      lastLine: ''
      answers: ['drainage', 'clearing', 'garbage', 'erosion']
    },

    {
      category: ''
      firstLine: 'To exchange or trade one good for another:'
      lastLine: ''
      answers: ['profit', 'expense', 'loss', 'barter']
    },

    {
      category: ''
      firstLine: 'Which of the following help wear away the earth’s surface?'
      lastLine: ''
      answers: ['water', 'wind', 'ice', 'all of the above']
    },

    {
      category: ''
      firstLine: 'The “Badlands” are found in what state?'
      lastLine: ''
      answers: ['North Dakota', 'Nebraska', 'Wyoming', 'South Dakota']
    },

    {
      category: ''
      firstLine: 'Inflation occurs when prices:'
      lastLine: ''
      answers: ['go down', 'stay the same', 'none of the above', 'go up']
    },

    {
      category: ''
      firstLine: 'The second class in a feudal society is the:'
      lastLine: ''
      answers: ['serf', 'page', 'clergy', 'squire']
    },

    {
      category: ''
      firstLine: 'A type of road you pay money to use is a(n):'
      lastLine: ''
      answers: ['county road', 'interstate highway', 'access road', 'turnpike']
    },

    {
      category: ''
      firstLine: 'A kind of Japanese play is called:'
      lastLine: ''
      answers: ['samurai', 'sultanate', 'ideographic writing', 'Noh drama']
    },

    {
      category: ''
      firstLine: 'The food that plants make is:'
      lastLine: ''
      answers: ['fertilizer', 'carbon', 'water', 'sugar']
    },

    {
      category: ''
      firstLine: 'This man designed a car he called the “Model T”:'
      lastLine: ''
      answers: ['Henry Fisher', 'Henry Higgins', 'Henry Etta', 'Henry Ford']
    },

    {
      category: ''
      firstLine: 'A space without air:'
      lastLine: ''
      answers: ['air conditioner', 'pressure', 'compression', 'vacuum']
    },

    {
      category: ''
      firstLine: 'Which of these plants live in the desert?'
      lastLine: ''
      answers: ['lily', 'beech tree', 'orange tree', 'cactus']
    },

    {
      category: ''
      firstLine: 'The process of clipping wool from sheep is called:'
      lastLine: ''
      answers: ['mowing', 'harvesting', 'gathering', 'shearing']
    },

    {
      category: ''
      firstLine: 'The first English explorer to sail around the world:'
      lastLine: ''
      answers: ['Ferdinand Magellan', 'Prince Henry', 'John Calvin', 'Sir Francis Drake']
    },

    {
      category: ''
      firstLine: 'The place where something lives is called its:'
      lastLine: ''
      answers: ['food chain', 'climate', 'atmosphere', 'environment']
    },

    {
      category: ''
      firstLine: 'A large grave for an Egyptian ruler is a:'
      lastLine: ''
      answers: ['hole', 'cave', 'parchment', 'pyramid']
    },

    {
      category: ''
      firstLine: 'The country that started the settlement of Quebec was:'
      lastLine: ''
      answers: ['Spain', 'Portugal', 'England', 'France']
    },

    {
      category: ''
      firstLine: 'It kills plants by sucking out the juices:'
      lastLine: ''
      answers: ['earthworm', 'termite', 'mealworm', 'aphid']
    },

    {
      category: ''
      firstLine: 'The art of building:'
      lastLine: ''
      answers: ['architect', 'arroyos', 'anthropology', 'architecture']
    },

    {
      category: ''
      firstLine: 'The reduction of weapons and armed forces:'
      lastLine: ''
      answers: ['treaty', 'armistice', 'blockade', 'disarmament']
    },

    {
      category: ''
      firstLine: 'It pulls all matter toward the ground:'
      lastLine: ''
      answers: ['battery', 'friction', 'atoms', 'gravity']
    },

    {
      category: ''
      firstLine: 'A pipeline that brought water to Roman cities was an:'
      lastLine: ''
      answers: ['aquarium', 'active pipeline', 'ancient water hose', 'aqueduct']
    },

    {
      category: ''
      firstLine: 'Countries which are controlled by a more powerful country:'
      lastLine: ''
      answers: ['stock', 'block', 'small', 'satellite']
    },

    {
      category: ''
      firstLine: 'Who was the Prime Minister of Britain during World War II?'
      lastLine: ''
      answers: ['Adolph Hitler', 'Franklin Roosevelt', 'Woodrow Wilson', 'Winston Churchill']
    },

    {
      category: ''
      firstLine: 'Electricity moving along a path:'
      lastLine: ''
      answers: ['cycle', 'circuit', 'conductor', 'current']
    },

    {
      category: ''
      firstLine: 'Workers who call a ____, refuse to continue to work.'
      lastLine: ''
      answers: ['demonstration', 'civil rights', 'reserve', 'strike']
    },

    {
      category: ''
      firstLine: 'Who was the first woman Prime Minister of India?'
      lastLine: ''
      answers: ['Madam Chen', 'Mao Tse-tung', 'Menachem Begin', 'Indira Gandhi']
    },

    {
      category: ''
      firstLine: 'Napoleon Bonaparte was from what country?'
      lastLine: ''
      answers: ['England', 'Spain', 'Portugal', 'France']
    },

    {
      category: ''
      firstLine: 'Fish live together in ____:'
      lastLine: ''
      answers: ['flocks', 'herds', 'packs', 'schools']
    },

    {
      category: ''
      firstLine: 'Many birds living together:'
      lastLine: ''
      answers: ['troop', 'pack', 'herd', 'flock']
    },

    {
      category: ''
      firstLine: 'Rocks formed when melted rock matter cools are:'
      lastLine: ''
      answers: ['metamorphic rocks', 'sedimentary rocks', 'changed rocks', 'igneous rocks']
    },

    {
      category: ''
      firstLine: 'A group of insects that live together:'
      lastLine: ''
      answers: ['hive', 'nest', 'school', 'colony']
    },

    {
      category: ''
      firstLine: 'An example of igneous rock is:'
      lastLine: ''
      answers: ['shale', 'limestone', 'sandstone', 'granite']
    },

    {
      category: ''
      firstLine: 'The bee that lays the eggs in the beehive is the:'
      lastLine: ''
      answers: ['drone bee', 'soldier bee', 'worker bee', 'queen bee']
    },

    {
      category: ''
      firstLine: 'The moon moves around the earth approximately every ____ weeks.'
      lastLine: ''
      answers: ['2', '3', '6', '4']
    },

    {
      category: ''
      firstLine: 'The ant that protects the ant colony is the:'
      lastLine: ''
      answers: ['harvester', 'queen', 'worker', 'soldier']
    },

    {
      category: ''
      firstLine: 'Latex comes from what tree?'
      lastLine: ''
      answers: ['pine tree', 'oak tree', 'red maple tree', 'rubber tree']
    },

    {
      category: ''
      firstLine: 'A tuna is a(n):'
      lastLine: ''
      answers: ['reptile', 'amphibian', 'mammal', 'fish']
    },

    {
      category: ''
      firstLine: 'The outer layer of the sun’s atmosphere:'
      lastLine: ''
      answers: ['sunspot', 'elipse', 'photosphere', 'corona']
    },

    {
      category: ''
      firstLine: 'Pigeons live in groups called:'
      lastLine: ''
      answers: ['packs', 'herds', 'colonies', 'flocks']
    },

    {
      category: ''
      firstLine: 'Peanuts are:'
      lastLine: ''
      answers: ['nuts', 'vegetables', 'fruit', 'legumes']
    },

    {
      category: ''
      firstLine: 'Elephants live in:'
      lastLine: ''
      answers: ['packs', 'troops', 'flocks', 'herds']
    },

    {
      category: ''
      firstLine: 'The two official languages of Canada are:'
      lastLine: ''
      answers: ['English and Dutch', 'French and Welsh', 'French and German', 'French and English']
    },

    {
      category: ''
      firstLine: 'A flea is an example of a:'
      lastLine: ''
      answers: ['host', 'protector', 'fish', 'parasite']
    },

    {
      category: ''
      firstLine: 'The two newest states to the United States are:'
      lastLine: ''
      answers: ['Guam and Puerto Rico', 'New Mexico and Nebraska', 'Hawaii and Puerto Rico', 'Alaska and Hawaii']
    },

    {
      category: ''
      firstLine: 'Living things that parasites depend on are called:'
      lastLine: ''
      answers: ['helpers', 'hindrances', 'heels', 'hosts']
    },

    {
      category: ''
      firstLine: 'Removes the top layer of soil to reach the minerals:'
      lastLine: ''
      answers: ['farming', 'herding', 'derrick', 'strip mining']
    },

    {
      category: ''
      firstLine: 'Which of the following is not a part of a flower?'
      lastLine: ''
      answers: ['petals', 'stamen', 'pistil', 'roots']
    },

    {
      category: ''
      firstLine: 'An arid climate is:'
      lastLine: ''
      answers: ['wet', 'hot', 'cold', 'dry']
    },

    {
      category: ''
      firstLine: 'A frog is a(n):'
      lastLine: ''
      answers: ['reptile', 'fish', 'mammal', 'amphibian']
    },

    {
      category: ''
      firstLine: 'The giving off of water vapor by plants is called:'
      lastLine: ''
      answers: ['evaporation', 'perspiration', 'condensation', 'transpiration']
    },

    {
      category: ''
      firstLine: 'A hamster is a(n):'
      lastLine: ''
      answers: ['fish', 'reptile', 'amphibian', 'mammal']
    },

    {
      category: ''
      firstLine: 'The Atlantic is:'
      lastLine: ''
      answers: ['a stream', 'a lake', 'a river', 'an ocean']
    },

    {
      category: ''
      firstLine: 'Birds catch fish with their ____:'
      lastLine: ''
      answers: ['wings', 'wings and feet', 'beak', 'beak and feet']
    },

    {
      category: ''
      firstLine: 'Most green plants grow from:'
      lastLine: ''
      answers: ['leaves', 'roots', 'stems', 'seeds']
    },

    {
      category: ''
      firstLine: 'Chlorophyll is what color?'
      lastLine: ''
      answers: ['brown', 'green', 'yellow', 'none of the above']
    },

    {
      category: ''
      firstLine: 'The part of a plant that takes in water and minerals:'
      lastLine: ''
      answers: ['flower', 'stem', 'pollen', 'roots']
    },

    {
      category: ''
      firstLine: 'The giant sequoia is:'
      lastLine: ''
      answers: ['an animal', 'a statue', 'a picture', 'a tree']
    },

    {
      category: ''
      firstLine: 'The most intelligent group of animals are:'
      lastLine: ''
      answers: ['fish', 'reptiles', 'amphibians', 'mammals']
    },

    {
      category: ''
      firstLine: 'The largest animal in the world is the:'
      lastLine: ''
      answers: ['African elephant', 'polar bear', 'antelope', 'blue whale']
    },

    {
      category: ''
      firstLine: 'The smallest bird on the earth is the:'
      lastLine: ''
      answers: ['canary', 'robin', 'ostrich', 'hummingbird']
    },

    {
      category: ''
      firstLine: 'The tallest animal on earth is the:'
      lastLine: ''
      answers: ['shrew', 'elephant', 'gopher', 'giraffe']
    },

    {
      category: ''
      firstLine: 'An animal that lives in the tundra:'
      lastLine: ''
      answers: ['arctic fox', 'musk ox', 'polar bear', 'all of the above']
    },

    {
      category: ''
      firstLine: 'Home for animals such as ducks, geese, frogs and fish:'
      lastLine: ''
      answers: ['desert', 'grasslands', 'tundra', 'lakes and ponds']
    },

    {
      category: ''
      firstLine: 'What comes out of a butterfly egg when it hatches?'
      lastLine: ''
      answers: ['a cocoon', 'a chrysalis', 'a full-grown butterfly', 'a caterpillar']
    },

    {
      category: ''
      firstLine: 'What is considered to be the longest living animal?'
      lastLine: ''
      answers: ['man', 'elephant', 'parrot', 'giant tortoise']
    },

    {
      category: ''
      firstLine: 'What animal has the shortest life span?'
      lastLine: ''
      answers: ['rat', 'dog', 'butterfly', 'mayfly']
    },

    {
      category: ''
      firstLine: 'What is the fastest flying animal?'
      lastLine: ''
      answers: ['spine-tailed swift', 'bald eagle', 'hawk', 'falcon']
    },

    {
      category: ''
      firstLine: 'What is the fastest land animal?'
      lastLine: ''
      answers: ['horse', 'ostrich', 'road runner', 'cheetah']
    },

    {
      category: ''
      firstLine: 'Frozen raindrops are called:'
      lastLine: ''
      answers: ['rain', 'snow', 'sleet', 'hail']
    },

    {
      category: ''
      firstLine: 'The word extinct means:'
      lastLine: ''
      answers: ['living', 'able to survive', 'thriving', 'no longer living']
    },

    {
      category: ''
      firstLine: 'The weight of the atmosphere is called:'
      lastLine: ''
      answers: ['plates', 'height', 'wind currents', 'pressure']
    },

    {
      category: ''
      firstLine: 'The hard protective case that sea animals form is a:'
      lastLine: ''
      answers: ['coral', 'barnacle', 'sponge', 'shell']
    },

    {
      category: ''
      firstLine: 'Which sea animal has a hard protective shell?'
      lastLine: ''
      answers: ['shark', 'octopus', 'jelly fish', 'oyster']
    },

    {
      category: ''
      firstLine: 'What can crabs grow to replace those lost?'
      lastLine: ''
      answers: ['feelers', 'eyes', 'shells', 'legs']
    },

    {
      category: ''
      firstLine: 'The tube that leads from the throat to the stomach:'
      lastLine: ''
      answers: ['diaphram', 'trachea', 'artery', 'esophagus']
    },

    {
      category: ''
      firstLine: 'A sponge is a(n):'
      lastLine: ''
      answers: ['plant', 'seaweed', 'seashell', 'animal']
    },

    {
      category: ''
      firstLine: 'A basic unit of life:'
      lastLine: ''
      answers: ['system', 'tissue', 'organ', 'cell']
    },

    {
      category: ''
      firstLine: 'If you cut a starfish into pieces, each piece will:'
      lastLine: ''
      answers: ['wither and die', 'grow a new leg', 'grow a new arm', 'grow a new starfish']
    },

    {
      category: ''
      firstLine: 'A shooting, or “falling star”, is called a(n):'
      lastLine: ''
      answers: ['comet', 'asteroid', 'planet', 'meteorite']
    },

    {
      category: ''
      firstLine: 'How many legs does an insect have?'
      lastLine: ''
      answers: ['4', '8', '5', '6']
    },

    {
      category: ''
      firstLine: 'Where does silk come from?'
      lastLine: ''
      answers: ['cotton', 'clover', 'silkweeds', 'silkworms']
    },

    {
      category: ''
      firstLine: 'I have one moon. Who am I?'
      lastLine: ''
      answers: ['Mercury', 'Jupiter', 'Venus', 'Earth']
    },

    {
      category: ''
      firstLine: 'Crickets chirp by:'
      lastLine: ''
      answers: ['using their mouth', 'standing on their heads', 'bouncing up and down', 'rubbing their legs']
    },

    {
      category: ''
      firstLine: 'The number of days it takes the earth to go around the sun:'
      lastLine: ''
      answers: ['364 1/2 days', '344 1/2 days', '369 1/4 days', '365 1/4 days']
    },

    {
      category: ''
      firstLine: 'The planet with “rings” around it:'
      lastLine: ''
      answers: ['Saturn', 'Neptune', 'Jupiter', 'All of the above']
    },

    {
      category: ''
      firstLine: 'A gigantic cluster of stars:'
      lastLine: ''
      answers: ['comet', 'sun', 'solar system', 'galaxy']
    },

    {
      category: ''
      firstLine: 'One of the most famous comets:'
      lastLine: ''
      answers: ['Malloy’s Comet', 'Farley’s Comet', 'Callie’s Comet', 'Halley’s Comet']
    },

    {
      category: ''
      firstLine: 'Fish use these for breathing:'
      lastLine: ''
      answers: ['scales', 'fins', 'air pockets', 'gills']
    },

    {
      category: ''
      firstLine: 'A whale is a:'
      lastLine: ''
      answers: ['fish', 'amphibian', 'reptile', 'mammal']
    },

    {
      category: ''
      firstLine: 'Which bird lays the biggest egg?'
      lastLine: ''
      answers: ['eagle', 'hummingbird', 'crow', 'ostrich']
    },

    {
      category: ''
      firstLine: 'The ocean has:'
      lastLine: ''
      answers: ['volcanoes', 'trenches', 'ridges', 'all of the above']
    },

    {
      category: ''
      firstLine: 'An elephant uses its trunk to:'
      lastLine: ''
      answers: ['smell', 'feel', 'pick things up', 'all of the above']
    },

    {
      category: ''
      firstLine: 'Trees that shed their leaves each year:'
      lastLine: ''
      answers: ['coniferous trees', 'confining trees', 'defiling trees', 'deciduous trees']
    },

    {
      category: ''
      firstLine: 'A kangaroo’s pouch is used to:'
      lastLine: ''
      answers: ['store food', 'store water', 'none of the above', 'put baby inside']
    },

    {
      category: ''
      firstLine: 'How many baby teeth do we have?'
      lastLine: ''
      answers: ['32', '24', '22', '20']
    },

    {
      category: ''
      firstLine: 'Where are the smallest bones in the body found?'
      lastLine: ''
      answers: ['in the toe', 'in the hand', 'in the finger', 'in the ear']
    },

    {
      category: ''
      firstLine: 'Your second set of teeth are:'
      lastLine: ''
      answers: ['partial', 'temporary', 'none of the above', 'permanent']
    },

    {
      category: ''
      firstLine: 'The breaking down of food into usable parts for the body is called:'
      lastLine: ''
      answers: ['indigestion', 'enzymes', 'proteins', 'digestion']
    },

    {
      category: ''
      firstLine: 'The biggest bones in your body are found in your:'
      lastLine: ''
      answers: ['arms', 'feet', 'back', 'thighs']
    },

    {
      category: ''
      firstLine: 'A higher body temperature than normal is called a:'
      lastLine: ''
      answers: ['blood pressure', 'heart attack', 'headache', 'fever']
    },

    {
      category: ''
      firstLine: 'Why do we “sweat”?'
      lastLine: ''
      answers: ['to burn off fat', 'to gain weight', 'to get well', 'to cool off']
    },

    {
      category: ''
      firstLine: 'The skeletal system is made up of:'
      lastLine: ''
      answers: ['organs', 'tissues', 'veins', 'bones']
    },

    {
      category: ''
      firstLine: 'Your heart is a:'
      lastLine: ''
      answers: ['vein', 'cell', 'bone', 'muscle']
    },

    {
      category: ''
      firstLine: 'Coal comes from:'
      lastLine: ''
      answers: ['rocks', 'animals', 'none of the above', 'plants']
    },

    {
      category: ''
      firstLine: 'The moon gets its light from:'
      lastLine: ''
      answers: ['the earth', 'comets', 'the planets', 'the sun']
    },

    {
      category: ''
      firstLine: 'Which tree gives us food?'
      lastLine: ''
      answers: ['pine tree', 'oak tree', 'dogwood tree', 'maple tree']
    },

    {
      category: ''
      firstLine: 'A doorknob is an example of what kind of simple machine?'
      lastLine: ''
      answers: ['screw', 'incline plane', 'pulley', 'wheel and axle']
    },

    {
      category: ''
      firstLine: 'What part of the body puts oxygen in the bloodstream?'
      lastLine: ''
      answers: ['kidneys', 'nose', 'liver', 'lungs']
    },

    {
      category: ''
      firstLine: 'Arteries, veins and capillaries are:'
      lastLine: ''
      answers: ['blood clots', 'white blood cells', 'red blood cells', 'blood vessels']
    },

    {
      category: ''
      firstLine: 'A person who can not tell colors apart is:'
      lastLine: ''
      answers: ['deaf', 'mute', 'color coordinated', 'color blind']
    },

    {
      category: ''
      firstLine: 'A “normal” heartbeat is:'
      lastLine: ''
      answers: ['80-90 times per minute', '30-40 times per minute', '10-20 times per minute', '60-100 times per minute']
    },

    {
      category: ''
      firstLine: 'What is the contraction for can not?'
      lastLine: ''
      answers: ['couldn’t', 'wouldn’t', 'don’t', 'can’t']
    },

    {
      category: ''
      firstLine: 'What is the antonym for increase?'
      lastLine: ''
      answers: ['size', 'fast', 'leash', 'decrease']
    },

    {
      category: ''
      firstLine: 'What is the contraction for I will?'
      lastLine: ''
      answers: ['I’d', 'I’m', 'I’ve', 'I’ll']
    },

    {
      category: ''
      firstLine: 'What is the antonym for silent?'
      lastLine: ''
      answers: ['quiet', 'peaceful', 'still', 'noisy']
    },

    {
      category: ''
      firstLine: 'What is the contraction for we have?'
      lastLine: ''
      answers: ['we’re', 'won’t', 'we’ll', 'we’ve']
    },

    {
      category: ''
      firstLine: 'What is the antonym for often?'
      lastLine: ''
      answers: ['always', 'now', 'present', 'seldom']
    },

    {
      category: ''
      firstLine: 'What is the contraction for they are?'
      lastLine: ''
      answers: ['they’ve', 'they’ll', 'they’d', 'they’re']
    },

    {
      category: ''
      firstLine: 'What is the synonym for obedient?'
      lastLine: ''
      answers: ['unusual', 'object', 'unruly', 'dutiful']
    },

    {
      category: ''
      firstLine: 'What is the contraction for he is?'
      lastLine: ''
      answers: ['she’ll', 'he’d', 'he’ll', 'he’s']
    },

    {
      category: ''
      firstLine: 'What is the synonym for grateful?'
      lastLine: ''
      answers: ['helpful', 'sorrowful', 'careful', 'thankful']
    },

    {
      category: ''
      firstLine: 'What is the synonym for healthy?'
      lastLine: ''
      answers: ['happy', 'ill', 'sick', 'well']
    },

    {
      category: ''
      firstLine: 'What is the synonym for edge?'
      lastLine: ''
      answers: ['start', 'middle', 'beginning', 'border']
    },

    {
      category: ''
      firstLine: 'What is the synonym for smart?'
      lastLine: ''
      answers: ['ignorant', 'none', 'settled', 'bright']
    },

    {
      category: ''
      firstLine: 'What is the antonym for old?'
      lastLine: ''
      answers: ['used', 'rusty', 'elderly', 'young']
    },

    {
      category: ''
      firstLine: 'What is the antonym for never?'
      lastLine: ''
      answers: ['sometimes', 'even', 'perhaps', 'always']
    },

    {
      category: ''
      firstLine: 'What is the antonym for add?'
      lastLine: ''
      answers: ['together', 'join', 'count', 'subtract']
    },

    {
      category: ''
      firstLine: 'What kind of sentence is this? “Where are you going”?'
      lastLine: ''
      answers: ['exclamation', 'statement', 'command', 'question']
    },

    {
      category: ''
      firstLine: 'An interrogative sentence:'
      lastLine: ''
      answers: ['makes a statement', 'gives a command', 'shows strong feeling', 'asks a question']
    },

    {
      category: ''
      firstLine: 'A declarative sentence ends with a:'
      lastLine: ''
      answers: ['.', '!', '?', 'all of the above']
    },

    {
      category: ''
      firstLine: 'An elegant dress is one that is:'
      lastLine: ''
      answers: ['plain', 'unrefined', 'unfashionable', 'exquisite']
    },

    {
      category: ''
      firstLine: 'What part of a sentence tells the person, place or thing?'
      lastLine: ''
      answers: ['clause', 'predicate', 'prepositional phrase', 'subject']
    },

    {
      category: ''
      firstLine: 'To be merciful is to be:'
      lastLine: ''
      answers: ['unfeeling', 'inhumane', 'hardhearted', 'compassionate']
    },

    {
      category: ''
      firstLine: 'Names of persons, places or names are:'
      lastLine: ''
      answers: ['verbs', 'adjectives', 'pronouns', 'nouns']
    },

    {
      category: ''
      firstLine: 'A meticulous housekeeper is one who is:'
      lastLine: ''
      answers: ['careless', 'imprecise', 'negligent', 'particular']
    },

    {
      category: ''
      firstLine: 'Descriptive words that modify nouns or pronouns are:'
      lastLine: ''
      answers: ['prepositions', 'adverbs', 'verbs', 'adjectives']
    },

    {
      category: ''
      firstLine: 'To be forlorn is to be:'
      lastLine: ''
      answers: ['happy', 'elated', 'bursting', 'unhappy']
    },

    {
      category: ''
      firstLine: 'Which of the following is an example of a proper noun?'
      lastLine: ''
      answers: ['holiday', 'knight', 'people', 'England']
    },

    {
      category: ''
      firstLine: 'Which of the following is an example of a proper adjective?'
      lastLine: ''
      answers: ['red', 'yellow', 'lovely', 'Canadian']
    },

    {
      category: ''
      firstLine: 'Words that express strong emotion:'
      lastLine: ''
      answers: ['adjectives', 'conjunctions', 'prepositions', 'interjections']
    },

    {
      category: ''
      firstLine: 'Words that sound alike but are different in spelling and meaning are:'
      lastLine: ''
      answers: ['antonyms', 'homophones', 'synonyms', 'homonyms']
    },

    {
      category: ''
      firstLine: 'Words that mean the same or nearly the same are called:'
      lastLine: ''
      answers: ['interjections', 'homonyms', 'antonyms', 'synonyms']
    },

    {
      category: ''
      firstLine: 'What would you do with an hors d’oeuvre?'
      lastLine: ''
      answers: ['wear it', 'patch it', 'plant it', 'eat it']
    },

    {
      category: ''
      firstLine: 'Which of the following is an example of a prefix?'
      lastLine: ''
      answers: ['ly', 'ous', 'able', 'dis']
    },

    {
      category: ''
      firstLine: 'Which of the following takes the place of a noun?'
      lastLine: ''
      answers: ['noun', 'verb', 'adjective', 'pronoun']
    },

    {
      category: ''
      firstLine: 'Which of the following contains a transitive verb?'
      lastLine: ''
      answers: ['He ran quickly.', 'He swam fast.', 'He jumped high.', 'He threw the ball.']
    },

    {
      category: ''
      firstLine: 'Shortened words with apostrophes are called:'
      lastLine: ''
      answers: ['interjections', 'antonyms', 'prepositions', 'contractions']
    },

    {
      category: ''
      firstLine: 'A word used to modify a verb, an adjective or an adverb?'
      lastLine: ''
      answers: ['noun', 'preposition', 'adjective', 'adverb']
    },

    {
      category: ''
      firstLine: 'Which of the following is not a linking verb?'
      lastLine: ''
      answers: ['was', 'were', 'are', 'play']
    },

    {
      category: ''
      firstLine: 'What is the synonym for manage?'
      lastLine: ''
      answers: ['fumble', 'own', 'sell', 'control']
    },

    {
      category: ''
      firstLine: 'The past participle form of the word play is:'
      lastLine: ''
      answers: ['play', 'playing', 'player', 'played']
    },

    {
      category: ''
      firstLine: 'Which of the following is the correct possessive form?'
      lastLine: ''
      answers: ['six children’s lunches', 'six childrenes lunches', 'six childrens lunches', 'six childrens’ lunches']
    },

    {
      category: ''
      firstLine: 'What part of a book tells what’s in the book?'
      lastLine: ''
      answers: ['title page', 'glossary', 'chapter', 'table of contents']
    },

    {
      category: ''
      firstLine: 'Pencil is to paper as chalk is to___.'
      lastLine: ''
      answers: ['tablet', 'rock', 'book', 'chalkboard']
    },

    {
      category: ''
      firstLine: 'Silk is to soft as iron is to____.'
      lastLine: ''
      answers: ['minerals', 'kettle', 'clothes', 'hard']
    },

    {
      category: ''
      firstLine: 'The pronunciation for the word philatelist would be found'
      lastLine: ''
      answers: ['in an atlas', 'in an encyclopedia', 'in an almanac', 'in a dictionary']
    },

    {
      category: ''
      firstLine: 'What part of a book tells pages on which topics are found?'
      lastLine: ''
      answers: ['glossary', 'table of contents', 'outline', 'index']
    },

    {
      category: ''
      firstLine: 'Which reference source lists articles in magazines?'
      lastLine: ''
      answers: ['table of contents', 'encyclopedia', 'thesaurus', 'the Readers Guide']
    },

    {
      category: ''
      firstLine: 'A list of writings about a given subject or author:'
      lastLine: ''
      answers: ['outline', 'bibliography', 'table of contents', 'biography']
    },

    {
      category: ''
      firstLine: 'The dancer was graceful. The bold word means'
      lastLine: ''
      answers: ['full of dance.', 'without dance.', 'moving to the music.', 'one who dances.']
    },

    {
      category: ''
      firstLine: 'Chronological order is:'
      lastLine: ''
      answers: ['alphabetical order', 'natural order', 'order of importance', 'order of events as they occur']
    },

    {
      category: ''
      firstLine: 'Which list of words is in alphabetical order?'
      lastLine: ''
      answers: ['grasp, green, gripe, grammar', 'grammar, green, gripe, grasp', 'green, grammar, grasp tAnswer', 'grammar, grasp, green, gripe']
    },

    {
      category: ''
      firstLine: '“The saw howled” and “time flies by” are examples of:'
      lastLine: ''
      answers: ['personification', 'simile', 'analogy', 'metaphor']
    },

    {
      category: ''
      firstLine: 'What is an antonym for excited?'
      lastLine: ''
      answers: ['cry', 'unhappy', 'slow', 'calm']
    },

    {
      category: ''
      firstLine: 'Which of the following is an object pronoun?'
      lastLine: ''
      answers: ['I', 'she', 'they', 'me']
    },

    {
      category: ''
      firstLine: 'The _____ dog is playful.'
      lastLine: ''
      answers: ['boys’', 'boyes', 'boies', 'boy’s']
    },

    {
      category: ''
      firstLine: 'Which of the following is not found in an atlas?'
      lastLine: ''
      answers: ['capitals and important cities', 'population', 'land contour maps', 'list of colleges in the U.S.']
    },

    {
      category: ''
      firstLine: 'Which of the following is a subject pronoun?'
      lastLine: ''
      answers: ['they', 'me', 'mine', 'I']
    },

    {
      category: ''
      firstLine: 'The opposite of hot is:'
      lastLine: ''
      answers: ['wet', 'dry', 'same', 'cold']
    },

    {
      category: ''
      firstLine: 'He is eating lunch. The word “he” is:'
      lastLine: ''
      answers: ['a verb', 'an adjective', 'a pronoun', 'a noun']
    },

    {
      category: ''
      firstLine: 'The poetry form Haiku originated in:'
      lastLine: ''
      answers: ['England', 'France', 'Germany', 'Japan']
    },

    {
      category: ''
      firstLine: 'The opposite of run is:'
      lastLine: ''
      answers: ['skip', 'hop', 'jump', 'walk']
    },

    {
      category: ''
      firstLine: 'Some girls play the piano. The word play is:'
      lastLine: ''
      answers: ['a noun', 'an adjective', 'a pronoun', 'a verb']
    },

    {
      category: ''
      firstLine: 'Haiku has a syllabic pattern of:'
      lastLine: ''
      answers: ['3-4-6', '5-7-3', '6-1-3', '5-7-5']
    },

    {
      category: ''
      firstLine: 'What is the root word in the word mailed?'
      lastLine: ''
      answers: ['ail', 'led', 'mailed', 'mail']
    },

    {
      category: ''
      firstLine: 'A sympathetic person would be one who is:'
      lastLine: ''
      answers: ['cold hearted', 'inhumane', 'insensitive', 'compassionate']
    },

    {
      category: ''
      firstLine: 'What word means the same as the word hurry?'
      lastLine: ''
      answers: ['fell', 'slow', 'ready', 'rushed']
    },

    {
      category: ''
      firstLine: 'Fish is to scale…as bird is to___.'
      lastLine: ''
      answers: ['air', 'nest', 'music', 'feather']
    },

    {
      category: ''
      firstLine: 'Mouth is to taste…as eye is to___.'
      lastLine: ''
      answers: ['face', 'eyeball', 'body', 'see']
    },

    {
      category: ''
      firstLine: 'What is the root word in the word witches?'
      lastLine: ''
      answers: ['itch', 'itches', 'witches', 'witch']
    },

    {
      category: ''
      firstLine: 'Tall is to short…as fast is to___.'
      lastLine: ''
      answers: ['taller', 'tester', 'slower', 'slow']
    },

    {
      category: ''
      firstLine: 'What is the root word in the word slower?'
      lastLine: ''
      answers: ['lower', 'slower', 'low', 'slow']
    },

    {
      category: ''
      firstLine: 'Which word is spelled incorrectly?'
      lastLine: ''
      answers: ['curiosity', 'courteous', 'necessary', 'nickle']
    },

    {
      category: ''
      firstLine: 'Which word is spelled incorrectly?'
      lastLine: ''
      answers: ['accommodate', 'until', 'weird', 'occurence']
    },

    {
      category: ''
      firstLine: 'Still means:'
      lastLine: ''
      answers: ['cheerful', 'loud', 'noisy', 'quiet']
    },

    {
      category: ''
      firstLine: 'Which word is spelled incorrectly?'
      lastLine: ''
      answers: ['thorough', 'twelfth', 'parallel', 'vengance']
    },

    {
      category: ''
      firstLine: 'Sam is visiting _____ uncle in New York.'
      lastLine: ''
      answers: ['and', 'a', 'none of the above', 'an']
    },

    {
      category: ''
      firstLine: 'Which word is misspelled?'
      lastLine: ''
      answers: ['mistake', 'rewrite', 'correct', 'sentense']
    },

    {
      category: ''
      firstLine: 'Which word is misspelled?'
      lastLine: ''
      answers: ['awkward', 'sergeant', 'villain', 'noticable']
    },

    {
      category: ''
      firstLine: 'Which word is spelled incorrectly?'
      lastLine: ''
      answers: ['disappear', 'picnicked', 'definite', 'pasttime']
    },

    {
      category: ''
      firstLine: 'What word means the same as the word cheerful?'
      lastLine: ''
      answers: ['sad', 'empty', 'hopeless', 'happy']
    },

    {
      category: ''
      firstLine: 'Which word is the plural for fungus?'
      lastLine: ''
      answers: ['funguses', 'fungus’s', 'funges', 'fungi']
    },

    {
      category: ''
      firstLine: 'Which word is the plural for alto?'
      lastLine: ''
      answers: ['altoes', 'altoses', 'alto’s', 'altos']
    },

    {
      category: ''
      firstLine: 'Which word is misspelled?'
      lastLine: ''
      answers: ['tide', 'helping', 'following', 'tieing']
    },

    {
      category: ''
      firstLine: 'The word whether means:'
      lastLine: ''
      answers: ['a climate', 'a praise', 'a quote', 'an alternative']
    },

    {
      category: ''
      firstLine: 'Which word should be capitalized? The country of china is far away.'
      lastLine: ''
      answers: ['away', 'far', 'country', 'china']
    },

    {
      category: ''
      firstLine: 'An antonym for grotesque is:'
      lastLine: ''
      answers: ['deformed', 'abnormal', 'strange', 'normal']
    },

    {
      category: ''
      firstLine: 'An antonym for nobility is:'
      lastLine: ''
      answers: ['dignity', 'generosity', 'grandeur', 'commonness']
    },

    {
      category: ''
      firstLine: 'What is the plural of stimulus?'
      lastLine: ''
      answers: ['stimuluses', 'stimules', 'stimulus', 'stimuli']
    },

    {
      category: ''
      firstLine: 'Which of these add up to 25 cents?'
      lastLine: ''
      answers: ['4 nickels', '3 dimes', '1 dime and two nickels', '2 dimes and one nickel']
    },

    {
      category: ''
      firstLine: 'Deka means:'
      lastLine: ''
      answers: ['1000', '0.1', '100', '10']
    },

    {
      category: ''
      firstLine: '84 is greater than:'
      lastLine: ''
      answers: ['96', '105', '90', '54']
    },

    {
      category: ''
      firstLine: 'How many meters are there in one kilometer?'
      lastLine: ''
      answers: ['10', '100', '1', '1,000']
    },

    {
      category: ''
      firstLine: '26 is less than:'
      lastLine: ''
      answers: ['16', '15', '21', '59']
    },

    {
      category: ''
      firstLine: 'How many centimeters are in 1 meter?'
      lastLine: ''
      answers: ['10', '1', '1,000', '100']
    },

    {
      category: ''
      firstLine: 'Which of the following is the greatest?'
      lastLine: ''
      answers: ['29', '54', '32', '61']
    },

    {
      category: ''
      firstLine: 'How many feet in a mile?'
      lastLine: ''
      answers: ['1,760', '100', '3,456', '5,280']
    },

    {
      category: ''
      firstLine: 'Which is the smallest number?'
      lastLine: ''
      answers: ['101', '94', '65', '61']
    },

    {
      category: ''
      firstLine: 'The distance you could walk in a half-hour?'
      lastLine: ''
      answers: ['10 centimeters', '150 inches', '15 yards', 'about 1-1/2 miles']
    },

    {
      category: ''
      firstLine: 'What is the same as forty five?'
      lastLine: ''
      answers: ['95', '35', '40', '45']
    },

    {
      category: ''
      firstLine: 'What customary unit of measure would you use to measure the height of a building?'
      lastLine: ''
      answers: ['miles', 'inches', 'centimeters', 'feet']
    },

    {
      category: ''
      firstLine: '5, 10, 15, 20, ____.'
      lastLine: ''
      answers: ['30', '20', '35', '25']
    },

    {
      category: ''
      firstLine: '3:20 pm would be the same as_____ on a 24 hour clock.'
      lastLine: ''
      answers: ['20:00 hours', '32:00 hours', '1520 hours', '03:20 hours']
    },

    {
      category: ''
      firstLine: 'If you have one-half of 10 you have how many?'
      lastLine: ''
      answers: ['9', '6', '3', '5']
    },

    {
      category: ''
      firstLine: 'To compare two quantities you use:'
      lastLine: ''
      answers: ['per cent', 'rate', 'base', 'ratio']
    },

    {
      category: ''
      firstLine: '24 strawberries + 20 grapes = ____?'
      lastLine: ''
      answers: ['44 basketballs', '44 oranges', '40 fruits', '44 fruits']
    },

    {
      category: ''
      firstLine: 'Which of the following is a prime number?'
      lastLine: ''
      answers: ['9', '10', '12', '5']
    },

    {
      category: ''
      firstLine: 'Which of the following is a composite number?'
      lastLine: ''
      answers: ['13', '23', '37', '8']
    },

    {
      category: ''
      firstLine: 'Which word should be capitalized? My birthday is on saturday.'
      lastLine: ''
      answers: ['my', 'birthday', 'on', 'saturday']
    },

    {
      category: ''
      firstLine: 'In the number 1,724,693 – the seven has what place value?'
      lastLine: ''
      answers: ['thousands', 'tens', 'hundreds', 'hundred thousands']
    },

    {
      category: ''
      firstLine: 'Which one is a 4 in Roman Numerals?'
      lastLine: ''
      answers: ['V', 'VI', 'IX', 'IV']
    },

    {
      category: ''
      firstLine: 'In the number 1,833 – the eight has what place value?'
      lastLine: ''
      answers: ['thousands', 'tens', 'hundred thousands', 'hundreds']
    },

    {
      category: ''
      firstLine: 'Round 2,936 to the nearest hundred.'
      lastLine: ''
      answers: ['2,000', '2,930', '2,936', '2,900']
    },

    {
      category: ''
      firstLine: 'In 5/6 the 5 is called the:'
      lastLine: ''
      answers: ['denominator', 'reciprocal', 'fractional', 'numerator']
    },

    {
      category: ''
      firstLine: 'How many ounces are there in two pounds?'
      lastLine: ''
      answers: ['12', '16', '38', '32']
    },

    {
      category: ''
      firstLine: 'Which of the following is a mixed numeral?'
      lastLine: ''
      answers: ['3.193', '60%', '8/12', '3 8/12']
    },

    {
      category: ''
      firstLine: '16 quarts equals ____ gallons:'
      lastLine: ''
      answers: ['2', '3', '6', '4']
    },

    {
      category: ''
      firstLine: 'Simplify 10/6:'
      lastLine: ''
      answers: ['1- 4/6', '1- 4/10', '1- 2/3', '5/3']
    },

    {
      category: ''
      firstLine: 'How many pints are there in one gallon?'
      lastLine: ''
      answers: ['16', '4', '6', '8']
    },

    {
      category: ''
      firstLine: 'Compare 9/10 to 7/10:'
      lastLine: ''
      answers: ['less than', 'equal to', 'none of the above', 'greater than']
    },

    {
      category: ''
      firstLine: 'In the number 75 – the 5 is in the ____ place.'
      lastLine: ''
      answers: ['tens', 'hundreds', 'thousands', 'ones']
    },

    {
      category: ''
      firstLine: 'In the number 61 – the 6 is in the _____ place.'
      lastLine: ''
      answers: ['hundreds', 'ones', 'thousands', 'tens']
    },

    {
      category: ''
      firstLine: 'A parallelogram with 4 congruent sides is:'
      lastLine: ''
      answers: ['a square', 'a rectangle', 'a triangle', 'a rhombus']
    },

    {
      category: ''
      firstLine: 'A triangle with 3 sides of equal length is a(n):'
      lastLine: ''
      answers: ['isosceles', 'scalene', 'right triangle', 'equilateral']
    },

    {
      category: ''
      firstLine: 'Lines that never intersect are:'
      lastLine: ''
      answers: ['perpendicular', 'vertical', 'straight', 'parallel']
    }
  ]

  return {
    $get: ->
      return questions
  }
