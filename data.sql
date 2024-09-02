INSERT INTO Users (UserID, Username, FirstName, LastName, DateOfBirth, Password) VALUES
(1,'jenrrico1', 'Jacquelyn', 'Enrrico', '2000-03-30', 'xzxqrYF2'),
(2,'dwerlock11', 'Drake', 'Werlock', '2012-03-22', 'seoobZL3'),
(3,'kburnel2n', 'Kipper', 'Burnel', '2016-09-09', 'uusrcVB0'),
(4,'cjouning1y', 'Carlina', 'Jouning', '2000-08-20', 'qrhdaNK5'),
(5,'cfinnes2i', 'Catina', 'Finnes', '2002-09-25', 'dicagXV9'),
(6,'lparadin4', 'Lorie', 'Paradin', '2003-08-09', 'vtaxhFK2'),
(7,'mpoleykett26', 'Mylo', 'Poleykett', '2000-07-13', 'eqzumJS3'),
(8,'mbangiard2j', 'Mercie', 'Bangiard', '2010-02-03', 'hcoftSQ0');

INSERT INTO Friends (FriendID, FriendWhoAdded, FriendBeingAdded, IsAccepted) VALUES
(1,'3', '2', TRUE),
(2,'5', '2', TRUE),
(3,'1', '8', FALSE),
(4,'6', '3', FALSE),
(5,'1', '2', TRUE);

INSERT INTO Groups (GroupID, GroupName, CreatedBy) VALUES
(1,'Asoka', 2),
(2,'Mavericks', 1),
(3,'Alpha', 4),
(4,'Brainiacs', 7),
(5,'Ethereal', 3);


INSERT INTO Posts (PostID, PostDescription, PostedBy, IsPublic, IsOnlyForFriends, GroupID) VALUES
(1,'Be a voice, not an echo!', 1, TRUE, FALSE, 1),
(2,'Slice of life!', 4, FALSE, TRUE, 2),
(3,'Learning SQL!', 3, TRUE, FALSE, 3),
(4,'Keeping it simple!', 4, TRUE, FALSE, 4),
(5,'Very demure, very cutesy!', 5, FALSE, TRUE, 5),
(6,'SQL is fun!', 1, TRUE, FALSE, 2),
(7,'Join my group!', 2, FALSE, TRUE, 1),
(8,'Post about coding!', 3, FALSE, TRUE, 4);


INSERT INTO GroupMembershipRequests (GroupMemberShipRequestsID, GroupID, GroupMemberUserID, IsGroupMemberShipAccepted) VALUES
(1, 1, 3, FALSE),
(2, 1, 4, FALSE),
(3, 3, 2, TRUE),
(4, 4, 1, FALSE),
(5, 2, 2, FALSE),
(6, 5, 2, TRUE),
(7, 1, 2, FALSE);