# Application Views

This documentation is to inform users of the template language used and the structure of the Style guide architecture.

## Background

The development team investigated different template engines (Pug [formerly Jade], Haml, ERB and Slim).
The consensus was to use Slim because it was lightweight and fast and work well with our backend language, Ruby.

## [Slim, A lightweight templating engine](http://slim-lang.com/)

[Slim, GitHub](https://github.com/slim-template/slim)

Slim is installed in the application's Gemfile `gem 'slim-rails'`
`require 'slim'` and `require 'slim/include'` is called within `config/application.rb`  to handle Slim's **include** class

## Structure

views
├── layouts
│   ├── \_body.html.slim              Partial used as a fallback if no **content_for :body_main** is called
│   ├── \_nav_hr.html.slim            Horizontal navigation partial
│   ├── \_nav_vr.html.slim            Vertical navigation partial
│   ├── \_nav_vr_*.html.slim          Vertical navigation partials that are used within the relevant sections of the Style guide
│   ├── application.html.slim         The base layout containing, doctype, html head, body and 'content_for' methods to access stored markup in order templates
│   └── sub_layout.html.slim          A child layout that extends **application.html.slim**, it contains grid based layout and **content_for** methods that will be referenced by Style giude views
└── styleguide                        The directory for the application default controller
    ├── \_samplePage.html.slim        A sample page template that can be duplicated to assist developers when making new pages
    ├── \_shared/**                   Directory containing shared partials used across multiple pages
    ├── \**/                          Directory for the Style guide structure and logical page paths
    │   ├── \**.html.slim             Pages within the section of the Style guide
    │   └── partials/**               Partials that are rendered within pages of the section
    └── index.html.slim               The default view of the Style guide controller (not necessarily the default page of the application as this can be changed within `config/routes.rb`)


Pages are built using a combination of content_fo methods, partials and [PUGIN](https://github.com/ukparliament/pugin) API calls.

When Rails renders a view as a response, it does so by combining the view with the current layout(s), in our case: view -> child layout -> base layout
