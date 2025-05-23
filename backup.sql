PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations VALUES(1,'contenttypes','0001_initial','2025-05-19 09:39:05.395917');
INSERT INTO django_migrations VALUES(2,'auth','0001_initial','2025-05-19 09:39:05.407894');
INSERT INTO django_migrations VALUES(3,'admin','0001_initial','2025-05-19 09:39:05.416678');
INSERT INTO django_migrations VALUES(4,'admin','0002_logentry_remove_auto_add','2025-05-19 09:39:05.424404');
INSERT INTO django_migrations VALUES(5,'admin','0003_logentry_add_action_flag_choices','2025-05-19 09:39:05.429927');
INSERT INTO django_migrations VALUES(6,'contenttypes','0002_remove_content_type_name','2025-05-19 09:39:05.441268');
INSERT INTO django_migrations VALUES(7,'auth','0002_alter_permission_name_max_length','2025-05-19 09:39:05.448438');
INSERT INTO django_migrations VALUES(8,'auth','0003_alter_user_email_max_length','2025-05-19 09:39:05.455775');
INSERT INTO django_migrations VALUES(9,'auth','0004_alter_user_username_opts','2025-05-19 09:39:05.460916');
INSERT INTO django_migrations VALUES(10,'auth','0005_alter_user_last_login_null','2025-05-19 09:39:05.467707');
INSERT INTO django_migrations VALUES(11,'auth','0006_require_contenttypes_0002','2025-05-19 09:39:05.470354');
INSERT INTO django_migrations VALUES(12,'auth','0007_alter_validators_add_error_messages','2025-05-19 09:39:05.476028');
INSERT INTO django_migrations VALUES(13,'auth','0008_alter_user_username_max_length','2025-05-19 09:39:05.483163');
INSERT INTO django_migrations VALUES(14,'auth','0009_alter_user_last_name_max_length','2025-05-19 09:39:05.490290');
INSERT INTO django_migrations VALUES(15,'auth','0010_alter_group_name_max_length','2025-05-19 09:39:05.496894');
INSERT INTO django_migrations VALUES(16,'auth','0011_update_proxy_permissions','2025-05-19 09:39:05.501877');
INSERT INTO django_migrations VALUES(17,'auth','0012_alter_user_first_name_max_length','2025-05-19 09:39:05.508961');
INSERT INTO django_migrations VALUES(18,'catalog','0001_initial','2025-05-19 09:39:05.518063');
INSERT INTO django_migrations VALUES(19,'catalog','0002_auto_20160921_1401','2025-05-19 09:39:05.524272');
INSERT INTO django_migrations VALUES(20,'catalog','0003_auto_20160921_1420','2025-05-19 09:39:05.534547');
INSERT INTO django_migrations VALUES(21,'catalog','0004_auto_20160921_1422','2025-05-19 09:39:05.541324');
INSERT INTO django_migrations VALUES(22,'catalog','0005_auto_20160921_1433','2025-05-19 09:39:05.552860');
INSERT INTO django_migrations VALUES(23,'catalog','0006_auto_20160921_1439','2025-05-19 09:39:05.558661');
INSERT INTO django_migrations VALUES(24,'catalog','0007_auto_20160921_1444','2025-05-19 09:39:05.563249');
INSERT INTO django_migrations VALUES(25,'catalog','0008_auto_20160921_1511','2025-05-19 09:39:05.574426');
INSERT INTO django_migrations VALUES(26,'catalog','0009_remove_bookinstance_summary','2025-05-19 09:39:05.579652');
INSERT INTO django_migrations VALUES(27,'catalog','0010_auto_20160921_1527','2025-05-19 09:39:05.584049');
INSERT INTO django_migrations VALUES(28,'catalog','0011_auto_20160922_1029','2025-05-19 09:39:05.593596');
INSERT INTO django_migrations VALUES(29,'catalog','0012_bookinstance_date_acquired','2025-05-19 09:39:05.613411');
INSERT INTO django_migrations VALUES(30,'catalog','0013_auto_20160926_1901','2025-05-19 09:39:05.620170');
INSERT INTO django_migrations VALUES(31,'catalog','0014_remove_bookinstance_date_acquired','2025-05-19 09:39:05.625690');
INSERT INTO django_migrations VALUES(32,'catalog','0015_auto_20160927_1808','2025-05-19 09:39:05.632146');
INSERT INTO django_migrations VALUES(33,'catalog','0016_auto_20160927_1947','2025-05-19 09:39:05.646899');
INSERT INTO django_migrations VALUES(34,'catalog','0017_language','2025-05-19 09:39:05.650378');
INSERT INTO django_migrations VALUES(35,'catalog','0018_book_language','2025-05-19 09:39:05.658321');
INSERT INTO django_migrations VALUES(36,'catalog','0019_bookinstance_borrower','2025-05-19 09:39:05.668698');
INSERT INTO django_migrations VALUES(37,'catalog','0020_auto_20161012_1044','2025-05-19 09:39:05.675745');
INSERT INTO django_migrations VALUES(38,'catalog','0021_auto_20171229_1056','2025-05-19 09:39:05.679883');
INSERT INTO django_migrations VALUES(39,'catalog','0022_auto_20181028_1731','2025-05-19 09:39:05.684979');
INSERT INTO django_migrations VALUES(40,'catalog','0023_auto_20201201_0238','2025-05-19 09:39:05.694116');
INSERT INTO django_migrations VALUES(41,'catalog','0024_auto_20210302_0630','2025-05-19 09:39:05.701183');
INSERT INTO django_migrations VALUES(42,'catalog','0025_auto_20220222_0623','2025-05-19 09:39:05.729651');
INSERT INTO django_migrations VALUES(43,'catalog','0026_alter_book_author_alter_genre_name_and_more','2025-05-19 09:39:05.745831');
INSERT INTO django_migrations VALUES(44,'catalog','0027_genre_genre_name_case_insensitive_unique_and_more','2025-05-19 09:39:05.751191');
INSERT INTO django_migrations VALUES(45,'sessions','0001_initial','2025-05-19 09:39:05.757067');
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" datetime NOT NULL);
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type VALUES(1,'admin','logentry');
INSERT INTO django_content_type VALUES(2,'auth','permission');
INSERT INTO django_content_type VALUES(3,'auth','group');
INSERT INTO django_content_type VALUES(4,'auth','user');
INSERT INTO django_content_type VALUES(5,'contenttypes','contenttype');
INSERT INTO django_content_type VALUES(6,'sessions','session');
INSERT INTO django_content_type VALUES(7,'catalog','author');
INSERT INTO django_content_type VALUES(8,'catalog','book');
INSERT INTO django_content_type VALUES(9,'catalog','bookinstance');
INSERT INTO django_content_type VALUES(10,'catalog','genre');
INSERT INTO django_content_type VALUES(11,'catalog','language');
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO auth_permission VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO auth_permission VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO auth_permission VALUES(4,1,'view_logentry','Can view log entry');
INSERT INTO auth_permission VALUES(5,2,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(6,2,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(7,2,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(8,2,'view_permission','Can view permission');
INSERT INTO auth_permission VALUES(9,3,'add_group','Can add group');
INSERT INTO auth_permission VALUES(10,3,'change_group','Can change group');
INSERT INTO auth_permission VALUES(11,3,'delete_group','Can delete group');
INSERT INTO auth_permission VALUES(12,3,'view_group','Can view group');
INSERT INTO auth_permission VALUES(13,4,'add_user','Can add user');
INSERT INTO auth_permission VALUES(14,4,'change_user','Can change user');
INSERT INTO auth_permission VALUES(15,4,'delete_user','Can delete user');
INSERT INTO auth_permission VALUES(16,4,'view_user','Can view user');
INSERT INTO auth_permission VALUES(17,5,'add_contenttype','Can add content type');
INSERT INTO auth_permission VALUES(18,5,'change_contenttype','Can change content type');
INSERT INTO auth_permission VALUES(19,5,'delete_contenttype','Can delete content type');
INSERT INTO auth_permission VALUES(20,5,'view_contenttype','Can view content type');
INSERT INTO auth_permission VALUES(21,6,'add_session','Can add session');
INSERT INTO auth_permission VALUES(22,6,'change_session','Can change session');
INSERT INTO auth_permission VALUES(23,6,'delete_session','Can delete session');
INSERT INTO auth_permission VALUES(24,6,'view_session','Can view session');
INSERT INTO auth_permission VALUES(25,7,'add_author','Can add author');
INSERT INTO auth_permission VALUES(26,7,'change_author','Can change author');
INSERT INTO auth_permission VALUES(27,7,'delete_author','Can delete author');
INSERT INTO auth_permission VALUES(28,7,'view_author','Can view author');
INSERT INTO auth_permission VALUES(29,8,'add_book','Can add book');
INSERT INTO auth_permission VALUES(30,8,'change_book','Can change book');
INSERT INTO auth_permission VALUES(31,8,'delete_book','Can delete book');
INSERT INTO auth_permission VALUES(32,8,'view_book','Can view book');
INSERT INTO auth_permission VALUES(33,9,'add_bookinstance','Can add book instance');
INSERT INTO auth_permission VALUES(34,9,'change_bookinstance','Can change book instance');
INSERT INTO auth_permission VALUES(35,9,'delete_bookinstance','Can delete book instance');
INSERT INTO auth_permission VALUES(36,9,'view_bookinstance','Can view book instance');
INSERT INTO auth_permission VALUES(37,9,'can_mark_returned','Set book as returned');
INSERT INTO auth_permission VALUES(38,10,'add_genre','Can add genre');
INSERT INTO auth_permission VALUES(39,10,'change_genre','Can change genre');
INSERT INTO auth_permission VALUES(40,10,'delete_genre','Can delete genre');
INSERT INTO auth_permission VALUES(41,10,'view_genre','Can view genre');
INSERT INTO auth_permission VALUES(42,11,'add_language','Can add language');
INSERT INTO auth_permission VALUES(43,11,'change_language','Can change language');
INSERT INTO auth_permission VALUES(44,11,'delete_language','Can delete language');
INSERT INTO auth_permission VALUES(45,11,'view_language','Can view language');
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);
INSERT INTO auth_user VALUES(1,'pbkdf2_sha256$720000$sdpNjd8ShdWCmTDCyqdUvR$FzETlDnmIsbzHi13RxT5g2LyWIJ7XLziTrB/Tg3A6Nw=','2025-05-19 09:44:02.953515',1,'seif','','seifeddine.karoui@gct.com.tn',1,1,'2025-05-19 09:41:33.169389','');
CREATE TABLE IF NOT EXISTS "catalog_bookinstance" ("id" char(32) NOT NULL PRIMARY KEY, "imprint" varchar(200) NOT NULL, "due_back" date NULL, "status" varchar(1) NOT NULL, "book_id" integer NULL REFERENCES "catalog_book" ("id") DEFERRABLE INITIALLY DEFERRED, "borrower_id" integer NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "catalog_book_genre" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "book_id" integer NOT NULL REFERENCES "catalog_book" ("id") DEFERRABLE INITIALLY DEFERRED, "genre_id" integer NOT NULL REFERENCES "catalog_genre" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO catalog_book_genre VALUES(1,1,1);
CREATE TABLE IF NOT EXISTS "catalog_author" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "first_name" varchar(100) NOT NULL, "last_name" varchar(100) NOT NULL, "date_of_birth" date NULL, "date_of_death" date NULL);
INSERT INTO catalog_author VALUES(1,'Ali','Douagi','1909-01-04','1949-05-27');
CREATE TABLE IF NOT EXISTS "catalog_book" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(200) NOT NULL, "summary" text NOT NULL, "isbn" varchar(13) NOT NULL UNIQUE, "author_id" bigint NULL REFERENCES "catalog_author" ("id") DEFERRABLE INITIALLY DEFERRED, "language_id" integer NULL REFERENCES "catalog_language" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO catalog_book VALUES(1,'سهرت منه الليالي','سهرت منه الليالي','9788820351212',1,1);
CREATE TABLE IF NOT EXISTS "catalog_genre" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(200) NOT NULL UNIQUE);
INSERT INTO catalog_genre VALUES(1,'مجموعة قصصية');
CREATE TABLE IF NOT EXISTS "catalog_language" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(200) NOT NULL UNIQUE);
INSERT INTO catalog_language VALUES(1,'العربية');
INSERT INTO catalog_language VALUES(2,'Français');
INSERT INTO catalog_language VALUES(3,'English');
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session VALUES('dllqobr6h8ezxqzrzrvxy6in16s0s0yw','eyJudW1fdmlzaXRzIjo0fQ:1uGxQh:lJ02VdslmJIx-a1-EFuy1woVYeFBcZsMiZily4lAgiw','2025-06-02 10:09:07.093829');
INSERT INTO sqlite_sequence VALUES('django_migrations',45);
INSERT INTO sqlite_sequence VALUES('django_admin_log',0);
INSERT INTO sqlite_sequence VALUES('django_content_type',11);
INSERT INTO sqlite_sequence VALUES('auth_permission',45);
INSERT INTO sqlite_sequence VALUES('auth_group',0);
INSERT INTO sqlite_sequence VALUES('auth_user',1);
INSERT INTO sqlite_sequence VALUES('catalog_author',1);
INSERT INTO sqlite_sequence VALUES('catalog_book',1);
INSERT INTO sqlite_sequence VALUES('catalog_genre',1);
INSERT INTO sqlite_sequence VALUES('catalog_language',3);
INSERT INTO sqlite_sequence VALUES('catalog_book_genre',1);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "catalog_bookinstance_book_id_69f93415" ON "catalog_bookinstance" ("book_id");
CREATE UNIQUE INDEX "catalog_book_genre_book_id_genre_id_d15f6922_uniq" ON "catalog_book_genre" ("book_id", "genre_id");
CREATE INDEX "catalog_book_genre_book_id_e5a77c43" ON "catalog_book_genre" ("book_id");
CREATE INDEX "catalog_book_genre_genre_id_77d7ffde" ON "catalog_book_genre" ("genre_id");
CREATE INDEX "catalog_bookinstance_borrower_id_0d71c37c" ON "catalog_bookinstance" ("borrower_id");
CREATE INDEX "catalog_book_author_id_b0849980" ON "catalog_book" ("author_id");
CREATE INDEX "catalog_book_language_id_447f859e" ON "catalog_book" ("language_id");
CREATE UNIQUE INDEX "genre_name_case_insensitive_unique" ON "catalog_genre" ((LOWER("name")));
CREATE UNIQUE INDEX "language_name_case_insensitive_unique" ON "catalog_language" ((LOWER("name")));
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
COMMIT;
