DROP TABLE IF EXISTS user_roles;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS roles;

drop table if exists sales_orders;
drop table if exists order_products;

drop table if exists product_categories;
drop table if exists product_tags;

drop table if exists tags;
drop table if exists products;
drop table if exists categories;

create table users (
    id          integer                  not null,
    email       varchar(255)             not null,
    first_name  varchar(255)             null,
    last_name   varchar(255)             null,
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

create table categories (
   id          integer                   not null,
   name        varchar(255)             not null,
   parent_id   integer                          ,
   constraint pk_categories primary key (id)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table products (
   id                integer                   not null      ,
   name              varchar(255)             not null      ,
   description       text                                   ,
   product_status_id integer                                ,
   regular_price     numeric                   default 0    ,
   discount_price    numeric                   default 0    ,
   quantity          integer                   default 0    ,
   taxable           boolean                      default false,
   constraint pk_products primary key (id)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table tags (
   id          integer                   not null,
   name        varchar(255)             not null,
   constraint pk_tags primary key (id)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table sales_orders (
   id          integer                   not null,
   order_date  date                     not null,
   user_id     integer                  not null,
   total       numeric                  not null default 0,
   coupon_id   integer                          ,
   session_id  varchar(255)                     ,
   constraint pk_sales_orders primary key (id)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table coupons (
   id          integer                   not null      ,
   code        varchar(255)             not null      ,
   description text                                   ,
   active      bool                      default true ,
   value       numeric                                ,
   multiple    bool                      default false,
   constraint pk_coupons primary key (id)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table product_tags (
   product_id  integer                  not null,
   tag_id      integer                  not null,
   constraint pk_product_tags primary key (product_id,tag_id)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table cc_transactions (
   id                 integer                   not null,
   code               varchar(255)                     ,
   order_id           integer                  not null,
   transdate          timestamp         ,
   processor          varchar(255)             ,
   processor_trans_id varchar(255)             ,
   amount             numeric                  not null default 0,
   cc_num             varchar(255)                     ,
   cc_type            varchar(255)                     ,
   response           text                             ,
   constraint pk_cc_transactions primary key (id)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table sessions (
   id          varchar(255)             not null,
   data        text                             ,
   constraint pk_sessions primary key (id)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table product_statuses (
   id          integer                   not null,
   name        varchar(255)             not null,
   constraint pk_product_statuses primary key (id)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table product_categories (
   category_id integer                  not null,
   product_id  integer                  not null,
   constraint pk_product_categories primary key (category_id,product_id)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table order_products (
   id          integer                   not null,
   order_id    integer                   not null,
   product_id  integer                          ,
   name        varchar(255)             not null,
   description text                             ,
   price       numeric                  not null,
   quantity    integer                  not null,
   created_at timestamp                 not null,
   constraint pk_order_products primary key (id)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;