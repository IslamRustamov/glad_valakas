# glad_valakas

glad_valakas is a gem that allows you to get URLs of different Glad Valakas materials (photos, videos, audios).
This gem is in development right now.

Installation:
```
gem install glad_valakas
```

After installation you just include gem in your file:
```
require "glad_valakas"
```

After including gem into your file, you can get an array of URLs like this:
```
Valakas.photo_urls
```
This will return an array of photo URLs.
To get a random photo url use:
```
Valakas.photo_urls.sample
```

# TODO:
Add audio parser

Add video parser

# Contributors are welcome
