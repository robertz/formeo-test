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
    <div id="formeo-editor"></div>
    <script>
        var formeo = new FormeoEditor({
            editorContainer: '#formeo-editor',
            events: {
                onSave: (evt) => {
                    fetch('/test.cfm', {
                        method: "POST",
                        heaaders: {
                            'Content-Type': 'application/json'
                        },
                        body: JSON.stringify(formeo.formData)
                    })
                    .then(res => res.json())
                    .then(res => {
                        console.dir(res);
                    });
                }
            },
            svgSprite: 'https://draggable.github.io/formeo/assets/img/formeo-sprite.svg'
        });
    </script>
</body>

</html>