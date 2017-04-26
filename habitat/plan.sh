pkg_name=myapp
pkg_version=0.0.1
pkg_origin=georgemarshall
pkg_license=('BSD-3-Clause')
pkg_maintainer="George Marshall <george@georgemarshall.name>"
pkg_description="Habitat CherryPy example application"
pkg_deps=(
  python/python
  python/cherrypy
)
pkg_env_sep=(
  ['PYTHONPATH']=':'
)
pkg_svc_run='python -m myapp'
pkg_exports=(
  [host]=server.socket_host
  [port]=server.socket_port
)
pkg_exposes=(port)

do_build() {
  python setup.py build
}

do_install() {
  add_path_env 'PYTHONPATH' "$PYTHON_SITE_PACKAGES"
  python setup.py install \
    --prefix="$pkg_prefix" \
    --no-compile
}
