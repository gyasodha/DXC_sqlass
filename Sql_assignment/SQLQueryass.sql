--1.Fetch the row from User table with Id=112233 and Password=’Maya1214’.



select USER_ID,user_password from user_details where User_id=112233  and User_password='Maya1214'

--2.Fetch all the rows from Note table with note_creation_date=’01/31/2019’.

select * from note where note_creation_date='01-31-2019'



--3.Fetch all the Categories created after ‘01/22/2019’.
select * from category where category_creation_date>'1-22-2019'

--4.Fetch all category details which belongs to note with note id=1.

select * from category where categort_id=(select categort_id from note where note_id=1)

--5.Fetch all the Notes from the Note table with userId=112244.

select * from note where user_id=112244

--6.Fetch all the Notes from the Note table for category_id=1.


select * from note where user_id = (select category_creator from category where categort_id=1)

--7.Fetch all the reminder details for note id=2.

select * from reminder where reminder_creator =(select user_id from note where note_id=2)

--8.Write a query to change the note_status to ‘Completed’ with note Id=3.

update note set note_status = 'completed' where note_id = 3
select * from note


--9.Write a query to set a reminder of type ‘Personal Reminders’ for Note with note id=1. [Find reminder id based upon reminder_type]
update Reminder set Reminder_Type = 'Personal Reminders' where reminder_creator = (select user_id from Note where note_id = 1)
select * from Reminder

--10.Write a query to remove all reminders from Note with note_id=2.
DELETE FROM NoteReminder WHERE note_id = 2;


