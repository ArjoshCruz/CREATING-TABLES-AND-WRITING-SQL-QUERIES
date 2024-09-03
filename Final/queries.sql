-- SQL Queries used on the given questions

-- Number 1. Select all users who are born between January 1, 2000 and December 31, 2004. --
SELECT * FROM Users
WHERE DateOfBirth BETWEEN '2000-1-1' AND '2004-12-31';

-- Number 2. Select all the posts written by the user with a user_id of 4. -- 
SELECT * FROM Posts
WHERE PostedBy = 4;

-- Number 3. Select all the group names existing in the database. -- 
SELECT GroupName FROM Groups;

-- Number 4. Select all the group membership requests made by the user with a user_id of 2. --
SELECT * FROM GroupMembershipRequests
WHERE GroupMemberUserId = 2;

-- Number 5. Select all the friends of the user with a user_id of 2. --
SELECT * 
FROM Users JOIN Friends
ON Users.UserID = Friends.FriendWhoAdded OR Users.UserID = Friends.FriendBeingAdded
WHERE (FriendWhoAdded = 2 OR FriendBeingAdded = 2) AND Users.UserID is not 2
AND IsAccepted = true;

-- Number 6. Select all the friend requests that user with a user_id of 1 has sent. The friend request can either be accepted or not yet accepted. --
SELECT * FROM Friends
WHERE FriendWhoAdded = 1;

-- Number 7. Select all the posts visible only for the group with a group_id of 2. -- 
SELECT * FROM Posts
WHERE GroupID = 2;

-- Number 8. Select all the group membership requests from the group with a group_id of 2 that are not yet accepted. --
SELECT * FROM GroupMembershipRequests
WHERE GroupID = 2 AND IsGroupMemberShipAccepted = false;