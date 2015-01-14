#!/bin/bash
docker build -t adamcrow64/mapserverbild github.com/adamcrow64/mapserverbild
docker run -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):$(which docker) -ti --name mapserverbild adamcrow64/mapserverbild
