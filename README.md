# Contacts Rank
---

### According to the result:

* Case insensitive @yahoo might get matched to @Yahoo
* Match to name is weighted more than match to email because there are emails that contain "z" but not shown
* Exact substring match preferred
* Max of 1 result per search

These are the criteria that I am using to write my algorithm

This is a very simple algorithm with with a weight structure as in elasticsearch. 

I did notice that the result given as examples do not exist in the actual json file. For example, the example is "email": "jj@yahoo.com" but the json is "email": "jj@Yahoo.com" with a capital "Y". Same for "zed" and "Zed". Is that intentional? ``Nonetheless, I am assuming this is a typo and I am changing the test cases to match the data.`` If this is not a typo, then I should probably format the result like downcasing email and capitalizing name.``

### Installation

```
bundle install
chmod +x contacts-rank.rb
./contacts-rank z
```

### Test Suite

```
rpsec spec/*
```

Tested with ``rspec 3.4.0`` and ``ruby 2.1.1`` or ``ruby 2.2.1``

### Examples

```
./contacts-rank.rb z
[
    {
        "name": "Zed",
        "email": "zz@zed.com",
        "phone": "111.111.4444"
    }
]

./contacts-rank.rb zz
[
    {
        "name": "Zed",
        "email": "zz@zed.com",
        "phone": "111.111.4444"
    }
]

./contacts-rank.rb @yahoo
[
    {
        "name": "Jenny J",
        "email": "jj@yahoo.com"
    }
]
```
