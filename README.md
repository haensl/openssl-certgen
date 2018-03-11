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
2. `brew install openssl-generate-certificates`

## Usage

For additional information please consider consulting the man page.

### Synopsis
```bash
openssl-generate-certificates -h hostname [-i ip] [-j subject] [-p prefix] [-s password] [-v]
```

Generated certificate files and keys are written to the current working directory.

#### Options

`-h hostname, --host hostname`

Specify hostname or IP of server to generate certificates for.

`-i ip, --ip ip`

Specify additional ips to bind to `hostname`. *Default: 127.0.0.1*

`-j subject, --subject subject`

Specify the subject string to use when generating the CA certificate.

`-p prefix, --prefix prefix`

Specify a prefix for output filenames.

`-s password, --secret password`

Specify the password with which to encrypt the CA key-signing key.

`-v, --verbose`

Print verbose output.

## [Changelog](CHANGELOG.md)

## [License](LICENSE)
