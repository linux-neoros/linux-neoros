set -e 

echo "Dist root: ${DIST_ROOT:?}"
echo "LFS: ${LFS:?}"
echo "Creating building environment..."

if ! test $(whoami) == "distro-neoros" ; then
    echo "Must run as distro-neoros."
    exit -1
fi

echo "Creating building environment..."
cd $DIST_ROOT/build_env

bash -e build_scripts/binutils-pass-1.sh
bash -e build_scripts/gcc-pass-1.sh
