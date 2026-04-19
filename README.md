# ProjetoRobot

Este projeto automatiza testes de duas calculadoras online do blog Agibank utilizando Robot Framework e SeleniumLibrary.

## Objetivo
Automatizar cenários de teste para as calculadoras:
- **Calculadora de Dias Úteis**
- **Calculadora de Juros Compostos**

## Estrutura do Projeto

```
ProjetoRobot/
├── resources/
│   ├── resource.robot                # Configuração geral e palavras-chave de navegação
│   ├── pages/                        # Elementos de página (locators)
│   │   ├── PageCalculadoraDiasUteis.robot
│   │   └── PageCalculadoraJurosCompostos.robot
│   └── steps/                        # Palavras-chave de passos (steps)
│       ├── CalculadoraDiasUteis.robot
│       ├── CalculadoraJurosCompostos.robot
│       └── generic.robot
├── settings/
│   └── settings.robot                # Importação de recursos e configuração de ambiente
├── tests/
│   └── Teste-agi.robot               # Casos de teste automatizados
├── logs/                             # Resultados de execução
├── README.md                         # Este arquivo
```

## Principais Funcionalidades

- **Calculadora de Dias Úteis:**
	- Preenche datas de início e fim
	- Permite incluir/excluir finais de semana
	- Valida o resultado apresentado

- **Calculadora de Juros Compostos:**
	- Preenche valor do empréstimo, taxa de juros, período e prazo
	- Permite alternar entre taxa mensal/anual e prazo em meses/anos
	- Valida o resultado apresentado

## Como Executar


1. Instale as dependências necessárias (Python e navegador Chrome).
2. Instale as bibliotecas do projeto com:

```
pip install -r requirements.txt
```

3. Execute os testes com o comando:


```
robot -d ./logs tests
```

Ou para rodar cenários específicos (exemplo, apenas calculadora de dias úteis):

```
robot -d ./logs -i calculadora_dias_uteis tests
```

Os relatórios serão gerados na pasta `logs/`.

## Observações
- O projeto utiliza o Chrome como navegador padrão.
- Os elementos das páginas são mapeados em arquivos separados para facilitar manutenção.
- Os passos (steps) são reutilizáveis entre diferentes cenários.

## Estrutura dos Testes
Veja exemplos em `tests/Teste-agi.robot`:

- **Caso de Teste 1:** Calcula dias úteis entre duas datas.
- **Caso de Teste 2:** Calcula dívida de juros compostos com diferentes parâmetros.

---

Projeto desenvolvido para fins de estudo e automação de testes.