/*
 * Delta Forth .NET - World's first Forth compiler for the .NET platform
 * Copyright (C)1997-2011 Valer BOCAN, PhD, Romania (valer@bocan.ro, http://www.bocan.ro/deltaforthnet)
 * 
 * This program and its source code is distributed in the hope that it will
 * be useful. No warranty of any kind is provided.
 * Please DO NOT distribute modified copies of the source code.
 * 
 */

using System;
using System.Collections;
using System.Reflection;
using System.Reflection.Emit;
using System.Threading;
using System.IO;
using DeltaForth.DataStructures;

namespace DeltaForth.CodeGenerator
{
	/// <summary>
    /// Definition of an IF structure used to code IF-ELSE-THEN
	/// </summary>
	public class IFDescriptor 
	{
        /// <summary>
        /// Label for the ELSE branch
        /// </summary>
		public Label lbElse {get; set;}

        /// <summary>
        /// // TRUE if lbElse has already been used
        /// </summary>
        public bool bElse { get; set; }

        /// <summary>
        /// // Label for the end of the control struct
        /// </summary>
        public Label lbEnd { get; set; }
	}
}
