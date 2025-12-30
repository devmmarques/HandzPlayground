# 🎨 Handz Design System Playground

O **Handz Design System Playground** é um projeto de apoio utilizado para **desenvolvimento, visualização, validação e documentação viva** dos componentes e tokens do **Handz Design System**.

Este projeto **não deve ser utilizado em produção**. Seu objetivo é servir como ambiente de testes, exemplos e referência para times de design e desenvolvimento.

---

## 📌 Objetivos do Playground

- Visualizar componentes isoladamente
- Validar tokens de design (cores, espaçamentos, tipografia, radius)
- Testar estados (loading, disabled, erro, sucesso)
- Facilitar QA visual
- Servir como documentação viva do Design System
- Apoiar evolução segura do Design System

---

## 📥 Como rodar o projeto

Pré-requisitos

* Xcode 15+

* iOS 15+

* Swift 5.9+

Passos

1 - Clone o repositório:

```bash
git clone https://github.com/devmmarques/HandzPlayground.git
```

2 - Abra o projeto no Xcode:
```bash
open HandzPlayground.xcodeproj

```

3 - Aguarde o Swift Package Manager resolver as dependências

4 - Execute o projeto (Cmd + R)

--- 

## 🧩 Estrutura do Projeto

```
HandzPlayground
├── Screens
│ ├── Components
│ ├── Core
│ ├── Extensions
│ ├── Foundation
│ └── Home
│ ├── Models
│ ├── Tokens
│ └── ...
└── HandzPlaygroundApp
```
---

## Tokens de Design

O Playground possui telas dedicadas para visualização dos tokens:

🎨 Cores (DSColors)

- Primary

- Secondary

- Background

- Surface

- Feedback (Success, Warning, Error)

- Estados (Disabled, Pressed)

📐 Espaçamentos (DSSpacing)

- XS, SM, MD, LG, XL

- Validação visual de consistência

- Uso em layouts reais

🔲 Radius (DSRadius)

- Small

- Medium

- Large

- Pill

- Validação em cards, botões e inputs

🔤 Tipografia (DSTypography)

- Títulos

- Subtítulos

- Corpo de texto

- Legendas

- Pesos e hierarquia visual

## 🔄 Fluxo de atualização do Design System

1 - Nova feature no HandzDesignSystem

2 - Nova tag criada (ex: 1.1.0)

3 - Playground atualiza a dependência

4 - Componentes/tokens são validados visualmente

5 - Ajustes finais antes do uso em produção

---
