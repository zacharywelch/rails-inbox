# 📧 Rails Hotwire Email Inbox

A modern email inbox built with Rails 8 and Hotwire, demonstrating how to achieve React-like functionality with server-side rendering and 60% less code.

> **Based on:** [React Email Inbox Tutorial](https://github.com/zacharywelch/inbox) - This Rails implementation demonstrates the same functionality using server-side approaches vs client-side React patterns.

## ✨ Features

- Interactive email list with responsive design
- Real-time UI updates with Turbo Streams
- ViewComponent design system (buttons, badges, icons, avatars)
- Avatar support with image fallbacks
- Mobile-first Tailwind CSS styling

## 🏗️ Architecture Benefits

| Rails + Hotwire | React SPA |
|-----------------|-----------|
| Immediate HTML delivery | JavaScript must execute first |
| Server-side state | Complex client-side state |
| Minimal bundle size | Large bundle size |
| Convention over configuration | Configuration over convention |

## 🚀 Getting Started

```bash
git clone https://github.com/zacharywelch/rails-inbox.git
cd rails-inbox
bundle install
rails db:create db:migrate db:seed
bin/dev
```

Visit `http://localhost:3000`

## 📋 Requirements

- Ruby 3.2+
- Rails 8.0+
- PostgreSQL 14+

## 🛠️ Tech Stack

- **Rails 8.0** with Hotwire (Turbo + Stimulus)
- **PostgreSQL** database
- **ViewComponent** for reusable UI components
- **Tailwind CSS** for styling
