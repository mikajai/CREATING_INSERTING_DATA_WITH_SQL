-- Selecting users who are born between January 1, 2000 and December 31, 2004

SELECT *
FROM Users
WHERE DateOfBirth
BETWEEN '2000-01-01' AND '2004-12-31';





-- Selecting posts written by the user with a user_id of 4. 

SELECT *
FROM Posts
JOIN Users ON
	Users.UserID = Posts.PostedBy
WHERE Posts.PostedBy = 4;





-- Selecting all the group names existing in the database. 

SELECT
	Groups.GroupName
FROM Groups;





-- Selecting group membership requests made by the user with a user_id of 2.

SELECT *
FROM GroupMembershipRequests
JOIN Users ON
	Users.UserID = GroupMembershipRequests.GroupMemberUserID
WHERE GRoupMemberUserID = 2;





-- Selecting friends of the user with a user_id of 2.

SELECT 
	Users.UserID,
    Users.FirstName,
    Users.LastName,
    Friends.FriendID,
    Friends.FriendWhoAdded,
    Friends.FriendBeingAdded,
    Friends.IsAccepted
FROM Friends
JOIN Users ON 
(Friends.FriendWhoAdded = Users.UserID OR Friends.FriendBeingAdded = Users.UserID)
WHERE (Friends.FriendWhoAdded = 2 OR Friends.FriendBeingAdded = 2) AND Users.UserID IS NOT 2
    AND Friends.IsAccepted = TRUE





-- Selecting all the friend requests that user with a user_id of 1 has sent. The friend request can either be accepted or not yet accepted. 

SELECT *
FROM Friends
JOIN Users ON
	Users.UserID = Friends.FriendWhoAdded
WHERE Friends.FriendWhoAdded = 1;





-- Selecting posts visible only for the group with a group_id of 2. 

SELECT *
FROM Posts
WHERE Posts.GroupID = 2
AND IsOnlyForFriends = 1;





-- Selecting all the group membership requests from the group with a group_id of 2 that are not yet accepted. 

SELECT *
FROM Groups
INNER JOIN GroupMembershipRequests ON
	GroupMembershipRequests.GroupID = Groups.GroupID
WHERE GroupMembershipRequests.GroupID = 2
AND IsGroupMemberShipAccepted = 0;