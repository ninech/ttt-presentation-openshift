## Konzepte
![pic](images/openshift-demo-app.png)



## Key Concepts

![Key Concepts](images/key_concepts.png)


## BuildConfig

```yml
kind: BuildConfig
metadata:
  name: rails-project
spec:
  source:
    git:
      uri: https://github.com/ninech/rails-project
    type: Git
  output:
    to:
      kind: ImageStreamTag
      name: rails-project:latest
  triggers:
  - type: ConfigChange
```



## Werkzeuge

* Web Console
* Command Line Tool (`oc`)

```sh
oc start-build ruby-image --follow
```



### Features für Entwickler

* Automatischer Build-Workflow
* Source-to-Image
* Jenkins Pipelines
