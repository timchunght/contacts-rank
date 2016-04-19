According to the result:

* All results are case INsensitivea
* Match to name is weighted more than match to email because there are emails that contain "z" but not shown
* Exact substring match preferred
* Max of 1 result per search

These are the three criteria that I am using to write my algorithm

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