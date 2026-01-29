# Sprint 04 – Testes de API (Manual)

## Objetivo
Realizar testes manuais de API para validar novas funcionalidades de backend da aplicação Urban.Grocers.

## Projeto
**Urban.Grocers – Backend APIs**

## Funcionalidades Testadas

### Gerenciamento de Kits
- Adição de produtos a kits  
- Endpoint: `POST /api/v1/kits/{id}/products`  
- Validação do limite máximo de itens na lista de produtos (máx. 30 itens)  

### Serviço de Entrega "Order and Go"
- Endpoint: `POST /order-and-go/v1/delivery`  
- Validação da disponibilidade de entrega  
- Verificação do cálculo do preço de entrega  

## Design de Testes
- Checklist de testes de API baseado nos requisitos de backend  
- Cenários de teste positivos e negativos  
- Validação de códigos de status de resposta  
- Validação do tratamento de erros  
- Testes de valores limite (tamanho da lista de produtos)  

## Execução dos Testes
- Requisições de API executadas utilizando o Postman  
- Testes de autorização não foram incluídos, conforme os requisitos do projeto  

## Registro de Bugs
- Bugs identificados foram registrados no Jira  
- Cada cenário com falha foi documentado com resultado esperado versus resultado atual  

## Entregáveis
- Checklist de testes de API documentado em Excel  
- Referências de relatórios de bugs no Jira  

## Ferramentas Utilizadas
- Postman  
- Jira  
- Documentação de API (ApiDoc)  
