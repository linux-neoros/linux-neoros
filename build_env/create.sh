echo "Dist root: ${DIST_ROOT:?}"
echo "LFS: ${LFS:?}"
echo "Creating building environment..."

if ! test $(whoami) == "distro-neoros" ; then
    echo "Must run as distro-neoros."
    exit -1
fi

echo "Creating building environment..."