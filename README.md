# Mister Softee Tracker API

A Rails API for the [Mister Softee Tracker client app](https://github.com/erikwithuhk/mister-softee-tracker-client).

Live: https://mister-softee-tracker-api.herokuapp.com/api/v1/

## Endpoints
Users must be authenticated to access these endpoints. Accounts may be created using the [Mister Softee Tracker app](http://mister-softee-tracker-client.herokuapp.com).

| Resource | Method | Path | Format |
| --- | --- | --- | --- |
| Sign up | POST | /api/v1/signup | JSON |
| Log in | POST | /api/v1/login | JSON |
| Users | GET | /api/v1/users | JSON |
| User | GET | /api/v1/users/:user_id | JSON |
| User | PATCH | /api/v1/users/:user_id | JSON |
| User | DELETE | /api/v1/users/:user_id | JSON |
| User Requests | GET | /api/v1/users/:user_id/requests | JSON |
| User Requests | POST | /api/v1/users/:user_id/requests | JSON |
| User Request | GET | /api/v1/users/:user_id/requests/:request_id | JSON |
| User Request | PATCH | /api/v1/users/:user_id/requests/:request_id | JSON |
| User Request | DELETE | /api/v1/users/:user_id/requests/:request_id | JSON |

*Note: All user resources are also available for both user types. These are available by replacing "users" in the path with "customers" or "vendors".*
