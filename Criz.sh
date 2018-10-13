#!/bin/bash
# Auto Script for Centos 6.xx
# Made w/love by xD'cRiz
# version v.10
MYIP=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0'`;
# set time GMT +8
ln -fs /usr/share/zoneinfo/Asia/Manila /etc/localtime
#change this according to your database details
dbhost='localhost';
dbuser='nightma1_owner5';
dbpass='Wi6Fp$rNJM]P';
dbname='nightma1_owner5';
dbport='3306';
#ethernet cable openvz default ethernet is venet0
#ethernet='venet0';
#ethernet='ens3';
ethernet='eth0';
#squid multi ports
squidport='8080';
squidport1='3128';
squidport2='8888';
squidport3='8000';
##certificates
cacert='-----BEGIN CERTIFICATE-----
MIIDLjCCApegAwIBAgIJALNGFVY0Tl+3MA0GCSqGSIb3DQEBBQUAMG4xCzAJBgNV
BAYTAlBIMREwDwYDVQQIEwhwZXJzb25hbDEPMA0GA1UEBxMGTUFOSUxBMQwwCgYD
VQQKEwN2cG4xDzANBgNVBAMTBnZwbiBDQTEcMBoGCSqGSIb3DQEJARYNeWFqQGdt
YWlsLmNvbTAeFw0xNzA1MTIxNzE1NDFaFw0yNzA1MTAxNzE1NDFaMG4xCzAJBgNV
BAYTAlBIMREwDwYDVQQIEwhwZXJzb25hbDEPMA0GA1UEBxMGTUFOSUxBMQwwCgYD
VQQKEwN2cG4xDzANBgNVBAMTBnZwbiBDQTEcMBoGCSqGSIb3DQEJARYNeWFqQGdt
YWlsLmNvbTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA5UttX2z+wRBFyQBR
TRh4VVS/wnoSMEtM6Np/3goFx9pMyHzoNA98KMZiOj7GtvWSM46jkAwwmW5bik1C
HumuouQsY+T7fPNw2b0WjdK6x6CEOh/2s4eC0bDs72TVYxlI9zWOM5wFFDHpZm+w
g2/HWtZw92soMYAaXzGxpOk+nZ8CAwEAAaOB0zCB0DAdBgNVHQ4EFgQU2NkN/HX2
+d8bj1UiK8jIyXgV+WEwgaAGA1UdIwSBmDCBlYAU2NkN/HX2+d8bj1UiK8jIyXgV
+WGhcqRwMG4xCzAJBgNVBAYTAlBIMREwDwYDVQQIEwhwZXJzb25hbDEPMA0GA1UE
BxMGTUFOSUxBMQwwCgYDVQQKEwN2cG4xDzANBgNVBAMTBnZwbiBDQTEcMBoGCSqG
SIb3DQEJARYNeWFqQGdtYWlsLmNvbYIJALNGFVY0Tl+3MAwGA1UdEwQFMAMBAf8w
DQYJKoZIhvcNAQEFBQADgYEAdWefZkH5Br6eZgSeHRw4jNaf8GCiXvTWX7LUtu1P
747/ldf/9kpfQYZMp9c5a8tDaAxwUL9MKggUjaDlb9YD8hr2YlfNypSopuu8m0Ht
2Ye/bkgRq6FM2SOt+gSq8m18eXxMAKJImlQ1OLbHq+E+ObaXveeCt7k1CJiTpuGO
RZY=
-----END CERTIFICATE-----';
servercert='Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number: 1 (0x1)
    Signature Algorithm: sha1WithRSAEncryption
        Issuer: C=PH, ST=personal, L=MANILA, O=vpn, CN=vpn CA/emailAddress=yaj@gmail.com
        Validity
            Not Before: May 12 17:15:59 2017 GMT
            Not After : May 10 17:15:59 2027 GMT
        Subject: C=PH, ST=personal, L=MANILA, O=vpn, CN=server/emailAddress=yaj@gmail.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (1024 bit)
                Modulus:
                    00:c9:d1:71:1e:56:86:17:06:72:a1:36:6b:39:19:
                    30:ea:4b:f7:22:c2:6d:f4:8d:7a:9b:7a:43:46:d4:
                    a8:6f:9b:1b:27:a4:90:d0:92:0f:30:bc:34:89:82:
                    07:e7:f4:07:73:f2:68:36:82:a4:a1:52:8b:a6:16:
                    38:5a:85:9b:64:65:4b:cc:51:d7:a8:d5:45:88:3f:
                    25:7e:06:62:0d:a0:ce:e4:05:ca:98:b2:3c:73:e3:
                    45:f0:56:e8:d2:84:f8:bc:43:e1:93:b6:59:f8:ee:
                    9e:d1:e3:b4:3b:46:10:99:6d:33:a7:a2:f5:a4:2c:
                    7a:2a:b4:41:ab:69:65:2a:53
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Basic Constraints: 
                CA:FALSE
            Netscape Cert Type: 
                SSL Server
            Netscape Comment: 
                Easy-RSA Generated Server Certificate
            X509v3 Subject Key Identifier: 
                4C:92:ED:3B:86:AB:CE:C9:D1:44:E2:39:8F:D4:20:66:0F:28:7B:4D
            X509v3 Authority Key Identifier: 
                keyid:D8:D9:0D:FC:75:F6:F9:DF:1B:8F:55:22:2B:C8:C8:C9:78:15:F9:61
                DirName:/C=PH/ST=personal/L=MANILA/O=vpn/CN=vpn CA/emailAddress=yaj@gmail.com
                serial:B3:46:15:56:34:4E:5F:B7

            X509v3 Extended Key Usage: 
                TLS Web Server Authentication
            X509v3 Key Usage: 
                Digital Signature, Key Encipherment
    Signature Algorithm: sha1WithRSAEncryption
         cd:bd:da:0d:11:e6:33:19:7b:eb:c7:82:c3:b5:e0:a8:fe:f3:
         9e:80:3d:be:bc:c1:47:af:24:f6:76:17:ea:4d:46:47:fa:ba:
         f8:37:7c:ad:b4:4d:60:e6:d7:f1:92:59:ac:b5:36:e3:a0:f2:
         3b:3f:17:8d:dd:9d:45:7c:a8:69:fc:8d:60:23:ff:37:4b:0e:
         29:21:3f:85:27:df:aa:07:af:27:0b:62:1e:8e:fa:52:a7:26:
         8b:5a:89:74:dc:35:fd:a8:90:06:07:9d:b4:d0:ac:bd:29:ac:
         78:7d:d5:31:a3:0b:9d:51:7d:de:e0:cd:b0:25:1f:79:95:2b:
         ca:9e
