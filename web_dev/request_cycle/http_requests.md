# HTTP Requests Research

## What are some common HTTP status codes?

HTTP status codes are generally 3 digit numbers with the first digit being 1-5. Those beginning with 1 indicate the request was received, and the server is continuing to work on it. 2 indicates success in some form. 3 indicates a redirection, indicating that the client needs to take some additional action. 4 indicates a client error. 5 indicates a server error.

Common codes include:
* 200 - OK (successfully responded)
* 204 - No Content (successfully returning nothing)
* 400 - Bad request (something wrong with the request)
* 401 - Unauthorized (no authentication provided)
* 403 - Forbidden (authorization succeeded, but user doesn't have access)
* 404 - Not Found (resource doesn't exist)
* 429 - Too many requests (rejected request due to rate limiting)
* 500 - Internal Server error (something unspecified went wrong)
# 501 - Not implemented (server can't recognize or fulfill request)
* 502 - Bad Gateway (server acted as gateway and received invalid response upstream)
* 503 - Service Unavailable (server overloaded or down)

## What is the difference between a GET request and a POST request? When might each be used?

A GET request is trying to retrieve information from the server, while a POST request is asking the server to store some information.

## What is a cookie? How does it relate to HTTP requests?

A cookie is a small amount of persistent storage a webserver can use on a client computer. The client sends the cookie to the server along with the request and the server can modify it and send it back. The client has no obligation to store it (or send it), but some functionality may be lost if the server is expecting to be able to set information in the cookie. Cookies are often used for remembering state, and can be used for authentication or tracking. Third-party cookies are often used for tracking, as an ad network can read the cookie and connect a user across many websites.