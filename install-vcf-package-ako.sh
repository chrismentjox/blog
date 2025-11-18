vcf package repository add vks-repo --url projects.packages.broadcom.com/vsphere/supervisor/packages/2025.10.22/vks-standard-packages:3.5.0-20251022 -n packages
vcf package available get ako.kubernetes.vmware.com -n packages
vcf package available get ako.kubernetes.vmware.com/1.13.4+vmware.1-vks.1 \
--default-values-file-output ako-data-values.yaml

vcf package install ako \
-p ako.kubernetes.vmware.com \
-v 1.13.4+vmware.1-vks.1 \
--values-file ako-data-values.yaml \
-n packages


vcf package installed list -n packages
