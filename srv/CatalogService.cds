using {guru.db.master} from '../db/datamodel';

service CatalogService @(path: 'CatalogService',
                         requires: 'authenticated-user') {
// service CatalogService @(path: 'CatalogService') {  

  entity EmployeeSet @(
    odata.draft.enabled         : true,
    Common.DefaultValuesFunction: 'setDefaultValue'
  ) as
    projection on master.employees {
      *,
      case recvdGoodies
        when 'N' then 'No'
        when 'Y' then 'Yes'
      end as RvdGoodies: String(6),
      case recvdGoodies
        when 'N' then 2
        when 'Y' then 3
      end as StatusCode: Integer
    }

  entity CheckSet as projection on master.goodies;

  function setDefaultValue() returns EmployeeSet;
  }