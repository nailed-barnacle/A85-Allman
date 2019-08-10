A85-Allman readme - Neil Barnes 

Please read A85.DOC for operating instructions and a85_readme.txt for
the history of this program.

The original version of the A85 assembler, from which this work is
derived, can be found on Herb Johnson's page at

http://www.retrotechnology.com/restore/a85.html

This version has two main differences from the original. The first is
merely a matter of style; the three source files have been updated and
tidied somewhat.
- All multiple statement lines have been expanded to one statement per 
  line
- All conditional statements have been enclosed by {...}
- The layout has been reformatted to Allman style for consistency
- Braces get a line to themselves, per the MISRA recommendations
- In some but not all cases, multiple assignments have been separated
- Where noticed, equality tests of a variable against a constant have
  been reordered as if (constant == variable) per MISRA

This has significantly lengthened the source code but has made no change
to the logic and operation of the assembler - hopefully, though, it's a
little easier to read. YMMV.

The second change relates to the functionality. If the command line is
used per A85.DOC, it behaves as an 8085 assembler. However, if the
parameter -c is added to the command line, it will assemble code for my
Cisc-8 parameter, which executes a subset of the 8085 instruction set.

Any 8085 instructions unimplemented in the Cisc-8 result in an O error.

Note: because I have made so many changes, it has not been practical
mark them all.

DNB August 2019
