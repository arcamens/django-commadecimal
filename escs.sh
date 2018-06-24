##############################################################################
cd ~/projects/
git clone git@bitbucket.org:arcamens/commadecimal.git commadecimal-code
##############################################################################

# push, commadecimal, master.
cd ~/projects/django-commadecimal-code
# clean up all .pyc files. 
find . -name "*.pyc" -exec rm -f {} \;

git status
git add *
git commit -a
git push -u origin master
##############################################################################
# install.
cd ~/projects/django-commadecimal-code
python setup.py install
rm -fr build
##############################################################################
# start the project.
cd ~/projects/django-commadecimal-code

cd ~/projects
django-admin startproject demo django-commadecimal-code

cd ~/projects/django-commadecimal-code
python manage.py startapp commadecimal
python manage.py startapp core_app

##############################################################################
# create commadecimal virtualenv.
cd ~/.virtualenvs/
ls -la
# by default, python3 has executable named python in arch linux.
virtualenv commadecimal -p /usr/bin/python
##############################################################################
# install dependencies virtualenv.
cd ~/.virtualenvs/
source commadecimal/bin/activate
cd ~/projects/django-commadecimal-code
pip install -r requirements.txt 
##############################################################################
cd ~/projects/django-commadecimal-code

stdbuf -o 0 python manage.py runserver 0.0.0.0:8000
##############################################################################
# share on pypi.

python setup.py sdist register upload
rm -fr dist
##############################################################################



