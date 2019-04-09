# README

This is a meet up web app where you can find and connect with people with similar interests as you. Some functionalities include:
1. Mobile friendly web app
2. Authentication system, users are able to sign up, log in/out, and edit their profile information.
3. Users can create posts based on people they are looking for such as people with similar hobbies, study interests, or teams
4. When a user sees a post they like they can directly send the creator of the post a message
5. Users are able to add each other to their contacts
6. Users are able to send and receive private messages in real time
7. Users receive notifications for messages and contact requests in real time
8. Users are able to create group chats by adding users from their list of contacts
9. On desktop version all chats can be accessed via chat windows, users can add contact/create group chat functionality from here
10. On mobile chats can only be rendered via a messenger, desktop version also has access to messenger
11. All real time functionality is implemented via ActionCable
12. Implemented Rails best practices, 
        1. Extracted all logic from controllers, views and models and put it in helper methods
        2. Wrote DRY code
        3. Wrote tests for features, helpers, models, requests and services using RSpec and Capybara