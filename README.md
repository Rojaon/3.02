# Enterprise-Java-Development-3.02

---
1.Normalize the following blog database:

|author          |title                |word count|views|
|----------------|---------------------|----------|-----|
|Maria Charlotte|Best Paint Colors|814|14|
|Juan Perez	Small|Space Decorating Tips|1146|221|
|Maria Charlotte|Hot Accessories|986|105|
|Maria Charlotte|Mixing Textures|765|22|
|Juan Perez|Kitchen Refresh|1242|307|
|Maria Charlotte|Homemade Art Hacks|1002|193|
|Gemma Alcocer|Refinishing Wood Floors|1571|7542|

1NF (First Normal Form):

It's already in the first Normalization form.

2NF (Second Normal Form):

I'm going to add a primary key field which will be id, there is no need to separate the table.


|id|author          |title                |word count|views|
|--|----------------|---------------------|----------|-----|
|1 |Maria Charlotte|Best Paint Colors|814|14|
|2 |Juan Perez	Small|Space Decorating Tips|1146|221|
|3 |Maria Charlotte|Hot Accessories|986|105|
|4 |Maria Charlotte|Mixing Textures|765|22|
|5 |Juan Perez|Kitchen Refresh|1242|307|
|6 |Maria Charlotte|Homemade Art Hacks|1002|193|
|7 |Gemma Alcocer|Refinishing Wood Floors|1571|7542|


---
2.Normalize the following airline database:

|Customer Name	  |Customer Status|Flight Number	|Aircraft|	Total Aircraft Seats	|Flight Mileage	|Total Customer Mileage|
|-----------------|---------------|---------------|--------|--------|--------|--------|
|Agustine Riviera	|Silver	|DL143	|Boeing 747|	400|	135	|115235|
|Agustine Riviera	|Silver|	DL122	|Airbus A330|236|	4370	|115235|
|Alaina Sepulvida	|None|	DL122|	Airbus A330|	236	|4370	|6008|
|Agustine Riviera	|Silver|	DL143|	Boeing 747|	400|	135	|115235|
|Tom Jones	|Gold	|DL122|	Airbus A330|	236|	4370	|205767|
|Tom Jones	|Gold|	DL53	|Boeing 777	|264|	2078	|205767|
|Agustine Riviera|	Silver	|DL143|	Boeing 747	|400|	135	|115235|
|Sam Rio	|None	|DL143|	Boeing 747|	400|	135|	2653|
|Agustine Riviera	|Silver	|DL143|	Boeing 747	|400	|135	|115235|
|Tom Jones	|Gold	|DL222|	Boeing 777	|264	|1765	|205767|
|Jessica James	|Silver	|DL143	|Boeing 747|400	|135	|127656|
|Sam Rio	|None|	DL143|	Boeing 747	|400	|135|	2653|
|Ana Janco	|Silver|	DL222|	Boeing 777|	264|	1765	|136773|
|Jennifer Cortez|	Gold|	DL222	|Boeing 777	|264	|1765	|300582|
|Jessica James	|Silver	|DL122	|Airbus A330	|236|	4370	|127656|
|Sam Rio	|None	|DL37	|Boeing 747	|400	|531	|2653|
|Christian Janco|	Silver	|DL222	|Boeing 777	|264	|1765	|14642|


1NF (First Normal Form):

|Customer Name	  |Customer Status|Flight Number	|Aircraft|	Total Aircraft Seats	|Flight Mileage	|Total Customer Mileage|
|-----------------|---------------|---------------|--------|--------|--------|--------|
|Agustine Riviera	|Silver	|DL143	|Boeing 747|	400|	135	|115235|
|Agustine Riviera	|Silver|	DL122	|Airbus A330|236|	4370	|115235|
|Alaina Sepulvida	|None|	DL122|	Airbus A330|	236	|4370	|6008|
|Tom Jones	|Gold	|DL122|	Airbus A330|	236|	4370	|205767|
|Tom Jones	|Gold|	DL53	|Boeing 777	|264|	2078	|205767|
|Sam Rio	|None	|DL143|	Boeing 747|	400|	135|	2653|
|Tom Jones	|Gold	|DL222|	Boeing 777	|264	|1765	|205767|
|Jessica James	|Silver	|DL143	|Boeing 747|400	|135	|127656|
|Ana Janco	|Silver|	DL222|	Boeing 777|	264|	1765	|136773|
|Jennifer Cortez|	Gold|	DL222	|Boeing 777	|264	|1765	|300582|
|Jessica James	|Silver	|DL122	|Airbus A330	|236|	4370	|127656|
|Sam Rio	|None	|DL37	|Boeing 747	|400	|531	|2653|
|Christian Janco|	Silver	|DL222	|Boeing 777	|264	|1765	|14642|

I removed the duplicate entries.


2NF (Second Normal Form):

I will separate the table to three tables: 1.Customer table 2.Aircraft table 3.Flight table. And add a primary key field which will be id int the customer table.

1.Customer table
|id|Customer Name	  |Customer Status|Total Customer Mileage|
|--|-----------------|---------------|----------------------|
|1 |Agustine Riviera	|Silver	|115235|
|2 |Alaina Sepulvida	|None|6008|
|3 |Tom Jones	|Gold	|205767|
|4 |Sam Rio	|None	|2653|
|5 |Jessica James	|Silver	|127656|
|6 |Ana Janco	|Silver|136773|
|7 |Jennifer Cortez|	Gold|300582|
|8 |Christian Janco|	Silver	|14642|


2.Aircraft table the primary key is Aircraft field
|Aircraft         |	Total Aircraft Seats	|
|-----------------|---------------|
|Boeing 747|400|
|Airbus A330|236|
|Boeing 777	|264|


3.Flight table the primary key is Flight Number field
|Flight Number	|Flight Mileage	|
|-----------------|---------------|---------------|--------|--------|--------|
|DL143	|	135	|
|DL122	|	4370	|
|DL53	|	2078	|
|DL222|1765	|
|DL37	|531	|

