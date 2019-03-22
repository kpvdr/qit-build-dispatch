s/host: 0.0.0.0/host: ::1/
s/port: amqp/port: 9001/
/saslMechanisms: ANONYMOUS/ a\
    idleTimeoutSeconds: 60\
}\
\
listener {\
    host: 127.0.0.1\
    port: 9001\
    authenticatePeer: no\
    saslMechanisms: ANONYMOUS\
    idleTimeoutSeconds: 60
$a\
log {\
    module: DEFAULT\
    enable: info+\
    output: /var/lib/jenkins/workspace/qdrouterd.log\
}\

