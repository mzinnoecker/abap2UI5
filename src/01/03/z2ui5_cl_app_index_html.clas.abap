CLASS z2ui5_cl_app_index_html DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-METHODS get
      RETURNING
        VALUE(result) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS z2ui5_cl_app_index_html IMPLEMENTATION.

  METHOD get.

    result = `<!DOCTYPE html>` &&
             `<html lang="en">` &&
             `<head>` &&
             `    <meta charset="UTF-8">` &&
             `    <meta name="viewport" content="width=device-width, initial-scale=1.0">` &&
             `    <meta http-equiv="X-UA-Compatible" content="IE=edge">` &&
             `    <title></title>` &&
             `    <style>` &&
             `        html, body, body > div, #container, #container-uiarea {` &&
             `            height: 100%;` &&
             `        }` &&
             `    </style>` &&
             `    <script` &&
             `        id="sap-ui-bootstrap"` &&
             `        src="https://openui5.hana.ondemand.com/resources/sap-ui-core.js"` &&
             `        data-sap-ui-theme="sap_horizon"` &&
             `        data-sap-ui-resource-roots='{` &&
             `            "z2ui5": "./"` &&
             `        }'` &&
             `        data-sap-ui-on-init="module:sap/ui/core/ComponentSupport"` &&
             `        data-sap-ui-compat-version="edge"` &&
             `        data-sap-ui-async="true"` &&
             `        data-sap-ui-frame-options="trusted"` &&
             `    ></script>` &&
             `</head>` &&
             `<body class="sapUiBody sapUiSizeCompact" id="content">` &&
             `    <div` &&
             `        data-sap-ui-component` &&
             `        data-name="z2ui5"` &&
             `        data-id="container"` &&
             `        data-settings='{"id" : "z2ui5"}'` &&
             `        data-handle-validation="true"` &&
             `    ></div>` &&
             `</body>` &&
             `</html>` &&
              ``.

  ENDMETHOD.

ENDCLASS.
