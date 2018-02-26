# Client Vorbereitung
Als gegeben wird eine Ubuntu VM 16.04, befindlich in: 

> E:\VM\LV-Reichelt\IMAGES\Ubuntu16.04

und eine Umgebung zum Einrichten/Starten der virtuellen Maschine vorausgesetzt.
(z.B.: VM Workstation 12 Pro)

Für das Beispiel in VM Workstation 12 Pro öffen sie die VM und vergeben sie einen Namen (z.B.: ClientVM) und wählen Sie einen Pfad als Ablageort aus.

## OpenSSH - Server installieren

Zur Konfiguration der Clients wird eine SSH - Verbindung benötigt. Laden Sie sich dazu das Programm **openssh-server** herunter.
Loggen Sie sich dazu in die VM ein (user: student, passwort: itsm) und geben Sie folgenden Befehl in ein geöffnetes Terminal ein: 

> sudo apt-get install openssh-server

**Mögliche Fehler:**

Falls sie folgende Fehlermeldung erhalten: 
![DPKG Lock](../img/dpkg_lock.png)
Geben Sie folgende Befehle ein:
> sudo rm /var/lib/dpkg/lock  
> sudo dpkg --configure -a

Besteht das Problem weiterhin, starten sie die VM neu.

Anschließend sollte die Installation reibungslos verlaufen.




