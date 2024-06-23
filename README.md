
# sig-kodo

A simple static Opal app to learn the Ruby to JavaScript workflow.

## Installation of dependencies:

1. Run `bundle install` to install the necessary Ruby gems.
2. Run `bower install` to install the necessary JavaScript libraries.

## Usage

1. Create a file named `app.rb` where you can write your Ruby code. This code will be compiled to JavaScript using Opal.
2. In the `index.html` file, include the Opal and Opal-browser JavaScript libraries.
3. Use a script tag with `type="text/ruby"` to include your Ruby file.
4. Open `index.html` in a web browser to see the result.

## How it works

This project uses Opal, a Ruby to JavaScript compiler, to write frontend code in Ruby. Opal-browser provides a Ruby interface to the DOM, making it easier to manipulate the web page using Ruby code.

### Workflow

1. Write Ruby code in `app.rb`.
2. Opal compiles this Ruby code to JavaScript.
3. Include the compiled JavaScript in your HTML file.
4. Open the HTML file in a browser to see your Ruby code in action.

This project is a simple example to demonstrate the workflow from Ruby to JavaScript using Opal.
```

## Steps to Run the Project

1. **Install Ruby gems**:
   ```sh
   bundle install
   ```

2. **Install Bower dependencies**:
   ```sh
   bower install
   ```

3. **Open `index.html` in your browser** to see the output "Hello from Opal!" displayed in the `#output` div.

By following these steps, you will have a simple static Opal app set up, allowing you to learn and understand the Ruby to JavaScript workflow.


## Project Structure

Let's start by defining a basic project structure:

```
my_opal_app/
├── Gemfile
├── Bowerfile
├── app.rb
├── index.html
└── README.md
```

### Gemfile

```ruby
source 'https://rubygems.org'

gem 'opal'
gem 'opal-browser'
```

### Bowerfile

```bower
{
  "name": "my_opal_app",
  "dependencies": {
    "opal": "latest",
    "opal-browser": "latest"
  }
}
```

### app.rb

This is where your Ruby code, which will be compiled to JavaScript using Opal, will reside.

```ruby
require 'opal'
require 'opal-browser'

Document.ready? do
  Document['#output'].text = "Hello from Opal!"
end
```

### index.html

This is the HTML file that will load the compiled JavaScript.

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sig-kodo</title>
</head>
<body>
    <div id="output"></div>
    <script src="bower_components/opal/opal.js"></script>
    <script src="bower_components/opal-browser/opal-browser.js"></script>
    <script type="text/ruby">
        require 'app'
    </script>
</body>
</html>
```
