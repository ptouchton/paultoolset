select *
  from passplayscimtest..scimdata
  where surname = 'Touchton'

select *
   from passplaytest..sponsor
   where externalid in ('99999999','99999998')

select *
  from passplaytest..vvisitorpass
  where externalid in ('99999999','99999998')

 begin transaction

delete from passplaytest..visitorpass
   where id in (select passid from passplaytest..vvisitorpass where ExternalId in ('99999999','99999998'))

delete from passplaytest..visitornote
  where Visitor_Id in (6689287,6670911)
  
delete from passplaytest..visitor
  where id in (6689287,6670911)

delete from passplaytest..approval
  where Sponsor_Id in (select id from passplaytest..sponsor where ExternalId in ('99999999','99999998'))

delete from passplaytest..sponsor
  where ExternalId in ('99999999','99999998');

delete from PassPlayScimTest..scimdata
  where EmployeeId in ('99999999','99999998');

select *
   from passplaytest..vvisitorpass
   where externalid in ('99999999','99999998');

commit; 