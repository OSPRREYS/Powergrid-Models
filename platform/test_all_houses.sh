source envars.sh

#java -cp $CIMHUB_PATH $CIMHUB_PROG -u=$DB_URL -o=idx test

java -cp $CIMHUB_PATH $CIMHUB_PROG -u=$DB_URL \
   -s=_4F76A5F9-271D-9EB8-5E31-AA362D86F2C3 -o=glm -l=1.0 -i=1 -h=1 houses/ieee8500_house
java -cp $CIMHUB_PATH $CIMHUB_PROG -u=$DB_URL \
   -s=_AAE94E4A-2465-6F5E-37B1-3E72183A4E44 -o=glm -l=1.0 -i=1 -h=1 houses/ieee9500_house
java -cp $CIMHUB_PATH $CIMHUB_PROG -u=$DB_URL \
   -s=_EE71F6C9-56F0-4167-A14E-7F4C71F10EAA -o=glm -l=1.0 -i=1 -h=1 houses/final9500node_house
java -cp $CIMHUB_PATH $CIMHUB_PROG -u=$DB_URL \
   -s=_9CE150A8-8CC5-A0F9-B67E-BBD8C79D3095 -o=glm -l=1.0 -i=1 -h=1 houses/r2_12_47_2_house
java -cp $CIMHUB_PATH $CIMHUB_PROG -u=$DB_URL \
   -s=_E407CBB6-8C8D-9BC9-589C-AB83FBF0826D -o=glm -l=1.0 -i=1 -h=1 houses/ieee123pv_house
java -cp $CIMHUB_PATH $CIMHUB_PROG -u=$DB_URL \
   -s=_503D6E20-F499-4CC7-8051-971E23D0BF79 -o=glm -l=1.0 -i=1 -h=1 houses/transactive_house

cd houses
gridlabd -D WANT_VI_DUMP=1 ieee8500_house_run.glm >ieee8500_house.log
gridlabd -D WANT_VI_DUMP=1 ieee9500_house_run.glm >ieee9500_house.log
gridlabd -D WANT_VI_DUMP=1 final9500node_house_run.glm >final9500node_house.log
gridlabd -D WANT_VI_DUMP=1 r2_12_47_2_house_run.glm >r2_12_47_2_house.log
gridlabd -D WANT_VI_DUMP=1 ieee123pv_house_run.glm >ieee123pv_house.log
gridlabd -D WANT_VI_DUMP=1 transactive_house_run.glm >transactive_house.log

tail *.log

