'use strict';
module.exports=(ours,theirs,attributs)=>
ours.filter(x=>
  !theirs.find(y=>
    attributs.reduce((acc,attribut)=>`${acc}${JSON.stringify(x[attribut])}`,'')
    ===
    attributs.reduce((acc,attribut)=>`${acc}${JSON.stringify(y[attribut])}`,'')
  )
).concat(theirs)