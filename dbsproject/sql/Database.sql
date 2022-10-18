CREATE TABLE `users` (
  `user_id` int PRIMARY KEY,
  `password` varchar(255),
  `user_name` varchar(255),
  `age` int,
  `phone` varchar(255),
  `email` varchar(255)
);

CREATE TABLE `train` (
  `train_id` int PRIMARY KEY,
  `train_name` varchar(255),
  `train_type` varchar(255)
);

CREATE TABLE `booking` (
  `booking_id` int,
  `train_id` int,
  `from_id` int,
  `to_id` int,
  `date_of_depature` datetime
);

CREATE TABLE `station` (
  `station_id` int,
  `station_name` varchar(255)
);

ALTER TABLE `booking` ADD FOREIGN KEY (`booking_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `train` ADD FOREIGN KEY (`train_id`) REFERENCES `booking` (`train_id`);

ALTER TABLE `station` ADD FOREIGN KEY (`station_id`) REFERENCES `booking` (`from_id`);

ALTER TABLE `station` ADD FOREIGN KEY (`station_id`) REFERENCES `booking` (`to_id`);
