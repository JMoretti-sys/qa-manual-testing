# Tarefa 1 – Buscar IPs específicos
grep -R '^233.201' ~/logs/2019/12

# Criar diretórios
mkdir bug1
mkdir bug1/events

# Extrair erros 400 e 500
grep ' [45]00 ' ~/logs/2019/12/apache_2019-12-30.txt > ~/bug1/main.txt
grep ' 400 ' ~/bug1/main.txt > ~/bug1/events/400.txt
grep ' 500 ' ~/bug1/main.txt > ~/bug1/events/500.txt

# Contagem e amostras
wc ~/bug1/events/400.txt
head -3 ~/bug1/events/400.txt
tail -3 ~/bug1/events/400.txt

wc ~/bug1/events/500.txt
head -3 ~/bug1/events/500.txt
tail -3 ~/bug1/events/500.txt
