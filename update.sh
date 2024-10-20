#!/usr/bin/env bash
set -eo pipefail

DISTRIBUTIONS=("bookworm" "noble")
MODULES=("mod_ntlm" "mod_zip" "mod_zstd")

for dist in "${DISTRIBUTIONS[@]}"; do
    echo "Processing distribution: $dist"
    
    #for module in "${MODULES[@]}"; do
        #echo "Including $module for $dist"
            #find "../nginx_mod_zip_docker_builder/fpm/$module/$dist" -name "*${dist}*.deb" -exec reprepro includedeb "$dist" {} +
            find "../nginx_mod_zip_docker_builder/fpm/deb/$dist" -name "*${dist}*.deb" -exec reprepro includedeb "$dist" {} +
    #done
done
