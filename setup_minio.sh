mc alias set myminio http://localhost:9000 123456789 123456789
sleep 1
mc config host add myminio http://minio:9000 123456789 123456789
sleep 1
mc mb myminio/smarthirebucket

