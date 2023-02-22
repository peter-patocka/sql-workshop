INSERT INTO `products` (`id`, `name`, `description`, `product_status_id`, `regular_price`, `discount_price`, `quantity`,
                        `taxable`)
VALUES (1, 'Green Lightsaber',
        'Built to replace his father\'s lightsaber, Luke Skywalker\'s own lightsaber contained a kyber crystal and emitted a green plasma blade.',
        NULL, '1000', NULL, 1, 1),
       (2, 'Blue Lightsaber',
        'The blue lightsaber is easily one of the most common in the Star Wars universe. There is a simple reason for this: It is the standard color of the ',
        NULL, '1500', '1000', 1, 0),
       (3, 'Pink Lightsaber',
        'A pink lightsaber or a magenta lightsaber, is a rare lightsaber blade color. In Star Wars Canon, Cal Kestis may optionally wield a magenta-bladed lightsaber in the video game Star Wars Jedi: Fallen Order (2019). In Star Wars Legends, the first Mara Jade lightsaber emits a magenta blade. A magenta lightsaber is also a playable option in the video game Star Wars: The Old Republic (2011).',
        NULL, '50000', NULL, 1, 0);

INSERT INTO `roles` (`id`, `name`)
VALUES (1, 'Padawan'),
       (2, 'Jedi Knight'),
       (3, 'Jedi Master'),
       (4, 'Dark Lord of the Sith');

INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `active`, `inserted_at`, `updated_at`)
VALUES (1, 'luke.skywalker@gmail.com', 'Luke', 'Skywalker', 0, '2022-09-20 16:41:47', '2022-09-27 16:41:47'),
       (2, 'darth.vader@gmail.com', 'Darth', 'Vader', 0, '2022-09-27 14:44:38', '2022-09-27 14:44:38'),
       (3, 'kenobi@gmail.com', 'Obi-wan', 'Kenobi', 0, '2022-09-20 16:49:34', '2022-09-28 16:49:34'),
       (4, 'zvalena.alica@gmail.com', 'Alica', 'Zvalena', 0, '2023-02-22 19:02:14', '2023-02-22 19:02:14');
INSERT INTO `user_roles` (`user_id`, `role_id`)
VALUES (1, 1),
       (3, 3),
       (2, 4);
