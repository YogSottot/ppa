#!/usr/bin/env bash
set -eo pipefail

WORKDIR=./redhat/repo/x86_64

mkdir -p ${WORKDIR}
cp ../nginx_mod_zip_docker_builder/fpm/rpm/generic/x86_64/*.rpm ${WORKDIR}

# подпись
source ./redhat/gpg-env.sh
rpm \
  --define "_signature gpg" \
  --define "_gpg_name ${RPM_GPG_NAME}" \
  --define "_gpg_path ${RPM_GPG_PATH}" \
  --define "__gpg ${RPM_GPG_BIN}" \
  --addsign  ${WORKDIR}/*.rpm

# обновляем репо
createrepo_c --update ${WORKDIR}


gpg --local-user E52900A31721FCFE \
    --detach-sign --armor \
    ${WORKDIR}/repodata/repomd.xml
