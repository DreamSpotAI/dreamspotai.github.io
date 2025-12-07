export function textToHtml(text: string): string {
    const lines = text.split('\n');
    let html = '';
    let currentIndentation = 0;

    const processInlineMarkdown = (line: string): string => {
        let processed = line.replace(/\[([^\]]+)\]\(([^)]+)\)/g, (match, textContent, url) => {
            return `<a href="${url.trim()}" target="_blank">${textContent.trim()}</a>`;
        });
        processed = processed.replace(/\*\*([^*]+)\*\*/g, '<strong>$1</strong>');
        return processed.trim();
    };

    const getIndentationLevel = (line: string): number => {
        const leadingChars = line.match(/^(\s|\t| )*/)?.[0] || '';
        let level = 0;
        // Assegna un peso: 2 per spazio standard/tab, 4 per spazio non-breaking (usato nel testo)
        for (const char of leadingChars) {
            if (char === ' ' || char === '\t') level += 1;
            else if (char === ' ') level += 4; // Spazio non-breaking (come *   )
        }
        return Math.floor(level / 4); // Livello di base per * è 0
    };

    const closeLists = (targetLevel: number) => {
        while (currentIndentation > targetLevel) {
            html += '</ul>\n';
            currentIndentation--;
        }
    };

    for (const rawLine of lines) {
        let line = rawLine.trim();
        const listItemMatch = rawLine.match(/^(\s|\t| )*(\*|\-)\s/);

        if (line === '') {
            if (rawLine.trim() === '') {
                closeLists(0);
                continue;
            }
        }

        // --- Regole Orizzontali ---
        if (line === '---') {
            closeLists(0);
            html += '<br><hr><br>\n';
            continue;
        }

        // --- Intestazioni ---
        if (line.startsWith('#### ')) {
            closeLists(0);
            html += `<h4>${processInlineMarkdown(line.substring(5))}</h4>\n`;
            continue;
        }
        if (line.startsWith('### ')) {
            closeLists(0);
            html += `<h3>${processInlineMarkdown(line.substring(4))}</h3>\n`;
            continue;
        }
        if (line.startsWith('## ')) {
            closeLists(0);
            html += `<h2>${processInlineMarkdown(line.substring(3))}</h2>\n`;
            continue;
        }

        // --- Gestione Liste Annidate ---
        if (listItemMatch) {
            let lineContent = rawLine.substring(listItemMatch[0].length).trim();
            const rawIndentation = rawLine.indexOf(listItemMatch[0]);

            // Definisce un livello basato sull'identazione (es. 0 per il primo *, 1 per il secondo)
            const newLevel = Math.floor(rawIndentation / 4);

            if (newLevel > currentIndentation) {
                // Nuova lista annidata
                html += '<ul>\n';
                currentIndentation++;
            } else {
                // Chiude liste se l'indentazione è inferiore
                closeLists(newLevel);
                currentIndentation = newLevel; // Allinea il livello
            }

            // Aggiunge l'elemento della lista
            html += `  <li>${processInlineMarkdown(lineContent)}</li>\n`;
            continue;
        }

        // Chiude liste aperte se la linea non è un elemento di lista
        closeLists(0);

        // --- Paragrafi ---
        const processedLine = processInlineMarkdown(line);
        if (processedLine) {
            html += `<p>${processedLine}</p>\n`;
        }
    }

    // Chiude qualsiasi lista rimasta aperta
    closeLists(0);

    return html;
}