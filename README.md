
# Toters Clone API
API for toters clone app 

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
[![AGPL License](https://img.shields.io/badge/node%20JS-v16.17.0-yellow.svg)](http://www.gnu.org/licenses/agpl-3.0)



## API modules

| module name | version|
| :-------- | :------- |
| `express` | `4.18.1` |
| `mysql` | `2.18.1` | 
| `body-parser` | `1.20.0` | 
| `morgan` | `1.10.0` | 





## Installation

### setup the api
to get started first clone the repo

```sh 
git clone https://github.com/LAITH343/TotersCloneApi.git master
```

cd into it
```sh
cd toters_clone_api
```

now install the dependencies 
```sh
npm i express mysql body-parser morgan
```

### config the database

first edit db_connection.js file, you can find it under database folder
edit 
```js
const db = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "root",
    database: "laith",
    multipleStatements: true
});
```
add your own info then save, also u can edit the port from main.js default is 4000

then open your phpmyadmin, select your database u want to use and import the config file 

you can find the config file ```database_config.sql``` under database folder 
## Author

- [@LAITH343](https://github.com/LAITH343)


## License

[MIT](https://choosealicense.com/licenses/mit/)

