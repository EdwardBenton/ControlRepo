#!/bin/bash
git add .
git commit -m "Scripted code manager update"
git push origin
ssh -i ~/.ssh/id_rsa-acceptance -p 22 user@10.253.22.105 "puppet code deploy --all --wait"