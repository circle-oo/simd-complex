/* See LICENSE for license details. */

OUTPUT_ARCH( "riscv" )

ENTRY( _start )

SECTIONS
{

  /*--------------------------------------------------------------------*/
  /* Code and read-only segment                                         */
  /*——————————————————————————————————*/

  /* Begining of code and text segment */
  . = MEM_START;
  .text :
  {
    *(.text)
  }

  _end = .;
}