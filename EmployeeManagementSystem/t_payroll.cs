//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EmployeeManagementSystem
{
    using System;
    using System.Collections.Generic;
    
    public partial class t_payroll
    {
        public int PaymentId { get; set; }
        public string Employee_name { get; set; }
        public Nullable<double> NetSalary { get; set; }
        public string E_Basic { get; set; }
        public Nullable<int> E_DA { get; set; }
        public Nullable<int> E_HRA { get; set; }
        public Nullable<int> E_Conveyance { get; set; }
        public Nullable<int> Total_Earnings { get; set; }
        public Nullable<int> E_Allowance { get; set; }
        public Nullable<int> D_TDS { get; set; }
        public Nullable<int> D_ESI { get; set; }
        public Nullable<int> D_PF { get; set; }
        public Nullable<int> Tax { get; set; }
        public Nullable<int> Total_Deductions { get; set; }
        public Nullable<int> Employee_Id { get; set; }
    }
}
