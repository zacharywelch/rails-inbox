# 📧 Rails Hotwire Email Inbox

A learning project exploring Rails 8 and Hotwire by building an email inbox interface. This implementation follows the same design and functionality as a [React tutorial](https://github.com/zacharywelch/inbox) to compare server-side vs client-side approaches.

## ✨ Features

- Interactive email list with starring, read/unread states, and real-time updates
- Responsive design with mobile-first Tailwind CSS styling
- ViewComponent design system with avatar fallbacks and reusable UI
- Progressive enhancement (works without JavaScript)

## 🏗️ Architecture Benefits

| Rails + Hotwire | React SPA |
|-----------------|-----------|
| **Immediate HTML delivery** | JavaScript must execute first |
| **60% less code** | Complex state management required |
| **~50KB bundle size** | ~200KB+ React dependencies |
| **Convention over configuration** | Configuration over convention |
| **Automatic UI updates** via Turbo Streams | Manual state updates and re-renders |
| **Single language (Ruby)** | Multiple languages (JS + backend) |

## 🚀 Getting Started

```bash
git clone https://github.com/zacharywelch/rails-inbox.git
cd rails-inbox
bundle install
rails db:create db:migrate db:seed
bin/dev
```

Visit http://localhost:3000

## 🎨 Component Library

Explore the ViewComponent design system with interactive previews:

Visit http://localhost:3000/lookbook to browse all components with live controls for testing different variants, sizes, and states.

## 📋 Requirements

- Ruby 3.2+
- Rails 8.0+
- PostgreSQL 14+

## 🛠️ Tech Stack

- **Rails 8.0** with Hotwire (Turbo + Stimulus)
- **PostgreSQL** database
- **ViewComponent** for reusable UI components
- **Lookbook** for component development and documentation
- **Tailwind CSS** for styling
