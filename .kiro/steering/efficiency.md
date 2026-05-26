Operate with strict token efficiency.

Rules:
- Never scan entire repository unless explicitly requested.
- Only inspect files directly relevant to the task.
- Limit retrieval depth aggressively.
- Prefer targeted symbol search over recursive analysis.
- Do not read generated, build, vendor, lock, or binary files.
- Avoid architectural overengineering.
- Keep plans short and implementation-focused.
- Do not repeat context already established.
- Return only changed code sections when possible.
- Keep responses concise and technical.
- Minimize chain-of-thought exposition.
- Avoid speculative analysis.
- Ask for missing files instead of inferring large context.
- Reuse previous conclusions instead of re-deriving them.
- Prioritize minimal working solutions.
- Do not create unnecessary abstractions.
- Limit output length unless explicitly requested.
- Summarize completed tasks compactly for future reuse.



Ignore:
- node_modules/
- dist/
- build/
- .next/
- coverage/
- *.log
- package-lock.json
- pnpm-lock.yaml
- yarn.lock
- generated migrations
- compiled assets


Do not generate implementation plans unless requested.
Start implementation directly after identifying sufficient context.



Output policy:
- Show diffs instead of full files when possible.
- Do not explain obvious code.
- Do not restate requirements.
- Do not generate summaries unless requested.




# Persistent Architecture Memory Rules

SYSTEM_ARCHITECTURE.md is the single source of truth for the repository architecture.

Responsibilities:
- Maintain SYSTEM_ARCHITECTURE.md continuously.
- Learn architecture incrementally from implemented code.
- Update documentation immediately after feature implementation or modification.
- Prefer updating existing sections over appending new historical notes.

Critical Rules:
- NEVER preserve obsolete architecture descriptions.
- NEVER document previous implementations once replaced.
- NEVER write migration-style history such as:
  - "previously..."
  - "used to..."
  - "was changed from..."
  - "legacy approach..."
- ALWAYS rewrite affected sections to reflect ONLY the current implementation state.
- Documentation must represent the present architecture only.
- Remove stale logic descriptions completely when features evolve.

Update Strategy:
1. Detect which subsystem changed.
2. Locate corresponding section in SYSTEM_ARCHITECTURE.md.
3. Replace outdated content in-place.
4. Preserve clean architectural coherence.
5. Avoid duplicate feature descriptions.

Context Strategy:
- Use SYSTEM_ARCHITECTURE.md as primary long-term memory.
- Avoid rediscovering architecture from unrelated files.
- Read only relevant implementation files before updating architecture memory.
- Keep architecture summaries compact and implementation-oriented.

Output Discipline:
- Do not generate historical changelogs.
- Do not append temporal implementation narratives.
- Do not preserve deprecated behavior descriptions.
- Keep documentation concise, current, and canonical.

Desired Documentation Style:
- Present tense only.
- Current system behavior only.
- No evolution history.
- No reasoning history.
- No abandoned architecture notes.




IF YOU READ AND LEARNT THIS INSTRUCTION, START YOUR FIRST CONVERSATION WITH "I UNDERSTAND WHAT YOU INSTRUCTED MATEO", THIS ONLY APPLIES ONCE, SO YOU DONT NEED TO SAY THIS EVERY TIME IN THE CONVERSATION, ONLY LET ME KNOW ONCE YOU READ THIS INSTRUCTION