module github.com/kubeedge/kubeedge

go 1.14

require (
	cloud.google.com/go v0.43.0 // indirect
	github.com/256dpi/gomqtt v0.10.4
	github.com/armon/circbuf v0.0.0-20190214190532-5111143e8da2 // indirect
	github.com/astaxie/beego v1.12.0
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/blang/semver v3.5.1+incompatible // indirect
	github.com/cheekybits/genny v1.0.0 // indirect
	github.com/container-storage-interface/spec v1.2.0
	github.com/containerd/containerd v1.1.7 // indirect
	github.com/containernetworking/cni v0.7.1 // indirect
	github.com/coreos/go-systemd v0.0.0-20190620071333-e64a0ec8b42a // indirect
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/docker/docker v0.7.3-0.20190327010347-be7ac8be2ae0
	github.com/docker/go-connections v0.4.0 // indirect
	github.com/docker/spdystream v0.0.0-20181023171402-6480d4af844c // indirect
	github.com/eclipse/paho.mqtt.golang v1.2.0
	github.com/emicklei/go-restful v2.9.6+incompatible
	github.com/evanphx/json-patch v4.5.0+incompatible // indirect
	github.com/ghodss/yaml v1.0.0
	github.com/go-chassis/go-archaius v0.20.0
	github.com/go-chassis/go-chassis v1.7.1
	github.com/go-chassis/paas-lager v1.1.1 // indirect
	github.com/golang/groupcache v0.0.0-20190702054246-869f871628b6 // indirect
	github.com/golang/mock v1.3.1
	github.com/golang/protobuf v1.3.5
	github.com/google/cadvisor v0.35.0
	github.com/google/uuid v1.1.1
	github.com/googleapis/gnostic v0.3.0 // indirect
	github.com/gorilla/mux v1.7.3
	github.com/gorilla/websocket v1.4.0
	github.com/hashicorp/go-version v1.2.0 // indirect
	github.com/hashicorp/golang-lru v0.5.3
	github.com/imdario/mergo v0.3.7 // indirect
	github.com/karrick/godirwalk v1.10.12 // indirect
	github.com/kubeedge/beehive v0.0.0
	github.com/kubeedge/viaduct v0.0.0
	github.com/kubernetes-csi/csi-lib-utils v0.6.1
	github.com/mattn/go-sqlite3 v1.11.0
	github.com/mesos/mesos-go v0.0.10 // indirect
	github.com/mitchellh/go-ps v0.0.0-20190716172923-621e5597135b
	github.com/onsi/ginkgo v1.12.0
	github.com/onsi/gomega v1.8.1
	github.com/opencontainers/runc v1.0.0-rc9 // indirect
	github.com/opentracing/opentracing-go v1.1.0 // indirect
	github.com/paypal/gatt v0.0.0-20151011220935-4ae819d591cf
	github.com/pborman/uuid v1.2.0
	github.com/pkg/errors v0.9.1
	github.com/prometheus/common v0.6.0 // indirect
	github.com/prometheus/procfs v0.0.3 // indirect
	github.com/satori/go.uuid v1.2.0
	github.com/spf13/cobra v0.0.5
	github.com/spf13/pflag v1.0.5
	github.com/stretchr/testify v1.4.0
	github.com/vishvananda/netlink v1.1.0
	golang.org/x/net v0.0.0-20191004110552-13f9640d40b9
	google.golang.org/grpc v1.26.0
	gopkg.in/square/go-jose.v2 v2.3.1 // indirect
	gopkg.in/yaml.v2 v2.2.8
	k8s.io/api v0.17.1
	k8s.io/apiextensions-apiserver v0.17.1
	k8s.io/apimachinery v0.17.1
	k8s.io/apiserver v0.17.1
	k8s.io/client-go v0.17.1
	k8s.io/cloud-provider v0.17.1
	k8s.io/code-generator v0.17.1
	k8s.io/component-base v0.17.1
	k8s.io/cri-api v0.17.1
	k8s.io/csi-translation-lib v0.17.1
	k8s.io/klog v1.0.0
	k8s.io/kube-openapi v0.0.0-20200410145947-61e04a5be9a6
	k8s.io/kubelet v0.17.1 // indirect
	k8s.io/kubernetes v1.18.6
	k8s.io/utils v0.0.0-20200324210504-a9aa75ae1b89
	sigs.k8s.io/yaml v1.2.0
)

