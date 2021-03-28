<cfoutput>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://unpkg.com/formeo@1.6.2/dist/formeo.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/formeo@1.6.2/dist/formeo.min.css" />
</head>

<body>
    <div class="render-form"></div>
    <cfscript>
        savecontent variable="testing" {
            writeOutput('{"id":"bc998078-900e-4b11-8277-7acbe375bce5","stages":{"bf187fa1-857c-4775-b69d-1ffa3a09a374":{"children":["427cb3b8-fdda-48e2-ba0c-dea9a3e9519d"],"id":"bf187fa1-857c-4775-b69d-1ffa3a09a374"}},"rows":{"427cb3b8-fdda-48e2-ba0c-dea9a3e9519d":{"config":{"fieldset":false,"legend":"","inputGroup":false},"children":["ea934111-cd14-40d0-aba1-9cbb53bce0fb"],"className":["formeo-row"],"id":"427cb3b8-fdda-48e2-ba0c-dea9a3e9519d"}},"columns":{"ea934111-cd14-40d0-aba1-9cbb53bce0fb":{"config":{"width":"100%"},"children":["8e6fc22b-e321-4e51-a147-dae7877519fc"],"className":"formeo-column","id":"ea934111-cd14-40d0-aba1-9cbb53bce0fb"}},"fields":{"8e6fc22b-e321-4e51-a147-dae7877519fc":{"conditions":[{"if":[{"source":"","sourceProperty":"value","comparison":"equals","target":"","targetProperty":"value"}],"then":[{"target":"","targetProperty":"value","assignment":"equals","value":""}]}],"tag":"input","attrs":{"type":"radio","required":false},"config":{"label":"Radio Group","disabledAttrs":["type"]},"meta":{"group":"common","icon":"radio-group","id":"radio"},"options":[{"label":"Radio 1","value":"radio-1","selected":false},{"label":"Radio 2","value":"radio-2","selected":false},{"label":"Radio 3","value":"radio-3","selected":false}],"id":"8e6fc22b-e321-4e51-a147-dae7877519fc"}}}')
        }
    </cfscript>

    <script>
        let renderer = new FormeoRenderer({
            renderContainer: '.render-form'
        });
        
        let j = #testing#
        renderer.render(j);

    </script>

</body>

</html>
</cfoutput>