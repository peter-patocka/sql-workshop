DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS user_roles;

create table users (
    id          integer                  not null     ,
    email       varchar(255)             not null     ,
    first_name  varchar(255)             not null     ,
    last_name   varchar(255)             not null     ,
    active      boolean                  default true,
    inserted_at timestamp not null,
    updated_at  timestamp not null,
    CONSTRAINT pk_users PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table roles (
    id          integer                  not null,
    name        varchar(255)             not null,
    CONSTRAINT pk_roles PRIMARY KEY (id)
);

create table user_roles (
    user_id     integer                  not null,
    role_id     integer                  not null,
    CONSTRAINT pk_user_roles PRIMARY KEY (user_id, role_id),
    CONSTRAINT `fk_user_roles__user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
    CONSTRAINT `fk_user_roles__role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
);