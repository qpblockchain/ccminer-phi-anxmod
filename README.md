ccminer
=======

Based on Christian Buchner's &amp; Christian H.'s CUDA project, no more active on github recently.

Fork by tpruvot@github with X14, X15, X17, Blake256, BlakeCoin, Lyra2RE, Skein, ZR5 and others, check the [README.txt](README.txt)

QPool BTC donation address: 1AojQ8Vge8nnnZpupRBRinuWCUwirwm21x

A part of the recent algos were originally wrote by [djm34](https://github.com/djm34).

This variant was tested and built on Linux (ubuntu server 14.04) and VStudio 2013 on Windows 7.

Note that the x86 releases are generally faster than x64 ones on Windows.

### Source code dependencies

This project requires some libraries to be built :

- OpenSSL (prebuilt for win)

- Curl (prebuilt for win)

- pthreads (prebuilt for win)

The tree now contains recent prebuilt openssl and curl .lib for both x86 and x64 platforms (windows).

To rebuild them, you need to clone this repository and its submodules :
    git clone https://github.com/peters/curl-for-windows.git compat/curl-for-windows

## Linux compile


### Install dependencies for Ubuntu

```bash
sudo apt-get -y install libssl-dev
sudo apt-get -y install bc
sudo apt-get -y install libcurl4-openssl-dev
sudo apt-get -y install libjansson-dev
sudo apt-get -y install automake
```
### Build script

On Linux, you can use the helper ./build.sh (edit [build.sh](build.sh) it if required)

```bash
./build.sh
```

There is also an old [Tutorial for windows](http://cudamining.co.uk/url/tutorials/id/3) on [CudaMining](http://cudamining.co.uk) website.
