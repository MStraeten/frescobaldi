PACKAGES := "python-ly qpageview pygame-ce PyQt6 PyQt6-Qt6 PyQt6-sip PyQt6-WebEngine PyQt6-WebEngine-Qt6"

# Before a new release check if newer versions are available on PyPI
check-updates:
    @for pkg in {{PACKAGES}}; do \
        echo "=================================================="; \
        echo "📦 Package: $pkg"; \
        echo "--------------------------------------------------"; \
        pip index versions "$pkg"; \
        echo ""; \
    done
