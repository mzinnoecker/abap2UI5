CLASS z2ui5_cl_cc_multiinput DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-METHODS get_js
      RETURNING
        VALUE(result) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z2ui5_cl_cc_multiinput IMPLEMENTATION.


  METHOD get_js.

    result = `if (!z2ui5.MultiInputExt) { sap.ui.define( "z2ui5/MultiInputExt" , [` && |\n|  &&
             `  "sap/m/MultiInput",` && |\n|  &&
             `  "sap/m/Token"` && |\n|  &&
             `], function( MultiInput , Token) {` && |\n|  &&
             `  "use strict";` && |\n|  &&
             |\n|  &&
             `  return MultiInput.extend("z2ui5.MultiInputExt", {` && |\n|  &&
             |\n|  &&
             `      metadata: {` && |\n|  &&
             `          properties: {` && |\n|  &&
             `              addedTokens: { type: "Array" },` && |\n|  &&
             `              checkInit: { type: "Boolean", defaultValue : false },` && |\n|  &&
             `              removedTokens: { type: "Array" }` && |\n|  &&
             `          },` && |\n|  &&
             `                    events: {` && |\n|  &&
             `                        "change2": {` && |\n|  &&
             `                            allowPreventDefault: true,` && |\n|  &&
             `                            parameters: {}` && |\n|  &&
             `                        }` && |\n|  &&
             `                    },` && |\n|  &&
             `                    renderer: null` && |\n|  &&
             `      },` && |\n|  &&
             |\n|  &&
             `      onTokenUpdate(oEvent) { ` && |\n|  &&
             `          this.setProperty("addedTokens", []);` && |\n|  &&
             `          this.setProperty("removedTokens", []);` && |\n|  &&
             `  ` && |\n|  &&
             `          if (oEvent.mParameters.type == "removed") {` && |\n|  &&
             `              let removedTokens = [];` && |\n|  &&
             `              oEvent.mParameters.removedTokens.forEach((item) => {` && |\n|  &&
             `                  removedTokens.push({ KEY: item.getKey(), TEXT: item.getText() });` && |\n|  &&
             `              });` && |\n|  &&
             `              this.setProperty("removedTokens", removedTokens);` && |\n|  &&
             `          } else {` && |\n|  &&
             `              let addedTokens = [];` && |\n|  &&
             `              oEvent.mParameters.addedTokens.forEach((item) => {` && |\n|  &&
             `                  addedTokens.push({ KEY: item.getKey(), TEXT: item.getText() });` && |\n|  &&
             `              });` && |\n|  &&
             `              this.setProperty("addedTokens", addedTokens);` && |\n|  &&
             `          }` && |\n|  &&
             `      this.fireChange2();` && |\n|  &&
             `      },` && |\n|  &&
             |\n|  &&
             `      setControl(){  ` && |\n|  &&
             `          let table = this;` && |\n|  &&
             `          if ( this.getProperty("checkInit") == true ){ return; }   ` && |\n|  &&
             `          this.setProperty( "checkInit" , true );` && |\n|  &&
             `           table.attachTokenUpdate(this.onTokenUpdate.bind(this));` && |\n|  &&
             `           var fnValidator = function (args) {` && |\n|  &&
             `               var text = args.text;` && |\n|  &&
             `               return new Token({ key: text, text: text });` && |\n|  &&
             `           };` && |\n|  &&
             `           table.addValidator(fnValidator); }, ` && |\n|  &&
             `          ` && |\n|  &&
             `      init: function() {` && |\n|  &&
             `          MultiInput.prototype.init.call(this);` && |\n|  &&
             `          sap.z2ui5.onAfterRendering.push( this.setControl.bind(this) ); ` && |\n|  &&
             `      },` && |\n|  &&
             |\n|  &&
             `      renderer: function(oRm, oInput) {` && |\n|  &&
             `          sap.m.MultiInputRenderer.render(oRm, oInput);` && |\n|  &&
             |\n|  &&
             `      },` && |\n|  &&
             |\n|  &&
             `  });` && |\n|  &&
             `}); }`.

  ENDMETHOD.
ENDCLASS.
