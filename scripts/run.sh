cd "$(dirname "$0")"
cd ..

OS=$(uname)

echo "Running on: "$OS" OS"

if [ "$OS" = "Darwin" ]; then
    # macOS
    EXEC_PATH="bin/Darwin/"
elif [ "$OS" = "Linux" ]; then
    # Linux
    EXEC_PATH="bin/Linux/"
elif [ "$OS" = "Android" ]; then
    # Android
    EXEC_PATH="bin/Android/"
else
    echo "Unsupported OS: $OS"
    exit 1
fi

if cd $EXEC_PATH; then :
elif cd bin/Android/RelWithDebInfo; then :
else
    echo "Couldn't find any directory"
    exit 1
fi

if [ -x ./LingosBypass ]; then
    ./LingosBypass
else
    chmod +x ./LingosBypass
    ./LingosBypass
fi

cd ../..