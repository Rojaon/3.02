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

I will separate the table into two tables: 1.Customer table 2.Flight table.

1.Customer table primary key id field
|id|Customer Name	  |Customer Status|Flight Number	|Total Customer Mileage|
|--|-----------------|---------------|---------------|----------------------|
|1|Agustine Riviera	|Silver	       	|DL143      		|115235|
|2|Agustine Riviera	|Silver       	|DL122      		|115235|
|3|Alaina Sepulvida	|None         	|DL122        	|6008|
|4|Tom Jones	      |Gold	        	|DL122        	|205767|
|5|Tom Jones       	|Gold      	    |DL53         	|205767|
|6|Sam Rio        	|None	        	|DL143        	|2653|
|7|Tom Jones	      |Gold	        	|DL222        	|205767|
|8|Jessica James  	|Silver      		|DL143        	|127656|
|9|Ana Janco	      |Silver       	|DL222        	|136773|
|10|Jennifer Cortez  |Gold         	|DL222        	|300582|
|11|Jessica James  	|Silver      		|DL122        	|127656|
|12|Sam Rio	        |None        		|DL37         	|2653|
|13|Christian Janco  |Silver       	|DL222        	|14642|



2.Flight table the primary key is Flight Number
|Flight Number|Flight Mileage	|	Aircraft|Total Aircraft Seats	|
|-------------|---------------|---------|---------------------|
|DL143|135|Boeing 747	|	400|
|DL122|4370|Airbus A330|236|
|DL53	|2078|Boeing 777|264|
|DL222|1765|Boeing 777|264|
|DL37	|531|Boeing 747	|400|



