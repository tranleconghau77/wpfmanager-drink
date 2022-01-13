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

    public partial class Order_Detail : BaseViewModel
    {
        public int Id_orderdetail { get; set; }

        public Nullable<double> _Price { get; set; }
        public double? Price { get => _Price; set { _Price = value; OnPropertyChanged(); } }


        public Nullable<double> _Total_money { get; set; }
        public double? Total_money { get => _Total_money; set { _Total_money = value; OnPropertyChanged(); } }


        private int? _Order_id;
        public int? Order_id { get => _Order_id; set { _Order_id = value; OnPropertyChanged(); } }

        private int? _Beverage_id;
        public int? Beverage_id { get => _Beverage_id; set { _Beverage_id = value; OnPropertyChanged(); } }


        private int? _Num;
        public int? Num { get => _Num; set { _Num = value; OnPropertyChanged(); } }

        private string _Note;
        public string Note { get => _Note; set { _Note = value; OnPropertyChanged(); } }
        public virtual Beverage Beverage { get; set; }
        public virtual Order Order { get; set; }
    }
}
