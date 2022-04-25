#!/bin/bash

## run jboss
nohup /opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0 > /dev/null &

while [ 1 ]; do
echo "
<!DOCTYPE html>
<html>
<head>

    <title>BackEnd by JBoss</title>
    <!-- proper charset -->
    <meta http-equiv=\"content-type\" content=\"text/html;charset=utf-8\" />
    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=EmulateIE8\" />

</head>

<body>

<div id=\"container\" style=\"position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px;\">


  <!-- main content -->
  <div id=\"content\">
    <div class=\"section\">

      <h1> &ensp;Welcome to JBoss/BackEnd </h1>

      <h3> &emsp;Your JBoss Platform is running on Docker. </h3>

      <h3> &emsp;Refresh page time on $(date) </h>
    </div>

  </div>

  <div id=\"footer\">&nbsp;</div>

</div>

</body >
</html>" > /opt/jboss/wildfly/welcome-content/index.html

sleep 1
done

