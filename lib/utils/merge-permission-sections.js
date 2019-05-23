'use strict';
module.exports=(ours,theirs,attributs)=>ours.filter(x=>!theirs.find(y=>attributs.reduce((found,attribut)=>found&=[x[attribut]]===[y[attribut]],true))).concat(theirs)