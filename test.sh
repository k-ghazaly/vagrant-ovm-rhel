
#!/bin/bash

output="$( curl localhost:7777 )"

#echo $output

if [[ $output == *"Hello World"* ]]; then
  echo "Nginx deployment is working successfully!"

else 

 echo " Not Working!"

fi

