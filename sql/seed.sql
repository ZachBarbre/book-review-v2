\c book_reviews

INSERT INTO users (username, email, avatar) 
VALUES (
    'Books Rule',
    'books@rule.com',
    'https://bulma.io/images/placeholders/48x48.png'
);

INSERT INTO books (title, author, description, pagecount, cover)
VALUES (
    'Gardens of the Moon',
    'Steven Erikson',
    'Vast legions of gods, mages, humans, dragons and all manner of creatures play out the fate of the Malazan Empire in this first book in a major epic fantasy series The Malazan Empire simmers with discontent, bled dry by interminable warfare, bitter infighting and bloody confrontations with the formidable Anomander Rake and his Tiste Andii, ancient and implacable sorcerers. Even the imperial legions, long inured to the bloodshed, yearn for some respite. Yet Empress Laseen''s rule remains absolute, enforced by her dread Claw assassins. For Sergeant Whiskeyjack and his squad of Bridgeburners, and for Tattersail, surviving cadre mage of the Second Legion, the aftermath of the siege of Pale should have been a time to mourn the many dead. But Darujhistan, last of the Free Cities of Genabackis, yet holds out. It is to this ancient citadel that Laseen turns her predatory gaze. However, it would appear that the Empire is not alone in this great game. Sinister, shadowbound forces are gathering as the gods themselves prepare to play their hand... Conceived and written on a panoramic scale, Gardens of the Moon is epic fantasy of the highest order an enthralling adventure by an outstanding new voice.',
    496,
    'https://books.google.com/books/content?id=Jgth_BYe7V8C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api'
);

INSERT INTO reviews (user_id, book_id, review, stars )
VALUES (
    1,
    1, 
    'I love ths book',
    5
);
