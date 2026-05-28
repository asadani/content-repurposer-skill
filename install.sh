#!/usr/bin/env bash
# Install the content-repurposer skills into your Claude Code skills directory.
# Detects ~/.claude/skills/ (standard) vs ~/.claude-personal/skills/ (alternate).
# Pass an explicit target dir as $1 to override detection.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS=(linkedin-write newsletter-write github-page-write medium-write substack-write)

detect_skills_dir() {
  if [[ -n "${1:-}" ]]; then
    echo "$1"
    return
  fi
  if [[ -d "${HOME}/.claude-personal" ]]; then
    echo "${HOME}/.claude-personal/skills"
    return
  fi
  echo "${HOME}/.claude/skills"
}

TARGET="$(detect_skills_dir "${1:-}")"

echo "Repo:    ${REPO_ROOT}"
echo "Target:  ${TARGET}"
echo

mkdir -p "${TARGET}"

for skill in "${SKILLS[@]}"; do
  src="${REPO_ROOT}/skills/${skill}"
  dst="${TARGET}/${skill}"
  if [[ ! -d "${src}" ]]; then
    echo "skip ${skill} (not found at ${src})"
    continue
  fi
  ln -sfn "${src}" "${dst}"
  echo "linked  ${dst} -> ${src}"
done

echo
echo "Done. Restart your Claude Code session to load the skills."
echo "Then invoke any of: ${SKILLS[*]}"
