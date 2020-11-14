create table TB_CHARACTERS (
	character_id INT,
	name VARCHAR(50),
	description VARCHAR(2000),
	curiosities VARCHAR(2000),
	photos VARCHAR(50)
);

create table TB_PHOTOS (
	photos_id INT,
	path VARCHAR(2000),
	year VARCHAR(4),
	descriptionOld VARCHAR(2000),
	descriptionActual VARCHAR(2000)
);

create table TB_EVENTS (
	events_id INT,
	title VARCHAR(50),
	link VARCHAR(2000),
	description VARCHAR(2000),
	characters INT,
	dateOfEvents DATE
);

create table TB_RELATION (
	relation_id INT,
	events INT,
	characters INT,
	description VARCHAR(2000)
);

insert into TB_CHARACTERS (character_id, name, description, curiosities, photos) values (1, 'Marty McFly', 'If the idea of putting in a little overtime sounds to you like a few extra hours at the office, or an occasional working weekend, consider the schedule of actor Michael J. Fox, who as Marty McFly in Universal''s ''Back to the Future'', volunteered himself for one of the most rigorous schedules in Hollywood history.

When the popular star of NBC''s hit show ''Family Ties'' was cast in "Back to the Future" as an adventurous high school student who finds himself traveling back in time to 1955, his series still had two more months of active production. For Michael, that left only one option: he would work both jobs simultaneously and catch up on his sleep some time next year. Fortunately, the 24-year-old fireball is a bundle of energy, which may explain why he was able to put in a full day''s work for "Family Ties" and then shuttle to a soundstage at Universal Studios and work until the wee hours of the morning.

"I knew this would be a gruelling schedule," admits the actor with a smile. "But I learned to enjoy it, and besides, if I can''t handle it at this age, I might as well get out of the business! Fortunately, Alex, from ''Family Ties'' and Marty McFly, are two distinct characters and it''s easy to separate them," he continues. "If my energy does drop at all, Bob Zemeckis just snaps me out of it. The man is possessed; he never runs out of energy and I get psyched up just watching him work."', 'Fox admits that his favorite scene in the film takes place in 1955 when he performs Chuck Berry''s classic "Johnny B. Goode" for a high school dance before the dawn of rock and roll. "I was able to live out two fantasies with this movie," offers Fox. "I''ve always wanted to do a big budget feature, with splashy special effects and a great. story, and I''ve always wanted to be a rock and roll star. In ''Back to the Future'' I get to do both.', 1);
insert into TB_CHARACTERS (character_id, name, description, curiosities, photos) values (2, '''Doc'' Emmett L. Brown', '"Doc Brown is almost like a magician," says director Robert Zemeckis in describing the character of the eccentric scientist in "Back to the Future" played by Christopher Lloyd. "He and Marty have a sort of Arthur and Merlin relationship and he can always make magic happen."

Christopher Lloyd, an actor whose performing credits include a wide variety of motion picture, television and theatrical roles, has been known to make magic himself.

A two-time Emmy award winner for his role as the spaced-out Reverend Jim on television''s "Taxi," Lloyd has captivated both critics and audiences alike with his winning portrayals of quirky, off-beat characters. And Dr. Brown is no exception.

The inventor of a nuclear-powered time machine that has been mounted in a DeLorean sportscar, Dr. Brown befriends a young high school student named Marty McFly (Michael J. Fox) and accidentally sends him back to 1955.

"This was a difficult film for me," explains Lloyd. "There were a lot of mechanical and technical things happening around us and it was very important for Michael and I to really connect with each other."

Fox adds, "I like to work with people who have energy and Chris is just brilliant. I can look into those big manic bulbs of his and get right on target."

Producer Neil Canton, who worked previously with Lloyd as the producer of "Buckaroo Banzai," says of the actor, "The first time I read this script, I thought of Chris Lloyd for the role of Dr. Brown. Having just worked with him on ''Buckaroo'' I knew he could bring the right amount of lunacy to the role."

Born in Stanford, Connecticut, Lloyd was drawn to acting at the age of 14, and only two years later was apprenticing in summer stock. At the age of 19, he moved to New York and began acting classes, most notably at the Neighborhood Playhouse with Sanford Meisner.', 'In New York, his Broadway productions included "Happy End" opposite Meryl Streep and "Red, White and Maddox." His wide range of off-Broadway performances include the original production of "The Boom Boom Room," "Total Eclipse" and "Kaspar," for which he won a 1973 Drama Desk Award from the Village Voice. He performed with Christopher Walken in a New York Shakespeare Festival production of "Macbeth" and appeared in the Yale Repertory productions of "The Possessed" and "Midsummer Night''s Dream," also opposite Meryl Streep.', 2);
insert into TB_CHARACTERS (character_id, name, description, curiosities, photos) values (3, 'Beniamino', '16Yxi1LAZNPLpNvUVQGRvR3tJDN4Z2EjeN', '1ExGdCGSZ3mpD35AZeCANVMJGzuv94kkej', 3);
insert into TB_CHARACTERS (character_id, name, description, curiosities, photos) values (4, 'Luelle', '13EczHeDXdHyV3RAzNjqjpBSt3YtBUhSB7', '1MiGvJmgixxqWNMXzuPWktVsCMXsB7gU2h', 4);
insert into TB_CHARACTERS (character_id, name, description, curiosities, photos) values (5, 'Edmund', '15FxvKKZGjfMkYEZY5wBrj7Amzj185c4UF', '1HQ7eNgv43kEfxhiQr6YLcRQ3tjateiRZ1', 5);


insert into TB_PHOTOS (photos_id, path, year, descriptionOld, descriptionActual) values (1, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAIxSURBVDjLlZNBiBJRGMf/r9FZc6lcjLBQdzaElI25LNWhSx0kiD1FUMEegyAqakHYS7hG7C261TEQETpEEoRgS7QDRXgQkShmrVCi1W3JUMcZRx2nN4+0kDlsH3x8w8z3/d57//k/YpomJiOZTAYNw9jo9XpCv9+HpmnfFEWJJhIJebLXAZvQdf2h3+8X3G43LEClUgmUy+UH9NPiZO8eO0C73fbl83kUi0UGcLlcaDabQbteWwBtRjweJ7VajQG63S7LXQN4nmeVEMIAI8iuAVQDxGIx0+PxgArJ0npnF7YiUsUhiiKcTidKpRK8Xu//7YA2m9aKsixDVDu4uLONjZMLx3H7Zo7mVdsdpNNpgRZ5OBzyNNn5A4EAzpgD+C5dAdG7pFepRj+nn0bXlpaOpFKpe0wny0jWMK1yOBzms9ksCoUCqtUqO/eqOA9x4QS0nyUom6/R/bUN1b0PZW1qfXm9FmUAStMjkQhPAWi1WmyQum+c/ffPMFPP49jZC5iam4dWyuGD9ApN+dMtdgTaxFPrIpPJWCZigqmqOgac/vgEp27chevLG0C6D/cBD44Ksyhsmnccf0RjqzYaDfY8Gux0Oqzu1xW4fHPA+eW/4q0eBjckwmgHDBAKhdg/t4zzb9V/PIdafInpF9eha3Wolt1bHAwOWwxgCSZJ0tg0k7l4aBoz7yQIB/fCwTnR3hnga53AhPmI2F1nu3h7ObjSaWxd4wwya3Dmdzr1+FxusPYbDlZf5OWGzT4AAAAASUVORK5CYII=', 'Twinborough', 'ktwinborough0@cpanel.net', 'Male');
insert into TB_PHOTOS (photos_id, path, year, descriptionOld, descriptionActual) values (2, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAFhSURBVDjLjVJRSsNAEJ3WpkKgIA2hVIL/fngJv/3rNbyD4BU8QD57AOkBjOQCPUHIX2m1YAtCku64b5NZtnSrThhmNzvz5s1jesxMsDzPX5RSj7jrSBIPh4ONzvlpNps9m0IkwrMsW+73e/7L1us1z+fzd6kbUGdAhr0uv0hpUowPUTteWP9EvL9happGyo4BaoUyouurARDMmZ1YfFama13XpwCYD5mK2RZR192AGU1a2l4GLQAfdbSRW2aqO59lcNHXUSeVH1U7N7dFwkoAqqryA0CHh9tL20GUJuqZ+3A4pO322z+CW4QOq9WKNpuNuUdRRHEcUxAErdjnRpClQnFZlpbBbrcz76PR6ESDvo+BdE6SxDjOeoHsu3cE/BQGoCnu6uOO6NVAAMbjMem1pqIo7BjQ4VcGLsBkMjFdXRGn0+n/AMIwNA4QnyHHLJ1Hg7c0Te+ALo5Eia5rPRZS9wNIBbXTpSVpqgAAAABJRU5ErkJggg==', 'Geggus', 'sgeggus1@typepad.com', 'Male');
insert into TB_PHOTOS (photos_id, path, year, descriptionOld, descriptionActual) values (3, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAKDSURBVDjLjdFNTNJxHAZw69CWHjp16O2AZB3S1ovOObaI8NBYuuZAhqjIQkzJoSIZBmSCpVuK/sE/WimU6N9SDM0R66IHbabie1hrg0MK3Zo5a8vwidgym8w8PKffvp89e35RAKJ2ipp7WDxvjltZ6jwCr5W2bpHHtqUnx+77877jsZxzlO3roAWXuw5ha1pl9MZdAW2ig8RyXyL8rnx8G6uH387AMnUMC2b6l10BJPdAfWDGhZVREuszT7D6hsTStBNDurO+XQEZnEypx1a28XW2F8HFPqwtOBAYJlCde9EeEZCy4sTN4ksrRA4LZB57vZCfMElUyH4E7Ap86r+LwIAGIy03cDr/lDNJGR/zDyBiHGc3i1ODjUIWtqbdIIexVY86kwZ3HijR/86GmqFqJGhPWs8oTkRvAgb+uZGHhVfRV3UNni41OhU8EDlstBSkwjKjhnmqAg3uUtS6y9Dzvg0ljmKkFCaRm4CJT+/5OERtG4yqZMEwdQt1biV0EyW4PVEE1dsiiMk8eMn0/w9Wp+PCNK1CQ6iBYeommkIpH5Qhy5AF/6Mrf4G955tUJlXxtsHieeWQ2LJxvVuAAkoASUcmLugZPqW0qsprEQjDx3sY3ZIMhXt1+DNw77kdmnYKSsKKx+PfoTQtYX9KtzWG2Rod6aujaJwWHk8+uDawGITeA+SPA7nDQOYgwKcAYhQQajyIY9eQEYE5feLPyV4jFC8CELkAkWMDQmoDPGsQaWYgzRjEU8vL8GARAV8T099bUwqBdgzS14D4VaiBA8gZALJ/t6j1Qqu4Hx4sIvChoyDFWZ1RmcyzORJLJsDSzoUyD5Z6FsxKN+iXn/mM5ZLwYJGAX0F/sgCQt3xBAAAAAElFTkSuQmCC', 'Yitzhakov', 'myitzhakov2@wufoo.com', 'Male');
insert into TB_PHOTOS (photos_id, path, year, descriptionOld, descriptionActual) values (4, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAG1SURBVBgZpcG/S9RxHMfx5+dz3+LKsKxBC4KQXIvArYb+BQmuIYgGoaBJiAoiLCqwxUGwkBr7gaGOTu5NZhBkBRU3NEV2Q3d69/m+X+/6DEJcNoiPR3B3diKMjM1ePXN2+OFay3vcAQmXMBkuRy7cDLnjZphE7+7UXF39dmNhsjZdDJ8entpV7Yn9Vbajp9myKWC6aCWPrbVfbNd68sgfhZtz6UKHQBYIBCKRO3O3uHhylBOHT9G39yBFLPjb6ESdLLqLTSbj5etnZOutNlYa7s5WTEZW4E7mwMzSI340vlM/Xqe30ktZGjjg/EOlkUWTkT1ZekzFIscODfJ0cYZqZQ8YSI7jdJOJrHA5E/P32V/tY2hgiNKNA/v6WP34gXang7sIBLpJRhYl4+a52zSbLd58WmH5/TJzi/NstDew0pCcrUgii2VKZNdq12n8bPD5y1ee333Byru3BA8EAu5OtzKVZNFNbLp3+QGDA4Nk7Y1EJyXcRQiBbi6RRUlsKioF41fGyVI7IRP/I3eyMDI2O9t/9EhNZsiEmSEJSwlJyB2X4ebIhUtIZK8WJmvng7uzE5Ed+g22TgZNyTAeRAAAAABJRU5ErkJggg==', 'Aspray', 'easpray3@hao123.com', 'Female');
insert into TB_PHOTOS (photos_id, path, year, descriptionOld, descriptionActual) values (5, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAI6SURBVDjLpZO9a5NRFMZ/b9Jq0iY20qoVxY/FELGgFoRuFQR18atLtUgHRyfR0Un/AKU4qVOxg6hLHXRwUhQaNUiLCK1iQSs1GvP9vvd933vvcUixCcnmhXMPHHh+POfA44gI//O6AGT5mejqb0QCRIeICREdINpHjA+hwmiFaA9CRd+5aacVYDTdB8bb6CLgwNoHCBQfnW934JdWiIsg1mtMHRCxgIOwTnAiG5HQ67CC1thgFV2dA+sjEjS6DcAqxCrEemwYOIsN3Q4A4wMasQokXBM1ixViXRCNBK0OIgC6VmhYlqBJ7GGth1gPVS9TXC1jwiqi6+0OrFGopVdo/zOYAERjVIXY7q1YXadWqJLYeYbySq7tBhEA4xXQlRUSmQkSBybpSR8DGyLGpV4s0zN4kk3bD1H6tkAQibQDHBHC/DzFF9cw7hKYECshWtUo512SAylMZZYt+y/i9vaz8OBEdwtABJJHJglLvyi9vIWVEERRWq3Qn74AKkd2eoZEysOL9KJVcKoFgFY40Qi9hy8hOkX1zSwhe5BohuRmF+t/BbGY2lv2jl5F+/7N7NRIct2BVhSf38ade4j9k8f78prCco7UroNYdx6xHsNjaWzwg1hskW1D4xntB1fW1m8PU+7u6OWBzOk7g/vimFoWkYD3Tz4xPJbBifZB/Djv7l/Pi7VHOwKyUyPfhyZmdkQjy4guNkLQdPdoPM3Pjx9YfHrjcVeniGo/iOXujXliBbG2qeRfx1pEZPAvfWh3mkWk9eIAAAAASUVORK5CYII=', 'Cronchey', 'zcronchey4@blogger.com', 'Male');


insert into TB_EVENTS (events_id, title, link, description, characters, dateOfEvents) values (1, 'Matthieu', 'Warbey', 'mwarbey0@cbsnews.com', 1, '31/03/2020');
insert into TB_EVENTS (events_id, title, link, description, characters, dateOfEvents) values (2, 'Erda', 'Fretwell', 'efretwell1@is.gd', 2, '18/04/2020');
insert into TB_EVENTS (events_id, title, link, description, characters, dateOfEvents) values (3, 'Tiphanie', 'Cottrell', 'tcottrell2@wsj.com', 3, '02/03/2020');
insert into TB_EVENTS (events_id, title, link, description, characters, dateOfEvents) values (4, 'Nananne', 'Bernadon', 'nbernadon3@princeton.edu', 4, '01/05/2020');
insert into TB_EVENTS (events_id, title, link, description, characters, dateOfEvents) values (5, 'Jaine', 'Ayliff', 'jayliff4@reuters.com', 5, '24/08/2020');


insert into TB_RELATION (relation_id, events, characters, description) values (1, 1, 1, 'Barnett');
insert into TB_RELATION (relation_id, events, characters, description) values (2, 2, 2, 'Mifflin');
insert into TB_RELATION (relation_id, events, characters, description) values (3, 3, 3, 'Mesta');
insert into TB_RELATION (relation_id, events, characters, description) values (4, 4, 4, 'Alpine');
insert into TB_RELATION (relation_id, events, characters, description) values (5, 5, 5, 'Victoria');
