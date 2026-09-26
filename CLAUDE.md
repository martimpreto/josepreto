# CLAUDE.md — Site de José Preto, Advogado

Instruções permanentes para qualquer sessão futura de trabalho neste repositório.
**Ler na íntegra antes de alterar qualquer ficheiro.**

## Forma de trabalhar com o cliente

- Comunicar sempre em **português de Portugal**, de forma simples: o cliente não é técnico.
- Pedir confirmação antes de decisões importantes (estrutura, design, textos novos, alojamento).
- **Nunca fazer commits nem push sem perguntar.** O cliente usa o GitHub Desktop.
- No fim de qualquer alteração de texto, correr `bash scripts/verificar-conformidade.sh`, reler os textos contra as regras abaixo e mostrar o resultado.
- Registar cada ronda de alterações em `ALTERACOES.md`.

## Dados do advogado (usar EXATAMENTE estes; não acrescentar nada)

- Nome profissional: José Preto
- Profissão: Advogado
- Cédula profissional: 6975L
- Inscrito no Conselho Regional de Lisboa da Ordem dos Advogados
- Escritório: Av. 5 de Outubro, 102, R/C, 1050-060 Lisboa
- Telefone: +351 910 165 257 (link `tel:+351910165257`)
- Email: josepreto6975l@gmail.com (link `mailto:`)
- Horário: [A PREENCHER]
- Áreas de prática: Direito Penal · Direito da Família · Direito dos Contratos · Direito Administrativo · Direito Fiscal · Direito Marítimo
- Formação académica (reproduzir com esta precisão, sem transformar frequências em graus):
  - Licenciatura em Direito, menção em Ciências Jurídico-Políticas, Faculdade de Direito da Universidade de Lisboa
  - Parte escolar do Mestrado em Direito, Universidade Autónoma de Lisboa (**NÃO** escrever "Mestre em Direito")
  - Mestrado em Sociologia, ISCTE – Instituto Universitário de Lisboa
  - Frequência do curso de Filosofia até ao 3.º ano, Universidade Católica Portuguesa (**NÃO** escrever "Licenciatura em Filosofia")
  - Formação Teológica em âmbito jurisdicional ortodoxo (Magister)
- Línguas de trabalho: Português, Inglês, Francês, Espanhol
- Título de especialista conferido pela OA: **NÃO**
- Fotografia: ainda não disponível (espaço reservado em `sobre.html`; ficheiro futuro `assets/img/jose-preto.jpg`).
- Domínio: `josepreto.pt` (a comprar na amen.pt). Os endereços canónicos, o `sitemap.xml`, o `robots.txt` e o Open Graph já usam `https://josepreto.pt`.

## Regras de conformidade deontológica (invioláveis)

Enquadramento: Estatuto da Ordem dos Advogados (EOA), na redação dada pela Lei n.º 6/2024, e parecer do Conselho Geral da OA sobre publicidade (dezembro de 2024).

O texto do site deve ser objetivo, verdadeiro e digno. É PROIBIDO:

1. **Convites ao contacto**, diretos ou indiretos: "Contacte-nos", "Marque a sua consulta", "Fale connosco", "Estamos aqui para ajudar", "Primeira consulta grátis", botões de call-to-action, pop-ups, chat, WhatsApp flutuante. A página e o menu chamam-se simplesmente "Contactos".
2. **Promessas ou indução de resultados**: "garantimos", "defendemos os seus direitos com sucesso", taxas de sucesso, casos ganhos, valores obtidos.
3. **Autoengrandecimento e comparação**: "o melhor", "líder", "de excelência", "referência", "vasta experiência", "profundo conhecimento", rankings, prémios, comparações com colegas.
4. As palavras **"especialista", "especializado", "especialidade" ou "especialização"** em qualquer contexto (art. 70.º, n.º 3 EOA). Usar "áreas de prática".
5. **Testemunhos**, avaliações, estrelas, logótipos ou nomes de clientes, descrição de casos concretos (sigilo profissional, art. 92.º EOA).
6. Linguagem sensacionalista, alarmista ou comercial; imagens de martelos de juiz, balanças em clipart ou banco de imagens com pessoas em sofrimento.
7. **Inventar qualquer facto.** Onde faltar informação, escrever exatamente `[A PREENCHER: descrição do que falta]` (no HTML: `<span class="por-preencher">[A PREENCHER: …]</span>`).
8. Alterar ou "melhorar" a formação académica: frequências e partes escolares nunca são apresentadas como graus concluídos.

