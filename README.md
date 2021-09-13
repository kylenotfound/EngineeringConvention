# EngineeringConvention
Implementations of My Programming Languages Homework Assignment at Rowan University

The Alzarius Engineering Convention is holding a 3-day collection of workshops. They are going to offer a certificate to anyone who completes at least 5 credits' worth of workshops. Workshops are worth either 1 or 2 credits, so the certificate could be earned by attending five 1-credit workshops, three 2-credit workshops, or a mix of the two, such as three 1-credit workshops and one 2-credit workshop.

Each workshop has a specified start and stop time (using a 24-hour clock). A person can't participate in two workshops at once, so it's important to make sure that people don't sign up for two workshops that are happening at the same time.

Each workshop occurs on only one day (day 1, 2, or 3 of the Convention). No workshop occurs earlier than 6am (0600) or later than 11pm (2300).

You will write a program that checks a participant's proposed Convention schedule and determines 1) whether the proposed list of workshops is possible to attend, without any time conflicts, and 2) whether the proposed list contains at least 5 credits' worth of workshops, so that the attendee will earn a certificate.

A person's Convention schedule will be represented as a list of workshops, where each workshop entry contains these items:

A workshop number (a positive integer)
A day number (1, 2, or 3, indicating which day the workshop falls on)
A number of credits (1 or 2)
A start time, using a 24-hour clock
A stop time, using a 24-hour clock
All of these numbers are positive integers.

For example, the list

[2, 3, 1, 1200, 1315]
means that workshop 2 occurs on day 3 of the Convention, is worth 1 credit, begins at 12 noon, and ends at 1:15pm.
The exact format of the input and output will be slightly different for the four different languages, to make the input and output as easy as possible in each different language. The four input/output specifications for the four different languages are given below.

A time conflict is a pair of workshops that overlap in time; for example, [4, 1, 1, 1100, 1230] and [6, 1, 1, 1200, 1315] is a conflict, because both workshops are being held during the 12noon - 12:30pm time period. [4, 1, 1, 1100, 1230] and [6, 1, 1, 1230, 1315] is also a conflict, but [4, 1, 1, 1100, 1230] and [6, 1, 1, 1231, 1315] is not. Note that [4, 1, 1, 1100, 1230] and [8, 3, 1, 1200, 1315] is not a conflict, because these workshops occur on two different days.

There will be no more than 100 workshops in the Convention.
