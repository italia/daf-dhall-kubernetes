\(serviceName : (Text)) -> \(template : (../types/io.k8s.api.core.v1.PodTemplateSpec.dhall)) -> 
{ podManagementPolicy = ([] : Optional (Text))
, replicas = ([] : Optional (Integer))
, revisionHistoryLimit = ([] : Optional (Integer))
, selector = ([] : Optional (../types/io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector.dhall))
, serviceName = serviceName
, template = template
, updateStrategy = ([] : Optional (../types/io.k8s.api.apps.v1beta1.StatefulSetUpdateStrategy.dhall))
, volumeClaimTemplates = ([] : Optional (../types/io.k8s.api.core.v1.PersistentVolumeClaim.dhall))
}