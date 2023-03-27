#!/bin/bash
if [ ! -d "codes" ]; then
  mkdir codes
fi
docker pull tibame201020/angular_project_generator:latest
docker run -it --rm --name=angular_project_generator -v $(pwd)/codes:/app angular_project_generator