-----BEGIN CERTIFICATE-----
MIIDkDCCAvmgAwIBAgIBATANBgkqhkiG9w0BAQUFADBuMQswCQYDVQQGEwJQSDER
MA8GA1UECBMIcGVyc29uYWwxDzANBgNVBAcTBk1BTklMQTEMMAoGA1UEChMDdnBu
MQ8wDQYDVQQDEwZ2cG4gQ0ExHDAaBgkqhkiG9w0BCQEWDXlhakBnbWFpbC5jb20w
HhcNMTcwNTEyMTcxNTU5WhcNMjcwNTEwMTcxNTU5WjBuMQswCQYDVQQGEwJQSDER
MA8GA1UECBMIcGVyc29uYWwxDzANBgNVBAcTBk1BTklMQTEMMAoGA1UEChMDdnBu
MQ8wDQYDVQQDEwZzZXJ2ZXIxHDAaBgkqhkiG9w0BCQEWDXlhakBnbWFpbC5jb20w
gZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBAMnRcR5WhhcGcqE2azkZMOpL9yLC
bfSNept6Q0bUqG+bGyekkNCSDzC8NImCB+f0B3PyaDaCpKFSi6YWOFqFm2RlS8xR
16jVRYg/JX4GYg2gzuQFypiyPHPjRfBW6NKE+LxD4ZO2WfjuntHjtDtGEJltM6ei
9aQseiq0QatpZSpTAgMBAAGjggE8MIIBODAJBgNVHRMEAjAAMBEGCWCGSAGG+EIB
AQQEAwIGQDA0BglghkgBhvhCAQ0EJxYlRWFzeS1SU0EgR2VuZXJhdGVkIFNlcnZl
ciBDZXJ0aWZpY2F0ZTAdBgNVHQ4EFgQUTJLtO4arzsnRROI5j9QgZg8oe00wgaAG
A1UdIwSBmDCBlYAU2NkN/HX2+d8bj1UiK8jIyXgV+WGhcqRwMG4xCzAJBgNVBAYT
AlBIMREwDwYDVQQIEwhwZXJzb25hbDEPMA0GA1UEBxMGTUFOSUxBMQwwCgYDVQQK
EwN2cG4xDzANBgNVBAMTBnZwbiBDQTEcMBoGCSqGSIb3DQEJARYNeWFqQGdtYWls
LmNvbYIJALNGFVY0Tl+3MBMGA1UdJQQMMAoGCCsGAQUFBwMBMAsGA1UdDwQEAwIF
oDANBgkqhkiG9w0BAQUFAAOBgQDNvdoNEeYzGXvrx4LDteCo/vOegD2+vMFHryT2
dhfqTUZH+rr4N3yttE1g5tfxklmstTbjoPI7PxeN3Z1FfKhp/I1gI/83Sw4pIT+F
J9+qB68nC2IejvpSpyaLWol03DX9qJAGB5200Ky9Kax4fdUxowudUX3e4M2wJR95
lSvKng==
-----END CERTIFICATE-----';
serverkey='-----BEGIN PRIVATE KEY-----
MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBAMnRcR5WhhcGcqE2
azkZMOpL9yLCbfSNept6Q0bUqG+bGyekkNCSDzC8NImCB+f0B3PyaDaCpKFSi6YW
OFqFm2RlS8xR16jVRYg/JX4GYg2gzuQFypiyPHPjRfBW6NKE+LxD4ZO2WfjuntHj
tDtGEJltM6ei9aQseiq0QatpZSpTAgMBAAECgYEAupMom15sCl9Im+c+SwQR55ig
+X57vmkJHzFxfsrciIkBGq4Vvuw4pNppS3Jtsq80MKm6VCKE5ir0tW+3W2BHHWtT
ZplUeAJaKpP/DsLz3DxbHlKHmwEmy7kHXmfM2bVjmmzZGyDDzF5OL6p07eEV+JTF
uGFBNvfglQspnVumMHkCQQD+vEktR85gPrDPyyC5gckydwqVJ6Rcw2ZQoPEcOp92
edLIdNb5xn9zw0e4jEXyNaFZ3+Bwekj+ZAmcEPtGLi+NAkEAytHoz0GocVMYqjez
bNV0MoyNooVlYAhl2Ex2Ow0cYNZvsHi1LIBJaGyiJy6IEJFPb2zsIpeUltR8Im8P
ZX/ZXwJBAJI/k1u10BydoXGLU3xtsQ+SHLdJjSnc3U8JN6RXW9nvUz7XJd09Q0s5
IGIp1raaZ8prqDWrX2D+Gi5J6Zl/RrkCQF0dUc0VT8f3ZnN/bxigRuCONthOdeRI
9rj/IaiqtEShLlXOlR8BJrKSbT+f1UgF7noxf5fCD63Pj84fPupSb/ECQQDJv5cy
djWAwlEHS81x+bOUCLh55NOCSmfinzhT+SQNSxX/9ATAFwRgKnElVV/PrvKPSlIr
ARYOFVHwY4xVs90r
-----END PRIVATE KEY-----';
dh='-----BEGIN DH PARAMETERS-----
MIGHAoGBAPvhDcO6KD6nEAW0NzURCYQwnX/y72xaLsKyy1PQXRi+EJxTWmEIFLsz
3NEaRZCYW/8dlvD9KoVrSuL9bFUWSUGKcMLyAq8RNOLuLQ0aT+Z2PpVbak0+sniV
npLDS0FPGWDXqSHywNekTpE22q49TNzQVYj2TlQjMA5ZAtpXwRGjAgEC
-----END DH PARAMETERS-----';

