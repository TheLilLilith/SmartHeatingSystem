//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Smart_Heating_System
{
    using System;
    using System.Collections.Generic;
    
    public partial class Помещение
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Помещение()
        {
            this.УстройстваПомещения = new HashSet<УстройстваПомещения>();
        }
    
        public int Id_Помещения { get; set; }
        public string НазваниеПомещения { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<УстройстваПомещения> УстройстваПомещения { get; set; }
    }
}
