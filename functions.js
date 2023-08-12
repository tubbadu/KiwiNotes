function findIndexes(inputString, regex) {
  let matches = [];
  let match;

  while ((match = regex.exec(inputString)) !== null) {
    const matchStart = match.index;
    const last = matchStart + match[0].length;
    const first = matchStart + match[0].length - match[0].trim().length - 1; // first char after initial indent

    matches.push({
      first,
      last,
    });
  }

  return matches;
}

function assignCheckboxes(){
    const itemSet = textarea.checkboxItemList;

    // mark all item as free
    itemSet.forEach(item => {
        item.free = true
        // if checkbox TODO!
    })
    let x = ["CheckBoxOn", "CheckBoxOff"];
    x.forEach(componentName => {
        const regex = textarea.d[componentName]["regex"];
        const componentFileName = textarea.d[componentName]["componentFilename"];

        // find all matches
        let matches = F.findIndexes(textarea.getText(0, textarea.length), regex)

        // assign an item to each match
        for(let i=0; i<matches.length; i++){
            let match = matches[i];
            // change the color to transparent (or to the background color if not possible (TODO when selection start, color back to the original color this text and hide all items!)
            // TODO!

            // check if itemSet has free items, if yes assign them to this, otherwise create one and assign it to this and append to itemSet
            var freeItem = false;
            //for(let j=0; j<itemSet.length; j++){
            for(const item of itemSet){
                if(item.free){
                    freeItem = item;
                    break;
                }
            }
            if(!freeItem){
                // create one
                var component = Qt.createComponent(componentFileName);
                freeItem = component.createObject(textarea, {});
                itemSet.add(freeItem);
            }

            // assign to freeItem
            freeItem.rect = textarea.positionToRectangle(match.first);
            freeItem.free = false;
            freeItem.checked = (componentName === "CheckBoxOn");
        }
        // purge remaining free items
        itemSet.forEach(item => {
            if(item.free){
                item.destroy();
                itemSet.delete(item)
            }
        })
    });
}

function processToRichText(rawtext){ // this is called a single time, reading the file.md
    const regex = textarea.regex;
    let tin = rawtext.replace(/\u2028/g, "\n"); // remove this stupid strange character and use newline instead (perhaps useless)
    tin = rawtext.replace(/\u2003/g, " ");
    tin = tin.replace(/\n\s*\n(\s*\n)+/g, "<br>") // replace 2 or more empty newlines with a single <br>
    tin = tin.replace(regex["BreakLines"], "\n<br>\n"); // isolate each <br> in a separate line
    console.warn(tin)
    tin = tin.replace(/^\s+/gm, (match) => {
                        let imgWidth = textmetrics.getWidth(match);
                        if(imgWidth > 0){
                            //if()
                            return `<img width="${imgWidth}" height="1" src="img/transparent.png">`
                        } else {
                            return "";
                        }


                    });
    console.warn(tin)
    let out = [];


    tin.trim().split("\n").forEach(line => {
        if(line.trim().length === 0){
            // is an empty line. ignore
            return;
        }

        let lout = line;

        lout = lout.replace(regex["Bold"], (match) => { // Bold before Italic!!!
            let boldText = match.replace(/^\*\*/g, "").replace(/\*\*$/g, "");
            return `<b>${boldText}</b>`
        });
        lout = lout.replace(regex["Italic"], (match) => {
            let italicText = match.replace(/^\*/g, "").replace(/\*$/g, "");
            return `<i>${italicText}</i>`
        });

        if(regex["CheckBoxOff"].test(line)){
            lout = lout.replace(regex["CheckBoxOff"], (match) => {
                let imgWidth = textarea.tabStopDistance - textmetrics.getWidth(match) //- textmetrics.getWidth(" ")
                return `<span style="color: transparent";>${match}</span><img width="${imgWidth}" height="1" src="img/transparent.png">`;
            });
        }
        if(regex["CheckBoxOn"].test(line)){
            lout = lout.replace(regex["CheckBoxOn"], (match) => {
                let imgWidth = textarea.tabStopDistance - textmetrics.getWidth(match) //- textmetrics.getWidth(" ")
                return `<span style="color: transparent";>${match}</span><img width="${imgWidth}" height="1" src="img/transparent.png">`;
            });
        }

        if(regex["BreakLines"].test(line) | line.trim() === "<br>"){ // TODO fix the regex
            lout = '<p style="margin: 0px;">&nbsp;</p>';
        } else if(regex["Header"].test(line)){
            // is a header
            lout = lout.replace(regex["Header"], (match) => {
                let hashtagsRegex = /^#+/;
                let hashtags = match.trim().match(hashtagsRegex);
                let titleNum = hashtags ? hashtags[0].length : 0;
                let rawText = match.trim().replace(hashtagsRegex, '');

                return `<h${titleNum}>${rawText}</h${titleNum}>`;
            });
        } else if (regex["Quote"].test(line)){
                                            // is a quote
                                            lout = lout.replace(regex["Quote"], (match) => {
                                                let quoteRegex = /^>/;
                                                let hashtags = match.trim().match(quoteRegex);
                                                let rawText = match.trim().replace(quoteRegex, '');

                                                return `<p style="margin: 0px;"><img width="${textarea.tabStopDistance}" height="1" src="img/transparent.png">${rawText}</p}>`;
                                            });
        } else {
            // is a paragraph (perhaps with other formatting, who knows)
            lout = (`<p style="margin: 0px;">${lout}</p>`);
        }
        out.push(lout);
    });




    //console.warn(out.join('\n'))
    return out.join('\n');


    let tout = rawtext.replace(/\u2028/g, "\n"); // remove this stupid strange character and use newline instead
    //tout = tout.replace(/\n\s*\n/g, "\n<br>\n")
    console.warn(tout)
    tout = tout.replace(regex["Nothing"], (match) => {
        if(match.trim().length > 0){
            return `<p style="margin: 0px;">${match}</p>`
        } else {
            return '<br>'
        }
    });



    tout = tout.replace(regex["CheckBoxOff"], (match) => {
        let imgWidth = textarea.tabStopDistance - textmetrics.getWidth(match) //- textmetrics.getWidth(" ")
        return `<span style="color: transparent">${match}</span><img width="${imgWidth}" height="1" src="img/transparent.png">`;
    });
    tout = tout.replace(regex["CheckBoxOn"], (match) => {
        let imgWidth = textarea.tabStopDistance - textmetrics.getWidth(match) //- textmetrics.getWidth(" ")
        return `<span style="color: transparent">${match}</span><img width="${imgWidth}" height="1" src="img/transparent.png">`;
    });
    tout = tout.replace(regex["Header"], (match) => {
        let hashtagsRegex = /^#+/;
        let hashtags = match.trim().match(hashtagsRegex);
        let titleNum = hashtags ? hashtags[0].length : 0;
        let rawText = match.trim().replace(hashtagsRegex, '');

        return `<h${titleNum}>${rawText}</h${titleNum}>`;
    })

    //tout = tout.replace(regex["EmptyLine"], '<br>\n') // check

    console.warn(tout)
    return tout;
}
