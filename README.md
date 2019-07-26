# Overview

Etheraizer is a crowdfunding app that works on the Blockchain.
Users can create and present their projects for funding as well as support other projects on the platform.
All projects get a blockchain address, where the current balance as well as project owner (which are shown in the frontend) can be verified.
All support transactions can also be easily verified, both in the frontend and in the blockchain.

Users can pay and fund projects using the Ethereum blockchain and connecting their wallets through Metamask.

# Motivation

This app was built as the final project for the Flatiron School Software Engineering Bootcamp. I have built the entire application in two weeks.
A blockchain-based crowdfunding app, especially as cryptocurrencies get more stable, would be able to address some of the shortcomings of regular crowdfunding platforms, especially in what concerns transparency and intermediary fees.

# Server

The backend API was built using Ruby on Rails with a PostgreSQL database.

The blockchain-related backend is written in Javascript and blockchain smart contracts in Solidity.
I have adopted a TDD approach for writing the contracts, using Mocha.
During development, I have used the Kovan Ethereum Test Network.


# Client

The client-side of the application is built in React, using Next.js for server-side rendering.
The frontend design was made using Semantic UI and CSS.
This can be found in a different [GitHub repository](https://github.com/francosta/etheraizer-frontend).

# User Journeys

As a user, I can link my Ether wallet to Etheraizer, using the Metamask browser extension. Any user can create a project, usinf a description, a funding goal and an image.
The project will be deployed to the Blockchain as soon as the user sets a minimum contribution for supporters. The user will have to pay a small transaction fee to deploy the project, which is processed by Metamask.

Etheraizer will create a link to the project's address in the Blockchain, where all of the information presented in the frontend can be verified.

Any user can also browse through and support any projects being funded in Etheraizer. The support transaction will also be handled through Metamask and can be verified through the link in the frontend to the Blockchain page.

Any user can also check and edit their own profile and see the project's they've created as well the ones they've supported.

# Screenshots and Video Demo

### You can check a video demo of Etheraizer [here](https://youtu.be/lR9p1DDKhJE). 





![LandingPage](https://github.com/francosta/etheraizer-frontend/blob/master/public/Screenshots/landingPage.png)
Landing page

![signUpForm](https://github.com/francosta/etheraizer-frontend/blob/master/public/Screenshots/signUp.png)
Sign up page

![AllProjects](https://github.com/francosta/etheraizer-frontend/blob/master/public/Screenshots/allProjects.png)
All projects page

![ProjectPage](https://github.com/francosta/etheraizer-frontend/blob/master/public/Screenshots/projectPage.png)
Project page

