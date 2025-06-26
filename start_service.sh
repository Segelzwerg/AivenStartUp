#!/bin/bash
echo "YES" | avn user login $AVN_USER_EMAIL
avn service $AVN_SERVICE --power-on
avn service wait $AVN_SERVICE
avn user logout