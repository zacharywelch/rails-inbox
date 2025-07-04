# db/seeds.rb

Email.delete_all

emails = [
  {
    from: "team@github.com",
    avatar: "https://github.com/shadcn.png",
    subject: "Your pull request has been merged",
    body: "The pull request #123 for project 'react-email-client' has been merged successfully.",
    received_at: DateTime.current.beginning_of_day + 10.hours,
    read: false,
    starred: true,
    labels: ["work", "important"]
  },
  {
    from: "newsletter@javascript.com",
    avatar: "https://github.com/vercel.png",
    subject: "This week in JavaScript",
    body: "Learn about the latest features in JavaScript and upcoming conferences.",
    received_at: 1.day.ago,
    read: true,
    starred: false,
    labels: ["newsletter"]
  },
  {
    from: "notifications@linkedin.com",
    avatar: "https://github.com/antfu.png",
    subject: "You have 5 new connection requests",
    body: "5 people want to connect with you on LinkedIn. View all your pending invitations.",
    received_at: DateTime.parse("2025-05-16T22:45:00"),
    read: true,
    starred: false,
    labels: ["social"]
  },
  {
    from: "support@tailwindcss.com",
    avatar: "https://github.com/adamwathan.png",
    subject: "Your subscription is expiring soon",
    body: "Your Tailwind CSS subscription will expire in 7 days. Renew now to keep access.",
    received_at: DateTime.parse("2025-05-16T11:20:00"),
    read: false,
    starred: true,
    labels: ["important"]
  },
  {
    from: "noreply@amazon.com",
    avatar: "https://github.com/danabramov.png",
    subject: "Your order has shipped",
    body: "Your recent order #A123456 has shipped and will arrive on Monday.",
    received_at: DateTime.parse("2025-05-15T16:35:00"),
    read: false,
    starred: false,
    labels: ["shopping"]
  },
  {
    from: "security@bank.com",
    avatar: "https://github.com/gaearon.png",
    subject: "Security alert: New login detected",
    body: "We detected a new login to your account from Chrome on Mac.",
    received_at: DateTime.parse("2025-05-15T14:22:00"),
    read: true,
    starred: false,
    labels: ["security"]
  },
  {
    from: "team@slack.com",
    avatar: "https://github.com/tj.png",
    subject: "Weekly digest: 15 new messages",
    body: "Here's what happened in your workspace this week.",
    received_at: DateTime.parse("2025-05-15T09:15:00"),
    read: false,
    starred: false,
    labels: ["work"]
  },
  {
    from: "calendar@google.com",
    avatar: "https://github.com/rauchg.png",
    subject: "Meeting reminder: Team standup in 30 minutes",
    body: "Don't forget about your meeting with the development team.",
    received_at: DateTime.parse("2025-05-14T08:30:00"),
    read: true,
    starred: true,
    labels: ["work", "meeting"]
  },
  {
    from: "billing@hosting.com",
    # No avatar - will show initials fallback
    subject: "Invoice #2024-001234 is ready",
    body: "Your monthly hosting invoice is now available for download.",
    received_at: DateTime.parse("2025-05-14T06:00:00"),
    read: false,
    starred: false,
    labels: ["billing"]
  },
  {
    from: "newsletter@reactjs.org",
    avatar: "https://github.com/reactjs.png",
    subject: "React 19 is now available!",
    body: "Learn about the new features and breaking changes in React 19.",
    received_at: DateTime.parse("2025-05-12T18:30:00"),
    read: true,
    starred: true,
    labels: ["newsletter", "development"]
  },
  {
    from: "product@company.com",
    # No avatar - will show initials fallback
    subject: "Q4 Product Roadmap & Feature Updates - Detailed Review",
    body: "Hi Team,

I hope this email finds you well. I wanted to provide a comprehensive overview of our Q4 product roadmap and the exciting features we'll be rolling out over the next few months.

Our Q4 roadmap focuses on three key areas: user experience improvements, performance optimizations, and new feature development. We've received tremendous feedback from our user base, and this roadmap directly addresses their most requested features.

1. User Experience Improvements
We're implementing a complete redesign of our dashboard interface, making it more intuitive and user-friendly. The new design focuses on reducing cognitive load and improving task completion rates.

2. Performance Optimizations
Our engineering team has identified several bottlenecks in our current system. We're implementing database optimizations, caching improvements, and frontend performance enhancements that should reduce load times by 40%.

3. New Feature Development
The most exciting part of our roadmap includes three major new features that our users have been requesting:
- Advanced analytics dashboard
- Real-time collaboration tools
- Mobile app enhancements

Timeline and Milestones

The roadmap is structured across the following timeline:
- October: Foundation work and infrastructure improvements
- November: Core feature development and testing
- December: Beta testing and user feedback integration
- January: Full rollout and launch

Next Steps

Over the coming weeks, we'll be:
1. Finalizing technical specifications for each feature
2. Beginning development sprints with dedicated teams
3. Setting up beta testing groups for early feedback
4. Preparing marketing materials for feature announcements
5. Scheduling regular progress reviews and stakeholder updates

Conclusion

This roadmap represents a significant step forward for our platform. The features we're developing will not only meet current user needs but position us for future growth and market leadership.

I'm excited about what we're building and confident in our team's ability to deliver these improvements on schedule. The combination of new features, performance improvements, and enhanced user experience will make our platform more valuable than ever.

Please review this roadmap and let me know if you have any questions or concerns. I'll be scheduling individual meetings with team leads to discuss implementation details and resource allocation.

Looking forward to an exciting Q4!

Best regards,
Sarah Chen
VP of Product Development

P.S. Don't forget about our all-hands meeting next Friday where we'll dive deeper into the technical implementation details. Coffee and pastries will be provided!

---

This email contains confidential information. If you received this email in error, please delete it immediately and notify the sender.",
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
