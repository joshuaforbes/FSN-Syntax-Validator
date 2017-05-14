/* CPSC/ECE - 3520 Fuzzy Set Notation Syntax Validator.
 * Copyright (C) 2017 Joshua Forbes
 * 
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
 */

#include "checker1.tab.c"
#include "lex.yy.c"

int main (){

	//Call yyparse to begin the parse chain.
	if (yyparse() == 0){
		
		//If yyparse exits successfully the string is correct.
		printf("The input string is SYNTACTICALLY CORRECT (says the checker).\n");
		return 0;

	//Otherwise it is not.
	} else {

		printf("Syntactically incorrect (INVALID) input string.\n");
		return 1;

	}

	//Never Reached

}