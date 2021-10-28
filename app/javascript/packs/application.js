// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import AOS from 'aos';
import "channels"
import 'bootstrap';
import { initSelect2 } from '../components/init_select2';
import { loadDynamicBannerText } from '../components/banner';
document.addEventListener("turbolinks:load", () => {
  initSelect2();
  loadDynamicBannerText();
  AOS.init();
});
Rails.start()
Turbolinks.start()
