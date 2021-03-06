// angular.module('admin.templates', []);

app["admin"].constant("ADMIN_TEMPLATES", {
  channels: {
    index:  "/assets/templates/admin/channels/index.html",
    _index: {
    },
    show: "/assets/templates/admin/channels/show.html",
    new: "/assets/templates/admin/channels/new.html"
  },
  entries: {
    index:  "/assets/templates/admin/entries/index.html",
    _index: {
    },
    show: "/templates/admin/entries/show.html",
    new: "/templates/admin/entries/new.html"
  }
});