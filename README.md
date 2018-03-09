# OpenSSL Certificate Generator
Wrapper script to create self-signed certificates via openssl.

## Prerequisites

* [OpenSSL](https://www.openssl.org/)

Please make sure these are installed on your system.

## Installation

### Linux

1. Clone this repository
2. `make install`

### OSX

1. `brew tap haensl/haensl`
2. `brew install openssl-certgen`

## Usage

For additional information please consider consulting the man page.

### Synopsis
```bash
openssl-generate-certificates -h hostname [-i ip] [-p prefix] [-v]
```

Generated certificate files and keys are written to the current working directory.

#### Options

`-h hostname, --host hostname`

Specify hostname or IP of server to generate certificates for.

`-i ip, --ip ip`

Specify additional ips to bind to `hostname`. *Default: 127.0.0.1*

`-p prefix, --prefix prefix`

Specify a prefix for output filenames.

`-v, --verbose`

Print verbose output.

## [Changelog](CHANGELOG.md)

## [License](LICENSE)
