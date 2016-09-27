IGNORE_DEPS += edown eper eunit_formatters meck node_package rebar_lock_deps_plugin rebar_vsn_plugin reltool_util
C_SRC_DIR = /path/do/not/exist
C_SRC_TYPE = rebar
DRV_CFLAGS = -fPIC
export DRV_CFLAGS
ERLANG_ARCH = 64
export ERLANG_ARCH
ERLC_OPTS = +debug_info
export ERLC_OPTS
ERLC_OPTS += +'{parse_transform, lager_transform}'

DEPS += lager
dep_lager = git https://github.com/basho/lager.git 2.1.1
DEPS += gen_listener_tcp
dep_gen_listener_tcp = git https://github.com/travelping/gen_listener_tcp.git 0.3.1
COMPILE_FIRST +=


rebar_dep: preprocess pre-deps deps pre-app app

preprocess::

pre-deps::

pre-app::

include ../../erlang.mk