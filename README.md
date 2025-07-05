# 📧 Rails Hotwire Email Inbox

A learning project exploring Rails 8 and Hotwire by building an email inbox interface. This implementation follows the same design and functionality as a [React tutorial](https://github.com/zacharywelch/inbox) to compare server-side vs client-side approaches.

## ✨ Features

- Interactive email list with starring, read/unread states, and real-time updates
- Responsive design with mobile-first Tailwind CSS styling
- ViewComponent design system with avatar fallbacks and reusable UI
- Progressive enhancement (works without JavaScript)

## 🏗️ Architecture Comparison

| Rails + Hotwire | React SPA |
|-----------------|-----------|
| **Server-rendered HTML** - immediate page loads | **Client-rendered** - consistent JavaScript environment |
| **Turbo Frames** - partial page updates without full refreshes | **Component re-rendering** - efficient DOM updates |
| **Automatic UI updates** via Turbo Streams | **Manual state updates** and re-renders |
| **Progressive enhancement** - works without JS | **JavaScript required** - needs runtime for functionality |
| **Database as source of truth** - no state synchronization | **Client state management** - manual sync with data |
| **Single language (Ruby)** - full-stack consistency | **Multi-language** - JavaScript frontend + backend API |
| **Minimal JavaScript** - ~50KB Hotwire bundle | **Larger bundles** - React + dependencies (~200KB+) |
| **Full-stack cohesion** - integrated development experience | **Specialized tooling** - best-in-class development tools |
| **Convention over configuration** - Rails patterns | **Explicit composition** - clear component logic |

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
