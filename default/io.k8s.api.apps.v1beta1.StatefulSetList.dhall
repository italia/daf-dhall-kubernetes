\(_params : {items : (List ../types/io.k8s.api.apps.v1beta1.StatefulSet.dhall), metadata : (../types/io.k8s.apimachinery.pkg.apis.meta.v1.ListMeta.dhall)}) ->
{ apiVersion = ("apps/v1beta1" : Text)
, items = _params.items
, kind = ("StatefulSetList" : Text)
, metadata = _params.metadata
} : ../types/io.k8s.api.apps.v1beta1.StatefulSetList.dhall
