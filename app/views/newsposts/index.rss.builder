<h1>Newsposts#index</h1>
<p>Find me in app/views/newsposts/index.html.erb</p>

<% xml.instruct! :xml, :version => "1.0" %>
<% xml.rss :version => "2.0" do %>
<%  xml.channel do %>
<%    xml.title "Blog's Title" %>
<%    xml.description "Blog's Description" %>
<%    xml.link "http://www.goneboarding.co.uk/news" %>
<% for post in @posts %>
<%      xml.item do   %>
<%=       xml.title post.title %>
<%=       xml.description {xml.cdata!(simple_format(post.desc))} %>
<%=       xml.pubDate post.created_at.to_s(:rfc822) %>
<%=       xml.link post_url(post) %>
<%=      xml.guid post_url(post) %>