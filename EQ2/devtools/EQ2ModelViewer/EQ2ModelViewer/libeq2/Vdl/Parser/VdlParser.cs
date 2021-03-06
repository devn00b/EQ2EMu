#region License information
// ----------------------------------------------------------------------------
//
//       libeq2 - A library for analyzing the Everquest II File Format
//                         Blaz (blaz@blazlabs.com)
//
//       This program is free software; you can redistribute it and/or
//        modify it under the terms of the GNU General Public License
//      as published by the Free Software Foundation; either version 2
//          of the License, or (at your option) any later version.
//
//      This program is distributed in the hope that it will be useful,
//      but WITHOUT ANY WARRANTY; without even the implied warranty of
//       MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//                GNU General Public License for more details.
//
//      You should have received a copy of the GNU General Public License
//         along with this program; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA
//
//   ( The full text of the license can be found in the License.txt file )
//
// ----------------------------------------------------------------------------
#endregion

#region Using directives

using System;
using System.Collections.Generic;
using System.Diagnostics;

using Spart.Actions;
using Spart.Parsers;
using Spart.Scanners;
using Spart.Parsers.NonTerminal;

#endregion

namespace Everquest2.Vdl.Parser
{
    public class VdlParser
    {
        public VdlParser(string text, Everquest2.IO.FileSystem fileSystem)
        {
            this.text = text;
            this.fileSystem = fileSystem;
        }


