namespace data;
entity customer {
    key cust_id : String;
    cust_name : String;
    cust_dob : Date;
    cust_addr : String;
    cust_to_acc : Composition of many account on cust_to_acc.cust_id = cust_id;
}
entity account{
    key acc_no : String;
    acc_type : String;
    acc_bal : Integer;
    cust_id : String;
    acc_to_cust : Association to one customer on acc_to_cust.cust_id = cust_id;
    acc_to_trans : Composition of  many transaction on acc_to_trans.acc_no = acc_no;
}
 entity transaction{
     key t_id : String;
     t_date : Date;
     t_amount : Integer;
     cust_id : String;
     acc_no : String;
     trans_to_acc : Association to one account on trans_to_acc.acc_no = acc_no;
 }