echo 'Initializing please wait..'
echo 'It may take too long while we are updating'
yum update -y 
yum install telnet telnet-server vixie-cron crontabs httpd nano squid dos2unix mysql-server -y 
yum install php php-pdo php-mysqli php-mysql php-gd php-mbstring.x86_64 epel-release -y 
yum install openvpn -y
yum -y install stunnel 
echo 'Updates done'
sleep 4s
clear
echo 'Configuring OpenVPN and Squid Proxy'

## making script and keys
mkdir /etc/openvpn/login
mkdir /etc/openvpn/script
mkdir /etc/openvpn/log
mkdir /etc/openvpn/keys
mkdir /var/www/html/status
cat << EOF > /var/www/html/status/tcp.txt
OpenVPN CLIENT LIST
Updated,Sat Apr 28 09:14:50 2018
Common Name,Real Address,Bytes Received,Bytes Sent,Connected Since
ROUTING TABLE
Virtual Address,Common Name,Real Address,Last Ref
GLOBAL STATS
Max bcast/mcast queue length,0
END
EOF
cat << EOF > /etc/openvpn/keys/ca.crt
$cacert
EOF
cat << EOF > /etc/openvpn/keys/server.crt
$servercert
EOF
cat << EOF > /etc/openvpn/keys/server.key
$serverkey
EOF
cat << EOF > /etc/openvpn/keys/dh2048.pem
$dh
EOF
cat << EOF > /etc/openvpn/script/config.sh
#!/bin/bash
##Dababase Server
HOST='$dbhost'
USER='$dbuser'
PASS='$dbpass'
DB='$dbname'
PORT='$dbport'
EOF
/bin/cat <<"EOM" >/etc/openvpn/script/connect.sh
#!/bin/bash
tm="$(date +%s)"
dt="$(date +'%Y-%m-%d %H:%M:%S')"
timestamp="$(date +'%FT%TZ')"
. /etc/openvpn/script/config.sh

