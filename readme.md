## QuickRestApi
A simple toy REST api for my personal use.It has token based auth system.also hase unauthenticated routes for quick use

## Current Routes
Auth:


login: [POST] http://demoapi.questiongeneratorbd.com/public/api/login

register: [POST] http://demoapi.questiongeneratorbd.com/public/api/register

logout:[POST] http://demoapi.questiongeneratorbd.com/public/api/logout


User(Authenticated):
logged in user: [POST] http://demoapi.questiongeneratorbd.com/public/api/user

list of all user: [GET] http://demoapi.questiongeneratorbd.com/public/api/users

single user : [GET] http://demoapi.questiongeneratorbd.com/public/api/user/id



User(Unauthenticated):


list of all user: [GET] http://demoapi.questiongeneratorbd.com/public/api/noauth/users

single user : [GET] http://demoapi.questiongeneratorbd.com/public/api/noauth/user/id

## Freamworks and Tools

- [Laravel](https://laravel.com/)

- [Laravel Passport](https://github.com/laravel/passport)
 
