\(apiVersion : (Text)) -> \(items : (../types/io.k8s.api.batch.v1.Job.dhall)) -> \(kind : (Text)) -> \(metadata : (../types/io.k8s.apimachinery.pkg.apis.meta.v1.ListMeta.dhall)) -> 
{ apiVersion = apiVersion
, items = items
, kind = kind
, metadata = metadata
}