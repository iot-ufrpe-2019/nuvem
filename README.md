# ThingsBoard - IoT

## Getting started
Run `$ docker run -it -p 9090:9090 -p 1883:1883 -p 5683:5683/udp -v ~/.mytb-data:/data -v ~/.mytb-logs:/var/log/thingsboard --name mytb --restart always thingsboard/tb-postgres`
or 
Run `$ ./runDocker.sh`

## Using
After executing this command you can open http://{your-host-ip}:9090 in you browser (for ex. http://localhost:9090). You should see ThingsBoard login page. Use the following default credentials:

 * Systen Administrator: sysadmin@thingsboard.org / sysadmin
 * Tenant Administrator: tenant@thingsboard.org / tenant
 * Customer User: customer@thingsboard.org / customer

You can always change passwords for each account in account profile page.

## References
[Installing ThingsBoard using Docker (Linux or Mac OS)](https://thingsboard.io/docs/user-guide/install/docker/)
