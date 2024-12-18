BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');
INSERT INTO users (username,password_hash,role) VALUES ('brewer','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_BREWER');
INSERT INTO users (username,password_hash,role) VALUES ('mike','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_BREWER');
INSERT INTO users (username,password_hash,role) VALUES ('tina','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_BREWER');
INSERT INTO users (username,password_hash,role) VALUES ('erika','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_BREWER');
INSERT INTO users (username,password_hash,role) VALUES ('stephanie','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_BREWER');
INSERT INTO users (username,password_hash,role) VALUES ('syd','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_BREWER');




INSERT INTO brewery (name, user_id, description, address, city, state, zipcode, img) VALUES ('Hoof Hearted', '4', 'Get it?','300 County Rd 26', 'Merengo', 'Ohio', '43334', 'https://images.squarespace-cdn.com/content/v1/530fa82ae4b059649e4b5d3c/1394423334322-L2RLZT2CSZEFC4S7XDTI/HHB_ROUND_flat_RGB.jpg?format=1500w');
INSERT INTO brewery (name, user_id, description, address, city, state, zipcode, img) VALUES ('Urban Artifact', '8', 'Reward the Curious.','1660 Blue Rock St', 'Cincinnati', 'Ohio', '45223', 'https://lh3.googleusercontent.com/-Y9_l8nZMQh-dUZfRpaQ2TNzsJQE5VvDBjGKUjqMhGNm_K8dcDNlq4iqTQJz9_CQoDCpa-yPH7C9VdEvcoeRYxrSWhnYcA=s750');
INSERT INTO brewery (name, user_id, description, address, city, state, zipcode, img) VALUES ('Great Lakes Brewing Company', '6', 'Much abrew about something.','2516 Market Ave', 'Cleveland', 'Ohio', '44113', 'https://www.odessabrewfest.com/sites/default/files/glbc-logo_0.png');
INSERT INTO brewery (name, user_id, description, address, city, state, zipcode, img) VALUES ('Fat Heads Brewery', '7', 'Chill out man, have a beer!','18741 Sheldon Rd.', 'Middleburg Heights', 'Ohio', '44130', 'https://upload.wikimedia.org/wikipedia/en/1/1c/Fat_Head_Brewery_Logo.png');
INSERT INTO brewery (name, user_id, description, address, city, state, zipcode, img) VALUES ('Hi Wire Brewing', '5', 'Creating innovative craft beer born from tradition.','4600 Beech Street, Suites 100 and 300', 'Norwood', 'Ohio', '45212', 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_300,h_100/https://hiwirebrewing.com/wp-content/uploads/2023/07/hiwire-brewing_logo_780x330.png');



INSERT INTO beer (brewery_id, name, beer_type, description, abv, img) VALUES ('3', 'Lake Erie Monster', 'Imperial Double IPA','gonna get you DRUNK', '9.5', 'a url');
INSERT INTO beer (brewery_id, name, beer_type, description, abv, img) VALUES ('3', 'Nosferatu', 'Imperial Red IPA','more alcohol than blood', '8.5', 'a url');
INSERT INTO beer (brewery_id, name, beer_type, description, abv, img) VALUES ('3', 'Vanilla Blackout Stout', 'Imperial Stout','the name says it all', '10.5', 'a url');
INSERT INTO beer (brewery_id, name, beer_type, description, abv, img) VALUES ('2', 'Gadget', 'Midwest Fruit Tart','Stands as an award-winning masterpiece. Crafted with thousands of pounds of blackberries and raspberries, along with a touch of vanilla, it’s celebrated far and wide for its exceptional flavor.', '8.0', 'a url');
INSERT INTO beer (brewery_id, name, beer_type, description, abv, img) VALUES ('2', 'Peaches & Cream', 'Nitro Fruit Tart','Whether you’re a fruit tart aficionado or new to nitrogen-infused brews, this is a taste journey you won’t want to miss. Open the can, pour, and let the indulgence begin!', '7.1', 'a url');
INSERT INTO beer (brewery_id, name, beer_type, description, abv, img) VALUES ('2', 'Archaeopteryx', 'Fruit Tart','A blend of wild-caught cultures, curated to highlight the terrior of the Ohio River Valley and aged on whole Obsidian Berries.', '8.9', 'a url');
INSERT INTO beer (brewery_id, name, beer_type, description, abv, img) VALUES ('1', 'Combat Spandex', 'Sour Triple IPA','Brewed With Mango, Kiwi, Vanilla & Milk Sugar', '11.4', 'a url');
INSERT INTO beer (brewery_id, name, beer_type, description, abv, img) VALUES ('1', 'Do not Worry, My Mom Said It is cool', 'Imperial Birthday Cake Stout','Brewed with Astronaut Ice Cream, Cacao Nibs & Vanilla', '12.0', 'a url');
INSERT INTO beer (brewery_id, name, beer_type, description, abv, img) VALUES ('1', 'Girth Brooks', 'Double Mash Stout','Brewed with Hoof Hearted Coffee, Vanilla & Coconut', '15.0', 'a url');
INSERT INTO beer (brewery_id, name, beer_type, description, abv, img) VALUES ('4', 'Bumble Berry', 'Honey Blueberry Ale','Made with honey and blueberries', '5.3', 'a url');
INSERT INTO beer (brewery_id, name, beer_type, description, abv, img) VALUES ('4', 'Goggle Fogger', 'German-Style Hefe Weizen','A repeatedly award-winning wheat beer', '5.4', 'a url');
INSERT INTO beer (brewery_id, name, beer_type, description, abv, img) VALUES ('4', 'Conezilla', 'India Pale Ale','Destroyer of Dank', '6.5', 'a url');
INSERT INTO beer (brewery_id, name, beer_type, description, abv, img) VALUES ('5', 'Mountain Water', 'Easy Drinking Ale','This is a beer for drinking. A beer for hiking, hanging out, and playing outside. With big lemon-lime slushy in the sunshine energy, this is the beer to share with your seltzer friends.', '4.5', 'a url');
INSERT INTO beer (brewery_id, name, beer_type, description, abv, img) VALUES ('5', 'Hazy Pitch', 'Hazy IPA','This addition to the Pitch Family is a big Hazy IPA vibrantly bursting with juicy American hops. Waves of pineapple, melon, and citrus cascade across the palate leaving trails of tropical punch and subtle pine in the wake of this swirling hazy escape.', '7.2', 'a url');
INSERT INTO beer (brewery_id, name, beer_type, description, abv, img) VALUES ('5', 'Hi Pitch', 'Mosaic IPA','A balanced Western North Carolina IPA with bright citrus and tropical fruit aromas. Expect big grapefruit, tangerine and subtle melon flavors from the chorus of Mosaic & Centennial hops to balance out the malt in this dank & drinkable ale.', '6.7', 'a url');

INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('1', '5', 'Incredible beer! Perfect balance of flavor, smooth finish, and a rich malt profile. A must-try!', '3');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('1', '4', 'Very good beer. Crisp and refreshing with just the right amount of hops. Great for a hot day.', '7');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('2', '2', 'Not what I expected. Too strong of a malt flavor and a bit too sweet for my liking. Wouldn''t recommend.', '6');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('2', '3', 'It''s alright. Nothing terrible, but it doesn''t stand out. I''ve had better beers that I would choose over this one.', '2');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('3', '1', 'Terrible! The beer was flat, tasted like cardboard, and had a very unpleasant aftertaste. Couldn''t finish it.', '8');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('3', '4', 'Nice beer! Has a strong hoppy taste but balances it out with some sweetness. Very enjoyable.', '5');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('4', '2', 'Disappointing. The beer was overly bitter and left a strange aftertaste. Not one I''ll be buying again.', '1');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('4', '5', 'Absolutely fantastic! Smooth, flavorful, and refreshing. Perfect for a relaxing evening.', '4');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('5', '3', 'Decent but not amazing. It''s a little too light for my taste, but it''s refreshing enough for casual drinking.', '6');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('5', '1', 'Worst beer I''ve ever had. It was flat, tasted stale, and just overall unpleasant.', '7');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('6', '5', 'This is a great beer! The flavors are so well balanced, and it has a smooth finish. Highly recommend!', '2');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('7', '4', 'Really good beer. Slightly on the strong side, but the richness of the flavor makes up for it. Definitely would drink again.', '3');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('6', '3', 'Not bad, but also not my favorite. It''s a little too malty for my taste, though still drinkable.', '8');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('7', '5', 'Amazing flavor! So smooth and crisp with a nice hint of citrus. This is exactly what I look for in a beer.', '1');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('8', '2', 'Too bitter for me. The aftertaste lingered too long and wasn''t pleasant. I wouldn''t recommend it.', '5');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('8', '4', 'Solid beer. Great hop profile with a slightly bitter finish. Perfect for hop lovers!', '2');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('9', '3', 'It''s an okay beer. Not the best I''ve had, but it''s drinkable. Could use a bit more flavor.', '4');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('9', '5', 'One of the best beers I''ve ever tried! Smooth, flavorful, and incredibly refreshing. I''ll definitely buy this again.', '6');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('10', '1', 'Horrible taste. It was too sour and had a metallic aftertaste that I couldn''t get past. Not drinking this again.', '8');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('10', '2', 'Not a fan. It''s too sweet for my taste, and the aftertaste lingers too long. Wouldn''t recommend it.', '3');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('11', '5', 'Fantastic beer! The balance between malt and hops is perfect, and it has a smooth finish. Highly recommended.', '7');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('11', '4', 'Really good flavor with just the right amount of bitterness. Perfect for a relaxing night out.', '1');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('12', '3', 'Not bad, but the flavor feels a little flat. It''s drinkable, but there''s nothing special about it.', '5');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('12', '2', 'Too bitter for me. It had an overpowering taste that I couldn''t quite get used to. Wouldn''t buy again.', '6');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('13', '4', 'Good beer overall. The bitterness is balanced with some fruity flavors, and it has a smooth finish.', '4');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('13', '4', 'Very refreshing with a nice citrusy punch. Perfectly balanced bitterness. Definitely one of my favorites!', '3');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('14', '1', 'Awful! It was way too fizzy and tasted like chemicals. I couldn''t drink more than a few sips.', '7');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('14', '3', 'Decent but lacks some depth. It''s an easy drinker but doesn''t have much complexity or a lasting finish.', '2');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('15', '5', 'One of the best beers I''ve had in a while. Super smooth with a perfect blend of malty and hoppy flavors. Will definitely buy again!', '4');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('15', '2', 'Not great. The flavor was way too heavy on the malt and too sweet for my taste. Won''t buy this again.', '5');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('1', '4', 'Good beer with a nice bitter kick, but not too overpowering. Very balanced and easy to drink.', '8');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('6', '1', 'I couldn''t finish it. The aftertaste was awful, and it had a weird, sour flavor I just couldn''t get past.', '6');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('12', '3', 'It''s okay, but there are better options out there. The taste is a bit flat and doesn''t leave a lasting impression.', '1');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('7', '5', 'Amazing beer! The taste is rich and smooth, with a perfect balance of bitterness and malt. A definite go-to!', '2');
INSERT INTO reviews (beer_id, rating, review, user_id) VALUES ('4', '4', 'Great beer! The hop flavor is bold but well-balanced, and the finish is smooth and refreshing. Would buy again.', '4');


COMMIT TRANSACTION;
