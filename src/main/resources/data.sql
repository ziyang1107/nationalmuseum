USE nationalmuseumdb;

INSERT INTO category (category_name) VALUES ('In-reach Programme');
INSERT INTO category (category_name) VALUES ('Art Bazaar');
INSERT INTO category (category_name) VALUES ('Guided Tour');

INSERT INTO images (image_url) VALUES ('https://firebasestorage.googleapis.com/v0/b/national-museum-93179.appspot.com/o/Ringgit.jpeg?alt=media&token=a6d445b1-9e6e-4e12-83ca-06864d98516a');
INSERT INTO images (image_url) VALUES ('https://firebasestorage.googleapis.com/v0/b/national-museum-93179.appspot.com/o/bank.webp?alt=media&token=f13b0366-5f56-4ae2-be27-fd68d3cfd496');
INSERT INTO images (image_url) VALUES ('https://firebasestorage.googleapis.com/v0/b/national-museum-93179.appspot.com/o/banknegara.webp?alt=media&token=6fcc1d49-6e64-49aa-a1ef-913984558b05');
INSERT INTO images (image_url) VALUES ('https://firebasestorage.googleapis.com/v0/b/national-museum-93179.appspot.com/o/banknotes.webp?alt=media&token=9f0f676d-ceac-426f-bdad-b0dd8fa8ad28');
INSERT INTO images (image_url) VALUES ('https://firebasestorage.googleapis.com/v0/b/national-museum-93179.appspot.com/o/coin.jpeg?alt=media&token=d3bac8b1-b8f6-4c12-87e4-21ad2d46500a');
INSERT INTO images (image_url) VALUES ('https://firebasestorage.googleapis.com/v0/b/national-museum-93179.appspot.com/o/currency.webp?alt=media&token=405ace82-bc6f-4efd-a2e2-11db650ba398');
INSERT INTO images (image_url) VALUES ('https://firebasestorage.googleapis.com/v0/b/national-museum-93179.appspot.com/o/digitalage.jpeg?alt=media&token=fca6e194-90e8-46b1-a850-84b5bdf63cf1');
INSERT INTO images (image_url) VALUES ('https://firebasestorage.googleapis.com/v0/b/national-museum-93179.appspot.com/o/funsaving.webp?alt=media&token=28c342a8-fa2a-43b1-89fa-38adcf74c1ce');
INSERT INTO images (image_url) VALUES ('https://firebasestorage.googleapis.com/v0/b/national-museum-93179.appspot.com/o/inflation.avif?alt=media&token=9cc71823-7cd2-4491-a646-3da55f49dafd');
INSERT INTO images (image_url) VALUES ('https://firebasestorage.googleapis.com/v0/b/national-museum-93179.appspot.com/o/kidcoin.jpeg?alt=media&token=db13b7b7-f752-41c8-a80c-949de47ab14a');
INSERT INTO images (image_url) VALUES ('https://firebasestorage.googleapis.com/v0/b/national-museum-93179.appspot.com/o/photograph.jpeg?alt=media&token=d09256d4-8f54-4d84-bcf4-508a8f56e9d0');
INSERT INTO images (image_url) VALUES ('https://firebasestorage.googleapis.com/v0/b/national-museum-93179.appspot.com/o/portrailphotograph.jpeg?alt=media&token=b697ce2d-0f4d-4506-b7e7-fcf56e4531fd');
INSERT INTO images (image_url) VALUES ('https://firebasestorage.googleapis.com/v0/b/national-museum-93179.appspot.com/o/savings.jpeg?alt=media&token=38cf9227-bdff-4332-9550-b7e8ed0258b2');
INSERT INTO images (image_url) VALUES ('https://firebasestorage.googleapis.com/v0/b/national-museum-93179.appspot.com/o/photograph.jpeg?alt=media&token=d09256d4-8f54-4d84-bcf4-508a8f56e9d0');
INSERT INTO images (image_url) VALUES ('https://firebasestorage.googleapis.com/v0/b/national-museum-93179.appspot.com/o/streetphotograph.webp?alt=media&token=93af0572-bb54-4219-a885-e6a4288b779e');


