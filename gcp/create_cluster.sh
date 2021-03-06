gcloud services enable container.googleapis.com
gcloud beta container --project $PROJECT \
clusters create "cluster-1-clone-1" \
--zone "northamerica-northeast1-a" \
--no-enable-basic-auth \
--cluster-version "1.14.10-gke.36" \
--machine-type "e2-standard-2" \
--image-type "COS" \
--disk-type "pd-standard" \
--disk-size "100" \
--metadata disable-legacy-endpoints=true \
--scopes "https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/monitoring","https://www.googleapis.com/auth/servicecontrol","https://www.googleapis.com/auth/service.management.readonly","https://www.googleapis.com/auth/trace.append" \
--max-pods-per-node "110" \
--num-nodes "3" \
--enable-stackdriver-kubernetes \
--enable-ip-alias \
--network "projects/"$PROJECT"/global/networks/default" \
--subnetwork "projects/"$PROJECT"/regions/northamerica-northeast1/subnetworks/default" \
--default-max-pods-per-node "110" \
--no-enable-master-authorized-networks \
--addons HorizontalPodAutoscaling,HttpLoadBalancing \
--no-enable-autoupgrade \
--enable-autorepair \
--max-surge-upgrade 1 \
--max-unavailable-upgrade 0
