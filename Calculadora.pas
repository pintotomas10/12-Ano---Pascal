//Este programa pretende ser uma calculadora "simples" e cient�fica
//Miguel e Tom�s P.
Program Calculadora ;
var op,op8,op7,op7_1,op7_2,op7_3,op7_4,op7_5,op7_6, i, n3,opV1,opV2: integer;
		soma,n1,n2,sub,divis,mult,pot,lado,comprimento,alt, percent, area, altV, graus, grausR,seno,cosseno: real;
Begin
	textbackground(lightgray);
	clrscr;
	textcolor(black);
	writeln('Este programa ser uma calculadora "simples" e cient�fica ');
	writeln();
	writeln('Pressione qualquer tecla para cont�nuar...');
	readkey;
	clrscr;
	textbackground(black);	
	clrscr;
	textcolor(blue);
	
	//Declarar Variaveis  ------ // ------ // ------ // ------ // ------
	soma := 0;
	sub := 0;
	divis := 0;
	mult := 0;
	pot:= 1;
	comprimento:= 0;
	lado:= 0;
	alt:= 0;
	area:= 0;
	altV:= 0;
	graus := 0 ;
	grausR :=0;
	seno := 0;
	cosseno := 0;
	
	//Programa ------ // ------ // ------ // ------ // ------ // ------
	repeat
		repeat
			textcolor(white);
			clrscr;
			Writeln();
			gotoxy(50,2);
			writeln('+-----------------------------------------+');
			gotoxy(50,3);
			writeln('�              CALCULADORA                �');
			gotoxy(50,4);                                      
			writeln('�-----------------------------------------�');
			gotoxy(50,5);	
			writeln('� 1- Soma                                 �');
			gotoxy(50,6);
			writeln('� 2- Subtra��o                            �');
			gotoxy(50,7);
			writeln('� 3- Divis�o                              �');
			gotoxy(50,8);
			writeln('� 4- Multiplica��o                        �');
			gotoxy(50,9);                                   
			writeln('� 5- Pot�ncia                             �');
			gotoxy(50,10); 
			writeln('� 6- Percentagem                          �');
			gotoxy(50,11); 
			writeln('� 7- Calculadora Cient�fica               �');
			gotoxy(50,12);
			writeln('� 8- Ajuda                                �');
			gotoxy(50,13);
			writeln('� 9- Sair                                 �');
			gotoxy(50,14);
			writeln('+-----------------------------------------+');
			gotoxy(50,15);
			textcolor(blue);
			gotoxy(50,17);
			Write('Digite o n�mero do menu que pretende aceder: ');
			Readln(op);
		until ((op >= 1) and (op<=9));
		Case op of
			
			//SOMA
			1:Begin
						Write('Qual o primeiro n�mero: ');
						Readln(n1);
						Write('Qual o segundo n�mero: ');
						Readln(n2);
						Writeln();
						soma:= n1 + n2;
						textcolor(white);	
						Writeln('O resultado �: ', (soma):0:2);
						readkey;
				End;
			
			
			//SUBTRA��O
			2:Begin
					Write('Qual o primeiro n�mero: ');
					Readln(n1);
					Write('Qual o segundo n�mero: ');
					Readln(n2);
					Writeln();
					sub:= n1 - n2;
					textcolor(white);	
					Writeln('O resultado �: ', (sub):0:2);
					readkey;
	    	End;
	  
	  
	  //DIVIS�O
		  3:Begin
		  		Write('Qual o primeiro n�mero: ');
					Readln(n1);
					Write('Qual o segundo n�mero: ');
					Readln(n2);
					while (n2 = 0) do
						Begin
							Writeln('Inseriu um n�mero inv�lido');
							Write('Qual o segundo n�mero: ');
							Readln(n2);
						End;
					Writeln();
					divis:= n1 / n2;
					textcolor(white);	
					Writeln('O resultado �: ', divis:0:2);
					readkey;
		    End;
		  
			
			
			//MULTIPLICA��O  
		  4:Begin
		  		Write('Qual o primeiro n�mero: ');
					Readln(n1);
					Write('Qual o segundo n�mero: ');
					Readln(n2);
					Writeln();
					mult:= n1 * n2;
					textcolor(white);	
					Writeln('O resultado �: ', (mult):0:2);
					readkey;
		    End;
		    
		  
			
			//POT�NCIA  
		  5:Begin
		  		Write('Qual o n�mero da base: ');
					Readln(n1);
					Write('Qual o n�mero do expoente (apenas aceita n� inteiros): ');
					Readln(n3);
					while (n3 < 0) do
						Begin
							Writeln('Inseriu um n�mero inv�lido (n�o aceita n� negativos)');
							Write('Qual o n�mero do expoente: ');
							Readln(n3);
						End;
					if n3 = 0 then
						Writeln('O resultado �: 1 ')
					else
						Begin
							for i:= 1 to n3 do
								Begin
									pot := pot * n1;
								End;
						End;
					Writeln();
					textcolor(white);	
					Writeln('O resultado �: ', pot:0:2);
					readkey;
		  	End;
		  
		  
		  //PERCENTAGEM
		  6:Begin
		  		Write('Digite o valor: ');
		  		Readln(n1);
		  		Write('Digite a percentagem desse valor: ');
		  		readln(n2);
		  		percent:= n2/100;
		  		Writeln();
		  		textcolor(white);	
					Writeln('O resultado �: ', (percent*n1):0:2);
					readkey;
				End;
			
			
				
