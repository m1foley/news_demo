NewsDemo
=========
Fake implementation of the deprecated Google News API, as documented here: https://developers.google.com/news-search/v1/jsondevguide

Learning goals
--------------
* rails-api gem
* better rspec

Differences from original API
-----------------------------
1. Search URL is more sensical:
   * Old: `/ajax/services/search/news?v=1.0&q=barack%20obama`
   * New: `/news_items/search.json?q=barack%20obama`