##set status online to user connected
bandwidth_check=`mysql -u $USER -p$PASS -D $DB -h $HOST --skip-column-name -e "SELECT bandwidth_logs.username FROM bandwidth_logs WHERE bandwidth_logs.username='$common_name' AND bandwidth_logs.category='premium' AND bandwidth_logs.status='online'"`
if [ "$bandwidth_check" == 1 ]; then
	mysql -u $USER -p$PASS -D $DB -h $HOST -e "UPDATE bandwith_logs SET server_ip='$local_1', server_port='$trusted_port', timestamp='$timestamp', ipaddress='$trusted_ip:$trusted_port', username='$common_name', time='$tm', since_connected='$time_ascii', bytes_received='$bytes_received', bytes_sent='$bytes_sent' WHERE username='$common_name' AND status='online' AND category='premium' "
else
	mysql -u $USER -p$PASS -D $DB -h $HOST -e "INSERT INTO bandwidth_logs (server_name, server_ip, server_port, timestamp, ipaddress, since_connected, username, bytes_received, bytes_sent, time_in, status, time, category) VALUES ('server_name','$local_1','$trusted_port','$timestamp','$trusted_ip:$trusted_port','$time_ascii','$common_name','$bytes_received','$bytes_sent','$dt','online','$tm','premium') "
fi

EOM
/bin/cat <<"EOM" >/etc/openvpn/script/disconnect.sh
#!/bin/bash
tm="$(date +%s)"
dt="$(date +'%Y-%m-%d %H:%M:%S')"
timestamp="$(date +'%FT%TZ')"
. /etc/openvpn/script/config.sh

mysql -u $USER -p$PASS -D $DB -h $HOST -e "UPDATE bandwidth_logs SET bytes_received='$bytes_received',bytes_sent='$bytes_sent',time_out='$dt', status='offline' WHERE username='$common_name' AND status='online' AND category='premium' "

