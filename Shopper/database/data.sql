BEGIN TRANSACTION;

INSERT INTO users (username,password_hash) VALUES ('Syd', '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC');

INSERT INTO pantry (pantry_owner_id, name, description) VALUES ('1', 'crap I need', 'I know Ill need this later and forget');

INSERT INTO item (pantry_id, name, status, type, description) VALUES ('1', 'Olive Oil', 'Low', 'baking', '');
INSERT INTO item (pantry_id, name, status, type, description) VALUES ('1', 'Broccoli', 'Full', 'produce', 'full crowns');
INSERT INTO item (pantry_id, name, status, type, description) VALUES ('1', 'lettuce', 'need', 'Produce', 'iceberg');
INSERT INTO item (pantry_id, name, status, type, description) VALUES ('1', 'American cheese', 'half', 'dairy', 'fat free');

COMMIT TRANSACTION;