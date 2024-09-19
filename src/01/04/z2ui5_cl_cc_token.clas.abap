CLASS z2ui5_cl_cc_token DEFINITION
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



CLASS z2ui5_cl_cc_token IMPLEMENTATION.


  METHOD get_js.

    result = `if (!z2ui5.Token) { sap.ui.define( "z2ui5/Token" , [` && |\n|  &&
             `    "sap/ui/core/Control",` && |\n|  &&
             `    "sap/m/Token",` && |\n|  &&
             `], function(Control, Token) {` && |\n|  &&
             `    "use strict";` && |\n|  &&
             |\n|  &&
             `    return Token.extend("z2ui5.Token", {` && |\n|  &&
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
             `            Token.prototype.init.call(this);` && |\n|  &&
             |\n|  &&
             `        },` && |\n|  &&
             |\n|  &&
             `        renderer: function(oRm, oInput) {` && |\n|  &&
             `            sap.m.TokenRenderer.render(oRm, oInput);` && |\n|  &&
             `        },` && |\n|  &&
             |\n|  &&
             `    });` && |\n|  &&
             `}); }`.

  ENDMETHOD.
ENDCLASS.
