/// Spart License (zlib/png)
/// 
/// 
/// Copyright (c) 2003 Jonathan de Halleux
/// 
/// This software is provided 'as-is', without any express or implied warranty. 
/// In no event will the authors be held liable for any damages arising from 
/// the use of this software.
/// 
/// Permission is granted to anyone to use this software for any purpose, 
/// including commercial applications, and to alter it and redistribute it 
/// freely, subject to the following restrictions:
/// 
/// 1. The origin of this software must not be misrepresented; you must not 
/// claim that you wrote the original software. If you use this software in a 
/// product, an acknowledgment in the product documentation would be 
/// appreciated but is not required.
/// 
/// 2. Altered source versions must be plainly marked as such, and must not be 
/// misrepresented as being the original software.
/// 
/// 3. This notice may not be removed or altered from any source distribution.
/// 
/// Author: Jonathan de Halleuxusing System;

namespace Spart.Parsers.NonTerminal
{
	using System;
	using Spart.Scanners;
	public class PostParseEventArgs : EventArgs
	{
		private ParserMatch m_Match;
		private NonTerminalParser m_Parser;
		private IScanner m_Scanner;

		public PostParseEventArgs(ParserMatch match, NonTerminalParser parser, IScanner scanner)
		{
			if (match == null)
				throw new ArgumentNullException("match");
			if (parser == null)
				throw new ArgumentNullException("parser");
			if (scanner == null)
				throw new ArgumentNullException("scanner");

			m_Match = match;
			m_Parser = parser;
			m_Scanner = scanner;
		}

		public ParserMatch Match
		{
			get
			{
				return m_Match;
			}
		}

		public NonTerminalParser Parser
		{
			get
			{
				return m_Parser;
			}
		}

		public IScanner Scanner
		{
			get
			{
				return m_Scanner;
			}
		}
	}
}