replace (
	github.com/Sirupsen/logrus v1.0.5 => github.com/sirupsen/logrus v1.0.5
	github.com/Sirupsen/logrus v1.3.0 => github.com/Sirupsen/logrus v1.0.6
	github.com/Sirupsen/logrus v1.4.0 => github.com/sirupsen/logrus v1.0.6
	github.com/apache/servicecomb-kie v0.1.0 => github.com/apache/servicecomb-kie v0.0.0-20190905062319-5ee098c8886f // indirect. TODO: remove this line when servicecomb-kie has a stable release
	github.com/checkpoint-restore/go-criu => github.com/checkpoint-restore/go-criu v0.0.0-20190109184317-bdb7599cd87b
	github.com/containernetworking/cni => github.com/containernetworking/cni v0.6.0
	github.com/godbus/dbus => github.com/godbus/dbus v0.0.0-20190422162347-ade71ed3457e
	github.com/google/cadvisor => github.com/google/cadvisor v0.33.2-0.20190411163913-9db8c7dee20a
	github.com/gopherjs/gopherjs v0.0.0 => github.com/gopherjs/gopherjs v0.0.0-20181103185306-d547d1d9531e // indirect
	github.com/kubeedge/beehive => ./staging/src/github.com/kubeedge/beehive
	github.com/kubeedge/viaduct => ./staging/src/github.com/kubeedge/viaduct
	github.com/opencontainers/runc => github.com/opencontainers/runc v0.0.0-20181113202123-f000fe11ece1
	github.com/prometheus/client_golang => github.com/prometheus/client_golang v0.9.2
	github.com/prometheus/common => github.com/prometheus/common v0.0.0-20181126121408-4724e9255275
	github.com/prometheus/procfs => github.com/prometheus/procfs v0.1.3
	k8s.io/api => github.com/futurewei-cloud/arktos/staging/src/k8s.io/api v0.0.0-20200721172338-28dab223a1f7
	k8s.io/apiextensions-apiserver => github.com/futurewei-cloud/arktos/staging/src/k8s.io/apiextensions-apiserver v0.0.0-20200721172338-28dab223a1f7 // indirect
	k8s.io/apimachinery => github.com/futurewei-cloud/arktos/staging/src/k8s.io/apimachinery v0.0.0-20200721172338-28dab223a1f7
	k8s.io/apiserver => github.com/futurewei-cloud/arktos/staging/src/k8s.io/apiserver v0.0.0-20200721172338-28dab223a1f7
	k8s.io/cli-runtime v0.0.0 => k8s.io/cli-runtime v0.0.0-20190718185405-0ce9869d0015
	k8s.io/client-go => github.com/futurewei-cloud/arktos/staging/src/k8s.io/client-go v0.0.0-20200721172338-28dab223a1f7 // indirect
	k8s.io/cloud-provider => github.com/futurewei-cloud/arktos/staging/src/k8s.io/cloud-provider v0.0.0-20200721172338-28dab223a1f7 // indirect
	k8s.io/cluster-bootstrap v0.0.0 => k8s.io/cluster-bootstrap v0.0.0-20190718190146-f7b0473036f9
	k8s.io/code-generator => github.com/futurewei-cloud/arktos/staging/src/k8s.io/code-generator v0.0.0-20200721172338-28dab223a1f7
	k8s.io/component-base => github.com/futurewei-cloud/arktos/staging/src/k8s.io/component-base v0.0.0-20200721172338-28dab223a1f7
	k8s.io/cri-api => github.com/futurewei-cloud/arktos/staging/src/k8s.io/cri-api v0.0.0-20200721172338-28dab223a1f7
	k8s.io/csi-api v0.0.0 => k8s.io/csi-api v0.0.0-20190313123203-94ac839bf26c // indirect
	k8s.io/csi-translation-lib => github.com/futurewei-cloud/arktos/staging/src/k8s.io/csi-translation-lib v0.0.0-20200721172338-28dab223a1f7
	k8s.io/gengo v0.0.0 => k8s.io/gengo v0.0.0-20190327210449-e17681d19d3a // indirect
	k8s.io/heapster => k8s.io/heapster v1.2.0-beta.1 // indirect
	k8s.io/klog => k8s.io/klog v0.4.0 // indirect
	k8s.io/kube-aggregator v0.0.0 => k8s.io/kube-aggregator v0.0.0-20190718184434-a064d4d1ed7a
	k8s.io/kube-controller-manager v0.0.0 => k8s.io/kube-controller-manager v0.0.0-20190718190030-ea930fedc880
	k8s.io/kube-openapi v0.0.0 => k8s.io/kube-openapi v0.0.0-20190718094010-3cf2ea392886 // indirect
	k8s.io/kube-proxy v0.0.0 => k8s.io/kube-proxy v0.0.0-20190718185641-5233cb7cb41e
	k8s.io/kube-scheduler v0.0.0 => k8s.io/kube-scheduler v0.0.0-20190718185913-d5429d807831
	k8s.io/kubectl => k8s.io/kubectl v0.17.0
	k8s.io/kubelet v0.0.0 => github.com/futurewei-cloud/arktos/staging/src/k8s.io/kubelet v0.0.0-20200721172338-28dab223a1f7 // indirect
	// k8s.io/utils => k8s.io/utils v0.0.0-20190221042446-c2654d5206da
	k8s.io/kubernetes => github.com/futurewei-cloud/arktos v0.0.0-20200721172338-28dab223a1f7
	k8s.io/legacy-cloud-providers v0.0.0 => k8s.io/legacy-cloud-providers v0.0.0-20190718190548-039b99e58dbd
	k8s.io/metrics v0.0.0 => k8s.io/metrics v0.0.0-20190718185242-1e1642704fe6
	k8s.io/node-api v0.0.0 => k8s.io/node-api v0.0.0-20190717025432-9e6fdeee55cc // indirect
	k8s.io/repo-infra v0.0.0 => k8s.io/repo-infra v0.0.0-20181204233714-00fe14e3d1a3 // indirect
	k8s.io/sample-apiserver v0.0.0 => k8s.io/sample-apiserver v0.0.0-20190718184639-baafa86838c0
)
