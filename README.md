# Projeto de Testes Automatizados com Robot Framework

## Descrição

Este projeto contém testes automatizados para validar funcionalidades de uma aplicação web que inclui interação com botões, popups, alerts e elementos dinâmicos na página.  
Os testes são desenvolvidos usando [Robot Framework](https://robotframework.org/) com a biblioteca [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/).

---

## Pré-requisitos

- Python 3.x instalado  
- Robot Framework instalado (`pip install robotframework`)  
- SeleniumLibrary instalada (`pip install robotframework-seleniumlibrary`)  
- WebDriver para o navegador escolhido (ex: [chromedriver](https://chromedriver.chromium.org/)) disponível no PATH  

---
## Instalação das dependências

Para facilitar a instalação das bibliotecas Python necessárias, use o arquivo `requirements.txt`:

pip install -r requirements.txt

## Como rodar os testes

1. Navegue até a pasta do projeto no terminal.  
2. Execute um teste específico:  

robot --test "Nome do Caso de Teste" tests/popup_test.robot

3. Para rodar todos os tests:

robot --outputdir logs  tests/form.robot




