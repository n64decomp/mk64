const fs = require('fs');
const yaml = require('js-yaml');

// Read the JSON file
fs.readFile('../../assets.json', 'utf8', (err, data) => {
  if (err) {
    console.error('Failed to read JSON file:', err);
    return;
  }

  try {
    // Parse the JSON data
    const jsonData = JSON.parse(data);

    // Create the YAML data structure
    const yamlData = { subsegments: [] };

    // Convert each key-value pair in the JSON data to the desired YAML format
      for (const key in jsonData) {
          if (jsonData.hasOwnProperty(key)) {
              const value = jsonData[key];
              const offsetValue = value.offsets.us[0];
              const dims = value.meta.dims || value.meta.size;
              let pal;
              if (value.meta.pal) {
                  pal = value.meta.pal;
              }
              let ext = key.replace(".png", '').split('.').pop();
              let segment;
              switch(ext) {
                  case "bin":
                      segment = [offsetValue, ext, key.replace(/\..*/), ''];
                      break;
                  case "tkmk00":
                      ext = ext.replace("rgba16.", '');
                      segment = [offsetValue, ext, key.replace(/\..*/, ''), dims];
                      break;
                  case "m64":
                      segment = [offsetValue, ext, key.replace(/\..*/, ''), dims];  
                      break;
                  case "ci8":
                      ext = ext.replace(/^[^.]*\./, '');
                      segment = [offsetValue, ext, key.replace(/\..*/, ''), dims[0], dims[1], pal[0], pal[1]];
                      break;
                  default:
                      ext = ext.replace(/^[^.]*\./, '');
                      segment = [offsetValue, ext, key.replace(/\..*/, ''), dims[0], dims[1]];
                      break;
            }
            yamlData.subsegments.push(segment);
        }
    }

    // Convert YAML data to YAML format
    const yamlString = yaml.dump(yamlData, { flowLevel: 2 });

    // Write the YAML data to a file
    fs.writeFile('output.yaml', yamlString, (err) => {
      if (err) {
        console.error('Failed to write YAML file:', err);
        return;
      }
      console.log('Conversion completed successfully.');
    });

  } catch (error) {
    console.error('Failed to parse JSON data:', error);
  }
});

function decimalToHex(d, padding) {
  var hex = Number(d).toString(16);
  padding = typeof (padding) === "undefined" || padding === null ? padding = 2 : padding;

  while (hex.length < padding) {
      hex = "0" + hex;
  }

  return hex;
}