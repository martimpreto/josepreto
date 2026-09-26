# Registo de alterações

Cada versão, explicada em linguagem simples. A mais recente fica em cima.

---

## Versão 1.1 — 26 de setembro de 2026 · ajustes após revisão

Integrada no `main`.

- **Horário retirado** da página Contactos: por decisão de José Preto, o horário não é publicado.
- **Direito Penal**: a frase "No processo penal, o advogado pode intervir como defensor de arguido…" foi substituída por "Compreende a posição processual do arguido, do assistente e do ofendido, incluindo o pedido de indemnização civil.", mais neutra.
- Mantida a ligação "Contactos" na faixa bordeaux da página inicial.
- Documentação atualizada (`CLAUDE.md`, `CONFORMIDADE.md`, `README.md`).

---

## Versão 1 — 26 de setembro de 2026 · primeira construção

Integrada no `main` a 26 de setembro de 2026. O site só fica visível na internet depois de ativado o GitHub Pages (README, secção 8).

**O que foi feito**
- Seis páginas públicas: Início, Sobre, Áreas de Prática, Contactos, Informação Legal e Política de Privacidade.
- Secção "Publicações e Intervenções" com quatro páginas (Artigos, Comunicações e Conferências, Peças Processuais, Na Comunicação Social), **escondida do menu e dos motores de busca** até haver conteúdo.
- Design em branco, azul (`#1f3a5a`) e bordeaux (`#6e1f2b`): azul no topo, branco no conteúdo, bordeaux em baixo. Contrastes medidos, todos acima de 7:1.
- Fontes Source Serif 4 (títulos) e Source Sans 3 (texto), guardadas no próprio site.
- Ícones com as iniciais "JP" e imagem de partilha para redes sociais (só texto: nome, profissão, cédula).
- Espaço reservado para a fotografia (página Sobre).
- Motores de busca: título e descrição por página, `sitemap.xml`, `robots.txt`, dados estruturados "Attorney".
- Verificação automática de conformidade no GitHub (palavras proibidas, rastreamento, acessibilidade básica).
- Documentação: `README.md`, `CLAUDE.md`, `CONFORMIDADE.md` e este ficheiro.

**Verificado**
- Abre diretamente no browser a partir do ficheiro `index.html`; fontes carregam; sem erros.
- Telemóvel (375 px de largura) e computador: sem deslocação horizontal.
- Menu de telemóvel: abre com o botão, fecha com a tecla Esc e devolve o foco ao botão.
- Verificação de conformidade: sem expressões proibidas.

**Pendente (ver `CONFORMIDADE.md`)**
- Fotografia.
- Validação dos textos por José Preto.
- Ativação do GitHub Pages e ligação do domínio `josepreto.pt`.
