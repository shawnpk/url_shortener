# URL Shortener

- Ruby version 2.6.1
- Rails version 5.2.3

## Usage
- Clone repository
- Run bundle
- Start rails server

## Endpoints
##### localhost:3000/short_link  -> Create a short link
- Parameters: url, user_id
- Example route: localhost:3000/short_link?url=https://kapost.com/join-our-team/&user_id=1
returns:

{

    "long_url": "https://kapost.com/join-our-team/"
    "short_link": "http://localhost:3000/c06c9a"

}

##### localhost:3000/:short_link -> Redirect short link to original link
- Example: http://localhost:3000/c06c9a redirects to https://www.kapost.com
