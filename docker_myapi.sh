case $1 in
	"build" )
		docker build -t helloerl .;;
	"run" )
		docker run -it --rm -v $(pwd)/ebin:/ebin helloerl;;
	*)
echo "Commands: 
	build	Build an image from Dockerfile; 
	run	Run a command in a new container."
          ;;
esac
