s/mode: standalone/mode: interior/
s/id: Router.A/id: Router.node1/
s/host: 0\.0\.0\.0/host: ::1/
s/port: amqp/port: 9002/
/saslMechanisms: ANONYMOUS/ a\
    idleTimeoutSeconds: 60\
}\
\
listener {\
    host: 127.0.0.1\
    port: 9002\
    authenticatePeer: no\
    saslMechanisms: ANONYMOUS\
    idleTimeoutSeconds: 60\
}\
\
connector {\
    name: broker\
    role: route-container\
    host: localhost\
    port: 10001\
    saslMechanisms: ANONYMOUS\
}\
\
linkRoute {\
    prefix: qit\
    dir: in\
    connection: broker\
}\
\
linkRoute {\
    prefix: qit\
    dir: out\
    connection: broker
$a\
log {\
    module: DEFAULT\
    enable: info+\
    output: /var/lib/jenkins/workspace/install/var/log/qdrouterd.node1.log\
}\

