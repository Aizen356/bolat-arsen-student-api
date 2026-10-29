# bolat-arsen-student-api

Spring Boot CRUD application for managing student records.

**Author:** Bolat Arsen

## Overview
A REST API built with Spring Boot and PostgreSQL that performs full CRUD
operations on student data.

## Endpoints
| Method | Path               | Description              |
|--------|--------------------|--------------------------|
| POST   | /api/students      | Create a new student     |
| GET    | /api/students      | Retrieve all students    |
| GET    | /api/students/{id} | Retrieve one student     |
| PUT    | /api/students/{id} | Update a student         |
| DELETE | /api/students/{id} | Delete a student         |

## Run
```
./gradlew bootRun
```

## Author
Bolat Arsen
