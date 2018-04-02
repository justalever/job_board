# Let's Build: With Ruby on Rails - Job Board with Stripe Payments

Welcome to what I'll be calling my tenth installment to my Let's Build: With Ruby on Rails series. In this build I'll cover how to build a filterable job board using Stripe as a payment gateway to post new jobs.

### More about the app

The basis of the application is a job board where anyone looking to get hired can come and apply for positions. If you are a user or company looking to post a job you can sign up for an account and do so for a fee. We use a combination of the [Stripe](https://stripe.com) API and the Stripe Ruby Gem to initialize a charge when a job gets posted.

If there are errors along the way the form will offer error feedback for both the Rails based form and the Stripe based form.

### Stripe Integration

Stripe has a variety of solutions when it comes to accepting payments securely. There's really no wrong way to do so but some applications may favor alternative approaches. In our case I opted for [Stripe Elements](https://stripe.com/elements) which is a drop in replacement that allows you to display a form for the credit card of which you can manipulate at will.

Styling it or triggering something to happen upon user input is completely up to you. If you'd rather bypass all of that customization you can always integrate the originally [Stripe.js](https://stripe.com/docs/stripe-js) library and or use [Stripe Checkout](https://stripe.com/docs/checkout) which is as simple as dropping in a form with key value pairs inside your application.

### Kicking off the build
In [previous builds](https://web-crunch.com/series/) I started from scratch by installing and configuring gems as we needed them. In order to save some time, I decided to create a [Rails application template](http://guides.rubyonrails.org/rails_application_templates.html). This approach is super useful if you find yourself reaching for the same files, gems, and other various features a Rails app has over and over. In my exact case I tend to use gems such as Devise, Guard, Bulma, SimpleForm, and more to create the same type of app for these screencasts.

With all of this said I decided to share my template of which I called [__Kickoff__](https://github.com/justalever/kickoff). In the videos I dicuss at greater length how everything here works but to make use of it you can download the repo and `cd` into it.

From that point you can create a new Rails app by running  `rails new myapp -m template.rb`. The `template.rb` file is where all the magic happens. It tells our new app how to configure itself and essentially presents a checklist of tasks to perform. This ultimately saves me a load of time!

#### Following along
If you used my template you should be in good shape to kick of building the job board. The main models we will utilize in this project are the `User` model and the `Job` model.

##### Jobs

Each `Job` will house quite a few fields of which are imporant for any type of job listing online.

Each `Job` will feature the following:

- Title -  `title:`
- Description - `description:text`
- Logo Avatar - via [Carrierwave](https://github.com/carrierwaveuploader/carrierwave) - `avatar:string`
- Website URL - `url:string`
- Type: Fulltime, Part-Time, Freelance, Contract `job_type:string`
- Location - `location:string`
- User ID - `user_id:integer`
- Remote ok - `remote_ok: boolean, default: false`
- apply_url - `apply_url:string`

Each `User` will have:

  - Name - `name:string`
  - Email - `email:string`
  - Stripe ID - `stripe_id:string`
  - Card Type - `card_type:string`
  - Card Last 4 - `card_last4:string`
  - Card Exp Mo - `card_exp_month:string`
  - Card Exp Year - `card_exp_year:string`
  - Expires at - `expires_at:datetime`
  - Admin - `admin:boolean`


Read more at [web-crunch.com ›](https://web-crunch.com)


