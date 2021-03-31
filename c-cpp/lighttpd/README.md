# lighttpd 1.4 example build

**STOP**: You likely do not need to use this image; it's here for
informational purposes only.


This documents how we build the lighttpd docker images.

If you do want to rebuild, issue:
```bash
$ make DOCKERID=<your docker ID>
```

And it will automatically build the image and push it to dockerhub.com
(or whatever repo is your default).

Please consult the  `Makefile` and `Dockerfile`'s for more information.
