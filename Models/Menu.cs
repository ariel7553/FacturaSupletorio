//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FacturacionWeb.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Menu
    {
        public Menu()
        {
            this.Usuario_Menu = new HashSet<Usuario_Menu>();
        }
    
        public int ID { get; set; }
        public string Nombre { get; set; }
        public string Url { get; set; }
        public string Icono { get; set; }
        public int Estado { get; set; }
    
        public virtual ICollection<Usuario_Menu> Usuario_Menu { get; set; }
    }
}
