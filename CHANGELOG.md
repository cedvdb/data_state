## 1.0.0
 - solidifying api
 - remove isUpdating member
 - loaded factory as `DataLoaded`

## 0.2.0
- [Breaking] DataLoading no longer has a possible data value
- added `DataUnset` which represents data that is not yet loading
- added isUpdating member to DataLoaded, for the cases where there is existing data but we are loading more data (infini scroll) or new data but the old one needs to stay until the new one arrives.

## 0.1.2

- export changes from 0.1.1

## 0.1.1

- added DataStream and DataController typedef

## 0.1.0

- [Breaking]: change names from DataStateLoading to DataLoading, DataStateExists to DataExists, etc.

## 0.0.2

- use factory for loaded

## 0.0.1

- Initial version.