//CALCULADORA CIENTIFICA  --------- // ---------- // ---------- // ----------- // ----------- // ---------- // ----------
			7:Begin
					repeat
						repeat
							textcolor(white);
							clrscr;
							gotoxy(50,2);
							writeln('+-----------------------------------------+');
							gotoxy(50,3);
							writeln('�         CALCULADORA CIENT�FICA          �');
							gotoxy(50,4);                                      
							writeln('�-----------------------------------------�');
							gotoxy(50,5);	
							writeln('� 1- Aritm�ticas                          �');
							gotoxy(50,6);
							writeln('� 2- �reas                                �');
							gotoxy(50,7);
							writeln('� 3- Per�metros                           �');
							gotoxy(50,8);
							writeln('� 4- Volumes                              �');
							gotoxy(50,9);
							writeln('� 5- Fun��es trigonom�tricas              �');
							gotoxy(50,10);                                   
							writeln('� 6- Ajuda                                �');
							gotoxy(50,11); 
							writeln('� 7- Voltar ao menu                       �');
							gotoxy(50,12); 
							writeln('+-----------------------------------------+');
							gotoxy(50,13);
							textcolor(blue);
							gotoxy(50,15);
							Write('Digite o n�mero do menu que pretende aceder: ');
							Readln(op7);
						until ((op7 >= 1) and (op7<=7));
						Case op7 of
						
			//ARITMETICAS
							1:Begin
									repeat
										repeat
											textcolor(white);
											clrscr;
											gotoxy(50,2);
											writeln('+-----------------------------------------+');
											gotoxy(50,3);
											writeln('�                ARITM�TICA               �');
											gotoxy(50,4);                                      
											writeln('�-----------------------------------------�');
											gotoxy(50,5);	
											writeln('� 1- Soma                                 �');
											gotoxy(50,6);
											writeln('� 2- Subtra��o                            �');
											gotoxy(50,7);
											writeln('� 3- Divis�o                              �');
											gotoxy(50,8);
											writeln('� 4- Multiplica��o                        �');
											gotoxy(50,9);                                   
											writeln('� 5- Voltar ao menu                       �'); 
											gotoxy(50,10);
											writeln('+-----------------------------------------+');
											gotoxy(50,11);
											textcolor(blue);
											gotoxy(50,13);
											Write('Digite o n�mero do menu que pretende aceder: ');
											Readln(op7_1);
										until ((op7_1 >= 1) and (op7_1<=5));
										Case op7_1 of
										
											1:Begin
													Write('Qual o primeiro n�mero: ');
													Readln(n1);
													Write('Qual o segundo n�mero: ');
													Readln(n2);
													Writeln();
													soma:= n1 + n2;
													textcolor(white);	
													Writeln('O resultado �: ', (soma):0:2);
													readkey;
												End;
			

											2:Begin
													Write('Qual o primeiro n�mero: ');
													Readln(n1);
													Write('Qual o segundo n�mero: ');
													Readln(n2);
													Writeln();
													sub:= n1 - n2;
													textcolor(white);	
													Writeln('O resultado �: ', (sub):0:2);
													readkey;
	    									End;
	  

		 									3:Begin
		  										Write('Qual o primeiro n�mero: ');
													Readln(n1);
													Write('Qual o segundo n�mero: ');
													Readln(n2);
													while (n2 = 0) do
														Begin
															Writeln('Inseriu um n�mero inv�lido');
															Write('Qual o segundo n�mero: ');
															Readln(n2);
														End;
													Writeln();
													divis:= n1 / n2;
													textcolor(white);	
													Writeln('O resultado �: ', divis:0:2);
													readkey;
		    								End;
		  			 
		  			 
											4:Begin
													Write('Qual o primeiro n�mero: ');
													Readln(n1);
													Write('Qual o segundo n�mero: ');
													Readln(n2);
													Writeln();
													mult:= n1 * n2;
													textcolor(white);	
													Writeln('O resultado �: ', (mult):0:2);
													readkey;
		   									End;
		   							End;			
		   						until op7_1 = 5;
								End;
								
										
		   						
		  //AREAS
			        2:Begin
			        		repeat
										repeat
											textcolor(white);
											clrscr;
											gotoxy(50,2);
											writeln('+-------------------------------------+');
											gotoxy(50,3);
											writeln('�                �REAS                �');
											gotoxy(50,4);                                      
											writeln('�-------------------------------------�');
											gotoxy(50,5);	
											writeln('� 1- Quadrado                         �');
											gotoxy(50,6);
											writeln('� 2- Ret�ngulo                        �');
											gotoxy(50,7);
											writeln('� 3- Tri�ngulo                        �');
											gotoxy(50,8);
											writeln('� 4- C�rculo                          �'); 
											gotoxy(50,9);                                  
											writeln('� 5- Voltar ao menu                   �'); 
											gotoxy(50,10);
											writeln('+-------------------------------------+');
											gotoxy(50,11);
											textcolor(blue);
											gotoxy(50,13);
											Write('Digite o n�mero do menu que pretende aceder: ');
											Readln(op7_2);
										until ((op7_2 >= 1) and (op7_2<=5));
										Case op7_2 of
											1:Begin
													Write('Digite o valor do lado: ');
													Readln(lado);
													while lado <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor do lado: ');
															Readln(lado);
														End;
														
													Writeln();
													Writeln('A �rea do quadrado �: ', (lado*lado):0:2);
													readkey;
												End;
												
											2:Begin
													Write('Digite o valor do lado: ');
													Readln(lado);
													while lado <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor do lado: ');
															Readln(lado);
														End;
														 			
											    Write('Digite o valor do comprimento: ');
													Readln(comprimento);
													while comprimento <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor do comprimento: ');
															Readln(comprimento);
														End;
													while lado = comprimento do
														Begin
															writeln('Inseriu valores inv�lidos (os lados n�o podem ser iguais)');
															Write('Digite o valor do lado: ');
															Readln(lado);
															while lado <= 0 do
																Begin
																	Writeln('Inseriu um valor inv�lido!');
																	Write('Digite o valor do lado: ');
																	Readln(lado);
																End;
														 			
											   		 	Write('Digite o valor do comprimento: ');
															Readln(comprimento);
															while comprimento <= 0 do
																Begin
																	Writeln('Inseriu um valor inv�lido!');
																	Write('Digite o valor do comprimento: ');
																	Readln(comprimento);
																End;
														End;	
													Writeln();
											    Writeln('A �rea do ret�ngulo �: ', (lado*comprimento):0:2);
											    readkey;
											 	End;
											 	
											3:Begin
													Write('Digite o valor da base: ');
													Readln(lado);
													while lado <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor da base: ');
															Readln(lado);
														End;
														 			
											    Write('Digite o valor da altura: ');
													Readln(alt);
													while alt <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor da altura: ');
															Readln(alt);
														End;
													
													Writeln();
													Writeln('A �rea do tri�ngulo �: ', ((lado*alt)/2):0:2);
													readkey;
												End;
												
											4:Begin
													Write('Digite o valor do raio: ');
													readln(lado);
													while lado <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor do raio: ');
															Readln(lado);
														End;
														
													writeln();
													Writeln('A �rea do c�rculo �: ', (3.1416*sqr(lado)):0:2);
													readkey;
												End;
										End;	
									until op7_2 = 5;
								End;
								
							
							
		//PERIMETROS					
							3:Begin
									repeat
										repeat
											textcolor(white);
											clrscr;
											gotoxy(50,2);
											writeln('+-------------------------------------+');
											gotoxy(50,3);
											writeln('�              PER�METROS             �');
											gotoxy(50,4);                                      
											writeln('�-------------------------------------�');
											gotoxy(50,5);	
											writeln('� 1- Quadrado                         �');
											gotoxy(50,6);
											writeln('� 2- Ret�ngulo                        �');
											gotoxy(50,7);
											writeln('� 3- Tri�ngulo                        �');
											gotoxy(50,8);
											writeln('� 4- C�rculo                          �');
											gotoxy(50,9);                                   
											writeln('� 5- Voltar ao menu                   �');
											gotoxy(50,10); 
											writeln('+-------------------------------------+');
											gotoxy(50,11);
											textcolor(blue);
											gotoxy(50,13);
											Write('Digite o n�mero do menu que pretende aceder: ');
											Readln(op7_3);
										until ((op7_3 >= 1) and (op7_3<=5));
										case op7_3 of
											
											1:Begin
													Write('Digite o valor do lado: ');
													Readln(lado);
													while lado <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor do lado: ');
															Readln(lado);
														End;
														
													writeln();
													Writeln('O valor do per�metro �: ', (lado*4):0:2);
													readkey;
												End;
												
											2:Begin
													Write('Digite o valor do lado: ');
													Readln(lado);
													while lado <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor do lado: ');
															Readln(lado);
														End;
														
													Write('Digite o valor do comprimento: ');
													Readln(comprimento);
													while comprimento <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor do comprimento: ');
															Readln(comprimento);
														End;
													while lado = comprimento do
														Begin
															writeln('Inseriu valores inv�lidos (os lados n�o podem ser iguais)');
															Write('Digite o valor do lado: ');
															Readln(lado);
															while lado <= 0 do
																Begin
																	Writeln('Inseriu um valor inv�lido!');
																	Write('Digite o valor do lado: ');
																	Readln(lado);
																End;
														 			
											   		 	Write('Digite o valor do comprimento: ');
															Readln(comprimento);
															while comprimento <= 0 do
																Begin
																	Writeln('Inseriu um valor inv�lido!');
																	Write('Digite o valor do comprimento: ');
																	Readln(comprimento);
																End;
														End;
														
													writeln();
													Writeln('O valor do per�metro �: ', ((lado*2)+(comprimento*2)):0:2);
													readkey;
												End;
											
											3:Begin
													Write('Digite o valor do lado 1: ');
													Readln(lado);
													while lado <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor do lado 1: ');
															Readln(lado);
														End;
														 			
											    Write('Digite o valor do lado 2: ');
													Readln(comprimento);
													while comprimento <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor do lado 2: ');
															Readln(comprimento);
														End;
														
													Write('Digite o valor do lado 3: ');
													Readln(alt);
													while alt <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor do lado 3: ');
															Readln(alt);
														End;
													while not(((lado+comprimento) > alt) and ((lado+alt)>comprimento) and ((comprimento+alt)> lado)) do
														Begin
															Writeln('Inseriu valores que n�o formam um tri�ngulo!');
															writeln();
															Write('Digite o valor do lado 1: ');
															Readln(lado);
															while lado <= 0 do
																Begin
																	Writeln('Inseriu um valor inv�lido!');
																	Write('Digite o valor do lado 1: ');
																	Readln(lado);
																End;
														 			
													    Write('Digite o valor do lado 2: ');
															Readln(comprimento);
															while comprimento <= 0 do
																Begin
																	Writeln('Inseriu um valor inv�lido!');
																	Write('Digite o valor do lado 2: ');
																	Readln(comprimento);
																End;
														
															Write('Digite o valor do lado 3: ');
															Readln(alt);
															while alt <= 0 do
																Begin
																	Writeln('Inseriu um valor inv�lido!');
																	Write('Digite o valor do lado 3: ');
																	Readln(alt);
																End;
														End;
													
													soma:= lado+comprimento+alt;	
													Writeln();
													Writeln('O valor do per�metro �: ',soma:0:2);
													readkey;
												End;
												
											4:Begin
													Write('Digite o valor do raio: ');
													Readln(lado);
													while lado <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor do raio: ');
															Readln(lado);
														End;
													
													Writeln();
													Writeln('O valor do per�metro �: ', (2*3.1416*lado):0:2);
													readkey;
												End;	
										End;
									until op7_3 =  5;
								End;
								
							
							
	//VOLUMES						
							4:Begin	
									repeat
										repeat
											textcolor(white);
											clrscr;
											gotoxy(50,2);
											writeln('+------------------------------------+');
											gotoxy(50,3);
											writeln('�               VOLUMES              �');  
											gotoxy(50,4);                                    
											writeln('�------------------------------------�');	
											gotoxy(50,5);
											writeln('� 1- Cubo                            �');
											gotoxy(50,6);
											writeln('� 2- Paralelep�pedo                  �');
											gotoxy(50,7);
											writeln('� 3- Pir�mide                        �');
											gotoxy(50,8);
											writeln('� 4- Prisma                          �');
											gotoxy(50,9);
											writeln('� 5- Cilindro                        �'); 
											gotoxy(50,10);                                  
											writeln('� 6- Voltar ao menu                  �'); 
											gotoxy(50,11);
											writeln('+------------------------------------+');
											gotoxy(50,12);
											textcolor(blue);
											gotoxy(50,14);
											Write('Digite o n�mero do menu que pretende aceder: ');
											Readln(op7_4);
										until ((op7_4 >= 1) and (op7_4<=6));
										case op7_4 of
										
											1:Begin
													Write('Digite o valor do lado: ');
													readln(lado);
													while lado <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor do lado: ');
															Readln(lado);
														End;
													
													Writeln();
													writeln('O valor do volume �: ', (lado*lado*lado):0:2);
													readkey;
												End;
											
											2:Begin
													Write('Digite o valor do lado: ');
													readln(lado);
													while lado <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor do lado: ');
															Readln(lado);
														End;
													
													Write('Digite o valor do comprimento: ');
													readln(comprimento);
													while comprimento <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor do comprimento: ');
															Readln(comprimento);
														End;
													
													Write('Digite o valor da altura: ');
													readln(alt);
													while alt <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor da altura: ');
															Readln(alt);
														End;
													
													Writeln();
													writeln('O valor do volume �: ', (lado*comprimento*alt):0:2);
													readkey;
												End;
											
											3:Begin
													repeat
														textcolor(white);
														clrscr;
														gotoxy(50,2);
														writeln('+-------------------------------------+');
														gotoxy(50,3);
														writeln('�            �REA DA BASE             �'); 
														gotoxy(50,4);                                     
														writeln('�-------------------------------------�');	
														gotoxy(50,5);
														writeln('� 1- Quadrado                         �');
														gotoxy(50,6);
														writeln('� 2- Ret�ngulo                        �');
														gotoxy(50,7);
														writeln('� 3- Tri�ngulo                        �');
														gotoxy(50,8);
														writeln('� 4- Pol�gono regular                 �');  
														gotoxy(50,9);                                  
														writeln('+-------------------------------------+');
														gotoxy(50,10);
														textcolor(blue);
														gotoxy(50,12);
														Write('Digite o n�mero correspondente � �rea da base que pretende calcular: ');
														Readln(opV1);
													until ((opV1 >= 1) and (opV1<=4));
													Case opV1 of
														1:Begin
													    	Write('Digite o valor do lado: ');
																Readln(lado);
																while lado <= 0 do
																	Begin
																		Writeln('Inseriu um valor inv�lido!');
																		Write('Digite o valor do lado: ');
																		Readln(lado);
																	End;
																area:= lado*lado;
															End;
														
														2:Begin
																Write('Digite o valor do lado: ');
																Readln(lado);
																while lado <= 0 do
																	Begin
																		Writeln('Inseriu um valor inv�lido!');
																		Write('Digite o valor do lado: ');
																		Readln(lado);
																	End;
																Write('Digite o valor do comprimento: ');
																Readln(comprimento);
																while comprimento <= 0 do
																	Begin
																		Writeln('Inseriu um valor inv�lido!');
																		Write('Digite o valor do comprimento: ');
																		Readln(comprimento);
																	End;
																area:= lado*comprimento;
															End;
														
														3:Begin
																Write('Digite o valor da base: ');
																Readln(lado);
																while lado <= 0 do
																	Begin
																		Writeln('Inseriu um valor inv�lido!');
																		Write('Digite o valor da base: ');
																		Readln(lado);
																	End;
														 			
														    Write('Digite o valor da altura: ');
																Readln(alt);
																while alt <= 0 do
																	Begin
																		Writeln('Inseriu um valor inv�lido!');
																		Write('Digite o valor da altura: ');
																		Readln(alt);
																	End;
																area:= (lado*alt)/2;
															End;
															
														4:Begin
																write('Digite o valor do per�metro: ');
																Readln(lado);
																while lado <= 0 do
																	Begin
																		Writeln('Inseriu um valor inv�lido!');
																		Write('Digite o valor do per�metro: ');
																		Readln(lado);
																	End;
																	
																Write('Digite o valor da ap�tema: ');
																Readln(alt);
																while alt <= 0 do
																	Begin
																		Writeln('Inseriu um valor inv�lido!');
																		Write('Digite o valor da ap�tema: ');
																		Readln(alt);
																	End;
																area:= (lado*alt)/2;
															End;
													End;
												
																					
								//----- -----  -----  -----   ------
													Writeln();
													Write('Digite o valor da altura da pir�mide: ');
													Readln(altV);
													while altV <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor da altura da pir�mide: ');
															Readln(altV);
														End;
													
													Writeln();
													Writeln('O valor do volume �: ', ((altV*area)/3):0:2);
													readkey;	
												End;
											
											4:Begin
													repeat
														textcolor(white);
														clrscr;
														gotoxy(50,2);
														writeln('+-------------------------------------+');
														gotoxy(50,3);
														writeln('�            �REA DA BASE             �'); 
														gotoxy(50,4);                                     
														writeln('�-------------------------------------�');	
														gotoxy(50,5);
														writeln('� 1- Quadrado                         �');
														gotoxy(50,6);
														writeln('� 2- Ret�ngulo                        �');
														gotoxy(50,7);
														writeln('� 3- Tri�ngulo                        �');
														gotoxy(50,8);
														writeln('� 4- Pol�gono regular                 �');
														gotoxy(50,9);                                    
														writeln('+-------------------------------------+');
														gotoxy(50,10);
														textcolor(blue);
														gotoxy(50,12);
														Write('Digite o n�mero correspondente � �rea da base que pretende calcular: ');
														Readln(opV2);
													until ((opV2 >= 1) and (opV2<=4));
													Case opV2 of
														1:Begin
													    	Write('Digite o valor do lado: ');
																Readln(lado);
																while lado <= 0 do
																	Begin
																		Writeln('Inseriu um valor inv�lido!');
																		Write('Digite o valor do lado: ');
																		Readln(lado);
																	End;
																area:= lado*lado;
															End;
														
														2:Begin
																Write('Digite o valor do lado: ');
																Readln(lado);
																while lado <= 0 do
																	Begin
																		Writeln('Inseriu um valor inv�lido!');
																		Write('Digite o valor do lado: ');
																		Readln(lado);
																	End;
																Write('Digite o valor do comprimento: ');
																Readln(comprimento);
																while comprimento <= 0 do
																	Begin
																		Writeln('Inseriu um valor inv�lido!');
																		Write('Digite o valor do comprimento: ');
																		Readln(comprimento);
																	End;
																area:= lado*comprimento;
															End;
														
														3:Begin
																Write('Digite o valor da base: ');
																Readln(lado);
																while lado <= 0 do
																	Begin
																		Writeln('Inseriu um valor inv�lido!');
																		Write('Digite o valor da base: ');
																		Readln(lado);
																	End;
														 			
														    Write('Digite o valor da altura: ');
																Readln(alt);
																while alt <= 0 do
																	Begin
																		Writeln('Inseriu um valor inv�lido!');
																		Write('Digite o valor da altura: ');
																		Readln(alt);
																	End;
																area:= (lado*alt)/2;
															End;
															
														4:Begin
																write('Digite o valor do per�metro: ');
																Readln(lado);
																while lado <= 0 do
																	Begin
																		Writeln('Inseriu um valor inv�lido!');
																		Write('Digite o valor do per�metro: ');
																		Readln(lado);
																	End;
																	
																Write('Digite o valor da ap�tema: ');
																Readln(alt);
																while alt <= 0 do
																	Begin
																		Writeln('Inseriu um valor inv�lido!');
																		Write('Digite o valor da ap�tema: ');
																		Readln(alt);
																	End;
																area:= (lado*alt)/2;
															End;
													End;	

													// -------
													Writeln();
													Write('Digite o valor da altura do prisma: ');
													Readln(altV);
													while altV <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor da altura do prisma: ');
															Readln(altV);
														End;
													
													Writeln();
													Writeln('O valor do volume �: ', (altV*area):0:2);
													readkey;
												End;
											
											5:Begin
													Write('Digite o valor do raio da base: ');
													Readln(lado);
													while lado <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor do raio da base: ');
															Readln(lado);
														End;
													
													write('Digite o valor da altura do cilindro: ');
													Readln(alt);
													while alt <= 0 do
														Begin
															Writeln('Inseriu um valor inv�lido!');
															Write('Digite o valor da altura do cilindro: ');
															Readln(alt);
														End;
													
													Writeln();
													Writeln('O valor do volume �: ', ((3.1416*sqr(lado))*alt):0:2);
													readkey;
												End; 
										End;
									until op7_4 = 6;
								End;
								
								
	//FUN��ES TRIGONOM�TRICAS
							
							5:Begin
									Repeat
										Repeat
											textcolor(white);
											clrscr;
											gotoxy(50,2);
											writeln('+---------------------------------+');
											gotoxy(50,3);
											writeln('�     Fun��es Trigonom�tricas     �'); 
											gotoxy(50,4);                                     
											writeln('�---------------------------------�');	
											gotoxy(50,5);
											writeln('� 1- Seno                         �');
											gotoxy(50,6);
											writeln('� 2- Cosseno                      �');
											gotoxy(50,7);
											writeln('� 3- Tangente                     �');
											gotoxy(50,8);
											writeln('� 4- Voltar ao menu               �');
											gotoxy(50,9);
											writeln('+---------------------------------+');
											textcolor(blue);
											gotoxy(50,11);
											Write('Digite o n�mero do menu que pretende aceder: ');
											Readln(op7_5);
										until ((op7_5 >= 1) and (op7_5<=4));
										Case op7_5 of
						
										1:Begin
												Write('Digite o valor do �ngulo em graus: ');
												readln(graus);
												grausR:= graus*(3.1415/180) ;
												writeln('O seno do �ngulo �: ',sin(grausR):0:2);
												Readkey;
											End;
							
							
										2:Begin
												Write('Digite o valor do �ngulo em graus: ');
												readln(graus);
												grausR:= graus*(3.1415/180) ;
												writeln('O cosseno do �ngulo �: ',cos(grausR):0:2);
												Readkey;
											End;
										
										3:Begin
												Write('Digite o valor do �ngulo em graus: ');
												readln(graus);
												grausR:= graus*(3.1415/180) ;
												seno := sin(grausR);
												cosseno := cos(grausR);
												writeln('A tangente do �ngulo �: ',(seno/cosseno):0:2);
												Readkey;
											End;	
										End;
									until op7_5 = 4;
								End;	
								
							
	//AJUDA						
							6:Begin
									Repeat
										Repeat
											textcolor(white);
											clrscr;
											gotoxy(50,2);
											writeln('+---------------------------------+');
											gotoxy(50,3);
											writeln('�              AJUDA              �'); 
											gotoxy(50,4);                                     
											writeln('�---------------------------------�');	
											gotoxy(50,5);
											writeln('� 1- Vers�o                       �');
											gotoxy(50,6);
											writeln('� 2- Voltar ao menu               �');
											gotoxy(50,7);
											writeln('� 3- Sair                         �');
											gotoxy(50,8);
											writeln('+---------------------------------+');
											gotoxy(50,9);
											textcolor(blue);
											gotoxy(50,11);
											Write('Digite o n�mero do menu que pretende aceder: ');
											Readln(op7_6);
										until ((op7_6 >= 1) and (op7_6<=3));
										Case op7_6 of
						
										1:Begin
												Writeln('Programa realizado por Miguel Ventura e Tom�s Pinto');
												writeln('Vers�o 1.3.2');
												Readkey;
											End;
							
							
										3:Begin
												Writeln('Obrigado por usar a nossa calculadora!');
												writeln();
												Write('A desligar');
												for i:= 1 to 5 do
													Begin
														delay(400);
														Write('. ');
													End;
												exit;
											End;
										End;
									until op7_6 = 2;
								End;
						End;		
					until op7 = 7;
				End;
				
			
