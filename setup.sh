

# Download components
echo "Downloading components"
 
npx degit isa-group/governify-project-poetisa-evaluator evaluator
npx degit isa-group/governify-project-poetisa-render render
npx degit isa-group/governify-project-poetisa-billing billing
npx degit isa-group/governify-project-poetisa-metrics metrics

# Setup / Run components
 echo "Running evaluator component"
 cd evaluator
 npm install
 node index &
 cd ..
 
 echo "Running render component"
 cd render
 npm install
 node index & 
 cd ..

 echo "Running metrics component"
 cd metrics
 npm install
 node index &
 cd ..
 
 echo "Running billing component"
 cd billing
 npm install
 node index &
 cd ..

# Run InfluxDB
docker run --name=influxdb -d -p 30086:8086 -e INFLUXDB_DB=k8s influxdb
