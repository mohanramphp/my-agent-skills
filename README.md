# my-agent-skills

Collection of my own agent skills for automating developer repeated tasks

# 🚀 PR Reviewer Skill

A **Copilot Skill** that performs **production-grade Pull Request (PR) reviews** using AI.

It analyzes your code changes, detects issues, and provides structured feedback — just like a **senior engineer reviewing your PR**.

---

## ✨ What This Skill Does

PR Reviewer automatically reviews your code changes and helps you:

### 🔍 1. Understand the Change

- Detects what files were modified
- Identifies the purpose of the change (feature, bug fix, refactor)

---

### 🚨 2. Detect Critical Issues

- Bugs and broken logic
- Null/undefined errors
- Breaking changes

---

### ⚠️ 3. Identify Risks

- Performance issues
- Memory leaks
- Async/concurrency problems

---

### 🧹 4. Improve Code Quality

- Detects duplication
- Flags poor naming
- Highlights maintainability issues

---

### 🅰️ 5. Angular Best Practices (Auto-Detected)

If your PR contains Angular code, the skill:

- Applies Angular best practices
- Suggests better architecture (component vs service)
- Detects anti-patterns (fat components, improper logic placement)
- Highlights performance issues (change detection, missing `trackBy`)

👉 It leverages Angular expertise from
the Angular ecosystem automatically.

---

### 🧪 6. Suggest Missing Test Cases

- Identifies untested logic
- Recommends **specific test scenarios**
- Focuses on edge cases and failures

---

### ✅ 7. Gives a Final Verdict

At the end of the review, you get:

- **APPROVE**
- **APPROVE WITH CHANGES**
- **REQUEST CHANGES**

With a clear reason.

---

## 🧠 How It Works

1. The skill extracts the **diff between your branch and base branch**
2. Filters out noise (formatting, unnecessary files)
3. Analyzes only meaningful changes
4. Applies:
   - General code review logic
   - Angular-specific rules (if applicable)

5. Produces a **structured review report**

---

## 📦 Project Structure

```
.github/
└── skills/
    └── pr-reviewer/
        ├── skill.md              # Core review logic
        └── scripts/
            ├── get-diff.sh       # Fetches git diff
            └── filter-diff.sh    # Cleans and filters diff
```

---

## 🛠️ How to Use

### ✅ Step 1: Install the Skill

Place the folder inside your repository:

```
.github/skills/pr-reviewer/
```

---

### ✅ Step 2: Open Copilot Chat

In your IDE (VS Code / GitHub UI), open **Copilot Chat**

---

### ✅ Step 3: Run the Skill

Type:

```
@pr-reviewer review this PR
```

OR

```
Use pr-reviewer to review my current branch changes
```

---

### 📄 Example Output

```
### 🔍 Summary
Adds user profile feature

---

### 🔴 Critical Issues
- user.service.ts: Missing null check → add validation

---

### 🟠 High Risk Issues
- API call inside loop → may cause performance issues

---

### 🅰️ Angular Issues
- Business logic inside component → move to service
- Missing trackBy in ngFor

---

### 🧪 Missing Test Cases
- Should handle API failure
- Should validate empty input

---

### ✅ Overall Verdict
REQUEST CHANGES – Critical issues detected
```

---

## ⚙️ Configuration (Optional)

By default, the skill compares against:

```
develop
```

You can modify this in:

```
scripts/get-diff.sh
```

---

## 🎯 Best Practices

- Run the skill **before creating a PR**
- Use it as a **pre-review assistant**
- Combine with human review for best results
- Keep PRs small for better analysis

---

## ⚠️ Limitations

- Cannot directly call other skills programmatically
- Relies on Copilot to apply Angular expertise when detected
- Works best with clean, focused diffs

---

## 💡 Why Use PR Reviewer?

Without this skill:

- Reviews are inconsistent
- Issues are missed
- Developers rely heavily on manual checks

With this skill:

- ✅ Consistent review quality
- ✅ Faster PR approvals
- ✅ Better code standards
- ✅ Reduced production bugs

---

## 🚀 Future Enhancements

- Auto PR comments via GitHub Actions
- Test case auto-generation
- Multi-language support (.NET, Java)
- Security analysis

---

## 🤝 Contributing

Feel free to extend the skill:

- Add new rules
- Improve diff filtering
- Customize for your tech stack

---

## 📌 Summary

PR Reviewer is your **AI-powered code reviewer** that:

- Thinks like a senior engineer
- Understands your code changes
- Helps you ship better code faster

---

Happy coding! 🎯