        public VdlElement Parse()
        {
            Rule WhiteSpace                 = new Rule();
            Rule WhiteSpaceCharacter        = new Rule();
            Rule Comment                    = new Rule();
            Rule SingleLineComment          = new Rule();
            Rule DelimitedComment           = new Rule();
            Rule DelimitedCommentCharacter  = new Rule();
            Rule NewLineCharacter           = new Rule();
            Rule NotNewLineCharacter        = new Rule();
            Rule NewLine                    = new Rule();

            vdlDocument                     = new Rule();
            Rule NamedElement               = new Rule();
            Rule NamedElementIdentifier     = new Rule();
            Rule Identifier                 = new Rule();
            Rule IdentifierStartCharacter   = new Rule();
            Rule IdentifierPartCharacter    = new Rule();
            Rule UnnamedElement             = new Rule();
            Rule BasicLiteral               = new Rule();
            Rule ObjectType                 = new Rule();
            Rule ObjectTypeIdentifier       = new Rule();
            Rule IncludeDirectiveBlock      = new Rule();
            Rule FloatLiteral               = new Rule();
            Rule FloatValue                 = new Rule();
            Rule Sign                       = new Rule();
            Rule Exponent                   = new Rule();
            Rule IntegerLiteral             = new Rule();
            Rule BoolLiteral                = new Rule();
            Rule StringLiteral              = new Rule();
            Rule RegularStringContents      = new Rule();
            Rule MultiLineStringContents    = new Rule();
            Rule RegularStringCharacter     = new Rule();
            Rule MultiLineStringPart        = new Rule();
            Rule NotMultiLineStringEnd      = new Rule();
            Rule Vec3Literal                = new Rule();
            Rule StartVec3Literal           = new Rule();
            Rule VecComponentLiteral        = new Rule();
            Rule ArrayLiteral               = new Rule();
            Rule ArrayStart1                = new Rule();
            Rule ArrayStart2                = new Rule();
            Rule IncludeDirective           = new Rule();
            Rule IncludePath                = new Rule();

            // WhiteSpace                ::== WhiteSpaceCharacter | Comment
            // WhiteSpaceCharacter       ::== ' ' | \t | \v | \f
            // Comment                   ::== SingleLineComment | DelimitedComment
            // SingleLineComment         ::== // *NotNewLineCharacter
            // DelimitedComment          ::== /* *DelimitedCommentCharacter */
            // DelimitedCommentCharacter ::== ~* | * ~/
            // NewLineCharacter          ::== \r | \n
            // NotNewLineCharacter       ::== ~\r & ~\n
            // NewLine                   ::== \r | \n | \r \n

            WhiteSpace.Parser                = WhiteSpaceCharacter | Comment | NewLineCharacter;
            WhiteSpaceCharacter.Parser       = Prims.Ch(' ') | '\t' | '\v' | '\f';
            Comment.Parser                   = SingleLineComment | DelimitedComment;
            SingleLineComment.Parser         = "//" + Ops.Klenee(NotNewLineCharacter);
            DelimitedComment.Parser          = "/*" + Ops.Klenee(DelimitedCommentCharacter) + "*/";
            DelimitedCommentCharacter.Parser = ~Prims.Ch('*') | '*' + ~Prims.Ch('/');
            NewLineCharacter.Parser          = Prims.Ch('\r') | Prims.Ch('\n');
            NotNewLineCharacter.Parser       = ~Prims.Ch('\r') & ~Prims.Ch('\n');
            NewLine.Parser                   = Prims.Ch('\r') + '\n' | Prims.Ch('\r') | '\n';

            // VdlDocument              ::== *UnnamedElement
            // NamedElement             ::== Identifier = UnnamedElement
            // NamedElementIdentifier   ::== Identifier
            // Identifier               ::== IdentifierStartCharacter *IdentifierPartCharacter
            // IdentifierStartCharacter ::== (_ | a..z | A..Z)
            // IdentifierPartCharacter  ::== IdentifierStartCharacter | 0..9
            // UnnamedElement           ::== Literal | IncludeDirectiveBlock | ObjectType
            // Literal                  ::== FloatLiteral | IntegerLiteral | BoolLiteral | StringLiteral | Vec3Literal | ArrayLiteral
            // FloatLiteral             ::== FloatValue
            // FloatValue               ::== [Sign] *Digit . +Digit [Exponent] | [Sign] +Digit Exponent
            // Sign                     ::== + | -
            // Exponent                 ::== (e | E) [Sign] +Digit
            // IntegerLiteral           ::== [Sign] +Digit
            // BoolLiteral              ::== true | false
            // StringLiteral            ::== " RegularStringContents " | FOO>> NewLine MultiLineStringContents FOO
            // RegularStringContents    ::== *RegularStringCharacter
            // MultiLineStringContents  ::== *(NotMultiLineStringEnd & MultiLineStringPart)
            // NotMultiLineStringEnd    ::== ~FOO
            // RegularStringCharacter   ::== ~" & (\ NewLineCharacter | NotNewLineCharacter)
            // MultiLineStringPart      ::== *NotNewLineCharacter NewLine
            // Vec3Literal              ::== StartVec3Literal VecComponentLiteral VecComponentLiteral VecComponentLiteral )
            // VecComponentLiteral      ::== FloatValue
            // StartVec3Literal         ::== (
            // ArrayLiteral             ::== ArrayStart1 *UnnamedElement } | ArrayStart2 *UnnamedElement ]
            // ArrayStart1              ::== Array {
            // ArrayStart2              ::== [
            // ObjectType               ::== ObjectTypeIdentifier { *NamedElement }
            // ObjectTypeIdentifier     ::== Identifier
            // IncludeDirectiveBlock    ::== +IncludeDirective [0]
            // IncludeDirective         ::== (include | @) IncludePath
            // IncludePath              ::== *NotNewLineCharacter NewLine

            vdlDocument.Parser              = Ops.Klenee(UnnamedElement);
            NamedElement.Parser             = NamedElementIdentifier + '=' + UnnamedElement;
            NamedElementIdentifier.Parser   = Identifier;
            NamedElementIdentifier.Act     += OnFieldName;
            Identifier.Parser               = Dirs.Lexeme(IdentifierStartCharacter + Ops.Klenee(IdentifierPartCharacter));
            IdentifierStartCharacter.Parser = '_' | Prims.Range('a', 'z') | Prims.Range('A', 'Z');
            IdentifierPartCharacter.Parser  = IdentifierStartCharacter | Prims.Range('0', '9');
            UnnamedElement.Parser           = BasicLiteral | IncludeDirectiveBlock | ObjectType;
            BasicLiteral.Parser             = FloatLiteral | IntegerLiteral | BoolLiteral | StringLiteral | Vec3Literal | ArrayLiteral;
            FloatLiteral.Parser             = FloatValue;
            FloatLiteral.Act               += OnFloatLiteral;
            FloatValue.Parser               = !Sign + Dirs.Lexeme(Ops.Klenee(Prims.Digit) + '.' + +Prims.Digit + !Exponent) | !Sign + Dirs.Lexeme(+Prims.Digit + Exponent);
            Sign.Parser                     = Prims.Ch('+') | '-';
            Exponent.Parser                 = (Prims.Ch('e') | 'E') + !Sign + +Prims.Digit;
            IntegerLiteral.Parser           = !Sign + Dirs.Lexeme(+Prims.Digit);
            IntegerLiteral.Act             += OnIntegerLiteral;
            BoolLiteral.Parser              = Prims.Str("true") | "false";
            BoolLiteral.Act                += OnBoolLiteral;
            StringLiteral.Parser            = Dirs.Lexeme('"' + RegularStringContents + '"') | Dirs.Lexeme("FOO>>" + NewLine + MultiLineStringContents + "FOO");
            RegularStringContents.Parser    = Ops.Klenee(RegularStringCharacter);
            RegularStringContents.Act      += OnStringLiteral;
            MultiLineStringContents.Parser  = Ops.Klenee(NotMultiLineStringEnd & MultiLineStringPart);
            MultiLineStringContents.Act    += OnStringLiteral;
            NotMultiLineStringEnd.Parser    = ~Prims.Ch('F') | 'F' + ~Prims.Ch('O') | "FO" + ~Prims.Ch('O');
            RegularStringCharacter.Parser   = ~Prims.Ch('"') & ('\\' + NewLine | NotNewLineCharacter);
            MultiLineStringPart.Parser      = Ops.Klenee(NotNewLineCharacter) + NewLine;
            Vec3Literal.Parser              = StartVec3Literal + VecComponentLiteral + VecComponentLiteral + VecComponentLiteral + ')';
            Vec3Literal.Act                += OnVec3Literal;
            VecComponentLiteral.Parser      = FloatValue;
            VecComponentLiteral.Act        += OnVecComponentLiteral;
            StartVec3Literal.Parser         = Prims.Ch('(');
            StartVec3Literal.Act           += OnStartVec3Literal;
            ArrayLiteral.Parser             = ArrayStart1 + Ops.Klenee(UnnamedElement) + '}' | ArrayStart2 + Ops.Klenee(UnnamedElement) + ']';
            ArrayLiteral.Act               += OnArrayLiteral;
            ArrayStart1.Parser              = Prims.Str("Array") + '{';
            ArrayStart1.Act                += OnStartArrayLiteral;
            ArrayStart2.Parser              = Prims.Ch('[');
            ArrayStart2.Act                += OnStartArrayLiteral;
            ObjectType.Parser               = ObjectTypeIdentifier + '{' + Ops.Klenee(NamedElement) + '}';
            ObjectType.Act                 += OnEndObject;
            ObjectTypeIdentifier.Parser     = Identifier;
            ObjectTypeIdentifier.Act       += OnStartObject;
            IncludeDirectiveBlock.Parser    = +IncludeDirective + !Prims.Ch('0');
            IncludeDirective.Parser         = ("include" | Prims.Ch('@')) + Dirs.Lexeme(IncludePath + NewLine);
            IncludePath.Parser              = Ops.Klenee(NotNewLineCharacter);
            IncludePath.Act                += OnIncludePath;

            skipWhiteSpaceParser = Ops.Klenee(WhiteSpace);

            // Parse the document
            documentRoot = new VdlArray();
            fieldName    = null;

            elementStack.Clear();
            elementStack.Push(documentRoot);

            StringScanner scanner = new StringScanner(text, skipWhiteSpaceParser);
            ParserMatch   match   = vdlDocument.Parse(scanner);
            if (!match.Success) throw new FormatException("Error parsing VDL file.");
            
            return documentRoot;
        }


