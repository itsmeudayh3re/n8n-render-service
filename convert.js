const fs = require('fs');
const path = require('path');
const { v4: uuidv4 } = require('uuid');

const input = path.join(__dirname, 'reports', 'cucumber-report.json');
const output = path.join(__dirname, 'allure-results');

if (!fs.existsSync(output)) {
  fs.mkdirSync(output);
}

function mapStatus(status) {
  switch (status) {
    case 'passed': return 'passed';
    case 'failed': return 'failed';
    case 'skipped': return 'skipped';
    default: return 'broken';
  }
}

function convert() {
  if (!fs.existsSync(input)) {
    console.error(`❌ Input file not found: ${input}`);
    process.exit(1);
  }

  const data = JSON.parse(fs.readFileSync(input, 'utf8'));

  data.forEach(feature => {
    feature.elements.forEach(scenario => {
      const result = {
        uuid: uuidv4(),
        name: scenario.name,
        fullName: scenario.name,
        status: mapStatus(scenario.steps.slice(-1)[0].result.status),
        labels: [
          { name: 'feature', value: feature.name }
        ],
        steps: scenario.steps.map(step => ({
          name: step.name,
          status: mapStatus(step.result.status)
        }))
      };

      const filePath = path.join(output, `${result.uuid}-result.json`);
      fs.writeFileSync(filePath, JSON.stringify(result, null, 2));
    });
  });

  console.log(`✅ Converted ${data.length} features into Allure results at ${output}`);
}

convert();