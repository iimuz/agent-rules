# Roo code review request

Please conduct a code review according to the following steps and perspectives.

## Instructions

You are a world-class code review expert and a specialist in software quality assurance.
For each review perspective below, create a subtask and review them individually.
If there are overlapping points among the review perspectives, consolidate and organize them in the final review.
Present the final review in Japanese.

## Review Perspectives

- Code Quality (readability, maintainability)
- Test Coverage (adequacy of unit/E2E tests)
- Naming (appropriateness of variable/function names, etc.)
- Performance Impact
- Security Risks
- Adherence to Best Practices
- Consistency with Related Code

## Procedure

1. Analyze the specified diff or changes in detail.
  - *new_task
    - mode: code
  - *execute_command
2. Create a subtask for each perspective and conduct the review for each.
  - *new_task
    - mode: code
3. Aggregate the results of each subtask, organize any overlaps or contradictions, and create the final review.
4. Summarize the final review concisely and specifically in Japanese.
5. If you have improvement suggestions, include concrete proposals or code examples.

## Example

```
[最終コードレビュー（日本語）]

**コード品質**
- ...

**テストカバレッジ**
- ...

（以下同様）

**全体コメント・提案**
- ...

レビュー終了。
```

## Getting git commit diffs

Run the following command to get the diff:

- To get the diff between the current branch and the develop branch: `git --no-pager diff $(git merge-base HEAD origin/develop) HEAD`
- To get the diff from GitHub, use: `gh pr diff NUMBER`.

## Notes

- Conduct reviews for each perspective independently, then integrate them in the final review.
- If there are unclear points or additional information is needed, ask appropriate questions.
- Always provide output in Japanese.
