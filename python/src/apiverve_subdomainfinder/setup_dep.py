from setuptools import setup, find_packages

setup(
    name='apiverve_subdomainfinder',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Subdomain Finder discovers active subdomains and their resolved IP addresses for any target domain. It checks certificate transparency logs and common hostnames, returning matched hostnames, root A records, and scan completion status.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/subdomainfinder?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
