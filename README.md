# A very simple Git Daemon to simply transfer files and configuration

## Use

Build the image:

```
make
```

How to use it:

```
docker run -d -p 9418:9418 m2i3/git-serve
```

To clone from the default repository and start working:

```
git clone git://<accessibleip>:<accessibleport/> ./localpath
```

e.g.

```
git clone git://localhost:9418/ ./myfirstrepo
```

Since the default git serve port is mapped, using the port in clone or push/pull commands is optional.

We can also push an existing repository, on localhost like so:

```
git push git://localhost/
```

## Extend

Git repositories are created in a docker volume.

`./start.sh` Gets run as default command in the container. This creates a single repository out of the box. Modify if you want more, or add them by hand to the volume.

## Notes

It does not do authentication or logging or anything. It's plain and dirty
