# Checklist de conformidade — validar antes da publicação

A validar por **José Preto** antes de o site ficar público. Marque cada ponto com `[x]` quando estiver confirmado.

## A. Informação em falta ou a confirmar

- [ ] **Horário de atendimento**: indicar o horário a publicar em `contactos.html` (ou decidir não publicar horário e retirar a linha).
- [ ] **Formação teológica**: confirmar a forma exata de apresentação — "Formação Teológica em âmbito jurisdicional ortodoxo (Magister)". Confirmar se "Magister" é a designação oficial conferida e se deve ser indicada a instituição.
- [ ] **Honorários**: decidir se pretende publicar informação sobre honorários (critérios, forma de cálculo). Nesta versão **não** há qualquer referência a honorários.
- [ ] **Fotografia**: decidir se pretende publicar fotografia. Até lá fica um espaço neutro com as iniciais "JP".
- [ ] Confirmar todos os dados de identificação: nome, morada (Av. 5 de Outubro, 102, R/C, 1050-060 Lisboa), telefone, email, cédula 6975L, Conselho Regional de Lisboa.
- [ ] Confirmar a lista e a ordem das seis áreas de prática.
- [ ] Confirmar as línguas de trabalho (Português, Inglês, Francês, Espanhol).

## B. Textos do site

- [ ] Ler as descrições das seis áreas de prática (`areas-de-pratica.html`) e confirmar que correspondem às matérias efetivamente tratadas. Nenhuma deve sugerir uma competência não exercida.
- [ ] Confirmar que nenhum texto contém convites ao contacto, promessas de resultado, autoelogio, comparações ou a palavra "especialista" e derivadas.
- [ ] Confirmar a frase de abertura da página inicial: "Exercício da advocacia em Lisboa. Inscrito no Conselho Regional de Lisboa da Ordem dos Advogados, com a cédula profissional n.º 6975L."
- [ ] Confirmar que a formação académica está reproduzida com exatidão (partes escolares e frequências **não** apresentadas como graus).

## C. Informação legal e privacidade

- [ ] Rever a página **Informação Legal** (identificação nos termos do DL n.º 7/2004; remissão para o EOA e para portal.oa.pt).
- [ ] Confirmar se deve constar a indicação do **seguro de responsabilidade civil profissional** (DL n.º 92/2010, art. 20.º) e, em caso afirmativo, os dados a indicar.
- [ ] Confirmar se se aplica ao exercício da advocacia a obrigação de informar sobre **entidades de resolução alternativa de litígios de consumo** (Lei n.º 144/2015) e sobre o **Livro de Reclamações**. Nesta versão não constam.
- [ ] Rever a **Política de Privacidade**: responsável pelo tratamento, fundamentos, conservação dos dados e direitos. Confirmar o texto sobre o alojamento na GitHub, Inc. (transferência de dados para os EUA).
- [ ] Confirmar que o endereço de email indicado é o que deve receber pedidos relativos a dados pessoais.

## D. Secções "Publicações e Intervenções" (escondidas nesta versão)

Cada secção só é mostrada no menu quando tiver conteúdo validado.

**Artigos e Comunicações e Conferências**
- [ ] Cada entrada indica apenas factos: data, título, publicação ou evento, ligação.
- [ ] Existe autorização para disponibilizar o texto integral no site (direitos do editor), se for esse o caso.

**Peças Processuais (processos findos)** — secção de risco mais elevado
- [ ] O processo está **findo**.
- [ ] Existe **consentimento escrito** do cliente.
- [ ] Foi obtida **dispensa de sigilo profissional** junto da Ordem dos Advogados (art. 92.º EOA), ou confirmado por escrito junto da OA que não é necessária.
- [ ] A peça está **totalmente anonimizada**: nomes, moradas, datas, locais, números de processo, montantes que permitam identificação, e também os **metadados do PDF** (autor, título do documento).
- [ ] Não envolve menores, matéria sujeita a segredo de justiça ou dados de categorias sensíveis que permitam identificação.
- [ ] A apresentação da peça não descreve o resultado do processo nem funciona como promoção de um caso concreto.
- [ ] **Nenhum documento por anonimizar foi colocado no repositório** (o repositório é público e o histórico fica guardado).

**Na Comunicação Social**
- [ ] Apenas data, órgão, tipo (escrita / audiovisual) e ligação — sem reproduzir o artigo ou o vídeo.
- [ ] Sem vídeos incorporados (usar só ligação de texto).
- [ ] Descrição neutra: não copiar títulos ou expressões elogiosas.
- [ ] Nenhuma intervenção diz respeito a processo pendente sem que tenham sido observadas as regras do EOA sobre pronúncia pública em questões profissionais pendentes.

## E. Aspetos técnicos (verificados na construção — reconfirmar após alterações)

- [x] Sem cookies, analytics, pixels ou conteúdos de terceiros incorporados.
- [x] Fontes alojadas no próprio site (sem Google Fonts).
- [x] Mapa apenas como ligação de texto.
- [x] Sem formulário de contacto, pop-ups, chat ou botões de apelo.
- [x] Verificação automática de palavras proibidas sem alertas (`scripts/verificar-conformidade.sh`).
- [ ] Após configurar o domínio: confirmar que `https://josepreto.pt` abre com cadeado (HTTPS ativo).

---

Validado por: ______________________  Data: ____ / ____ / ________
