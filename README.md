Filmdatenbank
=============

- Features:

  - Hinzufügen neuer Filme -> Name(unique) und Jahr pflicht
  - Bilderupload von Filmplakaten
  - Suche nach verschiedenen Parametern -> Name, Jahr, Bewertung (z.B. 3 oder mehr Sterne)
  - Benutzerregistrierung (Ohne Registrierung dennoch Anzeige der gespeicherten Filme)

  - MultiUser Datenbankbestände mit Unterscheidung zwischen User und Moderator(Können Filme zur DB hinzufügen/löschen)
    - User können Filme auswählen und diese mit "gesehen/interessiert/Besitz" markieren. Markierte Filme werden in einer nach Markierungen aufgebauten,alphabetischen Tabelle angezeigt.
    - Vom User mit "gesehen/Besitz" markierte Filme können von diesem bewertet werden.
    - Die Bewertung ist als gemittelter Wert aus allen Bewertungen bei der Auswahl für jeden Nutzer(Nicht nur angemeldete) sichtbar. (Anzahl der Bewertungen als Int-Wert)

  - Registrierte User können Kommentare unter Filmen sehen, erstellen und ihre eigenen Kommentare auch editieren.


- Optional:

  - Hinzufügen von weiteren Infos:  
    - Schauspieler 
    - Regisseur 
    - Hauptgenre 
    - Genre (Unterschied Hauptgenre / Genre: Actionfilm mit vielen Comedyelementen => Hauptgenre: Action Genre: Action, Comedy ==> Film: Kick-Ass)
  - Suchen nach weiteren Elementen:
    - Hauptgenre 
    - Genre 
    - Darsteller 
    - Regisseur
