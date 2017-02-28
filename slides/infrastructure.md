## Weitere Features

Wichtig! Killer Feature! <!-- .element: class="fragment" style="list-style-type: none;" data-fragment-index="1" -->

![click picture](images/you_can_click_drawing.png) <!-- .element: class="fragment" style="border:4px solid #66717E;padding: 0;-moz-border-radius: 10px;-webkit-border-radius: 10px;" data-fragment-index="2" -->



## Weitere Features
* integriertes zentrales Logging System <!-- .element: style="margin-left:10%" -->
* integriertes zentrales Metriken System (autoscaling) <!-- .element: style="margin-left:10%" class="fragment" data-fragment-index="1" -->
* sehr flexible Authentifizierung <!-- .element: style="margin-left:10%" class="fragment" data-fragment-index="2" -->
* granulares Rollen/Rechte System <!-- .element: style="margin-left:10%" class="fragment" data-fragment-index="3" -->
* multi-tenant fähig (auch Netzwerk) <!-- .element: style="margin-left:10%" class="fragment" data-fragment-index="4" -->



## Warum?
* Container bei Entwicklern sehr beliebt <!-- .element: class="fragment" data-fragment-index="1" -->
* Konsolidierung virtueller Maschinen <!-- .element: class="fragment" data-fragment-index="2" -->
* Deployment Workflow <!-- .element: class="fragment" data-fragment-index="3" -->
* Skalierung einfach <!-- .element: class="fragment" data-fragment-index="4" -->



## Wie funktioniert es?
![Overview](images/openshift_overview.png)



## Unser POC Cluster
![POC Cluster](images/poc_cluster.png)



## Unser POC Cluster
* einfach aufgebaut
* poor mans DNS loadbalancing <!-- .element: class="fragment" data-fragment-index="1" -->
* OpenShift Origin mit CentOS <!-- .element: class="fragment" data-fragment-index="2" -->
* LVM als backend für docker <!-- .element: class="fragment" data-fragment-index="3" -->
<li class="fragment" data-fragment-index="4">für lokalen Test gibts</li>
<pre class="fragment" data-fragment-index="4"><code class="bash">$> oc cluster up</code></pre>