        private void OnFieldName(Object sender, ActionEventArgs args)
        {
            fieldName = args.Value;
        }


        private void OnStartObject(Object sender, ActionEventArgs args)
        {
            VdlObject element = new VdlObject(args.Value);

            element.Name = fieldName;
            fieldName    = null;

            elementStack.Push(element);
        }


        private void OnEndObject(Object sender, ActionEventArgs args)
        {
            VdlElement element = elementStack.Pop();
            VdlElement parent  = elementStack.Peek();

            parent.AddElement(element);
        }


        private void OnFloatLiteral(Object sender, ActionEventArgs args)
        {
            AddLiteral(args.Value, VdlSimpleType.ValueType.Float);
        }


        private void OnIntegerLiteral(Object sender, ActionEventArgs args)
        {
            AddLiteral(args.Value, VdlSimpleType.ValueType.Int);
        }

        
        private void OnBoolLiteral(Object sender, ActionEventArgs args)
        {
            AddLiteral(args.Value, VdlSimpleType.ValueType.Bool);
        }

        
        private void OnStringLiteral(Object sender, ActionEventArgs args)
        {
            string str = args.Value;

            if (str.IndexOf("\\\r\n") != -1) str = str.Replace("\\\r\n", "\n");
            if (str.IndexOf("\\\n")   != -1) str = str.Replace("\\\n",   "\n");

            AddLiteral(str, VdlSimpleType.ValueType.String);
        }

        
        private void OnStartVec3Literal(Object sender, ActionEventArgs args)
        {
            VdlVector3 vector = new VdlVector3();

            vector.Name = fieldName;
            fieldName   = null;

            elementStack.Push(vector);
        }


