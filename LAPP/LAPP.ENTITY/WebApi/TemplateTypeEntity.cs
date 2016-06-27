﻿using System;

namespace LAPP.ENTITY
{
    public class TemplateTypeEntity : BaseEntity
    {
        public int TemplateTypeId { get; set; }
        public string Code { get; set; }
        public bool IsActive { get; set; }
        public bool IsDeleted { get; set; }
        public int CreatedBy { get; set; }
        public DateTime CreatedOn { get; set; }
        public int ModifiedBy { get; set; }
        public DateTime ModifiedOn { get; set; }
    }
}