INSERT INTO activity (category_id, datetime, image_id, description, location, title, participant_limit)
VALUES (1, '2024-02-21 13:00:00', 1, 'Si Kijang Money Box activity', 'Sasana Kijang, Bank Negara Malaysia', 'Si Kijang Money Box', NULL);

INSERT INTO activity (category_id, datetime, image_id, description, location, title, participant_limit)
VALUES (1, '2024-03-01 11:00:00', 2, 'Learn about Malaysian banknotes', 'Sasana Kijang, Bank Negara Malaysia', 'Talk: Get To Know Your Banknotes', NULL);

INSERT INTO activity (category_id, datetime, image_id, description, location, title, participant_limit)
VALUES (2, '2024-03-01 11:00:00', 3, 'Explore the history of Ringgit currency', 'Sasana Kijang, Bank Negara Malaysia', 'Talk: How old is the Ringgit?', NULL);

INSERT INTO activity (category_id, datetime, image_id, description, location, title, participant_limit)
VALUES (3, '2024-03-01 11:00:00', 4, 'Insight into Bank Negara Malaysia\'s role', 'Sasana Kijang, Bank Negara Malaysia', 'Talk: Bank Negara Malaysia – What do we do?', 100);

INSERT INTO activity (category_id, datetime, image_id, description, location, title, participant_limit)
VALUES (1, '2024-03-05 09:00:00', 5, 'Interactive art session for kids', 'Sasana Kijang, Bank Negara Malaysia', 'Art Workshop for Kids', NULL);

INSERT INTO activity (category_id, datetime, image_id, description, location, title, participant_limit)
VALUES (2, '2024-03-10 10:00:00', 6, 'Discussion on currency policies', 'Sasana Kijang, Bank Negara Malaysia', 'Panel: Currency Policy in Malaysia', NULL);

INSERT INTO activity (category_id, datetime, image_id, description, location, title, participant_limit)
VALUES (3, '2024-03-15 14:00:00', 7, 'Guided tour of the Bank Negara Museum', 'Bank Negara Museum', 'Museum Tour', 25);

INSERT INTO activity (category_id, datetime, image_id, description, location, title, participant_limit)
VALUES (1, '2024-03-20 11:00:00', 8, 'Learn about rare banknotes', 'Sasana Kijang, Bank Negara Malaysia', 'Talk: Rare Banknotes of Malaysia', NULL);

INSERT INTO activity (category_id, datetime, image_id, description, location, title, participant_limit)
VALUES (2, '2024-03-25 15:00:00', 9, 'How to manage your finances', 'Sasana Kijang, Bank Negara Malaysia', 'Talk: Financial Literacy Workshop', NULL);

INSERT INTO activity (category_id, datetime, image_id, description, location, title, participant_limit)
VALUES (3, '2024-03-30 10:00:00', 10, 'An exhibition on Malaysian currency evolution', 'Sasana Kijang, Bank Negara Malaysia', 'Exhibition: Evolution of Currency', 40);

INSERT INTO activity (category_id, datetime, image_id, description, location, title, participant_limit)
VALUES (1, '2024-04-05 11:00:00', 11, 'Learn the art of currency design', 'Sasana Kijang, Bank Negara Malaysia', 'Workshop: Currency Design 101', NULL);

INSERT INTO activity (category_id, datetime, image_id, description, location, title, participant_limit)
VALUES (2, '2024-04-10 13:00:00', 12, 'Explore the currency minting process', 'Sasana Kijang, Bank Negara Malaysia', 'Talk: Inside the Mint', NULL);

INSERT INTO activity (category_id, datetime, image_id, description, location, title, participant_limit)
VALUES (3, '2024-04-15 09:00:00', 13, 'History of international currencies', 'Sasana Kijang, Bank Negara Malaysia', 'Talk: Currencies of the World', 50);

INSERT INTO activity (category_id, datetime, image_id, description, location, title, participant_limit)
VALUES (2, '2024-04-20 14:00:00', 14, 'Interactive game on financial management', 'Sasana Kijang, Bank Negara Malaysia', 'Activity: Money Management Game', NULL);
