# nfm

nginx file menu

## What?

This is a POSIX shell script that can be used for menuing files on a remote nginx server for download, streaming, or whatever.

It's based on nginx's ability to autoindex as json, and uses `jq` to parse that data and feed into \<your favorite menu\>.

This is mostly meant as an example to show it's not too hard to do, and works great with a media player like [mpv](https://github.com/mpv-player/mpv/) to play remote files.

## Setting up

Here's an example of a `location` directive with [basic auth](https://docs.nginx.com/nginx/admin-guide/security-controls/configuring-http-basic-authentication/) that works with `nfm`.

```nginx config
location /files.json/ {
    alias /your/data_directory/;
    autoindex on;
    autoindex_format json;
    auth_basic "login";
    auth_basic_user_file /your/user_auth_file;
}
```

*Don't forget to use HTTPS!*

You can use [nfm-rofi-example](https://github.com/JerwuQu/nfm/blob/master/nfm-rofi-example) as a template to try it out.
It expects a url in the form `https://username:password@your.host/files.json/`.

## ...

Works for me. Do what you want with it.
