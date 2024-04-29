using {guru.db.master} from '../db/datamodel';

service CatalogService @(path: 'CatalogService') {

  entity EmployeeSet @(
    odata.draft.enabled         : true,
    Common.DefaultValuesFunction: 'setDefaultValue'
  ) as
    projection on master.employees {
      *,
      case recvdGoodies
        when
          'N'
        then
          'No'
        when
          'Y'
        then
          'Yes'
      end as recvdGoodies : String(3),
      case recvdGoodies
        when
          'N'
        then
          2
        when
          'Y'
        then
          3
      end as StatusCode   : Integer
    }

  function setDefaultValue() returns EmployeeSet;
}
