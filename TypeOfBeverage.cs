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
    using System;
    using System.Collections.Generic;
    
    public partial class TypeOfBeverage
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TypeOfBeverage()
        {
            this.Beverages = new HashSet<Beverage>();
        }
    
        public int Id_TypeOfBeverage { get; set; }
        public string Name_TypeOfBeverage { get; set; }
        public System.DateTime Created_at { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Beverage> Beverages { get; set; }
    }
}
