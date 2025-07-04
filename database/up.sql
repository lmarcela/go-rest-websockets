DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id VARCHAR(32) PRIMARY KEY,
  password VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

DROP TABLE IF EXISTS posts;

CREATE TABLE posts (
  id VARCHAR(32) PRIMARY KEY,
  post_content VARCHAR(32) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  user_id VARCHAR(32) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id)
);