# Testing Test

A small Sinatra application designed to help evaluate applicants for a testing position.

<img src="http://toddmazierski.com/wp-content/uploads/2011/08/testing-test.png" alt="Screeshot of Testing Test">

## Bugs

A few bugs have been introduced to the app intentionally:

  * Usability: no `<label>` tags for form labels
  * Appearance: form vertically expands slightly each time submitted
  * Usability: validation messages are generic and sometimes unhelpful
  * Compatibility: no feedback when JavaScript is disabled (ex. NoScript)
  * Usability: tab order does not match layout on page
  * Functionality: <em>current principal</em> and <em>years</em> values are converted to integers
  * Appearance: <em>difference</em> result can overflow container

There are plenty more bugs added unintentionally, however! Be sure to keep an open mind.

## Setup

1. Using [Bundler](http://bundler.io/), install the gem dependencies:

    ```
    $ bundle
    ```

2. Then, start the application:

    ```
    $ rackup
    ```
