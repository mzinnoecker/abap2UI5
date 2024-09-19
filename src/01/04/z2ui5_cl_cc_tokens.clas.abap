CLASS z2ui5_cl_cc_tokens DEFINITION
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



CLASS z2ui5_cl_cc_tokens IMPLEMENTATION.


  METHOD get_js.

    result = `if (!z2ui5.tokens) { sap.ui.define( "z2ui5/tokens" , [` && |\n|  &&
             `    "sap/ui/core/Control",` && |\n|  &&
             `    "sap/m/tokens",` && |\n|  &&
             `], function(Control, tokens) {` && |\n|  &&
             `    "use strict";` && |\n|  &&
             |\n|  &&
             `    return tokens.extend("z2ui5.tokens", {` && |\n|  &&
             |\n|  &&
             `        metadata: {` && |\n|  &&
             `            properties: {` && |\n|  &&
             `    ` && |\n|  &&
             `            },` && |\n|  &&
             `            aggregations: {` && |\n|  &&
             |\n|  &&
             `            },` && |\n|  &&
             `            events: {` && |\n|  &&
             `            },` && |\n|  &&
             `            renderer: null` && |\n|  &&
             `        },` && |\n|  &&
             |\n|  &&
             `        init: function() {` && |\n|  &&
             |\n|  &&
             `            tokens.prototype.init.call(this);` && |\n|  &&
             |\n|  &&
             `        },` && |\n|  &&
             |\n|  &&
             `        renderer: function(oRm, oInput) {` && |\n|  &&
             `            sap.m.tokensRenderer.render(oRm, oInput);` && |\n|  &&
             `        },` && |\n|  &&
             |\n|  &&
             `    });` && |\n|  &&
             `}); }`.

  ENDMETHOD.
ENDCLASS.
