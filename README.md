# Portfolio
Github IO portfolio website hosted at [dopeamine.tech](https://dopeamine.tech)

## Purpose
I wanted a easy to maintain landing page for my self hosted application that would *always be up. 

In addition it also gives me a place to post my thoughts, and post things like my .dot files, some bash scripts I use. 

## Start Developing

Some of the submodules this site use need to be installed if you want to use the container. Run the following command to install them. 

```
 git submodule update --init --recursive 
```

Then you can start with 
```
docker compose build && docker compose up
```

## Notes

The site was built with Hugo static site generator: [gohugo.io](https://gohugo.io/)

Then themed with Blowfish: [blowfish.pages](https://blowfish.page)
