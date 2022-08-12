-- Your code here




---------------------------------------
-- DO NOT ALTER THE DATA BELOW --
---------------------------------------
INSERT INTO teams
    (name)
VALUES
    ('Project D'),
    ('Speed Stars'),
    ('Impact Blue'),
    ('Emperors'),
    ('NightKids'),
    ('Red Suns'),
    ('Saitama Alliance'),
    ('Purple Shadow');

INSERT INTO drivers
    (name, home_course, team_id)
VALUES
    ('Takumi', 'Akina', 1),
    ('Bunta', 'Akina', null),
    ('Iketani', 'Akina', 2),
    ('Kenji', 'Akina', 2),
    ('Itsuki', 'Akina', 2),
    ('Ryosuke', 'Akagi', 6),
    ('Keisuke', 'Akagi', 1),
    ('Takeshi', 'Myogi', 5),
    ('Shingo', 'Myogi', 5),
    ('Mako', 'Usui', 3),
    ('Sayuki', 'Usui', 3),
    ('Kenta', 'Akagi', 6),
    ('Kyoichi', 'Irohazaka', 4),
    ('Seiji', 'Irohazaka', 4),
    ('Wataru', 'Shomaru', 7),
    ('Hoshino', 'Tsukuba', 8),
    ('Joshima', 'Tsubuka', 8);

INSERT INTO cars
    (make, model)
VALUES
    ('Toyota', 'Trueno AE86'),
    ('Subaru', 'Impreza WRX STi'),
    ('Nissan', 'S13'),
    ('Nissan', '180SX'),
    ('Toyota', 'Levin AE85')
    ('Mazda', 'RX-7 FC'),
    ('Mazda', 'RX-7 FD'),
    ('Nissan', 'GT-R Skyline R32'),
    ('Honda', 'Civic EG6'),
    ('Nissan', 'SilEighty'),
    ('Nissan', 'S14'),
    ('Mitsubishi', 'Lancer EVO III'),
    ('Mitsubishi', 'Lancer EVO IV'),
    ('Toyota', 'Levin AE86'),
    ('Honda', 'S2000');

INSERT INTO car_owners
    (owner_id, car_id)
VALUES
    (1,1),
    (2,2),
    (3,3),
    (4,4),
    (5,5),
    (6,6),
    (7,7),
    (8,8),
    (9,9),
    (10,10),
    (11,10),
    (12,11),
    (13,12),
    (14,13),
    (15,14),
    (16,8),
    (17,15);
