

npx degit isa-group/governify-project-poetisa-evaluator evaluator
npx degit isa-group/governify-project-poetisa-render render
npx degit isa-group/governify-project-poetisa-billing billing
npx degit isa-group/governify-project-poetisa-metrics metrics

cd evaluator; npm install ; npm start & ; cd ..
cd render; npm install ; npm start & ; cd ..
cd metrics; npm install ; npm start & ; cd ..
cd billing ; npm install ; npm start & ; cd ..

docker run --name=influxdb -d -p 30086:8086 -e INFLUXDB_DB=k8s influxdb
