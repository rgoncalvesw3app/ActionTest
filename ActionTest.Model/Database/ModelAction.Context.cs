﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ActionTest.Model.Database
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ActionEntities : DbContext
    {
        public ActionEntities()
            : base("name=ActionEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Categoria> Categorias { get; set; }
        public virtual DbSet<Contato> Contatoes { get; set; }
        public virtual DbSet<ItemVenda> ItemVendas { get; set; }
        public virtual DbSet<Produto> Produtoes { get; set; }
        public virtual DbSet<Venda> Vendas { get; set; }
    }
}