// FIM CALCULADORA CIENTIFICA ---------- // ---------- // ---------- // ---------- // ---------- // ----------			
				
			
		 //AJUDA
			8:Begin
					Repeat
						Repeat
							textcolor(white);
							clrscr;
							gotoxy(50,2);
							writeln('+---------------------------------+');
							gotoxy(50,3);
							writeln('�              AJUDA              �'); 
							gotoxy(50,4);                                     
							writeln('�---------------------------------�');	
							gotoxy(50,5);
							writeln('� 1- Vers�o                       �');
							gotoxy(50,6);
							writeln('� 2- Voltar ao menu               �');
							gotoxy(50,7);
							writeln('� 3- Sair                         �');
							gotoxy(50,8);
							writeln('+---------------------------------+');
							gotoxy(50,9);
							textcolor(blue);
							gotoxy(50,11);
							Write('Digite o n�mero do menu que pretende aceder: ');
							Readln(op8);
						until ((op8 >= 1) and (op8<=3));
						Case op8 of
						
						1:Begin
								Writeln('Programa realizado por Miguel Ventura e Tom�s Pinto');
								writeln('Vers�o 1.3.2');
								Readkey;
							End;
							
							
						3:Begin
								Writeln('Obrigado por usar a nossa calculadora!');
								writeln();
								Write('A desligar');
								for i:= 1 to 5 do
									Begin
										delay(400);
										Write('. ');
										
									End;
								exit;
							End;
						End;
					until op8 = 2;
				End;
		End;					
	until op = 9;
	
	Writeln();
	writeln();
	Writeln('Obrigado por usar a nossa calculadora!');
	writeln();
	Write('A desligar');
	for i:= 1 to 5 do
		Begin
			delay(400);
			Write('. ');
		End;
	 
End.