        private void OnVecComponentLiteral(Object sender, ActionEventArgs args)
        {
            VdlSimpleType value = new VdlSimpleType(args.Value, VdlSimpleType.ValueType.Vec3Component);

            value.Name = fieldName;
            fieldName  = null;

            VdlElement vector = elementStack.Peek();
            vector.AddElement(value);
        }

        
        private void OnVec3Literal(Object sender, ActionEventArgs args)
        {
            VdlElement vector = elementStack.Pop();
            VdlElement parent = elementStack.Peek();

            parent.AddElement(vector);
        }


        private void OnStartArrayLiteral(Object sender, ActionEventArgs args)
        {
            VdlArray array = new VdlArray();

            array.Name = fieldName;
            fieldName  = null;

            elementStack.Push(array);
        }
        

        private void OnArrayLiteral(Object sender, ActionEventArgs args)
        {
            VdlElement array  = elementStack.Pop();
            VdlElement parent = elementStack.Peek();

            parent.AddElement(array);
        }

        
        private void AddLiteral(string value, VdlSimpleType.ValueType type)
        {
            VdlSimpleType element = new VdlSimpleType(value, type);

            element.Name = fieldName;
            fieldName    = null;

            VdlElement parent = elementStack.Peek();
            parent.AddElement(element);
        }


        private void OnIncludePath(Object sender, ActionEventArgs args)
        {
            string path = args.Value;

            if (!fileSystem.FileExists(path)) throw new System.IO.FileNotFoundException("Included VDL file '" + path + "' not found.");

            Everquest2.IO.FileInfo   file   = fileSystem.GetFileInfo(path);
            Everquest2.IO.FileStream stream = file.OpenRead();
            System.IO.StreamReader   reader = new System.IO.StreamReader(stream);

            string        text    = reader.ReadToEnd();
            StringScanner scanner = new StringScanner(text, skipWhiteSpaceParser);
            ParserMatch   match   = vdlDocument.Parse(scanner);
            if (!match.Success) throw new FormatException("Error parsing VDL file '" + path + "'.");
        }


        #region Fields
        private string               text;
        private VdlElement           documentRoot;

        private Stack<VdlElement>    elementStack = new Stack<VdlElement>();
        private string               fieldName;

        private Rule                 vdlDocument;
        private Spart.Parsers.Parser skipWhiteSpaceParser;

        private Everquest2.IO.FileSystem fileSystem;
        #endregion
    }
}

/* EOF */