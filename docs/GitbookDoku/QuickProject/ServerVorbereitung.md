# Server Vorbereitung
Als gegeben wird eine Ubuntu VM 16.04, befindlich in: 

> E:\VM\LV-Reichelt\IMAGES\Ubuntu16.04

und eine Umgebung zum Einrichten/Starten der virtuellen Maschine vorausgesetzt.
(z.B.: VM Workstation 12 Pro)

Für das Beispiel in VM Workstation 12 Pro öffen sie die VM und vergeben sie einen Namen (z.B.: ServerVM) und wählen Sie einen Pfad als Ablageort aus.

## Systemuhr synchronisieren
Um spätere Fehler zu vermeiden, müssen Sie die Systemuhr der VM auf die des Hostsystems snchronisieren. In VM Workstation 12 Pro geht dies wie folgt:

* Rechtsklick auf die VM im linken Anzeigefeld.  
* Tab Optionen -> VMware Tools
* Haken bei *synchronize guest time with host* setzen  

![](../img/systemclock.png)  


## Herunterladen des Chef DK

Geben Sie folgende Befehle in ein Terminal ein

> cd ~  
> wget https://packages.chef.io/files/stable/chefdk/2.4.17/ubuntu/16.04/chefdk_2.4.17-1_amd64.deb

Installieren Sie es anschließend über den Befehl:

> sudo dpkg -i chefdk_2.4.17-1_amd64.deb

**Mögliche Fehler:**

Falls sie folgende Fehlermeldung erhalten: 
![DPKG Lock](../img/dpkg_lock.png)
Geben Sie folgenden Befehl ein:
> sudo pgrep -f 'dpgk|apt' | xargs kill

Falls dies nicht funktioniert, starten Sie die VM neu.

## Git installieren

Die Versionierung der Chef Kochbücher erfolgte in Git. Dazu installieren sie sich bitte folgendes Program bei geöfnetem Terminal:

> sudo apt-get install git

**Mögliche Fehler:**

Falls sie folgende Fehlermeldung erhalten: 
![DPKG Lock](../img/dpkg_lock.png)
Geben Sie folgenden Befehl ein:

> sudo pgrep -f 'dpgk|apt' | xargs kill

Anschließend sollte die Installation reibungslos verlaufen.













