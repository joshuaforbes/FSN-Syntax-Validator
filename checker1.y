/* This file is part of  CPSC/ECE - 3520 Fuzzy Set Notation Syntax Validator.
 * Copyright (C) 2017 Joshua Forbes
 *
 * Foobar is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * Foobar is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with Foobar.  If not, see <http://www.gnu.org/licenses/>.
 */

%{
#include <stdio.h>
#include <ctype.h>

int yylex (void);
int yyerror (char *s);
%}

%token LPARENS
%token RPARENS
%token LBRACE
%token RBRACE
%token COMMA
%token SEMICOLON
%token FLOAT
%token INT
%token LETTER


%% //GRAMMAR RULES

transunit: LPARENS bounds COMMA list RPARENS
;
bounds: LPARENS INT COMMA INT RPARENS
;
list: LBRACE tupple RBRACE
;
tupple: LPARENS INT COMMA FLOAT RPARENS SEMICOLON tupple | LPARENS INT COMMA FLOAT RPARENS
;
%%

//overload yyerror function to get the error handling functionality requested.
//bison does not allow the modification or disabling of the yyerror message.
int yyerror(char * s) {

	return 1;

}

