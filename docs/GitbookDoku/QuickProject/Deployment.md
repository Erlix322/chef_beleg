# Deployment des Kochbuchs 
Das Ausrollen des Kochbuchs erfolgt über die ServerVM, welche sie unter [Vorbereitung des Clients](./ClientVorbereitung.md) eingerichtet haben.

## Klonen des Chef Kochbuchs

Öffnen sie in einer geöffneten ServerVM einen Terminal und geben Sie folgenden Befehl ein:

> git clone https://github.com/Erlix322/chef_beleg

Wechseln Sie in das Verzeichnis: 

> cd chef_beleg/cookbooks/beleg

## Zertifikat erstellen

Loggen Sie sich auf manage.chef.io in Ihrer Organisation ein (Anmeldedaten wurden per Mail zugesandt)
Im Tab **Administration** klicken sie auf **Users** und wählen Sie den ersten Eintrag aus.

![Anmeldung](../img/quickAnmeldung.png)

Klicken Sie anschließend auf **Reset Key** in den User Details und laden Sie sich die .pem Datei herunter.

**Anmerkung** In einem Produktivsystem, würden Sie die Keys zentral verwalten und nicht einfach resetten und einen neuen Erstellen. (siehe Kapitel IV)

Kopieren Sie die heruntergeladene Datei mit folgenden Befehlen: 

> cd ~  
> cp Downloads/<your_file>.pem ./chef_beleg/.chef/

## Ausrollen des Kochbuchs

Geben Sie die folgenden Befehle in das Teminal ein:

> cd ~/chef_beleg/cookbooks/beleg/  

> knife bootstrap 192.168.144.135 --ssh-user student --ssh-password 'itsm' --sudo --use-sudo-password 'itsm' --node-name server_gruppe_n --run-list 'recipe[beleg]'

Ersetzen Sie dabei die IP durch die IP der ClientVM!

**Mögliche Fehlerquellen**
Falls Sie folgenden Fehler erhalten: 
![Fehler](../img/failedAUth.png)

Befolgen Sie die folgenden Anweisungen unter: [Systemuhr synchronisieren](./ServerVorbereitung.md)
