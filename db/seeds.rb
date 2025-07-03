# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Email.delete_all

emails = [
  {
    from: "team@github.com",
    subject: "Your pull request has been merged",
    body: "The pull request #123 for project 'react-email-client' has been merged successfully.",
    received_at: DateTime.current.beginning_of_day + 10.hours,
    read: false,
    starred: true,
    labels: ["work", "important"]
  },
  {
    from: "newsletter@javascript.com",
    subject: "This week in JavaScript",
    body: "Learn about the latest features in JavaScript and upcoming conferences.",
    received_at: 1.day.ago,
    read: true,
    starred: false,
    labels: ["newsletter"]
  },
  {
    from: "notifications@linkedin.com",
    subject: "You have 5 new connection requests",
    body: "5 people want to connect with you on LinkedIn. View all your pending invitations.",
    received_at: DateTime.parse("2025-05-16T22:45:00"),
    read: true,
    starred: false,
    labels: ["social"]
  },
  {
    from: "support@tailwindcss.com",
    subject: "Your subscription is expiring soon",
    body: "Your Tailwind CSS subscription will expire in 7 days. Renew now to keep access.",
    received_at: DateTime.parse("2025-05-16T11:20:00"),
    read: false,
    starred: true,
    labels: ["important"]
  },
  {
    from: "noreply@amazon.com",
    subject: "Your order has shipped",
    body: "Your recent order #A123456 has shipped and will arrive on Monday.",
    received_at: DateTime.parse("2025-05-15T16:35:00"),
    read: false,
    starred: false,
    labels: ["shopping"]
  },
  {
    from: "security@bank.com",
    subject: "Security alert: New login detected",
    body: "We detected a new login to your account from Chrome on Mac.",
    received_at: DateTime.parse("2025-05-15T14:22:00"),
    read: true,
    starred: false,
    labels: ["security"]
  },
  {
    from: "team@slack.com",
    subject: "Weekly digest: 15 new messages",
    body: "Here's what happened in your workspace this week.",
    received_at: DateTime.parse("2025-05-15T09:15:00"),
    read: false,
    starred: false,
    labels: ["work"]
  },
  {
    from: "calendar@google.com",
    subject: "Meeting reminder: Team standup in 30 minutes",
    body: "Don't forget about your meeting with the development team.",
    received_at: DateTime.parse("2025-05-14T08:30:00"),
    read: true,
    starred: true,
    labels: ["work", "meeting"]
  },
  {
    from: "billing@hosting.com",
    subject: "Invoice #2024-001234 is ready",
    body: "Your monthly hosting invoice is now available for download.",
    received_at: DateTime.parse("2025-05-14T06:00:00"),
    read: false,
    starred: false,
    labels: ["billing"]
  },
  {
    from: "updates@npm.com",
    subject: "Weekly package update summary",
    body: "5 of your packages have available updates this week.",
    received_at: DateTime.parse("2025-05-13T12:00:00"),
    read: true,
    starred: false,
    labels: ["development"]
  },
  {
    from: "alerts@monitoring.com",
    subject: "Server performance alert",
    body: "CPU usage on server-01 exceeded 85% for 10 minutes.",
    received_at: DateTime.parse("2025-05-13T15:45:00"),
    read: false,
    starred: true,
    labels: ["alerts", "important"]
  },
  {
    from: "newsletter@reactjs.org",
    subject: "React 19 is now available!",
    body: "Learn about the new features and breaking changes in React 19.",
    received_at: DateTime.parse("2025-05-12T18:30:00"),
    read: true,
    starred: true,
    labels: ["newsletter", "development"]
  },
  {
    from: "hr@company.com",
    subject: "Employee handbook update",
    body: "Please review the updated remote work policies in section 4.2.",
    received_at: DateTime.parse("2025-05-12T10:15:00"),
    read: false,
    starred: false,
    labels: ["hr", "company"]
  },
  {
    from: "support@figma.com",
    subject: "New collaboration features available",
    body: "Check out the latest updates to improve team collaboration.",
    received_at: DateTime.parse("2025-05-11T16:20:00"),
    read: true,
    starred: false,
    labels: ["design", "tools"]
  },
  {
    from: "community@stackoverflow.com",
    subject: "Your answer was accepted!",
    body: "Congratulations! Your JavaScript answer received 25+ upvotes.",
    received_at: DateTime.parse("2025-05-11T13:42:00"),
    read: false,
    starred: true,
    labels: ["community"]
  },
  {
    from: "product@company.com",
    subject: "Q4 Product Roadmap & Feature Updates - Detailed Review",
    body: "Hi Team,\n\nI hope this email finds you well. I wanted to provide a comprehensive overview of our Q4 product roadmap and the exciting features we'll be rolling out over the next few months.\n\nOur Q4 roadmap focuses on three key areas: user experience improvements, performance optimizations, and new feature development. We've received tremendous feedback from our user base, and this roadmap directly addresses their most requested features.\n\n1. Advanced Search Functionality\n\nWe're implementing a powerful search system that will allow users to:\n- Search across all their content with natural language queries\n- Filter results by date, type, and custom tags\n- Save frequently used searches for quick access\n- Export search results in multiple formats\n\nThe search functionality will use machine learning to improve results over time, learning from user behavior and preferences.\n\n2. Real-time Collaboration Tools\nBuilding on our existing collaboration features, we're adding:\n- Live cursor tracking so team members can see where others are working\n- Real-time commenting and suggestion system\n- Version history with visual diff comparisons\n- Conflict resolution tools for simultaneous edits\n\nThis will make our platform a true collaborative workspace where teams can work together seamlessly.\n\n3. Mobile App Enhancements\nOur mobile experience is getting a major upgrade:\n- Completely redesigned interface optimized for touch\n- Offline mode for viewing and editing content\n- Push notifications for important updates\n- Biometric authentication for enhanced security\n\nPerformance Improvements\n\nWe've been working hard on performance optimizations that will benefit all users:\n\nBackend Optimizations\n- Database query optimization reducing load times by 40%\n- Improved caching strategies for frequently accessed data\n- Auto-scaling infrastructure to handle traffic spikes\n- Background processing for heavy operations\n\nFrontend Improvements\n- Lazy loading for large datasets\n- Optimized bundle sizes reducing initial load time\n- Improved memory management\n- Better error handling and recovery\n\nUser Experience Updates\n\nBased on extensive user research, we're making several UX improvements:\n\nNavigation Redesign\n- Simplified menu structure with clearer categorization\n- Contextual navigation that adapts to user workflow\n- Improved breadcrumb system for better orientation\n- Quick access toolbar for frequently used actions\n\nAccessibility Enhancements\n- Full screen reader compatibility\n- High contrast mode for better visibility\n- Keyboard shortcuts for power users\n- Voice control integration\n\nNext Steps\n\nOver the next few weeks, we'll be:\n\n1. Finalizing technical specifications for each feature\n2. Beginning development sprints with dedicated teams\n3. Setting up beta testing groups for early feedback\n4. Preparing marketing materials for feature announcements\n5. Scheduling regular progress reviews and stakeholder updates\n\nConclusion\n\nThis roadmap represents a significant step forward for our platform. The features we're developing will not only meet current user needs but position us for future growth and market leadership.\n\nI'm excited about what we're building and confident in our team's ability to deliver these improvements on schedule. The combination of new features, performance improvements, and enhanced user experience will make our platform more valuable than ever.\n\nPlease review this roadmap and let me know if you have any questions or concerns. I'll be scheduling individual meetings with team leads to discuss implementation details and resource allocation.\n\nLooking forward to an exciting Q4!\n\nBest regards,\nSarah Chen\nVP of Product Development\n\nP.S. Don't forget about our all-hands meeting next Friday where we'll dive deeper into the technical implementation details. Coffee and pastries will be provided!\n\n---\n\nThis email contains confidential information. If you received this email in error, please delete it immediately and notify the sender.",
    received_at: DateTime.current.beginning_of_day + 9.hours + 30.minutes,
    read: false,
    starred: true,
    labels: ["important", "product", "roadmap"]
  }
]

emails.each do |attributes|
  Email.create!(attributes)
end

puts "Created #{Email.count} emails"
puts "Unread: #{Email.unread.count}"
puts "Starred: #{Email.starred.count}"
