#Crushing knex

##Diagrams

We used a simple philosophy of "one-to-many" to manage our assets in the databases.

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
- Albums can have multiple reviews.
- Users can post multiple reviews.
- A review can only have one author.
- A review can only correlate to one album.
- Albums and reviewers have no relationship.

##Designing the Index Page

After setting up our database and organizing our data model, we thought that incorporating the index page design was very important. In this instance, we used a soft-tone baby blue background gradient to create a delicious appeal to the eyes. We then contrasted this with black text, to make sure the font was both readable and well structured. 

On our homepage, you can search for your favorite albums and receive a JSON that contains the album information (for now), it will soon contain reviewer information, timestamps and more.
