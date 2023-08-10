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

function processToRichText(text){
    const regex = textarea.regex;
    let tout = text.replace(/\u2028/g, "\n"); // remove this stupid strange character and use newline instead

    tout = tout.replace(textarea.d["CheckBoxOff"]["regex"], (match) => {
                            console.warn(`<${match}>`)
        let imgWidth = textarea.tabStopDistance - textmetrics.getWidth(match) //- textmetrics.getWidth(" ")
        return `<span style="color: transparent";>${match}</span><img width="${imgWidth}" height="1" src="img/transparent.png">`;
    });
    tout = tout.replace(textarea.d["CheckBoxOn"]["regex"], (match) => {
        let imgWidth = textarea.tabStopDistance - textmetrics.getWidth(match) //- textmetrics.getWidth(" ")
        return `<span style="color: transparent";>${match}</span><img width="${imgWidth}" height="1" src="img/transparent.png">`;
    });
    tout = tout.replace(textarea)

    tout = tout.replace(/\n/g, "<br>"); // display correctly newlines in RichText
    return tout;
}
