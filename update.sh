zip -r -9 dist.zip ./*
ssh -i "aws-cv-site.pem" ubuntu@ec2-54-198-212-12.compute-1.amazonaws.com "sudo rm -rf /home/ubuntu/dist/*"
scp -r -i "aws-cv-site.pem" dist.zip ubuntu@ec2-54-198-212-12.compute-1.amazonaws.com:./dist/
ssh -i "aws-cv-site.pem" ubuntu@ec2-54-198-212-12.compute-1.amazonaws.com "sudo rm -rf /var/www/html/*"
ssh -i "aws-cv-site.pem" ubuntu@ec2-54-198-212-12.compute-1.amazonaws.com "sudo unzip -q /home/ubuntu/dist/dist.zip -d /var/www/html"
ssh -i "aws-cv-site.pem" ubuntu@ec2-54-198-212-12.compute-1.amazonaws.com "sudo service apache2 restart"
