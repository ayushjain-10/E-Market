BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "user" (
	"id"	INTEGER NOT NULL,
	"username"	VARCHAR(30) NOT NULL,
	"email"	VARCHAR(50) NOT NULL,
	"password_hash"	VARCHAR(60) NOT NULL,
	"budget"	INTEGER NOT NULL,
	PRIMARY KEY("id"),
	UNIQUE("email"),
	UNIQUE("username")
);
CREATE TABLE IF NOT EXISTS "items" (
	"id"	INTEGER NOT NULL,
	"name"	VARCHAR(30) NOT NULL,
	"price"	INTEGER NOT NULL,
	"barcode"	VARCHAR(12) NOT NULL,
	"description"	VARCHAR(1024) NOT NULL,
	"owner"	INTEGER,
	FOREIGN KEY("owner") REFERENCES "user"("id"),
	UNIQUE("name"),
	PRIMARY KEY("id"),
	UNIQUE("barcode"),
	UNIQUE("description")
);
INSERT INTO "user" VALUES (1,'user_1','user_1@gmail.com','password_1',1000);
INSERT INTO "user" VALUES (2,'user_2','user_2@gmail.com','password_2',1000);
INSERT INTO "user" VALUES (3,'user_3','user_3@gmail.com','password3',1000);
INSERT INTO "user" VALUES (4,'user_4','user_4@gmail.com','$2b$12$bJ7Kod9oHjsaorgsxunbeODbGvL/qh./yj9mn3C1At6wjQ8WeuiC.',1000);
INSERT INTO "user" VALUES (5,'user_5','user_5@gmail.com','$2b$12$yS5vsHswsTjFlKI9fyU2du3tGOH02fPDWwQ6./YxvAwn57ehapxri',1000);
INSERT INTO "user" VALUES (6,'user_6','user_6@gmail.com','$2b$12$vx1hqBKgxf7dehfhdgKlMeEwSX9NAGEzvdc3JlPNT.EojuaPlAL7K',1000);
INSERT INTO "user" VALUES (7,'user_7','user_7@gmail.com','$2b$12$wfgyN8.A8j8utdj2LlA1m.M.cU2cWx.x8xK91rzl37dns/M13yZHa',1000);
INSERT INTO "user" VALUES (8,'user_8','user_8@gmail.com','$2b$12$XhFcNGMC3wUwx1a4G2hOd.nTfhc.AP72sa3IBNOrQmzTHKxTDRB3e',200);
INSERT INTO "user" VALUES (9,'ayush10','ayushshreeshreemal@gmail.com','$2b$12$98FilFI7YCOWQeCIqBzZMuzB7o1A1QbJirT9ooVhnuSBf7FKyat8i',1000);
INSERT INTO "items" VALUES (1,'Phone',700,'863026491362','This is a phone',8);
INSERT INTO "items" VALUES (2,'Laptop',1000,'749567015293','This is a laptop',NULL);
INSERT INTO "items" VALUES (3,'Guitar ',350,'123454321345','This is a guitar',NULL);
COMMIT;
