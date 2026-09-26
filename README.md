# Site de José Preto, Advogado

Site institucional feito apenas com ficheiros simples (HTML, CSS e um pouco de JavaScript). Não precisa de instalar nada, não tem cookies e não usa serviços de terceiros.

Índice:
1. [Ver o site no seu computador](#1-ver-o-site-no-seu-computador)
2. [Onde está cada coisa](#2-onde-está-cada-coisa)
3. [Editar textos](#3-editar-textos)
4. [Substituir a fotografia](#4-substituir-a-fotografia)
5. [Acrescentar artigos, comunicações, peças e notícias](#5-acrescentar-artigos-comunicações-peças-e-notícias)
6. [Mudar cores ou fontes](#6-mudar-cores-ou-fontes)
7. [Verificação automática de conformidade](#7-verificação-automática-de-conformidade)
8. [Publicar no GitHub Pages](#8-publicar-no-github-pages)
9. [Ligar o domínio josepreto.pt (amen.pt)](#9-ligar-o-domínio-josepretopt-amenpt)

---

## 1. Ver o site no seu computador

1. No **GitHub Desktop**, com o repositório `josepreto` aberto, clique em **Repository → Show in Finder** (Mac) ou **Show in Explorer** (Windows).
2. Na pasta que se abre, faça **duplo clique em `index.html`**.
3. O site abre no seu browser (Chrome, Safari, Firefox, Edge). Pode navegar entre as páginas normalmente.

Para ver como fica no telemóvel: estreite a janela do browser, ou abra as ferramentas de programador (tecla `F12`, ou `Cmd+Option+I` no Mac) e escolha a vista de telemóvel.

> As páginas da secção "Publicações e Intervenções" existem mas estão escondidas do menu. Para as ver, abra diretamente `publicacoes/index.html`.

## 2. Onde está cada coisa

| Ficheiro | Página |
|---|---|
| `index.html` | Início |
| `sobre.html` | Sobre |
| `areas-de-pratica.html` | Áreas de Prática |
| `contactos.html` | Contactos |
| `informacao-legal.html` | Informação Legal |
| `privacidade.html` | Política de Privacidade |
| `publicacoes/…` | Publicações e Intervenções (escondidas até terem conteúdo) |
| `404.html` | Página "não encontrada" |
| `assets/css/tokens.css` | **Cores, fontes e tamanhos** (o único sítio a mexer para mudar o aspeto) |
| `assets/img/` | Ícones, imagem de partilha e (futuramente) a fotografia |
| `assets/documentos/` | PDFs autorizados para publicação |
| `CLAUDE.md` | Dados e regras que qualquer sessão futura do Claude tem de respeitar |
| `CONFORMIDADE.md` | Checklist a validar antes de publicar |
| `ALTERACOES.md` | O que mudou em cada versão |

## 3. Editar textos

Recomendado: instalar o editor gratuito **Visual Studio Code**. No GitHub Desktop, **Repository → Open in Visual Studio Code** abre a pasta do site.

1. Abra o ficheiro da página (ver tabela acima).
2. O texto visível está entre marcas como `<p>…</p>` (parágrafo), `<h2>…</h2>` (título) ou `<li>…</li>` (item de lista). **Altere só o texto entre as marcas**, nunca as marcas.
3. Guarde (`Ctrl+S` / `Cmd+S`) e atualize a página no browser para ver o resultado.

**Exemplo — preencher o horário.** Em `contactos.html`, procure:

```html
<dd><span class="por-preencher">[A PREENCHER: horário de atendimento]</span></dd>
```

e substitua por, por exemplo:

```html
<dd>Dias úteis, das 9h30 às 18h00</dd>
```

**Atenção ao menu e ao rodapé:** estão repetidos em **todas** as páginas. Para mudar um deles, use no VS Code **Edit → Replace in Files** (`Ctrl+Shift+H` / `Cmd+Shift+H`) para alterar todos os ficheiros de uma só vez.

**Sempre que alterar a data de "Última atualização"** da Informação Legal ou da Privacidade, altere-a no próprio ficheiro.

**Regras de escrita:** antes de acrescentar qualquer texto, leia as regras em `CLAUDE.md` (secção "Regras de conformidade deontológica").

## 4. Substituir a fotografia

1. Prepare a fotografia em formato **JPG**, na vertical (proporção 4:5, por exemplo 960 × 1200 píxeis), com menos de 300 KB.
2. Dê-lhe o nome **`jose-preto.jpg`** e coloque-a na pasta **`assets/img/`**.
3. Abra `sobre.html` e procure a linha:

   ```html
   <div class="retrato retrato--vazio" aria-hidden="true">JP</div>
   ```

4. Substitua-a por:

   ```html
   <img class="retrato" src="assets/img/jose-preto.jpg" alt="Fotografia de José Preto" width="480" height="600">
   ```

5. Guarde e confirme no browser.

## 5. Acrescentar artigos, comunicações, peças e notícias

Cada página em `publicacoes/` tem, dentro de um comentário (`<!-- … -->`), um **bloco-modelo** já preparado.

1. Copie o bloco-modelo (de `<li class="entrada">` até `</li>`).
2. Cole-o logo a seguir à linha `<ol class="entradas" reversed>`.
3. Substitua a data, o título, o nome da publicação e a ligação.
4. As entradas mais recentes ficam **em cima**.
5. Na primeira entrada, apague a linha `<p><span class="por-preencher">[A PREENCHER: …]</span></p>`.
6. Se a entrada tiver um PDF, coloque-o em `assets/documentos/` com um nome simples, sem espaços nem acentos (ex.: `artigo-2026-regime-x.pdf`).

⚠️ **Peças processuais:** antes de colocar qualquer peça, cumpra a secção D do `CONFORMIDADE.md`. **O repositório é público**: um documento colocado lá, mesmo apagado depois, fica visível no histórico.

### Mostrar a secção no menu (quando tiver conteúdo)

1. Em **todos** os ficheiros `.html` (menos o `404.html`), procure o comentário que começa por `<!-- Secção escondida até ter conteúdo`. Apague a linha desse comentário e a linha `fim -->`, deixando só a linha `<li><a …>Publicações e Intervenções</a></li>`. (Com o VS Code, use **Replace in Files**.)
2. Em `publicacoes/index.html`, deixe listadas **só** as secções que já têm entradas. Para esconder uma, envolva o seu `<li>…</li>` em `<!--` e `-->`.
3. Nas páginas que passam a ser públicas, apague a linha `<meta name="robots" content="noindex">`.
4. Acrescente essas páginas ao `sitemap.xml` (copie uma linha `<url>…</url>` e altere o endereço).

## 6. Mudar cores ou fontes

Tudo está em **`assets/css/tokens.css`**, na "PARTE 1". Por exemplo, para mudar o bordeaux:

```css
--cor-bordeaux: #6e1f2b;
```

Troque o código da cor e guarde: o site inteiro atualiza-se. Depois de mudar uma cor, confirme o contraste (mínimo 4,5:1) em <https://webaim.org/resources/contrastchecker/>.

## 7. Verificação automática de conformidade

Sempre que envia alterações para o GitHub, é corrida automaticamente uma verificação (`scripts/verificar-conformidade.sh`) que procura:
- expressões proibidas (ex.: "especialista", "contacte-nos", "garantimos", "o melhor", "referência", "Mestre em Direito");
- sinais de rastreamento ou conteúdos de terceiros (analytics, Google Fonts, vídeos incorporados);
- páginas sem `lang="pt-PT"` ou sem título, imagens sem texto alternativo.

**Onde ver o resultado:** em github.com/martimpreto/josepreto, no separador **Actions**, ou pelo sinal junto de cada alteração: ✓ verde (sem problemas) ou ✗ vermelho (clique para ver a frase e o ficheiro em causa). A verificação também lista, como aviso, os pontos `[A PREENCHER]`.

A verificação é uma rede de segurança: **não substitui a leitura dos textos**.

## 8. Publicar no GitHub Pages

O site é publicado a partir do ramo **`main`**. O trabalho novo é feito noutro ramo e só passa para o `main` depois de o aprovar.

### Passo 1 — Enviar as alterações (GitHub Desktop)
1. Abra o GitHub Desktop. Em **Current Branch**, escolha o ramo onde está o trabalho (nesta versão: `claude/serene-dirac-6qiwyk`).
2. Se houver alterações por gravar, escreva um resumo em baixo à esquerda e clique **Commit to …**.
3. Clique **Push origin**.

### Passo 2 — Passar para o `main` (github.com)
1. No GitHub Desktop, clique **Branch → Create Pull Request**. Abre-se o site do GitHub.
2. Confirme que diz `base: main ← compare: claude/serene-dirac-6qiwyk`, e clique **Create pull request**.
3. Espere pelo ✓ verde da verificação de conformidade.
4. Clique **Merge pull request** → **Confirm merge**.

### Passo 3 — Ativar o GitHub Pages (só da primeira vez)
1. Em github.com/martimpreto/josepreto, clique em **Settings** (separador no topo).
2. No menu da esquerda, clique em **Pages**.
3. Em **Build and deployment → Source**, escolha **Deploy from a branch**.
4. Em **Branch**, escolha **`main`** e, ao lado, a pasta **`/ (root)`**. Clique **Save**.
5. Espere 1 a 2 minutos e atualize a página. Aparece: *"Your site is live at https://martimpreto.github.io/josepreto/"*.

A partir daí, cada vez que algo é integrado no `main` (Passo 2), o site atualiza-se sozinho em 1 a 2 minutos.

> Enquanto o domínio não estiver ligado, a página "não encontrada" (404) aparece sem a ligação para a página inicial a funcionar corretamente. Fica resolvido com o domínio.

## 9. Ligar o domínio josepreto.pt (amen.pt)

Faça isto **depois** de o Passo 3 acima estar concluído.

### Na amen.pt (painel de cliente → Domínios → josepreto.pt → Gestão de DNS)
1. **Apague** os registos `A` e `CNAME` que já existam para `josepreto.pt` (ou `@`) e para `www` — normalmente apontam para uma página de estacionamento da amen.
2. Crie **quatro registos `A`** para o domínio principal (nome `@` ou vazio):

   | Tipo | Nome | Valor |
   |---|---|---|
   | A | @ | 185.199.108.153 |
   | A | @ | 185.199.109.153 |
   | A | @ | 185.199.110.153 |
   | A | @ | 185.199.111.153 |

3. Crie **um registo `CNAME`**:

   | Tipo | Nome | Valor |
   |---|---|---|
   | CNAME | www | martimpreto.github.io |

4. Guarde. A propagação pode demorar de alguns minutos até 24 horas.

### No GitHub
1. **Settings → Pages → Custom domain**: escreva `josepreto.pt` e clique **Save**. (O GitHub cria automaticamente um ficheiro `CNAME` no repositório — é normal; depois, no GitHub Desktop, faça **Fetch/Pull** para o receber.)
2. Espere até aparecer *"DNS check successful"*.
3. Ative **Enforce HTTPS** (pode ficar disponível só após algumas horas).
4. Recomendado, por segurança: no seu perfil do GitHub, **Settings → Pages → Add a domain**, e siga as instruções para **verificar** `josepreto.pt` (acrescenta um registo `TXT` na amen.pt). Isto impede que outra conta do GitHub use o seu domínio.

Confirme no fim que `https://josepreto.pt` e `https://www.josepreto.pt` abrem o site com o cadeado.

Os endereços usados pelos motores de busca e pelas redes sociais (`sitemap.xml`, `robots.txt`, imagem de partilha) já estão preparados para `https://josepreto.pt`.
