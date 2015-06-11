# A very simple Git Daemon to simply transferring files and configuration 

How to use it:

docker run -d -p 9418 m2i3/git-serve 

To clone from it:

clone git://accessibleip:accessibleport/ ./localpath

## Notes

It does not do authentication or logging or anything. It's plain and dirty