# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

nothing

### Changed

nothing

### Fixed

nothing

## [0.2.0] - 2022-01-04

### Added

* added busybox-init
* econ-tiny-lighttpd image
* added image hashing (SHA256SUMS)
* signing SHA256SUMS file (SHA256SUMS.gpg)
* auto creating '.nspawn' service file for each image

### Changed

* changed images names format: "${DISTRO}-${spec}-${DATE}-${ARCH}"
* removed busybox mdev

### Fixed

* doesn't start init services (busybox init)

