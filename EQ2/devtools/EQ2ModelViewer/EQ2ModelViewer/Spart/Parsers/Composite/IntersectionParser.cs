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

namespace Spart.Parsers.Composite
{
	using Spart.Scanners;

	public class IntersectionParser : BinaryTerminalParser
	{
		public IntersectionParser(Parser first, Parser second)
			:base(first,second)
		{}

		public override ParserMatch ParseMain(IScanner scan)
		{
			long offset = scan.Offset;
			ParserMatch m = FirstParser.Parse(scan);
			if (m.Success)
			{
				scan.Seek(offset);
				ParserMatch m2 = SecondParser.Parse(scan);
				if (m2.Success)
				{
					if (m.Length >= m2.Length)
                    {
                        scan.Seek(m.Offset + m.Length);
                        return m;
                    }
                    else
                    {
                        return m2;
                    }
				}
			}

			scan.Seek(offset);
			return scan.NoMatch;
		}

    
        public override Parser Clone()
        {
            return base.Clone();
        }
    }
}
