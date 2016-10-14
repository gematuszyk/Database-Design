$query1 = "INSERT INTO money (food, store, amount) VALUES ('{$food}', '{$store}', '{$amount}');";

$query2 = "INSERT INTO food (food_name, preparation, presentation, quantity, fresh, full, drink) VALUES ('{$food_name}', '{$preparation}', '{$presentation}', '{$presentation}', '{$fresh}', '{$full}', '{$drink}');";

$query3 = "INSERT INTO store (store_name, proximity, store_type, wait, size, staff, status) VALUES ('{$store_name}', '{$proximity}', '{$store_type}', '{$wait}', '{$size}', '{$status}', '{$status}');";

$query4 = "INSERT INTO person (relationship, emotion, their_enjoyment) VALUES ('{$relationship}', '{$emotion}', '{$their_enjoyment}');";

$query5 = "INSERT INTO rating (food, store, status, amount rating) VALUES ('{$food}', '{$store}', '{$status}','{$rating}');";