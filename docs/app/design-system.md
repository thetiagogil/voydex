# Design System

Voydex should feel like a clean adventure companion: warm, playful, polished, and Pokemon-adjacent without becoming loud or toy-like.

Avoid a corporate SaaS hero, a generic wiki look, and overly game-ish UI chrome.

## Design Direction

The desired mix:

- Adventure.
- Clean companion app.
- Pokemon-related, but not a direct Pokemon brand copy.
- Soft illustrated scenic imagery.
- Clear data surfaces for repeated use.
- Subtle personality through assets, icons, color, and state.

## Core UI Stack

- Tailwind CSS.
- shadcn-style primitives in `src/components/ui`.
- Lucide icons for interface actions.
- Custom visual assets for hero/background/brand moments.

## Color Tokens

Global tokens live in `src/app/globals.css`.

The palette should keep teal as the primary Voydex identity while using supporting colors for state and Pokemon-related semantics. Avoid turning the whole app into one flat teal theme.

Existing token groups:

- Base UI tokens: background, foreground, card, primary, secondary, muted, accent, destructive, border, input, ring.
- App semantic tokens: success, info, warning, rare, legendary, mythic, seen, battle, milestone, decision.
- Pokemon type tokens: normal, fire, water, electric, grass, ice, fighting, poison, ground, flying, psychic, bug, rock, ghost, dragon, dark, steel, fairy.

## Layout Rules

- App pages use the authenticated `AppShell`.
- The main app content should feel focused and readable, usually centered with a max width.
- The background image can remain subtly visible around the edges and behind content.
- Avoid nested cards unless the inner card is a true repeated item or modal.
- Prefer dense but clear operational surfaces for logged-in app workflows.

## Hero Direction

The hero should use layered assets:

- Clean scenic background image.
- Separate brand mark image.
- Separate Voydex title image.
- Native text subtitle.
- Native buttons.

This keeps the hero close to the selected visual reference while preserving responsive layout, accessibility, and clickable controls.

## Buttons And Controls

- Use icons for clear actions.
- Use text buttons for primary commands where labels matter.
- Keep button styling cleaner than the generated mockup. The button shape can be slightly curved, but avoid heavy decorative borders.
- Primary buttons should not use a mismatched border color.

## Icons And Pokemon Type Assets

Pokemon type SVGs live under:

```txt
public/icons/types
```

Use them for Pokemon-specific surfaces where type identity matters. Use Lucide icons for general app actions and navigation.

## Accessibility

- Image-only brand text must have an accessible text equivalent, usually an `sr-only` heading.
- Buttons and links need visible labels or accessible names.
- Do not rely on color alone for completion, warnings, or disabled states.
- Check mobile layouts for text overflow and overlapping controls.
