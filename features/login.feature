# namespace: Bejelentkezés
@manual
Feature: Bejelentkezés

	Scenario: Az adatok megadása nélkül nem lehet bejelentkezni
		Given Bejelentkezés: a bejelentkezési oldalon vagyok
		When Bejelentkezés: nem adok meg egyetlen adatot sem
		Then Bejelentkezés: nem tudok bejelentkezni

	Scenario: Felhasználói név megadása nélkül nem lehet bejelentkezni
		Given Bejelentkezés: a bejelentkezési oldalon vagyok
		When Bejelentkezés: megadom a jelszót
		Then Bejelentkezés: nem tudok bejelentkezni

	Scenario: Jelszó megadása nélkül nem lehet bejelentkezni
		Given Bejelentkezés: a bejelentkezési oldalon vagyok
		When Bejelentkezés: megadom a felhasználói nevet
		Then Bejelentkezés: nem tudok bejelentkezni

	Scenario: Hibás jelszóval nem lehet bejelentkezni
		Given Bejelentkezés: a bejelentkezési oldalon vagyok
		When Bejelentkezés: megadom a felhasználói nevet
		And Bejelentkezés: hibás jelszót adok meg
		Then Bejelentkezés: a bejelentkezés sikertelen lesz

	Scenario: Helyes jelszóval be lehet jelentkezni
		Given Bejelentkezés: a bejelentkezési oldalon vagyok
		When Bejelentkezés: megadom a felhasználói nevet
		And Bejelentkezés: megadom a jelszót
		Then Bejelentkezés: a bejelentkezés sikerül
