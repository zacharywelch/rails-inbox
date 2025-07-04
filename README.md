# Rails Hotwire Email Inbox

A modern email inbox application built with Rails 8 and Hotwire, demonstrating server-side rendering with SPA-like user experience.

## Purpose

This application implements the same email inbox functionality as the [React Email Inbox Tutorial](https://github.com/zacharywelch/inbox), allowing direct comparison between client-side and server-side approaches.

**Key architectural differences:**
- **Rails + Hotwire**: Server-rendered HTML with progressive enhancement
- **React version**: Client-side rendering with complex state management

## Features

- 📧 Email list with responsive layout
- 📱 Mobile-first design with Tailwind CSS
- ⚡ Fast navigation with Turbo Drive
- 🔄 Instant UI updates with Turbo Streams (coming in later chapters)
- ⭐ Interactive email actions (star, read, delete) with smooth UX

## Tech Stack

- **Rails 8.0.2** - Latest stable release
- **PostgreSQL 14+** - Production-ready database
- **Hotwire** (Turbo + Stimulus) - Modern Rails frontend
- **Tailwind CSS** - Utility-first styling
- **System fonts** - Optimal performance and readability

## Prerequisites

- Ruby 3.2+
- Rails 8.0+
- PostgreSQL 14+
- Node.js 18+ (for Tailwind CSS compilation)

## Setup

```bash
# Clone and setup
git clone [your-repo-url]
cd rails_hotwire_inbox

# Install dependencies
bundle install

# Setup database
rails db:create
rails db:migrate

# Start development server
bin/dev
```

Visit `http://localhost:3000` to see the application.

## Development

This application follows Rails conventions and demonstrates:

- **Convention over Configuration**: Minimal setup, maximum functionality
- **Progressive Enhancement**: Works without JavaScript, enhanced with it
- **Server-Side Rendering**: Fast initial page loads, excellent SEO
- **Instant UI Updates**: Smooth interactions without complex state management

## Architecture Benefits

| Aspect | Rails + Hotwire | React SPA |
|--------|-----------------|-----------|
| Initial Setup | One command | Multiple tools to configure |
| Page Load | Immediate HTML | JavaScript must execute first |
| State Management | Server-side, simple | Complex client-side libraries |
| UI Updates | Instant Turbo Streams | Manual state synchronization |
| SEO | Excellent by default | Requires SSR configuration |
| Bundle Size | ~50KB (Hotwire) | 200KB+ (React + ecosystem) |

## Tutorial Progress

- [x] **Chapter 1**: Rails 8 setup with Hotwire and Tailwind CSS
- [x] **Chapter 2**: Email models and database schema
- [x] **Chapter 3**: Email list with server-side rendering
- [x] **Chapter 4**: Interactive selection with Turbo Frames
- [x] **Chapter 5**: Interactive email actions with Turbo Streams
- [x] **Chapter 6**: Responsive email detail view
- [x] **Chapter 7**: Professional UI with ViewComponent
- [ ] **Chapter 8**: Advanced Hotwire patterns and optimizations

## License

This project is for educational purposes, demonstrating modern Rails development patterns.
