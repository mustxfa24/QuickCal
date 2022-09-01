CREATE TABLE events (
    id int IDENTITY(1,1) PRIMARY KEY CLUSTERED NOT NULL
    , userId nvarchar(50) NOT NULL
    , title nvarchar(200) NOT NULL
    , [description] nvarchar(1000) NULL
    , startDate date NOT NULL
    , startTime time(0) NULL
    , endDate date NULL
    , endTime time(0) NULL
    , INDEX idx_events_userId ( userId )
)

INSERT INTO events ( userId, title, [description], startDate, startTime, endDate, endTime )
VALUES ( 'user1234', N'appointment', N'description stuff', '2022-08-30', '22:50', NULL, NULL )
, ('user1234', N'online conference', N'', '2022-08-31', NULL, '2022-09-01', NULL )