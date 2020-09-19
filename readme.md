## QuickRestApi
A simple toy REST api for my personal use.It has token based auth system.also hase unauthenticated routes for quick use

## Current Routes
**Auth:**


- login: [POST] http://demoapi.questiongeneratorbd.com/api/login

- register: [POST] http://demoapi.questiongeneratorbd.com/api/register

- logout:[POST] http://demoapi.questiongeneratorbd.com/api/logout




**User(Authenticated):**


- logged in user: [POST] http://demoapi.questiongeneratorbd.com/api/user

- list of all user: [GET] http://demoapi.questiongeneratorbd.com/api/users

- single user : [GET] http://demoapi.questiongeneratorbd.com/api/user/id

- update user : [POST] http://demoapi.questiongeneratorbd.com/api/user/update

- delete user : [POST] http://demoapi.questiongeneratorbd.com/api/user/delete




**User(Unauthenticated):**


- list of all user: [GET] http://demoapi.questiongeneratorbd.com/api/noauth/users

- single user : [GET] http://demoapi.questiongeneratorbd.com/api/noauth/user/id

- update user : [POST] http://demoapi.questiongeneratorbd.com/api/noauth/user/update

- delete user : [POST] http://demoapi.questiongeneratorbd.com/api/noauth/user/delete

## Freamworks and Tools

- [Laravel](https://laravel.com/)

- [Laravel Passport](https://github.com/laravel/passport)
 
