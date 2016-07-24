DROP USER IF EXISTS has_many_user;
CREATE USER has_many_user;

DROP DATABASE IF EXISTS has_many_blogs;
CREATE DATABASE has_many_blogs
  WITH OWNER has_many_user;

\c has_many_blogs;

CREATE TABLE users
(
  id SERIAL PRIMARY KEY NOT NULL,
  username character varying (90) NOT NULL,
  first_name character varying (90) DEFAULT NULL,
  last_name character varying (90) DEFAULT NULL,
  create_at timestamp with time zone NOT NULL DEFAULT now(),
  updated_at timestamp with time zone NOT NULL DEFAULT now()
);

\i scripts/blog_data.sql;