# Selenium

My first Selenium script.
I have commented the Selenium tests located at *test/webdriver_spec.rb* because this would fail during the CDP because of the missing web drivers.

## Drivers

* Download the required [web drivers] (http://www.seleniumhq.org/download/)
* Add it to the System PATH
  * MacOS (/etc/paths), add the location where the web driver resides
  * Linux (/usr/bin/), add the web driver to this folder
* Restart terminal

## Run Selenium test only

```bash
$ rspec spec/selenium
```
