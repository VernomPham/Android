//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Webapi.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class QUANLYVE
    {
        public int MAVE { get; set; }
        public Nullable<int> MASUAT { get; set; }
        public Nullable<int> MARAP { get; set; }
        public string NGAYDAT { get; set; }
        public Nullable<int> MAGHE { get; set; }
        public Nullable<int> MAKH { get; set; }
    
        public virtual KHACHHANG KHACHHANG { get; set; }
        public virtual LICHCHIEU LICHCHIEU { get; set; }
    }
}
