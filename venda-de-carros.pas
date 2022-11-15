Program Pzim ;

type

	veiculo = record
  marca : string;
  modelo : string;
  compraVeiculo : real;
  vendaVeiculo : real;
  opcionais: string;
	valorOpcional: real;
	
end;

var

totalveiculos : array[1..4] of veiculo;
opcionaisVeiculos : array[1..4] of string;
opicionaisValoresVeiculo : array[1..4] of real;
opicionaisVendaVeiculo : array[1..4] of real;
lucroLoja : array[1..4] of real;

veiculos : veiculo;

x: integer;

totalCompra,totalVenda, totalLucro, totalOpcionais : real;

Begin
  
  for x:= 1 to 4 do
  Begin
    clrscr;
    writeln('Qual é a marca do veículo' , x , ' ?' );
    readln(veiculos.marca);
    writeln('Qual é o modelo do veículo' , x, ' ?' );
    readln(veiculos.modelo);
    clrscr;
    writeln('Qual é o valor de compra do Veículo ' , x , ' ?');
    readln(veiculos.compraVeiculo);
    writeln('Qual é o valor de venda do Veículo ' , x , ' ?');
    readln(veiculos.compraVeiculo);
    clrscr;
    writeln('O Veículo ', x ,' tem acessórios opcionais ?');
    readln(veiculos.opcionais);
    clrscr;
    writeln('Qual o valor total desses itens opcionais do veículo ' , x , ' ?');
    readln(veiculos.valorOpcional);
    clrscr;
    totalveiculos[x] :=  veiculos;
    opcionaisVeiculos[x] :=  veiculos.opcionais;
    opicionaisValoresVeiculo[x] :=  veiculos.valorOpcional;
    
  End;
  
  for x:= 1 to 4 do
  Begin
    totalCompra := totalveiculos[x].compraVeiculo + totalCompra;
  End;
  
  
  
  for x:= 1 to 4 do
  Begin
    opicionaisVendaVeiculo[x] :=  totalveiculos[x].vendaVeiculo +  totalveiculos[x].valorOpcional
  End;
  
  
  for x:= 1 to 4 do
  Begin
    lucroLoja[x] :=  opicionaisVendaVeiculo[x] - totalveiculos[x].compraVeiculo;
  End;
  
  for x:= 1 to 4 do
  Begin
  	writeln('O valor de venda + valor opcional do veículo ', x , ' é ', opicionaisVendaVeiculo[x]);
  End;
  
  for x:= 1 to 4 do
  Begin
  	writeln('O valor de lucro do veículo ', x , ' é ', lucroLoja[x]);
  End;
  
  writeln('A soma do valor total de compra dos veículos é de', totalCompra:4);

End.