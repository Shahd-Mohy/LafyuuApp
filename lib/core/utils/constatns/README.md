# Design System Constants

## Colors (const_colors.dart)
Comprehensive color palette following Figma design:

### Primary Colors
- `primaryBlue` - Main brand color (#40BFFF)
- `primaryDark` - Dark text color (#223263)
- `secondaryOrange` - Accent color (#FB7181)

### Text Colors
- `textPrimary` - Main text (#223263)
- `textSecondary` - Secondary text (#9098B1)
- `textLight` - White text (#FFFFFF)
- `textMuted` - Muted text (#6C757D)

### Button Colors
- `buttonPrimary` - Primary button (#40BFFF)
- `buttonSecondary` - Secondary button (#FB7181)
- `buttonDisabled` - Disabled state (#E5E5E5)

### Input Colors
- `inputBackground` - Input field background (#F8F9FA)
- `inputBorder` - Input border (#E5E5E5)
- `inputFocused` - Focused state (#40BFFF)
- `inputError` - Error state (#FB7181)

## Text Styles (text_styles.dart)
Consistent typography using Poppins font:

### Headlines
```dart
TextStyles.headlineLarge    // 32sp, Bold
TextStyles.headlineMedium   // 28sp, Bold
TextStyles.headlineSmall    // 24sp, SemiBold
```

### Titles
```dart
TextStyles.titleLarge       // 20sp, SemiBold
TextStyles.titleMedium      // 18sp, SemiBold
TextStyles.titleSmall       // 16sp, Medium
```

### Body Text
```dart
TextStyles.bodyLarge        // 16sp, Regular
TextStyles.bodyMedium       // 14sp, Regular
TextStyles.bodySmall        // 12sp, Regular
```

### Buttons
```dart
TextStyles.buttonPrimary    // 16sp, SemiBold, White
TextStyles.buttonSecondary  // 16sp, SemiBold, Blue
TextStyles.buttonOutline    // 16sp, Medium, Blue
```

### Input Fields
```dart
TextStyles.inputText        // 16sp, Regular
TextStyles.inputHint        // 16sp, Regular, Secondary
TextStyles.inputLabel       // 14sp, Medium
TextStyles.inputError       // 12sp, Regular, Red
```

### Links
```dart
TextStyles.linkPrimary      // 16sp, Medium, Blue
TextStyles.linkSecondary    // 14sp, Medium, Blue
```

### Special Styles
```dart
TextStyles.price            // 18sp, Bold, Blue
TextStyles.discount         // 14sp, Medium, Red
TextStyles.success          // 14sp, Medium, Green
TextStyles.warning          // 14sp, Medium, Yellow
```

## Usage Examples

### Using Colors
```dart
Container(
  color: backgroundWhite,
  child: Text(
    'Hello World',
    style: TextStyle(color: textPrimary),
  ),
)
```

### Using Text Styles
```dart
Text(
  'Welcome to Lafyuu',
  style: TextStyles.headlineMedium,
)

Text(
  'Sign in to your account',
  style: TextStyles.bodyMedium,
)
```

### Custom Modifications
```dart
Text(
  'Custom Text',
  style: TextStyles.bodyLarge.copyWith(
    color: primaryBlue,
    fontWeight: FontWeight.bold,
  ),
)
```

## Theme Integration
All colors and text styles are integrated into the app theme (`app_theme.dart`) for consistent Material Design components.