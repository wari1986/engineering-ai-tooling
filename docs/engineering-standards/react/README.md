# React engineering standards (taste layer)

This is a **human- and agent-readable** set of heuristics for consistent, high-quality React code.

## How we apply these standards

- Use them in code reviews and agent instructions.
- Prefer explicitness and readability over cleverness.
- Document exceptions in the PR description.

## Heuristics

### Components

- Keep components focused on a single responsibility.
- Prefer composition over inheritance.
- Use named exports for components.
- Avoid inline anonymous components in render paths.

### State and effects

- Minimize state; derive values where possible.
- Use `useMemo`/`useCallback` only when a measurable performance gain exists.
- Avoid side effects in render; use `useEffect` or explicit handlers.

### Data fetching

- Keep data fetching centralized (hooks or services).
- Handle loading, error, and empty states explicitly.

### Accessibility

- Provide semantic HTML and ARIA labels.
- Ensure focus management for dialogs and modals.

### Testing

- Test behavior, not implementation details.
- Cover critical user flows and error cases.

## Exceptions

Document exceptions in PRs and link to the decision record when needed.
