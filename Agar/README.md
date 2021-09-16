# Agar Server/Client Hosted through docker

This wont work out of the box - there are some changes you'll need to make
based on your setup, some of which may require some techinical understanding
to get working.

## Code Used
MultiOgarII Server: `https://github.com/m-byte918/MultiOgarII.git`
Cigar2 Client: `https://github.com/Cigar2/Cigar2`

## Notes about how this works
The CigarII client basically boils down to an HTML/javascript file, which is
given by the server to each client trying to play. Each browser then runs this
code locally, and tries to connect to the server. This means both the server
*and* the client need to be publically accessible.

## Getting up and running
1. The CigarII client is within this folder as a submodule - make sure you cloned
with `--recurse-submodules` to get this code.
2. Add firewalling/port forwading rules to ensure port 80 and 8080 are client
accessible
3. Edit `Caddyfile`, replacing `localhost` with an appropriate server address,
either a domain name or ip address where the client will be accessed.
4. Edit `Cigar2/web/index.html` line 44, replacing `localhost` with the address
of the server, and `Local 8080` with an appropriate name. You may also want to
remove the `localhost:443` line, and make other modifications but I'll leave
those to you.
5. Run `docker-compose up -d`
6. If you want to connect to server console, run docker-attach `agar_server_1`
(or some other name if your container is named differently).

