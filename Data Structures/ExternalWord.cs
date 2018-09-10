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

namespace DeltaForth.DataStructures
{
    /// <summary>
    /// Definition of an external word as used by the Forth syntactic analyzer 
    /// </summary>
    public class ExternalWord
    {
        /// <summary>
        /// Word name
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// Library filename
        /// </summary>
        public string Library { get; set; }

        /// <summary>
        /// Class name
        /// </summary>
        public string Class { get; set; }

        /// <summary>
        /// Method name
        /// </summary>
        public string Method { get; set; }
    }
}