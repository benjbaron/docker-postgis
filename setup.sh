# These tasks are run as root
CONF="/etc/postgresql/10/main/postgresql.conf"

# Restrict subnet to docker private network
echo "host    all             all             172.17.0.0/16               md5" >> /etc/postgresql/10/main/pg_hba.conf
echo "host    all             all             172.18.0.0/16               md5" >> /etc/postgresql/10/main/pg_hba.conf
# And allow access from DockerToolbox / Boottodocker on OSX
echo "host    all             all             192.168.0.0/16               md5" >> /etc/postgresql/10/main/pg_hba.conf
# Listen on all ip addresses
echo "listen_addresses = '*'" >> /etc/postgresql/10/main/postgresql.conf
echo "port = 5432" >> /etc/postgresql/10/main/postgresql.conf

