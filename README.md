#Crushing knex

##Diagrams
```text
 ┌──────────────┐       ┌──────────────┐       ┌──────────────┐
 │    albums    │       │    album     |       │  reviewers   │
 │              |       |   reviews    |       │              │
 │──────────────│       │──────────────│       │──────────────│
 │ id           │       │ id           │       │ id           │
 │ name         │       │ album_id     │       │ name         │
 │ num_songs    │      ╱│ user_id      │╲      │ age          │   
 │ genre        │───────│ review       │───────│ location     │
 │              │      ╲│ rating       │╱      │              │
 └──────────────┘       │ review_time  │       └──────────────┘
                        └──────────────┘
 ```
