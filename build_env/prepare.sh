echo "Dist Root: ${DIST_ROOT:?}"
echo "LFS: ${LFS:?}"

mkdir -p $LFS/sources

for f in $(cat $DIST_ROOT/build_env/build_env_list)
do
    bn=$(basename $f)

    if ! test -f $LFS/sources/bin ; then
        wget $f -0 $LFS/sources/$bn
    fi

done;
