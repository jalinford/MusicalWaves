Feature: home page
	As a lover of of Baroque music
	I want to know what concerts Ilana Bar-David is giving
	In order to attend them
	
	Scenario: See upcoming concerts
		Given I want to attend a Baroque concert given by Ilana
		When I go to the Musical Waves website
		Then I should see Ilana's next concert
	
	Scenario: There are no upcoming concerts
		Given I want to attend a Baroque concert given by Ilana
			And there are no upcoming concerts
		When I go to the Musical Waves website
		Then I should see 'No upcoming concert'

	Scenario: Sign up for e-mail alerts
		Given I am interested in Baroque music
			And I am on the Musical Waves homepage
		When I provide my email address
		Then I am added to Ilana's email list for upcomming concerts
			And I receive a confirmation email

	Scenario: See upcomning concerts
		Given I am interested in Baroque music
			And I am on the Musical Waves homepage
		When I go to the Concerts page
		Then I see a list of upcoming Baroque concerts, with details about:
			| Time |
			| Date |
			| Location |
			| Artists |
			| Program |

	Scenario: See artist profiles
		Given I am interested in Ilana and other Musical Waves performers
			And I cam on the Musical Waves homepage
		When I go to the Artists page
		Then I see a list of the Artists, with details about them including:
			| Name |
			| Picture |
			| Instrument |
			| Bio |

	Scenario: Buy Ilana's CDs
		Given I am interested in listening to Baroque music
			And I am on the Musical Waves homepage
		When I go to the Music page
		Then I should see hoow I can purchase Ilana's CDs, including:
			| Buy the CD direct from Ilana |

	Scenario: Listen to Ilana's Music
		Given I am interested in listening to Baroque music
			And I am on the Musical Waves homepage
		When I go to the Music page
		Then I should see how I can listen to Ilana's music, including:
			| Youtube |

	Scenario: Buy Concenert Tickets
		Given I am interested in buying a ticket to Ilana's next concert
			And I am on the Musical Waves homepage
		When I click on 'Buy Ticket'
		Then I should be able to buy a ticket through PayPal

# Note to self - take another look at the articles at the bottom: make them accessible?