def run():
    db.bind(provider='postgres', user='', password='', host='localhost', database='')
    db.generate_mapping(create_tables=False)
    populate_db()


if __name__ == '__main__':
    run()
