//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PredDiplomProject
{
    using System;
    using System.Collections.Generic;
    
    public partial class EmployeeStatuses
    {
        public int IdEmployeeStatuses { get; set; }
        public int IdEmployee { get; set; }
        public int IdStatus { get; set; }
        public int IdPosition { get; set; }
        public System.DateTime ChangeDate { get; set; }
    
        public virtual Employees Employees { get; set; }
        public virtual Positions Positions { get; set; }
        public virtual Status Status { get; set; }
    }
}
