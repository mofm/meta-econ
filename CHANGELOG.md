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


## [0.3.0-r1]

### Changed

* added '.nspawn' suffix to SHA256SUMS
* removed busybox-mdev from econ tiny core image

### Fixed

* fixed typo 0.3.0 release document


## [0.3.0] - 2022-01-11

### Added 

* auto create release from changelog

### Changed

* Changed compression alg bzip to xz

### Fixed

* fixed systemd import error. ( tar.bz2 trailing garbage )


## [0.2.0-r2] - 2022-01-04

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


## [0.2.0]

## Added

* Added econ-core and econ-tiny-core image


[Unreleased]: https://github.com/mofm/meta-econ/compare/0.3.0-r1...HEAD
[0.3.0-r1]: https://github.com/mofm/meta-econ/compare/0.3.0-r1...0.3.0
[0.3.0]: https://github.com/mofm/meta-econ/compare/0.3.0...0.2.0-r2
[0.2.0-r2]: https://github.com/mofm/meta-econ/compare/0.2.0-r2...0.2.0
[0.2.0]: https://github.com/mofm/meta-econ/releases/tag/0.2.0
