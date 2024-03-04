using data as d from '../db/schema';
service bank {
    @odata.draft.enabled
    entity cust as projection on d.customer;
    entity acc as projection on d.account;
    entity trans as projection on d.transaction;
}