EOM
/bin/cat <<"EOM" >/etc/openvpn/login/auth_vpn
#!/bin/bash
. /etc/openvpn/script/config.sh

username=`head -n1 $1 | tail -1`
password=`head -n2 $1 | tail -1`

##PREMIUM##
PRE="users.user_name='$username' AND users.auth_vpn=md5('$password') AND users.is_validated=1 AND users.is_freeze=0 AND users.is_active=1 AND users.is_ban=0 AND users.duration > 0"

##VIP##
VIP="users.user_name='$username' AND users.auth_vpn=md5('$password') AND users.is_validated=1 AND users.is_freeze=0 AND users.is_active=1 AND users.is_ban=0 AND users.vip_duration > 0"
Query="SELECT users.user_name FROM users WHERE $PRE OR $VIP"
user_name=`mysql -u $USER -p$PASS -D $DB -h $HOST --skip-column-name -e "$Query"`

[ "$user_name" != '' ] && [ "$user_name" = "$username" ] && echo "user : $username" && echo 'authentication ok.' && exit 0 || echo 'authentication failed.'; exit 1

EOM

cat << EOF > /etc/openvpn/server.conf
local $MYIP
mode server 
tls-server 
port 443
proto tcp
dev tun
tun-mtu-extra 32 
tun-mtu 1400 
mssfix 1360
tcp-queue-limit 128
txqueuelen 2000
tcp-nodelay
sndbuf 393216
rcvbuf 393216
push "sndbuf 393216"
push "rcvbuf 393216"
server 10.8.0.0 255.255.255.0
ca /etc/openvpn/keys/ca.crt
cert /etc/openvpn/keys/server.crt
key /etc/openvpn/keys/server.key
dh /etc/openvpn/keys/dh2048.pem
persist-key
persist-tun
keepalive 1 180
comp-lzo
user nobody
client-to-client
username-as-common-name
client-cert-not-required
#auth-user-pass-verify /etc/openvpn/script/login.sh via-env
auth-user-pass-verify "/etc/openvpn/login/auth_vpn" via-file # 
max-clients 50
push "redirect-gateway def1"
push "dhcp-option DNS 8.8.8.8"
push "dhcp-option DNS 8.8.4.4"
script-security 3
client-connect /etc/openvpn/script/connect.sh
client-disconnect /etc/openvpn/script/disconnect.sh
status /var/www/html/status/tcp.txt
log-append /etc/openvpn/log/openvpn.log
verb 3
connect-retry-max infinite
EOF
#stunnel
cat <<EOF >/etc/stunnel/stunnel.pem
-----BEGIN RSA PRIVATE KEY-----
MIIEpQIBAAKCAQEA+A7kkUwhEiVc3V2vQMCnkXxhU/U9eXVgcyMBLDjZ5tcYP41I
wfhrNH3kNIGLc/C1w9eM13hX7lxaZlInMb4ZWfDOy8/WLNC4XdT/74ucGqtlNDvu
bCL617hr0NyLkf9KRxQlaa/Mc7qu18sMyX+AUJsKLrigxXQC3XQ7S/i3YfGBU6x1
V9G+aXq2t3z/dAQK6mcUj/5YArEBc1YpdJpEkSXyMfWZByjE5QlBeHfe/eGnxOoV
3VLFObil/FdwsK/F4hAW4SWSLAf3KY8IjiicRgXk3Vcm5eQAftsluuNdMFNR+0wp
z1jHl7G6mTwTXyAuB1lvyRPO8iSyueAwRfAgTwIDAQABAoIBAQC14oWqHD4rhgXf
su/r9Ndpj9/1pd6bjntYMRSNDmqIHrOC9d+hirtg0+ZesZZFPvyoSwbUf0NKXaFT
YW2nxZHlJvMa8pxCZBCrjKDVTnL6Ay7D7CXYWJXBU1KK5QvZ02ztTVJZejPZr8rA
I/yOStUVRXlj5LDN11C6fJ12CTq9rtvtMS792ZNtCxGvQJuV5OQEhukp2ycjwU3P
RHErEC7Gkhdo7netjwOmBvysikPmtheE8IZOpx/
