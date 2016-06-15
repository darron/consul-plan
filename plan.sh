pkg_name=consul
pkg_origin=darron
pkg_version=0.6.4
pkg_maintainer="Darron Froese <darron@froese.org>"
pkg_license=('mpl2')
pkg_source=https://releases.hashicorp.com/${pkg_name}/${pkg_version}/${pkg_name}_${pkg_version}_linux_amd64.zip
pkg_shasum=abdf0e1856292468e2c9971420d73b805e93888e006c76324ae39416edcf0627
pkg_bin_dirs=(bin)
pkg_build_deps=(core/cacerts)
pkg_expose=(8300 8301 8302 8500 8600)

do_build() {
  return 0
}

do_install() {
  mkdir -p $pkg_prefix/bin
  cp /hab/cache/src/consul $pkg_prefix/bin/
}
