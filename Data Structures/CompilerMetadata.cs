﻿/*
 * Delta Forth .NET - World's first Forth compiler for the .NET platform
 * Copyright (C)1997-2011 Valer BOCAN, PhD, Romania (valer@bocan.ro, http://www.bocan.ro/deltaforthnet)
 * 
 * This program and its source code is distributed in the hope that it will
 * be useful. No warranty of any kind is provided.
 * Please DO NOT distribute modified copies of the source code.
 * 
 */

using System;
using System.Collections.Generic;

namespace DeltaForth.DataStructures
{    
    /// <summary>
    /// Metadata generated by the Forth syntactic analyzer and consumed by the code generator
    /// </summary>
    public class CompilerMetadata
    {       
        /// <summary>
        /// Global constants
        /// </summary>
        public List<ForthConstant> GlobalConstants { get; set; }

        /// <summary>
        /// Global variables
        /// </summary>
        public List<ForthVariable> GlobalVariables { get; set; }

        /// <summary>
        /// Local variables
        /// </summary>
        public List<ForthLocalVariable> LocalVariables { get; set; }

        /// <summary>
        /// Words
        /// </summary>
        public List<ForthWord> Words { get; set; }

        /// <summary>
        /// External words
        /// </summary>
        public List<ExternalWord> ExternalWords { get; set; }

        /// <summary>
        /// Library name (as declared by the LIBRARY keyword)
        /// </summary>
        public string LibraryName { get; set; }
    }
}