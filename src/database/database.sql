-- Active: 1702235929360@@127.0.0.1@3306
CREATE TABLE users (
       id TEXT PRIMARY KEY UNIQUE NOT NULL,
        nickname TEXT NOT NULL,
        email TEXT UNIQUE NOT NULL,
        password TEXT NOT NULL,
        role TEXT NOT NULL,
        created_at DATETIME DEFAULT ( strftime('%Y-%m-%d %H:%M:%S', 'now',  'localtime') )
)

INSERT INTO users (id, nickname, email, password, role) 
VALUES
('u001','Carol','carol@email.com','carol123','ADMIN'),
('u002','Breno','breno@email.com','breno123','NORMAL')

CREATE TABLE posts (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    nickname_id TEXT NOT NULL,
    content TEXT NOT NULL,
    likes REAL NOT NULL,
    dislikes REAL NOT NULL,
    comments TEXT NOT NULL,
    created_at DATETIME DEFAULT (
            strftime(
                '%Y-%m-%d %H:%M:%S',
                'now',
                'localtime'
            )
        ),
        updated_at DATETIME DEFAULT (
            strftime(
                '%Y-%m-%d %H:%M:%S',
                'now',
                'localtime'
            )
        )
)