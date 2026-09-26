#!/usr/bin/env bash
# ═══════════════════════════════════════════════════════════════════
# Verificação automática de conformidade do site
#
# Procura nos ficheiros do site (HTML, CSS, JS, XML, SVG) expressões
# proibidas pelas regras deontológicas (ver CLAUDE.md) e sinais de
# rastreamento ou conteúdos de terceiros.
#
# Corre sozinha no GitHub sempre que há alterações (.github/workflows).
# Também pode ser corrida num computador com:  bash scripts/verificar-conformidade.sh
#
# Resultado: "OK" ou a lista de problemas encontrados (ficheiro:linha).
# Um alerta aqui NÃO substitui a leitura humana dos textos.
# ═══════════════════════════════════════════════════════════════════
set -u
export LC_ALL=C.UTF-8
cd "$(dirname "$0")/.."

FICHEIROS=$(find . -type f \( -name '*.html' -o -name '*.css' -o -name '*.js' -o -name '*.xml' -o -name '*.svg' \) -not -path './.git/*' | sort)
PROBLEMAS=0

verificar() {
  local descricao="$1" padrao="$2" resultado
  # shellcheck disable=SC2086
  resultado=$(grep -niE "$padrao" $FICHEIROS 2>/dev/null)
  if [ -n "$resultado" ]; then
    echo "✗ $descricao"
    echo "$resultado" | sed 's/^/    /'
    echo
    PROBLEMAS=$((PROBLEMAS + 1))
  fi
}

echo "Verificação de conformidade — José Preto, Advogado"
echo

# 1. Convites ao contacto
verificar "Convite ao contacto (regra 1)" \
  "contacte|contacta-nos|fale connosco|fale conosco|marque (já|a sua|uma)|agende|estamos aqui|consulta (grátis|gratuita)|primeira consulta|ligue( já|-nos)|não hesite|peça (já|um|o seu)|whatsapp|messenger"

# 2. Promessas ou indução de resultados
verificar "Promessa de resultados (regra 2)" \
  "garant|sucesso|casos ganhos|vitória|resultados obtidos|taxa de"

# 3. Autoengrandecimento e comparação
verificar "Autoengrandecimento ou comparação (regra 3)" \
  "o melhor|os melhores|melhor advogad|líder|excelência|referência|vasta experiência|anos de experiência|profundo conhecimento|prémio|ranking|prestígi|renomad|conceituad|reconhecid"

# 4. Especialista (art. 70.º EOA)
verificar "Palavra da família \"especialista\" (regra 4)" \
  "especiali[sz]"

# 5. Testemunhos e clientes
verificar "Testemunhos, avaliações ou clientes (regra 5)" \
  "testemunh|clientes satisfeitos|avaliações|estrelas|★"

# 8. Formação académica apresentada como grau concluído
verificar "Formação académica alterada (regra 8)" \
  "mestre em direito|licenciatura em filosofia|licenciado em filosofia"

# Rastreamento, cookies e conteúdos de terceiros
verificar "Rastreamento ou conteúdo de terceiros incorporado" \
  "google-analytics|googletagmanager|gtag\(|fbq\(|connect\.facebook|fonts\.googleapis|fonts\.gstatic|<iframe|youtube\.com/embed|hotjar|document\.cookie|localStorage|sessionStorage"

# Scripts ou folhas de estilo carregados de outros sites
verificar "Script ou estilo carregado de outro site" \
  "<script[^>]+src=\"https?://|<link[^>]+rel=\"stylesheet\"[^>]+href=\"https?://"

# Todas as páginas em português de Portugal
for f in $FICHEIROS; do
  case "$f" in
    *.html)
      grep -q 'lang="pt-PT"' "$f" || { echo "✗ Falta lang=\"pt-PT\" em $f"; PROBLEMAS=$((PROBLEMAS + 1)); }
      grep -q '<title>' "$f" || { echo "✗ Falta <title> em $f"; PROBLEMAS=$((PROBLEMAS + 1)); }
      ;;
  esac
done

# Imagens sem texto alternativo
SEM_ALT=$(grep -noE '<img [^>]*>' $FICHEIROS 2>/dev/null | grep -v 'alt=')
if [ -n "$SEM_ALT" ]; then
  echo "✗ Imagem sem texto alternativo (alt)"; echo "$SEM_ALT" | sed 's/^/    /'; PROBLEMAS=$((PROBLEMAS + 1))
fi

# Aviso (não bloqueia): informação ainda por preencher
EM_FALTA=$(grep -nF '[A PREENCHER' $FICHEIROS 2>/dev/null | grep -v '<!--' )
if [ -n "$EM_FALTA" ]; then
  echo "! Aviso — informação por preencher (resolver antes da publicação definitiva):"
  echo "$EM_FALTA" | sed -E 's/^([^:]+:[0-9]+):.*\[A PREENCHER: ([^]]*)\].*/    \1  →  \2/'
  echo
fi

if [ "$PROBLEMAS" -eq 0 ]; then
  echo "OK — nenhuma expressão proibida encontrada."
  exit 0
else
  echo "Encontrados $PROBLEMAS tipo(s) de problema. Rever os textos indicados."
  exit 1
fi
