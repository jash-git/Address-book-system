﻿SELECT a_d.name AS name,c.name AS city_name,a.name AS area_name,a_d.address AS Address FROM all_data AS a_d, city AS c, area AS a WHERE a_d.city_id=c.id AND a_d.area_id=a.id;