wget https://github.com/kubeflow/kfctl/releases/download/v1.0.2/kfctl_v1.0.2-0-ga476281_linux.tar.gz
tar -xvf kfctl_v1.0.2-0-ga476281_linux.tar.gz
mv kfctl /usr/bin/
export CONFIG_URI="https://raw.githubusercontent.com/kubeflow/manifests/v1.0-branch/kfdef/kfctl_gcp_iap.v1.0.2.yaml"
export KF_NAME="kflow-engops"
export BASE_DIR=~
export KF_DIR=${BASE_DIR}/${KF_NAME}
export PATH=$PATH:/usr/bin/kfctl