sudo docker pull scilus/scilus:latest
sudo docker run -d -it scilus/scilus:latest
sudo docker run -d -v /s3/docker_storage/scilus:/home/ --name neuro-scilus scilus/scilus:latest tail -f /dev/null
sudo docker run -d --gpus all --memory=48g --cpus=all -v /s3/docker_storage/scilus:/home/ --name neuro-scilus scilus/scilus:latest tail -f /dev/null
sudo docker exec -it neuro-scilus bash
sudo docker stats



sudo docker run -d -v /s3/docker_storage/scilus:/home/ --name neuro-scilus scilus/scilus:latest tail -f /dev/null
