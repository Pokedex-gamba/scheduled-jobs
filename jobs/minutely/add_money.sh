#!/bin/sh

amount=3

curl -o /dev/null -s -w "Adding $amount money to all returned status code: %{http_code}\n" http://money-manager-api/addMoneyToAll?amount=$amount
