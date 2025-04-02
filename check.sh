#!/bin/bash

# Check for required dependencies
if ! command -v yamllint >/dev/null 2>&1; then
    echo "🚨 yamllint is not installed"
    if [[ "$(uname)" == "Darwin" ]]; then
        echo "💡 To install on macOS, run: brew install yamllint"
    fi
    exit 1
fi

# Initialize counter for violations
VIOLATIONS=0
FIX_FILE="fix.sh"

rm -f "$FIX_FILE"

# Function to add fix suggestion
add_fix() {
    local service="$1"
    local error="$2"
    local fix="$3"
    echo "🚨 $service: $error"
    echo "$fix" >> "$FIX_FILE"
    chmod +x "$FIX_FILE"
    ((VIOLATIONS++))
}

# Check root README.md for service links
check_root_readme() {
    local service="$1"
    if ! grep -q "href=\"apps/$service\"" README.md; then
        add_fix "$service" "Missing link in root README.md Available Services table" \
            "echo '| [$service](./apps/$service) | Description here |' >> README.md"
    fi
}

# Check service README.md requirements
check_service_readme() {
    local service="$1"
    local readme="apps/$service/README.md"

    # Check if README.md exists
    if [ ! -f "$readme" ]; then
        add_fix "$service" "Missing README.md" "touch $readme"
        return
    fi

    # Check for service description
    if ! grep -q "^#.*$service" "$readme" || ! grep -q "^[^#].*" "$readme"; then
        add_fix "$service" "Missing service description" \
            "echo '# $service\n\nAdd service description here.' >> $readme"
    fi

    # Check for product documentation link
    if ! grep -q "\[.*documentation.*\](http" "$readme"; then
        add_fix "$service" "Missing product documentation link" \
            "echo '## Documentation\n\n[Official documentation](link_here)' >> $readme"
    fi

    # Check for product repository link
    if ! grep -q "\[.*repository.*\](http" "$readme"; then
        add_fix "$service" "Missing product repository link" \
            "echo '## Repository\n\n[Official repository](link_here)' >> $readme"
    fi

    # Check for network isolation section
    if ! grep -q "^##.*Network.*Isolation" "$readme"; then
        add_fix "$service" "Missing network isolation section" \
            "echo '## Network Isolation\n\nDescribe network configuration here.' >> $readme"
    fi

    # Check for known issues section
    if ! grep -q "^##.*Known.*Issues" "$readme"; then
        add_fix "$service" "Missing known issues section" \
            "echo '## Known Issues\n\n- None reported yet.' >> $readme"
    fi
}

# Check icon requirements
check_icon() {
    local service="$1"
    local icon="apps/$service/icon.png"

    if [ ! -f "$icon" ]; then
        add_fix "$service" "Missing icon.png" "touch $icon"
        return
    fi

    # Check icon dimensions using file command
    if command -v file >/dev/null 2>&1; then
        dimensions=$(file "$icon" | grep -oE '[0-9]+\s*x\s*[0-9]+' || echo "unknown")
        if [ "$dimensions" != "75 x 75" ]; then
            if [[ "$(uname)" == "Darwin" ]]; then
                add_fix "$service" "Icon dimensions are not 75x75 ($dimensions)" \
                    "sips -Z 75 $icon"
            else
                add_fix "$service" "Icon dimensions are not 75x75 ($dimensions)" \
                    "# Please resize $icon to 75x75 pixels"
            fi
        fi
    fi
}

# Check docker-compose.yml
check_docker_compose() {
    local service="$1"
    local compose_file="apps/$service/docker-compose.yml"

    if [ ! -f "$compose_file" ]; then
        add_fix "$service" "Missing docker-compose.yml" "touch $compose_file"
        return
    fi

    # Check docker-compose.yml with yamllint
    if ! yamllint "$compose_file" >/dev/null 2>&1; then
        add_fix "$service" "docker-compose.yml fails yamllint validation" \
            "# Please fix YAML issues in $compose_file"
    fi
}

# Optimize icons on macOS
if [[ "$(uname)" == "Darwin" ]]; then
    echo "🔄 Optimizing icons on macOS..."
    for icon in ./apps/*/icon.png; do
        if [ -f "$icon" ]; then
            sips -Z 75 "$icon" >/dev/null 2>&1
        fi
    done
fi

# Main check loop
echo "🔍 Checking services..."
for service_dir in apps/*/; do
    service=$(basename "$service_dir")
    echo "📦 Checking $service..."
    
    check_root_readme "$service"
    # check_service_readme "$service"
    check_icon "$service"
    # check_docker_compose "$service"
done

# Final report
if [ $VIOLATIONS -eq 0 ]; then
    echo -e "\n🟢 All good!"
    exit 0
else
    echo "-----------"
    echo "🚨 Found $VIOLATIONS violation(s)"
    echo "📝 Fix suggestions saved in $FIX_FILE:"
    # cat "$FIX_FILE"
    exit $VIOLATIONS
fi