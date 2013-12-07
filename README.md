AngularSignalR
==============

Test project, combine multiple technologies, specifically AngularJS and SignalR.

Server side implements Entity Framework with a MySQL database.

Client side CRUD actions persisted to server through WCF.  Updates to models on the server are then broadcast to all connected clients using SignalR.

Client side models &amp; views handled by Angular, persisting changes using the RESTful web service by the server.

SignalR.js intergrated into angular service to handle messages from server.
