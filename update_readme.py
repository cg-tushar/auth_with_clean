import re
import yaml

# Load pubspec.yaml
with open('pubspec.yaml', 'r') as file:
    pubspec = yaml.safe_load(file)

# Extract dependencies and their versions
dependencies = pubspec.get('dependencies', {})
dev_dependencies = pubspec.get('dev_dependencies', {})

# Prepare markdown content
dependencies_md = "## Dependencies\n\n"
for dep, version in dependencies.items():
    dependencies_md += f"- {dep}: {version}\n"

dependencies_md += "\n## Dev Dependencies\n\n"
for dep, version in dev_dependencies.items():
    dependencies_md += f"- {dep}: {version}\n"

# Load README.md
with open('README.md', 'r') as file:
    readme_content = file.read()

# Replace the dependencies section in README.md
# This requires a marker in README.md like <!-- dependencies-start --> and <!-- dependencies-end -->
new_readme_content = re.sub(
    r'<!-- dependencies-start -->(.*?)<!-- dependencies-end -->',
    f'<!-- dependencies-start -->\n{dependencies_md}<!-- dependencies-end -->',
    readme_content,
    flags=re.DOTALL
)

# Write the updated content back to README.md
with open('README.md', 'w') as file:
    file.write(new_readme_content)
