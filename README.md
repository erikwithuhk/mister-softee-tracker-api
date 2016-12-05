# Mister Softee Tracker API

A Rails API for the [Mister Softee Tracker client app](https://github.com/erikwithuhk/mister-softee-tracker-client).


## Endpoints
Users must be authenticated to access these endpoints. Accounts may be created using the [Mister Softee Tracker app](http://mister-softee-tracker-client.herokuapp.com).

Base URL: https://mister-softee-tracker-api.herokuapp.com/api/v1/
Format: JSON

| Resource | Method | Path |
| --- | --- | --- |
| Sign up | POST | /signup |
| Log in | POST | /login |
| Users | GET | /users |
| User | GET | /users/:user_id |
| User | PATCH | /users/:user_id |
| User | DELETE | /users/:user_id |
| User Requests | GET | /users/:user_id/requests |
| User Requests | POST | /users/:user_id/requests |
| User Request | GET | /users/:user_id/requests/:request_id |
| User Request | PATCH | /users/:user_id/requests/:request_id |
| User Request | DELETE | /users/:user_id/requests/:request_id |

*Note: All user resources are also available for both user types. These are available by replacing "users" in the path with "customers" or "vendors".*
