if [ ! -d "user_projects" ]; then
  mkdir user_projects
fi

if [ ! -d "home" ]; then
  mkdir home
fi

docker run -d --name wls1036 --rm -p 6008:7001 -v $(pwd)/home:/home tibame201020/weblogic:10.3.6
