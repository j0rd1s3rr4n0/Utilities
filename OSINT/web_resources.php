<!DOCTYPE html>
<html>
  <head>
    <title>Fuzzing</title>
    <style>
      /* Tu código CSS aquí */
    </style>
  </head>
  <body>
    <?php
$url = readline('Introduce la URL: ');

for ($i = 0; $i < 256; $i++) {
  $modifiedUrl = str_replace('FUZZ', strval($i), $url);

  $ch = curl_init();
  curl_setopt($ch, CURLOPT_URL, $modifiedUrl);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
  $response = curl_exec($ch);
  curl_close($ch);

  if (strlen($response) != 14013 && strlen($response) != 17693) {
    echo "URL: /inscripciones/$i\n";
    echo "Size: " . strlen($response) . " bytes\n";
    echo "Status code: $httpCode\n";
    echo "====================================\n";
  }
}
?>

    <form id="fuzzingForm">
      <label for="urlInput">Introduce la URL:</label>
      <input type="text" id="urlInput">
      <button type="submit">Enviar</button>
    </form>
    <div id="results"></div>
    <script>
      // Tu código JavaScript aquí
      const form = document.getElementById('fuzzingForm');
      const resultsContainer = document.getElementById('results');

      form.addEventListener('submit', (event) => {
        event.preventDefault();

        const url = document.getElementById('urlInput').value;

        for (let i = 0; i < 256; i++) {
          const modifiedUrl = url.replace('FUZZ', String(i));

          fetch(modifiedUrl)
            .then((response) => {
              if (response.status !== 14013 && response.status !== 17693) {
                const result = document.createElement('div');
                result.innerHTML = `
                  URL: /inscripciones/${i}<br>
                  Size: ${response.size} bytes<br>
                  Status code: ${response.status}<br>
                  ====================================
                `;
                resultsContainer.appendChild(result);
              }
            });
        }
      });
    </script>
  </body>
  
</html>
