//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace manager_drink
{
    using manager_drink.ViewModel;
    using System;
    using System.Collections.Generic;

    public partial class Order : BaseViewModel
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Order()
        {
            this.Order_Detail = new HashSet<Order_Detail>();
        }

        public int Id_order { get; set; }
        private string _Name_customer;
        public string Name_customer { get => _Name_customer; set { _Name_customer = value; OnPropertyChanged(); } }

        private string _Phone_number;
        public string Phone_number { get => _Phone_number; set { _Phone_number = value; OnPropertyChanged(); } }

        private string _Email;
        public string Email { get => _Email; set { _Email = value; OnPropertyChanged(); } }

        private string _Address;
        public string Address { get => _Address; set { _Address = value; OnPropertyChanged(); } }
        public Nullable<double> Customer_balance { get; set; }

        public Nullable<int> Order_status { get; set; }
        public DateTime Order_date { get; set; }
        public Nullable<int> User_id { get; set; }

        public double? _Total_money { get; set; }
        public double? Total_money { get => _Total_money; set { _Total_money = value; OnPropertyChanged(); } }


        public virtual Status Status { get; set; }
        public virtual User User { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order_Detail> Order_Detail { get; set; }
    }
}