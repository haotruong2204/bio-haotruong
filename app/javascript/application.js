// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import { Turbo } from "@hotwired/turbo-rails";
import "controllers";
// import "jquery";
// import "lodash";
// import "select2";
// import "flatpickr";
import "custom/toast";

Turbo.session.drive = false;
