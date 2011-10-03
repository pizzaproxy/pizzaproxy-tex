\documentstyle{order}

\begin{document}
%Sets the header
\header{<pizzeria>}{<street name + number>}{<phone number>}
%Starts the purchase environment
\startorder
%One purchase has 1..n orders
\addorder{<quantity>}{<order number>}{<order description>}{<single price>}{<total price>}
%One order has 0..n alternatives
\alternative{<alternative order number>}{<alternative pizzeria>}{<alternative street>}{<alternative phone number>}
%Once
\total{<total price>}
%Once
\finishorder

%Starts the purchase summary
\startsummary
%One summary has 1..n internal orders
\neworder{<internal order code>}
\additem{<quantity>}{<external order code>}{<order description>}{<totalled up price of this item>}
\calc{<total price of internal order>}
%Finishes the summary
\finishsummary
\end{document}
