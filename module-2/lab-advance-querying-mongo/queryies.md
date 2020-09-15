SOLUTION 1:
query : {name : "Babelgum"}
projection: {name:1}

SOLUTION 2:
query : {number_of_eployees:"{$gt:5000}} 
sort:{number_of_employees:1}
limit:20

SOLUTION 3:
query : {$and: [{number_of_employees : {$gt : 2000 } }, {founded_year: {$lt :2005 }}]}
projection: {name:1,founded_year:1}

SOLUTION 4:
query : {$and:[{total_money_raised:{$gt:100000000}},{founded_year:{$lt:2010}}]}
projection: {name:1,ipo:1}

SOLUTION 5:
query : {$and:[{number_of_employees:{$lt:1000}},{founded_year:{$lt:2005}}]}
sort:{number_of_employees:1}
limit:10

SOLUTION 6:
query : {partners:{$exists:false}}

SOLUTION 7:
query : {category_code:{$eq:null}}

SOLUTION 8:
query : {$and:[{number_of_employees:{$gt:100}},{number_of_employees:{$lt:1000}}]}
projection: {name:1,number_of_employees:1}

SOLUTION 9:
sort:{ipo:-1}


SOLUTION 10:
sort:{number_of_employees:-1}
limit:10

SOLUTION 11:
query : {founded_month:{$gt:6}}

SOLUTION 12:
query : {$and:[{founded_year:{$lt:2000}},{acquisition:{$gt:10000000}}]}
projection: 

SOLUTION 13:{"acquisition.acquired_year":{$gt:2010}}
projection: {name:1,acquisition:1}
sort:{"acquisition.price_amount":1}

SOLUTION 14:
projection: {name:1,founded_year:1}
sort: {founded_year:1}

SOLUTION 15:
query : {$and:[{founded_day:{$gt:1,$lt:8}}]} 
sort:{"acquisition.price_amount":1}
limit:10

SOLUTION 16:
query : {$and:[{category_code:"web"},{number_of_employees:{$gt:4000}}]}

sort:{number_of_employees:1}

SOLUTION 17:
query : {$and:[{"acquisition.price_amount":{$gt:10000000}},{"acquisition.price_currency_code":"EUR"}]}


SOLUTION 18:
query : {$and:[{"acquisition.acquired_month":{$gt:1}},{"acquisition.acquired_month":{$lt:4}}]}
projection: {name:1,acquisition:1}


SOLUTION 19:
query : {$and:[{founded_year{$gt:2000,$lt:2010}},{"acquisition.acquired_year":{$lt:2011}}]} 
limit:10



