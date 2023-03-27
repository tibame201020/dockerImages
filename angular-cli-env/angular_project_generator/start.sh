#!/bin/bash
if [ ! -d "codes" ]; then
  mkdir codes
fi
docker build -t angular_project_generator . -f dockerfiler.angular_project_generator
docker run -it --rm --name=angular_project_generator -v $(pwd)/codes:/app angular_project_generator
