## Konzepte
![pic](images/openshift-demo-app.png)

Note:
**ImageStream**
Definition eines Docker Images inklusive Tags.

**Build**
Baut aus Source-Code ein Docker Image.

**Deployment**
Definition für Deployment eines Images.



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

* Automatischer Build Workflow
* Source-to-Image
* Jenkins Pipelines
