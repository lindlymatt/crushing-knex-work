# crushing-knex-work

##Diagrams

This is our entity relationship diagram.  

```text
┌──────────────┐       ┌──────────────┐       ┌──────────────┐
│    albums    │       │    album     |       │  reviewers   │
│              |       |   reviews    |       │              │
│──────────────│       │──────────────│       │──────────────│
│ id           │       │ id           │       │ id           │
│ name         │       │ album_id     │       │ name         │
│ num_songs    │      ╱│ user_id      │╲      │ age          │   
│ genre        │───────│ review       │───────│ location     │
│              │      ╲│ rating       │╱      │              │
└──────────────┘       │ submit_time  │       └──────────────┘
                       └──────────────┘
``` 

- One album can have many reviews. 
- One reviewer can review many albums. 
- An album review can only be connected to one album. 
- An album review can only have one reviewer that posted it. 
- No direct relationship between albums and reviewers exists. 
