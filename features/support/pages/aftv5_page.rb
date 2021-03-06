require 'page-object'

class AFTv5Page
  include PageObject

  include URL
  page_url URL.url('Aftpage')

  div(:aft_box, id: 'mw-articlefeedbackv5')
  a(:all_comments, text: /All comments/)
  a(:back_to_yesno, text: 'Back to step 1')
  span(:create_account, text: 'Create an account')
  a(:edit, text: 'Edit source')
  a(:feedback_page, text: 'feedback page')
  a(:helpful_feedback, href: 'http://en.wikipedia.org/wiki/Wikipedia:Feedback_guidelines', text: 'helpful feedback')
  text_area(:input_area, id: 'articleFeedbackv5-find-feedback')
  a(:learn_more, text: /Learn more/)
  a(:log_in, text: 'Log in')
  a(:most_relevant, text: /Most relevant/)
  span(:no, text: 'No')
  span(:post_feedback, text: 'Post your feedback')
  select(:sort_by, id: 'articleFeedbackv5-sort-select')
  a(:terms, href: '//wikimediafoundation.org/wiki/Feedback_privacy_statement', text: 'terms')
  a(:view_article, text: 'View article')
  a(:whats_this, text: "What's this?")
  span(:yes, text: 'Yes')
end
