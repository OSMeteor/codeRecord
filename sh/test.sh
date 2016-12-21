    #!/bin/bash
    auto_login_ssh () {
    expect -c "set timeout -1;
                spawn -noecho ssh -o StrictHostKeyChecking=no $2 ${@:3};
                expect *assword:*;
                send -- $1\r;
                interact;";
}
 auto_login_ssh Meteor1314 root@121.40.181.64 -y
expect -c "send echo "Hello World !""
 echo "Hello World !"
