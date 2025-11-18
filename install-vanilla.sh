
helm pull oci://projects.packages.broadcom.com/ako/helm-charts/ako --version 2.1.1 --untar
cd ako
helm dependency build


helm upgrade  ako-1760000983 oci://projects.packages.broadcom.com/ako/helm-charts/ako --version 2.1.1 -f values.yaml --set ControllerSettings.controllerHost=10.11.10.154 --set avicredentials.username=admin --set avicredentials.password=VMw@re1\!VMw@re1\! --namespace=avi-system --dependency-update

#VKS
helm install --name-template="ako-{{randNumeric 10}}" --generate-name .  -f ../values.yaml --set ControllerSettings.controllerHost=10.11.10.151 --set avicredentials.username=admin --set avicredentials.password=VMw@re1\!VMw@re1\! --set AKOSettings.primaryInstance=true --namespace=avi-system

#OpenShift
helm install --name-template="ako-{{randNumeric 10}}" --generate-name .  -f ../values-openshift.yaml --set ControllerSettings.controllerHost=10.11.10.151 --set avicredentials.username=admin --set avicredentials.password=VMw@re1\!VMw@re1\! --set AKOSettings.primaryInstance=true --namespace=avi-system

helm upgrade ako-6261383975 .  -f ../values-openshift.yaml --set ControllerSettings.controllerHost=10.11.10.151 --set avicredentials.username=admin --set avicredentials.password=VMw@re1\!VMw@re1\! --set AKOSettings.primaryInstance=true --namespace=avi-system
