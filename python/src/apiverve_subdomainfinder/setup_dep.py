from setuptools import setup, find_packages

setup(
    name='apiverve_subdomainfinder',
    version='1.1.12',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Subdomain Finder is a simple tool for finding all the available subdomains for a given domain. It returns a list of all the available subdomains for the given domain.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
