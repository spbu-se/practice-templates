# OpenCode Project Quality Analyzers

A set of OpenCode agents for analyzing projects against good development practices.

## Agents

| Agent | Mode | Description |
|-------|-----|-------------|
| `analyzer-agent` | Primary | Main analyzer orchestrating all subagents |
| `code-quality-agent` | Subagent | Code quality and static analysis |
| `ci-cd-agent` | Subagent | CI/CD systems configuration |
| `c-cpp-sanitizers-agent` | Subagent | C/C++ sanitizers |
| `documentation-agent` | Subagent | Documentation completeness |
| `git-practices-agent` | Subagent | Git practices |
| `license-agent` | Subagent | Project licensing |
| `releases-security-agent` | Subagent | Releases and security |
| `repository-hygiene-agent` | Subagent | Repository hygiene |

## Installation

### Option 1: Global Installation (all projects)

Copy agents to your global OpenCode config:

```bash
mkdir -p ~/.config/opencode/agents
cp *-agent.md ~/.config/opencode/agents/
```

### Option 2: Project-Specific Installation

Copy agents to your project's `.opencode/agents/` directory:

```bash
mkdir -p .opencode/agents
cp *-agent.md .opencode/agents/
```

## Usage

Invoke the primary analyzer agent in opencode TUI:

```
Analyze my project for good development practices
```

Or invoke a specific subagent:

```
@license-agent Analyze licensing
@code-quality-agent Analyze code quality
```

To call this agent from cli:
```
opencode run -m student-repo-reviewer "Analyze the project in the current folder"
```

## Requirements

- OpenCode CLI installed (https://opencode.ai)
- API key configured for your preferred provider
