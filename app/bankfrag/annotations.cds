using bank as service from '../../srv/services';

annotate service.cust with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'cust_id',
            Value : cust_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'cust_name',
            Value : cust_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'cust_dob',
            Value : cust_dob,
        },
        {
            $Type : 'UI.DataField',
            Label : 'cust_addr',
            Value : cust_addr,
        },
    ]
);
annotate service.cust with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'cust_id',
                Value : cust_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'cust_name',
                Value : cust_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'cust_dob',
                Value : cust_dob,
            },
            {
                $Type : 'UI.DataField',
                Label : 'cust_addr',
                Value : cust_addr,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'account',
            ID : 'account',
            Target : 'cust_to_acc/@UI.LineItem#account',
        },
    ]
);
annotate service.acc with @(
    UI.LineItem #account : [
        {
            $Type : 'UI.DataField',
            Value : acc_type,
            Label : 'acc_type',
        },{
            $Type : 'UI.DataField',
            Value : cust_id,
            Label : 'cust_id',
        },{
            $Type : 'UI.DataField',
            Value : acc_no,
            Label : 'acc_no',
        },{
            $Type : 'UI.DataField',
            Value : acc_bal,
            Label : 'acc_bal',
        },]
);
annotate service.acc with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'transaction',
            ID : 'transaction',
            Target : 'acc_to_trans/@UI.LineItem#transaction',
        },
    ]
);
annotate service.trans with @(
    UI.LineItem #transaction : [
        {
            $Type : 'UI.DataField',
            Value : t_id,
            Label : 't_id',
        },{
            $Type : 'UI.DataField',
            Value : t_date,
            Label : 't_date',
        },{
            $Type : 'UI.DataField',
            Value : t_amount,
            Label : 't_amount',
        },{
            $Type : 'UI.DataField',
            Value : cust_id,
            Label : 'cust_id',
        },{
            $Type : 'UI.DataField',
            Value : acc_no,
            Label : 'acc_no',
        },]
);
