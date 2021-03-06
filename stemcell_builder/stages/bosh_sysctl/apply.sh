#!/usr/bin/env bash

set -e

base_dir="$(readlink -nf "$(dirname "$0")"/../..)"
# shellcheck source=../../lib/prelude_apply.bash
source "$base_dir/lib/prelude_apply.bash"
# shellcheck source=../../lib/prelude_bosh.bash
source "$base_dir/lib/prelude_bosh.bash"

cp "$dir/assets/60-bosh-sysctl.conf" "$chroot/etc/sysctl.d"
chmod 0644 "$chroot/etc/sysctl.d/60-bosh-sysctl.conf"

cp "$dir/assets/60-bosh-sysctl-neigh-fix.conf" "$chroot/etc/sysctl.d"
chmod 0644 "$chroot/etc/sysctl.d/60-bosh-sysctl-neigh-fix.conf"
