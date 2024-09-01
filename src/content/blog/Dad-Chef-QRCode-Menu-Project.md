---
pubDate: 'August 31 2024'
title: 'Dad Chef QR Code Menu Project'
description: 'I made a menu page for my kids to order food for me to cook. It uses a QR code menu page that they scan and open menu webpage and then place their order. I then get a text message with the order.'
heroImage: '/dad-chef.jpeg'
---

We got this idea from a restaurant we went to for lunch and the kids asked about the QR code menu. We thought it was a fun idea and I thought it would be a fun project to do with the kids.

Using Cursor.sh IDE, I was able to cut the dev time down to just 30 minutes for this entire effort, including printing the QR code to hang in the kitchen.

Requirements:

- I wanted to be able to automatically show "Brunch" and "Snacks" menu items between 9am and 5pm and then "Dinner" items after 5pm.
- I wanted to be able to have sides available for each item.
- I wanted to be able to have options for # of items, like "eggs" and be able to select 1, 2, or 3 eggs.

I basically plugged this into Cursor.sh IDE and it generated the code for me and I edited it to make it work for my needs.

I followed up with "I want them to be able to submit the order only after putting in their name and it should text me the order."

It recommended EmailJS, which I had not heard of, but it was easy to setup and get working and more imporantly, free for 200 emails per month. The twist here is I used MMS to send the text message with the menu order to me, since it is formatted as an email.

For EmailJS, I setup a new email just for this and put the number I wanted to text me in the "To" field.

Here is the code for initializing EmailJS:

```javascript
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"></script>
  <script type="text/javascript">
    (function(){
      emailjs.init("<your-user-id>");
    })();
  </script>
```

For the submission modal:

```javascript
        emailjs.send("<your service token>", "<your template token>", {
          to_email: recipient,
          message: message
        }).then(function(response) {
          $('#successModal').addClass('is-active');
          $('#orderModal').removeClass('is-active');
          $('#orderForm')[0].reset();
        }, function(error) {
          alert('Error submitting order. Please try again.');
        });
```

That is about it!

I used a QR code generator site to make the QR code for the page and printed it out. The oldest tested it out with his iPad and it worked. I got a text message on my phone with the order.

The items on the list:

- Eggs
- Pancakes
- Waffles
- Grilled Cheese
- Mac and Cheese

And for snacks:

- Apple Slices
- Orange Slices