Tom: institucional, sereno, claro, impessoal ou na terceira pessoa. Sem anos de experiência (não foram fornecidos). Sem formulário de contacto nesta versão.

### Regras adicionais das secções "Publicações e Intervenções"

- **Peças processuais**: só de processos findos, com consentimento escrito do cliente, dispensa de sigilo pela OA (art. 92.º EOA) e anonimização total (incluindo metadados do PDF). **O repositório é público**: nunca colocar nele, nem temporariamente, um documento por anonimizar.
- **Comunicação social**: não reproduzir artigos ou vídeos (direitos de autor) — apenas data, órgão, tipo e ligação; não incorporar vídeos (cookies de terceiros); não copiar títulos elogiosos, usar descrição neutra; atenção às intervenções sobre processos pendentes.
- **Artigos e comunicações**: apresentação factual (data, título, publicação ou evento).
- Cada secção fica **escondida do menu, do `sitemap.xml` e com `noindex`** até ter conteúdo validado.

## Stack técnica (obrigatória)

- HTML5 + CSS + JavaScript mínimo (vanilla). **Sem frameworks, sem build, sem npm.**
- Tem de funcionar abrindo o `index.html` diretamente no browser e no GitHub Pages sem configuração.
- Responsivo (telemóvel primeiro) e acessível (WCAG 2.1 AA): contraste, texto alternativo, teclado, HTML semântico, `lang="pt-PT"`.
- Fontes alojadas localmente (`assets/fonts/`, licença OFL). **Nunca** Google Fonts por CDN.
- **Zero** cookies, analytics, pixels, embeds de terceiros, `localStorage`. Mapa só como ligação de texto ("Ver no mapa" → Google Maps). Por isso não há banner de cookies.
- SEO: `title` e `meta description` por página, Open Graph, `sitemap.xml`, `robots.txt`, dados estruturados schema.org `Attorney` (só em `index.html`, só com os factos acima).

## Organização do código

```
index.html, sobre.html, areas-de-pratica.html, contactos.html,
informacao-legal.html, privacidade.html, 404.html
publicacoes/          index.html, artigos.html, comunicacoes.html,
                      pecas-processuais.html, comunicacao-social.html (escondidas)
assets/css/tokens.css  ÚNICO sítio com cores, fontes e medidas
assets/css/estilo.css  estilos (usa só variáveis de tokens.css)
assets/js/principal.js menu de telemóvel + ano no rodapé (nada mais)
assets/fonts/          Source Serif 4 (títulos) e Source Sans 3 (texto)
assets/img/            favicon, ícones, partilha.png (Open Graph)
assets/documentos/     PDFs autorizados para publicação
scripts/verificar-conformidade.sh   verificação automática (corre no GitHub Actions)
```

Convenções:
- **Cabeçalho e rodapé estão repetidos em todas as páginas** (não há build). Uma alteração ao menu ou ao rodapé tem de ser feita em **todos** os ficheiros `.html` (exceto `404.html`, que é autónoma).
- Ligações sempre **relativas** (`sobre.html`, `../assets/...`) para funcionar tanto localmente como no GitHub Pages. Exceção: `404.html` usa `/`.
- Paleta: branco, azul `#1f3a5a` e bordeaux `#6e1f2b`, em distribuição equilibrada (azul no topo, branco no conteúdo, bordeaux em baixo). Nunca texto azul sobre bordeaux ou vice-versa (contraste 1,05:1).
- Títulos em serifada, texto em sem serifa.

## Línguas futuras (preparado, não criado)

- Português na raiz. Versões futuras em pastas `/en/`, `/fr/`, `/es/` com os mesmos nomes de ficheiro (ou traduzidos, com tabela de correspondência aqui).
- Ao criar uma versão: `lang` correto em cada página, `<link rel="alternate" hreflang="...">` em todas as versões (o local está marcado com um comentário no `<head>`), seletor de língua no cabeçalho, entradas no `sitemap.xml`.
- As regras deontológicas aplicam-se a todas as línguas (atenção a "specialist", "spécialiste", "especialista", "expert"). Os textos legais (Informação Legal, Privacidade) não se traduzem à letra sem revisão jurídica.
