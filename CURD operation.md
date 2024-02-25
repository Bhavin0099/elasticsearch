<h1> Here, we are performing CURD operations with elasticsearch and kibana. </h1>
<h5>Let's start..</h5>

<h6>Here,</h6>
<h2>Getting information about cluster and nodes..</h2>

<h3>Syntax:</h3>

    <h4>"  GET _API/parameter  "</h4> 

<h3>Get info about cluster health</h3>
 
    <h4>"  GET _cluster/health  "</h4>

<p>response from Elasticsearch:</p>

![Screenshot from 2024-02-25 13-26-44](https://github.com/Bhavin0099/elasticsearch/assets/153531232/d768a869-8a5f-4d69-829c-8814ebc450f9)

<h3>Get info about nodes in a cluster</h3>

    <h4>"  GET _nodes/stats  "</h4>

<p>response from Elasticsearch:</p>

![Screenshot from 2024-02-25 13-43-14](https://github.com/Bhavin0099/elasticsearch/assets/153531232/777ad3cb-75d8-49d6-ae75-20d6e58faa9f)

<h2>Performing CRUD [ Create, Read, Update, Delete ] operations</h2>

<h3>C - Create</h3>
<h4>Create an index</h4>

<h3>Syntax:</h3>
 
    <h4>"  PUT Name-of-the-Index  "</h4>

<h3>Index</h3>

    <h4>"  PUT favorite_ice-cream  "</h4>

<p>response from Elasticsearch:</p>

![Screenshot from 2024-02-25 14-40-04](https://github.com/Bhavin0099/elasticsearch/assets/153531232/bbee4c63-4615-4177-97e5-79eaa425586b)

<h4>- Now, you have an index let's index some documents.</h4>
<p>When indexing a documents, you have two verbs "POST" and "PUT".</p>

<h6>Use POST when you want Elasticsearch to autogenerate an id for your document.</h6>

<h3>Syntax:</h3>

    POST Name-of-the-Index/_doc
    {
     field": "value"
    }


<h3>Index</h3>

    POST favorite_ice-cream/_doc
    {
     "first_name": "Abhi",
     "ice-cream": "Chocobar"
     }
     
![Screenshot from 2024-02-25 15-14-11](https://github.com/Bhavin0099/elasticsearch/assets/153531232/d0c192de-1add-42d4-8e78-8ade928fa4c0)

<h6>Use PUT when you want to assign a specific id to your document. </h6>

<h3>Syntax:</h3>

    PUT Name-of-the-Index/_doc/id-you-want-to-assign-to-this-document
    {
      "field": "value"
    }

<h3>Index</h3>

    PUT favorite_ice-cream/_doc/1
    {
      "first_name": "Raju",
      "ice-cream": "Mango"
    }

![Screenshot from 2024-02-25 15-38-32](https://github.com/Bhavin0099/elasticsearch/assets/153531232/f6e5c830-a65e-48f3-a3d4-bd558e24fd64)

<h3>_create Endpoint</h3>
<p>When you index a document using an id that already exists, the existing document is overwritten by the new document. If you do not want a existing document to be overwritten, you can use the _create endpoint!</p>
<p>Using _crete : If id is already exists than you will get a 409 conflict error.</p>

<h3>Syntax:</h3>

    PUT Name-of-the-Index/_create/id-you-want-to-assign-to-this-document 
    {
     "field": "value"
    }

<h3>Index</h3>
 
    PUT favorite_ice-cream/_doc/1
    { 
     "first_name": "Rahul",
     "ice-cream": "Kesar pista"
    }
    
![Screenshot from 2024-02-25 15-58-32](https://github.com/Bhavin0099/elasticsearch/assets/153531232/72a5ed5b-cbe1-44d2-a0fa-64f4a65e1f9a)

<h3>R- Read</h3>
<h4>Read a document</h4>

<h3>Syntax:</h3>

    GET Name-of-the-Index/_doc/id-of-the-document-you-want-to-retrieve

<h3>Index</h3>

    GET favorite_ice-cream/_doc/2
    
![Screenshot from 2024-02-25 16-12-31](https://github.com/Bhavin0099/elasticsearch/assets/153531232/dc8954cc-49d6-4ce1-9c05-8a886dbe4be5)

<h3>U- Update</h3>
<h4>Update a document</h4>

<h3>Syntax:</h3>

    POST Name-of-the-Index/_update/id-of-the-document-you-want-to-update 
    {
    "doc": {
      "field1": "value",
      "field2": "value",
    }
    }

<h3>Index</h3>

    POST favorite_ice-cream/_update/1
    {
    "doc": {
      "ice-cream": "Kaju-Kaju"
    }
    }
    
![Screenshot from 2024-02-25 16-33-26](https://github.com/Bhavin0099/elasticsearch/assets/153531232/087792b4-ec8a-40b7-b211-973bb8cade49)

<h3>D- Delete</h3>
<h4>Delete a document</h4>

<h3>Syntax:</h3>

    DELETE Name-of-the-Index/_doc/id-of-the-document-you-want-to-delete

<h3>Index</h3>

    DELETE favorite_ice-cream/_doc/1
    
![Screenshot from 2024-02-25 16-38-47](https://github.com/Bhavin0099/elasticsearch/assets/153531232/1082fe94-9170-4f89-af81-de5963c4caec)

<h3>To Check all the data that you have indexed</h3>

<h3>Syntax:</h3>

    GET index_name/_search
    {
     "query": {
      "match_all": {}
    }
    }

<h3>Index</h3>

    GET favorite_ice-cream/_search
    {
     "query": {
       "match_all": {}
    }
    }
