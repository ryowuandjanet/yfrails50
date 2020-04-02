<td>
    <%= objectbuild.floor_height %>
</td>
<% if user_signed_in? %>
<td>
    <% if objectbuild.plusa.blank? %>
    <%= link_to "待評分", editplusratea_yfcase_objectbuild_path(@yfcase,objectbuild),class: "btn btn-primary btn-sm" %>
    <% else %>
    <%= objectbuild.surveyora %>
    <% end %>
</td>
<% end %>
<td>
    <% @plusa=objectbuild.plusa %>
    <%= @plusa %>
</td>
<% if user_signed_in? %>
<td>
    <% if objectbuild.plusb.blank? %>
    <%= link_to "待評分", editplusrateb_yfcase_objectbuild_path(@yfcase,objectbuild),class: "btn btn-primary btn-sm" %>
    <% else %>
    <%= objectbuild.surveyorb %>
    <% end %>
</td>
<% end %>
<td>
    <% @plusb=objectbuild.plusb %>
    <%= @plusb %>
</td>