
#!/bin/bash

output="$( curl 10.0.0.5:9090 )"

#echo $output

if [[ $output == *"Hello World"* ]]; then
  echo "Nginx deployment is working successfully!"

else 

 echo " Not Working!"

fi

