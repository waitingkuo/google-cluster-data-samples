# google-cluster-data-samples
Script to download google cluster data trace samples. There're a few catetories, each one has lots of data. The script only download the first file in each category. Uncompressed data size is around 1.5GB.


For more information, please take a look at <https://github.com/google/cluster-data>

# Install `gsutil` 

`gsutil` is the official google cloud storage util

See <https://cloud.google.com/storage/docs/gsutil_install>

# Execute the script

    $ bash download_samples.sh

The script will first download the zipped data to `samples` directory and then unzip all the zipped files.
