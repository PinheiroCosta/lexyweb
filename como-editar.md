# Como editar o conteúdo do site

Este documento explica como alterar os textos, imagens e botões do site usando arquivos Markdown, de forma simples e segura.

## 📚 Índice

- [Onde editar](#onde-editar)
- [Shortcodes disponíveis](#shortcodes-disponíveis)
  - [`foto`](#️foto)
  - [`video`](#video)
  - [`botao`](#botao)
- [Dicas de Markdown](#️-dicas-de-markdown)
- [Como adicionar imagens e vídeos](#️como-adicionar-imagens-e-vídeos)
- [Dúvidas?](#-dúvidas)

## Onde editar

As páginas ficam dentro da pasta `content/`.

Exemplos:
- Página inicial: `content/_index.md`
- Página sobre: `content/sobre/_index.md`
- Página galeria: `content/galeria/`

Você pode editar os textos diretamente nesses arquivos.

## Shortcodes disponíveis

### `foto`

Exibe uma imagem da galeria.

```markdown
{{ foto(path="minha-imagem.jpg") }}
```

**Parâmetros:**
- `path`: nome do arquivo da imagem (sem caminho completo)
- O texto alternativo (alt) é gerado automaticamente com base no nome do arquivo


### `video`

Exibe um vídeo da galeria com player.

```markdown
{{ video(src="meu-video.mp4") }}
```

**Parâmetros:**
- `src`: nome do vídeo (sem caminho completo)


### `botao`

Cria um botão de ação com link.

```markdown
{{ botao(texto="Agende pelo WhatsApp", link="https://wa.me/55...") }}
```

**Parâmetros:**
- `texto`: texto do botão
- `link`: URL para onde o botão deve levar


## ✏️ Dicas de Markdown

Aqui estão alguns exemplos básicos de formatação que você pode usar:

````markdown
# Título principal

## Subtítulo

Texto normal com **negrito**, *itálico*, ou [links](https://exemplo.com)

- Lista com marcadores
- Outro item

> Citação ou destaque

---

Separador entre seções
````


## Como adicionar imagens e vídeos

As imagens e vídeos da galeria ficam em:

```
static/uploads/sections/galeria/
```

Você pode adicionar novos arquivos ali e usar `{{ foto(...) }}` ou `{{ video(...) }}` para exibir.


## ❓ Dúvidas?

Caso precise de ajuda ou queira ajustar algo visualmente, fale com **Rom Pinheiro** em [https://pinheirocosta.com](https://pinheirocosta.com)
