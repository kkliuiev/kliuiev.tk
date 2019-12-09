ssh -i "aws-cv-site.pem" ubuntu@ec2-54-198-212-12.compute-1.amazonaws.com "sudo rm -rf /home/ubuntu/dist/*"
scp -r -i "aws-cv-site.pem" ./* ubuntu@ec2-54-198-212-12.compute-1.amazonaws.com:./dist/
ssh -i "aws-cv-site.pem" ubuntu@ec2-54-198-212-12.compute-1.amazonaws.com "sudo rm -rf /var/www/html/*"
ssh -i "aws-cv-site.pem" ubuntu@ec2-54-198-212-12.compute-1.amazonaws.com "sudo cp -r /home/ubuntu/dist/* /var/www/html/"
ssh -i "aws-cv-site.pem" ubuntu@ec2-54-198-212-12.compute-1.amazonaws.com "sudo service apache2 restart"
